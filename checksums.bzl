# WARNING!!!
# DO NOT MODIFY THIS FILE DIRECTLY.
# TO GENERATE THIS RUN: ./updateWorkspaceSnapshots.sh

BASE_ARCHITECTURES = ["amd64", "arm64"]

# Exceptions:
# - s390x doesn't have libunwind8.
#   https://github.com/GoogleContainerTools/distroless/pull/612#issue-500157699
# - ppc64le doesn't have stretch security-channel.
#   https://github.com/GoogleContainerTools/distroless/pull/637#issuecomment-728139611
# - arm needs someone with available hardware to generate:
#   //experimental/python2.7/ld.so.arm.cache
ARCHITECTURES = BASE_ARCHITECTURES + ["arm", "s390x", "ppc64le"]

VERSIONS = [
    ("debian9", "stretch"),
    ("debian10", "buster"),
]

DEBIAN_SNAPSHOT = "20210203T030241Z"

DEBIAN_SECURITY_SNAPSHOT = "20210203T080446Z"

SHA256s = {
    "amd64": {
        "debian9": {
            "main": "90ff32c8226b57b879bf6b8c3cfda15e24f2b8c22de28426872f162db4e8d444",
            "backports": "531e9bf9e6c2b35d08e68fb803cb1ea7b211ce81a32c158e6bc5c5f6fab7e491",
            "updates": "b702e0888f32074ee212accbf56c732beacf0d9f570ca082a9c859b23a2596e9",
            "security": "b7e9ea043df421664376f14f5c29e68259486c0182606aa6eeb5216d91e72528",
        },
        "debian10": {
            "main": "15d6bbf761c95c4795d50d41a0385fd643c32b670c58d7abaa17f9736f17e578",
            "updates": "02974e692a7a5ac0617007b38bb41ede9d7dc0f9da04b44df2b22474e689214a",
            "security": "5dc28fee8ef5c2bd1fce4d7fd04e376269fc0fda8de3af16ce92006730c95308",
        },
    },
    "arm": {
        "debian9": {
            "main": "36521cc720d75810da368854db057b68e0e389b8170611a141cfa4021d03259b",
            "backports": "fb57baff6ad1551e71b27c24f5ca048b635ce510ddbb1472c820e3b788174bf2",
            "updates": "469b19c81185621bb5e90401b508933d7921a6e0b8a10fd5e4b570ae0a83409e",
            "security": "11042d0c8f9731fc83306faf3e42237b6ded2a2471ab7281682d689266ae9731",
        },
        "debian10": {
            "main": "b3627288b064de7ca2d98ad008ddfad94d9de2624c24def331b77650a0e4966d",
            "updates": "ed569ba9af75cc26b5873de0b2c951080dcc1a25a1f13e3213a145f8b9fc25e2",
            "security": "2a66608169e25fff2db6c0e62d0ac445d50c9b9bd7e18042daf108be7b498660",
        },
    },
    "arm64": {
        "debian9": {
            "main": "881d279ca3536ce84dbe9073a150ec2dfba898cb4c5010cbd50d07ba54942b3e",
            "backports": "328f3ec5675e605e7d5f46f6d3fc58a0c45cdeb4907fb3671c03bb9d68b2db51",
            "updates": "df9eadde7ef2ea7c7d3c07417e4924aece7bf3ccad8575e13ae68c71dcaa1d40",
            "security": "04d09ca739a9412dcf1f738da1a93046414ecd3a554ca8ff3b081c6f0ff22191",
        },
        "debian10": {
            "main": "28d478abdb9f5163e11870becfd3caae37bea73d4d6a95e9e45cc9c2f9e1c965",
            "updates": "78285a450776c38c1f1566c97a44fb936c2fabe98b2971c78681c2101092852d",
            "security": "e82cc66faf6c91c194eb655b95369e5c411ac71443ff34dc28f43592f61872c6",
        },
    },
    "s390x": {
        "debian9": {
            "main": "f40e0f3d2c203557de8670874703b7462b40c7db3d9ef7ea45bee166c0327abb",
            "backports": "9090debf1f065d0152688f879b03c80fbdf01e880443e6d4cde2458f21d24439",
            "updates": "dad6720cfbc75a335005e7c471722a2f67bfc7da9f75e653a74e73b3a7acc89f",
        },
        "debian10": {
            "main": "8acfdb66322fc278e491882e433c7a73755156bc1df93ddfef2886112ffedbe3",
            "updates": "73e2dd6a7f02a4fccd51d448de09baee055ec50b16b386dce3a7d080793d81e8",
            "security": "82718f788c20905e20bcc4bc1d7f933e85e3f204cdae5433d0cff85bd27bcda8",
        },
    },
    "ppc64le": {
        "debian9": {
            "main": "34aef3b450ec40c36b23aa61e8b1d68ed40ee4b496d597364db10a9eadad590e",
            "backports": "6c4fc3902aad4263ea96c3ee94523bd046fc8ea31da4fd7ecd58fd4aaa99c894",
            "updates": "2ef877054f0dd43151aed073c66214f217c25cc4a31efa7004a5aafb2442e809",
        },
        "debian10": {
            "main": "8b5054a0268cac706a034797dfd0513226322ea652889d3e47e85d97df463838",
            "updates": "f4106353acacff561cc001adeb363393748bb4242307c918715a2a425083facf",
            "security": "87c19187ef85d0e568be7ab958bb951385908f9ea0d4ad79c3bc5e02c86076c8",
        },
    },
}
