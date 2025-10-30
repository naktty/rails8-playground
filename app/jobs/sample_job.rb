class SampleJob < ApplicationJob
  queue_as :default

  def perform(message)
    puts "=" * 50
    puts "SampleJob 実行開始: #{Time.current}"
    puts "メッセージ: #{message}"
    puts "job_id: #{job_id}"
    puts "キュー: #{queue_name}"
    puts "=" * 50
  rescue => e
    puts "エラー発生: #{e.message}"
    raise e
  end
end
