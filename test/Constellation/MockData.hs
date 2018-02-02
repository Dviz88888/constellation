{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module Constellation.MockData where

import ClassyPrelude
import Data.Hex (unhex)
import Data.Maybe (fromJust)
import Data.X509.Validation (Fingerprint(..))
import qualified Data.ByteString.Char8 as BC

fp :: ByteString -> Fingerprint
fp = Fingerprint . fromJust . unhex . BC.filter (/= ':')

-- Pregenerated TLS certs and keys -- used only within this test suite

testingOnlyMockServerCert1 :: ByteString
testingOnlyMockServerCert1 = "-----BEGIN CERTIFICATE-----\nMIIFNDCCAxygAwIBAwIVAKNut9uglb/FppbiGsVnE5gYkysXMA0GCSqGSIb3DQEB\nDQUAMFUxGzAZBgNVBAMMEmNvbnN0ZWxsYXRpb24tbm9kZTELMAkGA1UEBgwCVVMx\nGzAZBgNVBAoMEmNvbnN0ZWxsYXRpb24tbm9kZTEMMAoGA1UECwwDdGxzMB4XDTE2\nMTEwOTIzNDUwN1oXDTI3MTEwOTIzNDUwN1owUjEYMBYGA1UEAwwPZm9vLmJhci5i\nYXouY29tMQswCQYDVQQGDAJVUzEbMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2Rl\nMQwwCgYDVQQLDAN0bHMwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCo\nBJ+mKsCdC6VZeOgpn6Gz3fq2R0j0nCQnG3NK9nNlgBOmFxOaMm7CCTawr5qA7+7N\nDjWsAraki4NRehBoS6EWaGLDJWXMKWUc4yt8Srsd67PfH9cvw5oOQUALMqMeBW2Z\nQjEeJYmtPlNkUk6o5UQQHve1N3qXb7DOTYP55ZfrmAlOsddtxSsZrIFE5Odu1Azm\nTUVj/SL5AaErd5QoFfHcBTqclWD4BinS0Zns/bkCL+CNJhSHyQp01YnOtoBrAORR\nTkLTeiQAWxAEArc4prZgS5Qju2ftRjlDMTkF1ekP84KYxgruKswtPTbJgl9/8AtK\nAHGvGVCXq5aA0gt4C/5/FCWuLaXEsB6xKfZTLx8VbHzK2Qw4K4OPRaF2MSI1nr3W\nUhnY5WuZRQH1bcm9m+8CEptpPpO87/oWHulCA07OLwfCg1IpQL2ErRHZdmhjnCCX\nz5sPSwXRqRmcS9H+25LiQFoT/UYaOmnuZxnb/sVu+e9uY+sZ56mJ/qEXVIBxhgnB\nq1+XdvsMoRpZpZmYPOACILQ+GIxPk0/tw6pVL1T5vWUI/TUW8J9soap1Fh3RBkhw\nyvjjNWOnSaNZAZlOu6fBIwN+kS7j/knyFx6HTY8+sanJVR3L8VkZpLI8H2DnLFRJ\nXUnBX/Asqij4V1AHRlkl6lZ9jLgMsy2J9X9876pXrQIDAQABMA0GCSqGSIb3DQEB\nDQUAA4ICAQBpLKmDB1HSlNDv7eR7DT4qC8QBVFB0VDSql+HXBiyWPAU+kxhgmdMI\nr22FYworQjjdJskoEhdoj3rpQ2QoTmGbbWvdU3DWMMhh2NQnGtLc6W/1bRGWJE2I\n1DtG8OC4eC7KwykYuQxXWcdDDO+gALMbQ8vhEaDv/mFIQYqr4KQIMQb0LIGd3ZAu\nJH2ckzBdcp94vbSXfCJtk+rXBswqXhCBJ6pOpiI0nLFvNyS0kjd5BbhTRf2Y9vc4\nJxEammmBhD9W6YYpwY8A42M4LaTiPjBZpSzMAFu3OVHpkh+q2w4af1QetMYFBKDV\nxUCUmn+KqNHcUFu/DsgOFJ5y3Y2vqkHCRKjJEhlIyKoMJh3+kr5OsNdY/su80RC2\npzhfDbf+bGO+IKyCdp5+YlSG/I6HHUrNe1TNPZ99Gamzz6Y3FYM56DTQWfrCKj1z\n0dAXFasJ2mtSxwpH6oYhWR7p6cIDDh1W8o1/twYdL0ZMVSNBVtFLf8q8sesBIf9k\nZKruObJNZIOQayysh4bNzGSLjOfhPkOYOPdiVyQHof7UeReP7X5OAWgB2sayhIsF\n+0+oQCztgohYdKoK39bvU7og3I3p6eyrM8VROKpIOeYUOOo+rv4ZnI6bX7+qPv9g\nVnvKj0EQnibr19Yvq67DNWwOD91Pf9C4AWydsDVmxBw5bp9nGrs3mA==\n-----END CERTIFICATE-----"

testingOnlyMockServerKey1 :: ByteString
testingOnlyMockServerKey1 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockServerFingerprint1 :: Fingerprint
testingOnlyMockServerFingerprint1 = fp "EB:54:EF:0F:D6:27:5B:AF:85:9D:78:8E:F1:E8:BD:4E:48:7C:07:C7:92:C1:2F:7A:B1:FB:49:61:50:86:E2:66:FC:52:D3:BE:62:BC:56:3E:B3:43:ED:67:60:C6:77:4E:9B:4D:2C:04:F7:F3:BC:ED:30:6F:7D:85:0C:50:88:CF"

testingOnlyMockClientCert1 :: ByteString
testingOnlyMockClientCert1 = "-----BEGIN CERTIFICATE-----\nMIIFQzCCAyugAwIBAwIVAMImjLtlS7roJzppKWLnXm86w4w1MA0GCSqGSIb3DQEB\nDQUAMFUxGzAZBgNVBAMMEmNvbnN0ZWxsYXRpb24tbm9kZTELMAkGA1UEBgwCVVMx\nGzAZBgNVBAoMEmNvbnN0ZWxsYXRpb24tbm9kZTEMMAoGA1UECwwDdGxzMB4XDTE2\nMTExNDE2NDQzMFoXDTI3MTExNDE2NDQzMFowTDESMBAGA1UEAwwJMTI3LjAuMC4x\nMQswCQYDVQQGDAJVUzEbMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2RlMQwwCgYD\nVQQLDAN0bHMwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDPScwqJnh3\ncp8+5w7PASQ8DByQwUitCBRBltCoW5QtIDxcUGhpfb4KNRMXSzwPIaI+MmT/IlUU\nCw7/h9XdqXEF+NyYk7VHXxAEjpagr69hSyDbCIXJFMwnuDKyEtAgheCww123xQvo\nLk1TjwHnji/wxP+d/UWV6p8YHXZOJOA/R/myLtugyVb0xkRZdQ7ownjQyF9+0Koh\n36V7zxK2R1O4Ggqc5a1otq+/0vARXwJB3nmAPnkUl6T2/d7XAmIcSBYym18l3quz\ndbhRHUGuPe+KGVtLtD2p702cuRN8jWOUKjCiapZ1WwyWsVpNijqesve8gTBUsl5z\nAb66lq+TxQ+NAlAU+4/5vKZsjknSIPDSh2Kz58vJrmXA+aUo20TwOZq8O82iEwsU\nhP+KXT7BDDNSDvQSkMhnDTV6gdHa5nf56j8yu/y3OTZTPrU2A1bPgjn/a0sjqCeM\nqR7FAsPm5rkRjz0bGD38s8nBw6JsXzyyya/nmXiMWdtpuBWE/V6tfHumRqSV1UmA\n0Ip52p3yD2pin4GnlewmcbT6Hb+DixB66LCtZtnbX8rc8Bght/t8QKNB3/W4F3Jx\nN4Rr4OqpoCzSWuatCxjn8i10VlbfBOjJdePHhqkyGFUi682dw/h1l5YO7NA+GG4i\nqvy4wkXqDGJdiETPk5kg+9wLbi9XYOj7hQIDAQABoxMwETAPBgNVHQ8BAf8EBQMD\nB4AAMA0GCSqGSIb3DQEBDQUAA4ICAQCizsvnTknF/XdeAtI8p0gGTECqWUrn2Ibn\n0VqL3SylgJz389pb9hTlmjBBVXybAtkyytshucKgRgDilQy24ryT6lhs8Ej+O4Nd\na9ABb0EvrrkIhD5WD+NaCoZneYkwwp7j1ra72fBB/p7vUwr5F8I3eDheWRy8PnlJ\niY203D4jv0TEbt1t3tXhKPU5VaE3c7CVYarfg3KyekPqA8NVktD0L17RsS1eTLft\nvoUP6Dz1K3ddL9GupqVhfROa/o0MLVHxxeMawT6uCRoE8UCKDMgDGYXP4XpEdERa\n5uNr/wSYEmauODXD7rKQ9l8AZwmUWRJvlwdl63WcmBCi/ken0hKBn4iAtUwaK6PX\nb9s37rjDicrxh4rsil0INZv23miQebGyxsXyTt/kNN071F+0CaJkUyUWVJGbHOn0\nGvudCU6P7e5gC8kwN5FU6hkNBkCua8RhouQOQnsTCTXt56ALQGSf3EGEpjS9+DO7\nakMz2/Mzqxf+1hP27+lGT3B7owdjNtJfrObB/8abEiIahm3TJrC6sIoYWuqUBKV8\nrC37kOcat9kDYYXBIlRLXY05/bUogO9Hnro/7DDmXOpSWXAebuipN953JxdsNp9E\npPuubRMacK2JrQDdTpy6HxSDhPQYUodAAvpyytX7Aa/ZplWtMqyaJSEcFxijcUMZ\noEqQEnvL7w==\n-----END CERTIFICATE-----"

testingOnlyMockClientKey1 :: ByteString
testingOnlyMockClientKey1 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockClientFingerprint1 :: Fingerprint
testingOnlyMockClientFingerprint1 = fp "88:23:C5:59:53:FB:5F:BC:A4:12:2F:EE:50:BC:7D:75:AE:7A:AB:E3:BB:1B:46:EE:65:4A:60:2F:52:8F:87:8B:AA:99:7B:F0:9C:38:21:FC:03:93:BA:C9:44:03:5D:CE:34:C1:A3:CD:F2:F7:C0:E1:64:8D:E1:93:E0:DE:BF:80"

testingOnlyMockServerCert2 :: ByteString
testingOnlyMockServerCert2 = "-----BEGIN CERTIFICATE-----\nMIIFMzCCAxugAwIBAwIUKYbmWdIU1M7rnq5bdaTbkNKZs1YwDQYJKoZIhvcNAQEN\nBQAwVTEbMBkGA1UEAwwSY29uc3RlbGxhdGlvbi1ub2RlMQswCQYDVQQGDAJVUzEb\nMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2RlMQwwCgYDVQQLDAN0bHMwHhcNMTYx\nMTA5MjM0NTM5WhcNMjcxMTA5MjM0NTM5WjBSMRgwFgYDVQQDDA9mb28uYmFyLmJh\nei5jb20xCzAJBgNVBAYMAlVTMRswGQYDVQQKDBJjb25zdGVsbGF0aW9uLW5vZGUx\nDDAKBgNVBAsMA3RsczCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMoY\nV0tXbAEYgGa93EEaymc6RVxMyNXNefVb1Oegw0nB1Z1KJ8N/2/x1aQ9bWubUWG3W\n9iuMqxgNmxBMCZykLt+xEU96eWrthVaeNQrn3+EhwR2UlaByJJgQri1a9RwKv3Tv\nTaRFUR9c9nF3cWb8YKXg6OjjQz6ZNCAJstnmGG3PdveP1GZkWhfUVHUXSe9m3fVk\nJs3jC3d596v/fb9h3WhpwhkqqxYfC1tUdmNRjmVZeEl/s9fWyGz1NQtJUMgtZyq/\nBooYI6y6cuMZkzFxWetxY+BC4NGotf6hvt+n0hNDtdtCnbMZ43XvolOaTyZPhq+H\n9kHZ0LfgnJQAeg0eDuSeWuxOskjzdToih1r//7IYtNUx+p+ze4PP78FmZ6HxIvwW\nYUZqtz2dm90p/LCaY7vOZ9Qxm+CUppht9KUFbG2KPDmkb9pkHj2KGQmkf7UxNt98\nEQCpYcw1FvhYf8+6YT6q5eKO41x5x9Y7fHXDlvkNM+ezBSPbAvUVWn5S8yJzDYXj\ntsbmk1DmqmUTtg+UIONtdU2cyY1iEctnEQ12834m5O1OF1f4y5V2+HMBLkgEzkct\nqkFdVjQKKxiPGmmRr6xRf0/5xfrlFt/uh+XQMAJMtJKQCRVYbYHcBbp/KH3rvPLt\nMdDzUo1ZsIctSpcT0fx3HqQC2SwUCc/qjAtGl32FAgMBAAEwDQYJKoZIhvcNAQEN\nBQADggIBAB3JV1LmgF7W+BG5tEYZyAtKBlBNC8pRa0bSmvVEmj+9+lkJByR6brju\n3lkWSRgWj3iL+hfc/WK350wYQCbWoiFS0fz2AwkrgwAZuo3ciiiNNJPkqWDbYidU\n0Zd6EPcMta3O9GHVCag3BTlfPkzR+WoWD6gHVfTMl1SE0Sq/J1pWpwzLTPexGICn\nb2p3kD9U3o/VKPAkoeiHDvSIUXQIkSOqnnlz70HXiIF+2MQteWuhMxtvr45q0TXx\nCstZVCL3wb2TYNa3hJdAMg1d/Ohi2VWJxANxhMe9q+rQ5LavFUpapSgHxIxMoPIP\nefvOwki/sEvHbvQmWD77CQ7ipHO78BPx7geR8oM2q3TsQ4z4+Egv5O4oP+qqtwgy\nta+6oZO2ukdHOhClI2CP68RAxhrkLcGkWXkqou0YIoREWI8sHWzATg7N2rbt17se\nuHe1EKbuxGTG1SD80Clu45mjrZdR/bg2a8UX9YXUCXeWQOqKBz0Dr2bjK8veg5T4\nV+4Q+VLPTwYiljFhmIVgNkFhG/SV3enKtyhJ079LJTYsTkKdkqSCDlL4if5JMZQj\najGVqYgMIiHUYi0flgiKWkhF/12e5odvL2YhjZQ55mqHP/x3SvgSUXnfbaLJdAKZ\n6XyW5xajG54XXALTpZtr3Awn5I9nqeDvzb5lB9SPBuzZIFTbniNd\n-----END CERTIFICATE-----"

testingOnlyMockServerKey2 :: ByteString
testingOnlyMockServerKey2 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockServerFingerprint2 :: Fingerprint
testingOnlyMockServerFingerprint2 = fp "2F:77:C2:DE:61:80:40:F6:35:21:0E:5A:2C:D9:33:87:57:78:91:7F:1D:A6:57:ED:8E:64:8D:6D:13:53:7E:1B:E2:69:BE:EC:35:00:56:F1:A8:34:93:0B:FD:BE:4F:87:4F:3C:CD:E0:DC:1C:A6:2D:9E:C5:5B:BD:72:62:59:1C"

testingOnlyMockClientCert2 :: ByteString
testingOnlyMockClientCert2 = "-----BEGIN CERTIFICATE-----\nMIIFQzCCAyugAwIBAwIVAJ73OTSbfNK8oPqjgue7BU5qm265MA0GCSqGSIb3DQEB\nDQUAMFUxGzAZBgNVBAMMEmNvbnN0ZWxsYXRpb24tbm9kZTELMAkGA1UEBgwCVVMx\nGzAZBgNVBAoMEmNvbnN0ZWxsYXRpb24tbm9kZTEMMAoGA1UECwwDdGxzMB4XDTE2\nMTExNDE2NDQzMVoXDTI3MTExNDE2NDQzMVowTDESMBAGA1UEAwwJMTI3LjAuMC4x\nMQswCQYDVQQGDAJVUzEbMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2RlMQwwCgYD\nVQQLDAN0bHMwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCzb4mZvpfw\nnujuNWgBTf6tvth4L8+0cF85xUqBWv1dSkxd21orEgQl7x5E04RLkuZORbTApPL3\nkMSAVt4xfr3LbOkG9LbxtpcJXaLhkvkUcFxwwQpRShsGtI8bntGFCZ/grNtLvcCi\n1eihlEyObUNA3hMVC6MHFmFJ0nyDWIh9ALlRax2ozQVrfXRqaryqZ1TKUTH7hgXh\nERSVGjKolyX+v6heHste26sJNumLOemn4PIZecowtz2T7g/3TSthY9cWCgRWFn6H\n3dgUZGshCdKIwPCjd2m7zDrUo5V7AigS0sEcycKyQ2IXOa/E5aWb9cwwFNV7CyRL\n3xW4zRxF6gpfG0KXXpLKfs32wfKZ0z40ouYlyvz/XZzosq/z58kwDSh5Ml2ApXCo\nmb14IN07AYns+3kNuXtHIe8FKMWmBkfy4k0TPV4+TA+XW+OYbtemFMgbBUEQT7dl\ncLcF4ly0DlL5cZJ2vX7nTL4m/dpVR1V2btlRNA5PCjK6G3BJyYMT2I/39CUWG92f\neOdyJIpyKbSjJfgr9cF4WV5+z+5jHgp9Ol7Oob1VTtaQw3+hBF5y9mbON1rQsf9x\nTAsE/X7DhcaxVCWJ1/nP7oEadpWei4sIEcvmy+482oYHUB3ITwqOyTGIZqXpePP6\nWk9RuvbqjfGmel/dyS8lwZjdjwfXZwdG1wIDAQABoxMwETAPBgNVHQ8BAf8EBQMD\nB4AAMA0GCSqGSIb3DQEBDQUAA4ICAQAmOcxcVlEOJPEOyDYxmqZ/TJNSPBYjlBRR\nXC/dKdHHf5njN6Xm9wrauZpl9T4nCD6iRn9wLfqDvPh4N0VowH6hyK4Fp5yZbO/A\n5g07Mrlz2bnX5K23MfrX3d9D261XGd0DzfGNLLKYM5XQhaM6xElRnofpsyCYdV5e\nDKaXFGoJlDIh1bOLtDDGbOcRVAvEjqEG5I1vGqY90P/s73GGGo5pnEx3b6x1KVen\nNmGBuvQTbcEBSQH4O4ff+qq/MtLxgKjTmWVLL9OhP2xlktl6XLHIbtV6seIL3pUO\na3lnaArMuip3TtV7jObAE5hqVQNp7ORSBISTz+VaGxrEk1vrVxV5ntbV9GPZpxOH\n/WnTNEgpd3GzZ4eRSwAEppRhJ9pnTUofioWrPlNBBFvdCpExVCNlCulAwGqjoaKr\nXNedOpBMtKPfViazroeAzxEhEXFvQvpET2gHrNBodd4Ub+Jg+Fq1my1ufWuFTMme\n3/n8a47vl4HN2B2Fja7zP9JTIMeZtyLm5ZfVVCuWLV5nq6ptJjCpIUodKfortIsi\nl+Z0ZPIblS/G+MECYLwouxhP0Toqs6re+wRzLLUZ2wVtfJQDBK7qkQ6RTD2I5G2T\nBTub7HmQ7lVKh746D1V7piZWvDlJFAcdPHZp+bLb7B9lOjE4p4iIl2+q47j+haHV\n1wMbwe8PIg==\n-----END CERTIFICATE-----"

testingOnlyMockClientKey2 :: ByteString
testingOnlyMockClientKey2 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockClientFingerprint2 :: Fingerprint
testingOnlyMockClientFingerprint2 = fp "59:83:96:58:F5:15:46:B7:AA:5D:70:F5:C0:A8:B0:20:A9:F5:56:5E:52:06:7E:84:37:C8:22:62:7B:74:6F:C5:E1:75:8D:AA:A2:BE:49:3C:DA:73:BB:79:77:DE:1E:DF:E7:91:D5:FF:D8:19:5C:E8:EB:0F:F9:23:02:C7:7F:58"

testingOnlyMockServerCert3 :: ByteString
testingOnlyMockServerCert3 = "-----BEGIN CERTIFICATE-----\nMIIFNDCCAxygAwIBAwIVANevGKxV9X/PwONVEdYCHEhn6wCCMA0GCSqGSIb3DQEB\nDQUAMFUxGzAZBgNVBAMMEmNvbnN0ZWxsYXRpb24tbm9kZTELMAkGA1UEBgwCVVMx\nGzAZBgNVBAoMEmNvbnN0ZWxsYXRpb24tbm9kZTEMMAoGA1UECwwDdGxzMB4XDTE2\nMTEwOTIzNDYwMFoXDTI3MTEwOTIzNDYwMFowUjEYMBYGA1UEAwwPZm9vLmJhci5i\nYXouY29tMQswCQYDVQQGDAJVUzEbMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2Rl\nMQwwCgYDVQQLDAN0bHMwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDK\nkqBNwFF3KgDesyacEo7GG1DmKeX2ZULmYSih1rpbmRAWnrvXphLO/1N2oWWBX5nT\n+OtKgjO/k5jCG4SC7KpZwmmSMDQOUkaM9d2dg7o94e9RH6FFqztwYl7LRSu404b9\nO/Cbq8Ui1JwlAddaVzhvMeDtHyfYCAxvMQJkgSdCNFXH+wUEfQZ6ozs50gFdlGnQ\nCdEhVfa9rEYigFa5SfPANPM4/7rN7lEIDA6mkrGn4aopHe/B1xoiVf92fESJidCp\n4TO/JpmMXRnHfH8NaZhaDAH0wWCNR8BmDUVlLqrwTZ8LF6CL5GlURdXWIkLz5U/1\n+eVljOGCQk2GmC3/6Ov5HtA3IzU2R9IkIRmlIMjeLyCurgGXTmt4RF4ilpG87U4z\n2hx33t3TitoxWCIp7v+mgBxormeHPZNR5SeD959cfWNfKv/pEs+ex5E+xtpzv5WT\niHyOEJteYXEFcfFPiGBS3tntgJ/NRqIqOPybyXGAvJ1du+nuXEa5gF/6FN3VpusY\nfvjvysOVH2nlWnwv+YtMWwfyUEWiSQOZQDcFaPHdvwSuhPSY+IyutI9VqG7qGMuq\nwGqHjw0pjoKknQUOJkDjOgfZ/ASOXYfvtYtuFF/JX746qVXz2IkxsQ0ovoGsvmJK\n2+zAB7f61AiPlHq6zi/bbupPUIeqGhexMiUxQ1QMbQIDAQABMA0GCSqGSIb3DQEB\nDQUAA4ICAQBk05TPFf+TIME/cuUPwzGFfp8ThXZK/PEIBT+GuXPLN32rJ0MIrt+p\nHzNTLYmqM3MLjO1NmLvijnl6CNirPBHTZ6dqggMfr9+oIrgIm5vRulT2o6cViqJU\n4oYxk3Z0OBx7MnGIIvLw1nGAKmQymrKt5bZeWPej2AE1X2lpOOjayE5KwrYE8qgg\nvjw8gdc6qSjJ7p26HC/N1w5f/nR45/NKFQtDqt0dUcUtDGTAoOQ5/VKcQftAVak7\nxobeifC6mKJYEHG1iUfFnyznhjZm54BHCdlJ/rCHzhvFsM8TzYuFS/TkHcIKwCpK\nX+MRGLdil6r61XBLVb4cmL88veCB9dxphCchuAnTkEc4rei3R7QXnlLTIgrS2RFQ\nal6McLlLre6Iae0+q8vJh6w+J7oG9CKGlYcK+H+WCx6ZWXyqxaNU1V00wRXaIgF8\n6vRadJD5IK5Rqd7qVBFWU9MUFTMFjAVl/fLtZxHuEYaVuqvZ2TJ3FLFPDO8Uf5I3\nyhb0uWNTW07sh1B0EgMeqhSe67Ic0NhRym597hT8A+QdLbJwABI3nyBE5Hu8C5TR\nUYmUhX5oXCTVWIUI69U/8ccg17ndAn6tPs3tdo6RqK1fDV8hCJ2NpTzVIrKrF9ts\nRI+JGktFL8OmfAbvIhJQjPpK3CKhhUNHAFQsGpmaatz2oiSM0kf2Yw==\n-----END CERTIFICATE-----"

testingOnlyMockServerKey3 :: ByteString
testingOnlyMockServerKey3 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockServerFingerprint3 :: Fingerprint
testingOnlyMockServerFingerprint3 = fp "71:CB:7E:C8:E3:70:1C:32:5C:7B:1C:BE:78:5A:A6:2B:F5:55:3C:8D:0B:75:7A:C0:FC:D9:28:30:39:7A:03:D9:75:BB:9B:98:49:9E:41:2A:9C:5C:11:E3:6D:6B:44:BB:C4:FC:38:21:8B:A7:99:35:50:09:55:63:25:58:8C:3E"

testingOnlyMockClientCert3 :: ByteString
testingOnlyMockClientCert3 = "-----BEGIN CERTIFICATE-----\nMIIFQjCCAyqgAwIBAwIUcrbS1e1tvP7MlFP7+ukzmOeI0fowDQYJKoZIhvcNAQEN\nBQAwVTEbMBkGA1UEAwwSY29uc3RlbGxhdGlvbi1ub2RlMQswCQYDVQQGDAJVUzEb\nMBkGA1UECgwSY29uc3RlbGxhdGlvbi1ub2RlMQwwCgYDVQQLDAN0bHMwHhcNMTYx\nMTE0MTY0NDQ0WhcNMjcxMTE0MTY0NDQ0WjBMMRIwEAYDVQQDDAkxMjcuMC4wLjEx\nCzAJBgNVBAYMAlVTMRswGQYDVQQKDBJjb25zdGVsbGF0aW9uLW5vZGUxDDAKBgNV\nBAsMA3RsczCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAL/TCUlRIPt/\ngPJ/ntqw9NHfCNkVpD5rJTQGPWkR0vdcgCkbwGKzG6lNgj5citU7kWMFKzh4MS3p\ng8r8wSuRCtlXfithwRsn4IDo70iricBdTJzii3ZUAK1N8pyaRuN5qGuiSGSiXm+l\n611UOzZPyZyWgyhtmT4kOQckDZw5Rs7w7lg1CKnmydo3jhv8+9Eimk7ZQAzEtGHf\nCVkAXlG2GZuoLnWt5lKZa1Vrnqzh2XJKHe9WUy/AopK2pEDmuibN372KxGD2rVUF\ncZXtb4ifHTyQEhJwLmw5bdG8wdR+8uw20Im7lPMW3TuJVqo61pw0Mcils+pVnaVn\n+j7s1lwcESBUKU4I7xfvO2Qa1mj+nlbjlpgOakNx3M7hA7ZDQy1csSAzf35PxDz2\ng2RfqUJoW9l9cAga9fsJ6A+NprLGdA8/115EbCQObb6Oc2EgF0/gmP2xkY4fh+UC\n+w8JYtUMaRD8+Gy3U8h23i1vsWiTBQIpFGxuZjEqOI5CpRlVtH8aO3gMYw/QLPrL\nAHQ/10n/qRRWumN6yZqYDQJ4tZpTL4L1uvgDF+ZRRztHJzP2Skpa3eORgHTWY6vM\nHrW0NOU2kDars27X4ZDgbUf5KLo2rpSHDPc4Rvxbj7mf5mFJqGqbN5NYpgGtA8LJ\nvuVjjZ0l3G+4vFmIchlAoahf5O6ZW7KRAgMBAAGjEzARMA8GA1UdDwEB/wQFAwMH\ngAAwDQYJKoZIhvcNAQENBQADggIBAGyF3sLBPCGhvHH5BHubV1LXCEUNWliCjDdh\nloO1wp22AtrAvhbfLJHyk9rpthzi+DQrs9uf7lHZUxj9iOW/wjxPhCMZBTnROOcc\nvY7EIoHRdadvoRbkHa8Q3NN0H1Lk91XTH9cVnh+nADUwHIRShJkTve86+mjXVMt7\nh26fkHeEGOcA6olripdTLefmMzdqhuuixaRCcffzmOU50VPmWv3buM6e6BoP1oYx\nAh5Hq9lLBoujLU1CnyQmzQUsiWGJPhuhbYFAsxQOlOf/5TcDmvr8M4ZOkQ7pf5MT\nswiNTGCPAyzLfXDiFYeMbbTs2mywuGv0D0b+APcsZr8vssS6pKvKHVugqkCqWeqS\nDt6Z0ivA/OmsDpZs2O41Nl7WNpxWkG0gb8ye8tx+CTm9xPdBvv/GhDSB0dEjyW12\nRFZBIEuOOWhgjM+oRhKjhTPUuequpKs7IrDAvEkHKP/FLQrf5vaUxBstMhXMLRjj\n39Wcw7RMsl0GVc2oZA+/pxO+mAld50h+eXZDMWATOSgcz3BGlhRM2EfX+87bynYx\nFaugiwPVF2st5NG2QWlz3mCjRIjc2i7Qu9HpxEMdn9RHbfXUPLZEFNfhZFDYtKTt\n9ylAJyGv0SllehV0Z0jics+3sw1zyQy3mFyNg9EDoAERQqkBCuBfZXRgy6H//iB6\ntjU4yd0x\n-----END CERTIFICATE-----"

testingOnlyMockClientKey3 :: ByteString
testingOnlyMockClientKey3 = "-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----"

testingOnlyMockClientFingerprint3 :: Fingerprint
testingOnlyMockClientFingerprint3 = fp "E2:A1:00:4A:93:D3:38:0C:EE:0A:49:8F:22:C3:CA:2E:FA:E4:DB:B8:0A:18:FA:FC:2B:59:8D:54:F7:62:CE:BF:0C:0D:44:6F:8F:B2:FB:6F:68:2A:EF:1C:8B:3E:38:C4:37:1F:45:BE:5E:72:69:7E:E8:ED:EB:14:B0:4D:63:09"