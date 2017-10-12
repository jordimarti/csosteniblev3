def getSignatureKey key, dateStamp, regionName, serviceName
    kDate = OpenSSL::HMAC.digest('sha256', "AWS4" + key, dateStamp)
    kRegion = OpenSSL::HMAC.digest('sha256', kDate, regionName)
    kService = OpenSSL::HMAC.digest('sha256', kRegion, serviceName)
    kSigning = OpenSSL::HMAC.digest('sha256', kService, "aws4_request")

    kSigning
end