# Filters common file extensions to music video photos and documents 

IMG_EXT=("jpeg" "jpg" "png" "gif" "bmp" "tiff" "tif" "raw" "cr2" "nef" "arw" "orf" "rw2" "heif" "heic" "webp""svg" "psd" "dng" "ico")

VID_EXT=("mp4" "avi" "mkv" "mov" "wmv" "flv" "webm" "mpg" "mpeg" "3gp" "m4v" "ogv" "ts")

DOC_EXT=("txt" "doc" "docx" "odt" "pdf" "xls" "xlsx" "ods" "ppt" "pptx" "odp" "html" "htm" "xml" "csv" "json" "yaml" "yml" "epub" "mobi" "rtf" "md" "log")

MUS_EXT=("mp3" "aac" "wma" "ogg" "m4a" "flac" "alac" "wav" "aiff" "aif" "dsf")

# Function to move files based on extension
move_files() {
    local dir="$1"
    shift
    local extensions=("$@")
    
    for ext in "${extensions[@]}"; do
        # mkdir -p "$dir/$ext"
        mv *.$ext "$dir/$ext/" 2>/dev/null  # Suppress error output if no files match
    done
}

# Move image files
move_files "Images" "${IMG_EXT[@]}"

# Move video files
move_files "Videos" "${VID_EXT[@]}"

# Move document files
move_files "Documents" "${DOC_EXT[@]}"

# Move music files
move_files "Music" "${MUS_EXT[@]}"

echo "Files organized into respective folders."

# Explanation
# Arrays: Defined arrays (IMG_EXT, VID_EXT, DOC_EXT, MUS_EXT) containing file extensions categorized by type (images, videos, documents, music).

# Function move_files:

# Takes two parameters: dir (destination directory) and extensions (array of extensions).
# Creates a directory for each extension under dir.
# Moves files with each extension into their respective directories.
# Invocation:

# Calls move_files function for each file type (Images, Videos, Documents, Music) with their respective arrays of extensions.
# Error Handling:

# Uses 2>/dev/null to redirect and suppress error messages (mv will produce errors if no files of a certain extension are found).