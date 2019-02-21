# The basic idea of the solution is to split the original TSV file into smaller
# TSV files in which records are sorted. Then all the small TSV files are merged
# into the final output using MergeSort algorithm.
#
# The only place where a number of records restricted by Maxnames param are read
# into physical memory is in #split_into_sorted_lists method. MergeSort is done
# directly on TSV files.

require "csv"

class PlayerList
  CSV_COL_SEP = { col_sep: "\t" }
  TEMP_FILE_PREFIX = "_Temp"
  OUTPUT_FILE_PREFIX = "_Output"

  def initialize(input_file)
    @input_file = input_file

    raise ArgumentError, "Input file \"#{ input_file }\" does not exist." unless File.exist?(input_file)
  end

  def sort(max_names, output_file)
    max_names = parse_max_names max_names
    sorted_list_count = split_into_sorted_lists max_names

    for i in 2..sorted_list_count do
      if i == 2
        merge_sorted_lists("#{ TEMP_FILE_PREFIX }#{ i - 1 }", "#{ TEMP_FILE_PREFIX }#{ i }", "#{ OUTPUT_FILE_PREFIX }#{ i + 1 }")
        File.delete "#{ TEMP_FILE_PREFIX }#{ i - 1 }"
        File.delete "#{ TEMP_FILE_PREFIX }#{ i }"
      elsif i == sorted_list_count
        merge_sorted_lists("#{ OUTPUT_FILE_PREFIX }#{ i }", "#{ TEMP_FILE_PREFIX }#{i}", output_file)
        File.delete "#{ OUTPUT_FILE_PREFIX }#{ i }"
        File.delete "#{ TEMP_FILE_PREFIX }#{i}"
      elsif i > 2
        merge_sorted_lists("#{ OUTPUT_FILE_PREFIX }#{ i }", "#{ TEMP_FILE_PREFIX }#{i}", "#{ OUTPUT_FILE_PREFIX }#{ i + 1 }")
        File.delete "#{ OUTPUT_FILE_PREFIX }#{ i }"
        File.delete "#{ TEMP_FILE_PREFIX }#{i}"
      end
    end
  end

  private

    def merge_sorted_lists(input_file_1, input_file_2, output_file)
      l1_index = l2_index = 0
      l1_row = row_at(input_file_1, l1_index)
      l2_row = row_at(input_file_2, l2_index)

      while !l1_row.empty? && !l2_row.empty?
        if (l1_row[0].downcase <=> l2_row[0].downcase) == -1
          write_to_file output_file, "a", [ l1_row ]
          l1_index += 1
          l1_row = row_at(input_file_1, l1_index)
        else
          write_to_file output_file, "a", [ l2_row ]
          l2_index += 1
          l2_row = row_at(input_file_2, l2_index)
        end
      end

      while !l1_row.empty?
        write_to_file output_file, "a", [ l1_row ]
        l1_index += 1
        l1_row = row_at(input_file_1, l1_index)
      end

      while !l2_row.empty?
        write_to_file output_file, "a", [ l2_row ]
        l2_index += 1
        l2_row = row_at(input_file_2, l2_index)
      end
    end

    def row_at(input_file, index)
      i = 0
      CSV.foreach(input_file, CSV_COL_SEP) do |row|
        if i == index
          return row
        else
          i += 1
        end
      end

      []
    end

    # Returns the number of sorted lists
    def split_into_sorted_lists(max_names)
      i = j = 0
      batch = Array.new

      CSV.foreach(@input_file, CSV_COL_SEP) do |row|
        if i == max_names
          i = 0
          j += 1

          write_to_file "#{ TEMP_FILE_PREFIX }#{ j }", "w", batch.sort_by!(&:first)
          batch = Array.new
        else
          batch.push row
          i += 1
        end
      end
      j
    end

    def write_to_file(file_name, mode, csv_rows)
      CSV.open(file_name, mode, CSV_COL_SEP) do |csv|
        csv_rows.each do |row|
          csv << row
        end
      end
    end

    def parse_max_names(max_names)
      max_names = Integer(max_names, 10)
      raise ArgumentError, "Maxnames must be an integer and greater than 0." unless max_names > 0

      max_names
    end
end

USAGE_STRING = %(
USAGE:
  The program requires three arguments

  Maxnames - the maximum number of names which can be loaded
             into memory at any given time
  Input    - name of the input file
  Output   - name of the results output file

  For example: ruby SortNames.rb 10 input.txt output.txt
)

max_names = ARGV[0]
input_file = ARGV[1]
output_file = ARGV[2]

begin
  list = PlayerList.new input_file
  list.sort max_names, output_file
rescue StandardError => e
  puts "[ERROR] #{ e.message }"
  puts USAGE_STRING
end
