require "shrine"
require "shrine/storage/file_system"
require "shrine/storage/s3"

s3_options = {
    access_key_id:      ENV['aws_access_key_id'],
    secret_access_key:  ENV['aws_secret_access_key'],
    region:             ENV['aws_region'],
    bucket:             ENV['aws_bucket'],
}
 
Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
    store: Shrine::Storage::S3.new(prefix: "store", **s3_options)
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
Shrine.plugin :logging, logger: Rails.logger
Shrine.plugin :validation_helpers
