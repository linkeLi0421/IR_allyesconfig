; ModuleID = '/llk/IR_all_yes/lib/pldmfw/pldmfw.c_pt.bc'
source_filename = "../lib/pldmfw/pldmfw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pldmfw_op_pci_match_record\22, \22a\22\09"
module asm "\09.weak\09__crc_pldmfw_op_pci_match_record\09\09\09\09"
module asm "\09.long\09__crc_pldmfw_op_pci_match_record\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pldmfw_op_pci_match_record:\09\09\09\09\09"
module asm "\09.asciz \09\22pldmfw_op_pci_match_record\22\09\09\09\09\09"
module asm "__kstrtabns_pldmfw_op_pci_match_record:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pldmfw_flash_image\22, \22a\22\09"
module asm "\09.weak\09__crc_pldmfw_flash_image\09\09\09\09"
module asm "\09.long\09__crc_pldmfw_flash_image\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pldmfw_flash_image:\09\09\09\09\09"
module asm "\09.asciz \09\22pldmfw_flash_image\22\09\09\09\09\09"
module asm "__kstrtabns_pldmfw_flash_image:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.atomic_t = type { i32 }
%struct.pldmfw = type { ptr, ptr }
%struct.pldmfw_record = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i16, i32, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pldmfw_desc_tlv = type { %struct.list_head, ptr, i16, i16 }
%struct.pldmfw_priv = type { ptr, ptr, i32, %struct.list_head, %struct.list_head, ptr, i16, i16, i16, i16, ptr, ptr, i8, i32, ptr }
%struct.pldmfw_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pldmfw_component = type { %struct.list_head, i16, i16, i16, i16, i32, i32, ptr, ptr, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.__pldmfw_component_area = type { i16, [0 x i8] }
%struct.__pldm_header = type <{ %struct.uuid_t, i8, i16, %struct.__pldm_timestamp, i16, i8, i8, [0 x i8] }>
%struct.__pldm_timestamp = type { [13 x i8] }
%struct.__pldmfw_record_area = type { i8, [0 x i8] }
%struct.__pldmfw_component_info = type <{ i16, i16, i32, i16, i16, i32, i32, i8, i8, [0 x i8] }>
%struct.__pldmfw_record_info = type <{ i16, i8, i32, i8, i8, i16, [0 x i8] }>
%struct.__pldmfw_desc_tlv = type { i16, i16, [0 x i8] }

@__kstrtab_pldmfw_op_pci_match_record = external dso_local constant [0 x i8], align 1
@__kstrtabns_pldmfw_op_pci_match_record = external dso_local constant [0 x i8], align 1
@__ksymtab_pldmfw_op_pci_match_record = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pldmfw_op_pci_match_record to i32), ptr @__kstrtab_pldmfw_op_pci_match_record, ptr @__kstrtabns_pldmfw_op_pci_match_record }, section "___ksymtab+pldmfw_op_pci_match_record", align 4
@__kstrtab_pldmfw_flash_image = external dso_local constant [0 x i8], align 1
@__kstrtabns_pldmfw_flash_image = external dso_local constant [0 x i8], align 1
@__ksymtab_pldmfw_flash_image = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pldmfw_flash_image to i32), ptr @__kstrtab_pldmfw_flash_image, ptr @__kstrtabns_pldmfw_flash_image }, section "___ksymtab+pldmfw_flash_image", align 4
@__UNIQUE_ID_author245 = internal constant [54 x i8] c"pldmfw.author=Jacob Keller <jacob.e.keller@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [30 x i8] c"pldmfw.file=lib/pldmfw/pldmfw\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [22 x i8] c"pldmfw.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [54 x i8] c"pldmfw.description=PLDM firmware flash update library\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/pldmfw/pldmfw.c\00", [44 x i8] zeroinitializer }, align 32
@pldm_firmware_header_id = internal constant { %struct.uuid_t, [16 x i8] } { %struct.uuid_t { [16 x i8] c"\F0\18\87\8C\CB}IC\98\00\A0/\05\9A\CA\02" }, [16 x i8] zeroinitializer }, align 32
@pldm_parse_header.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pldmfw\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pldm_parse_header\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Invalid package header identifier. Expected UUID %pUB, but got %pUB\0A\00", [59 x i8] zeroinitializer }, align 32
@pldm_parse_header.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Invalid package header revision. Expected revision %u but got %u\0A\00", [62 x i8] zeroinitializer }, align 32
@pldm_parse_header.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.5, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Invalid component bitmap length. The length is %u, which is not a multiple of 8\0A\00", [47 x i8] zeroinitializer }, align 32
@pldm_check_fw_space.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pldm_check_fw_space\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Firmware file size smaller than expected. Got %zu bytes, needed %zu bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@pldm_parse_one_record.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pldm_parse_one_record\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Unexpected record length. Measured record length is %zu bytes, expected length is %u bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pldm_check_desc_tlv_len\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found unrecognized TLV type 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.12, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Found TLV type 0x%04x with unexpected length. Got %u bytes, but expected %u bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@pldm_parse_components.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pldm_parse_components\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Invalid firmware header size. Expected %u but got %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@pldm_verify_header_crc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pldm_verify_header_crc\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Invalid CRC in firmware header. Got 0x%08x but expected 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.17 = internal global [14 x i64] [i64 12, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 65535]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 588, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"pldm_firmware_header_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [31 x i8] c"../lib/pldmfw/pldmfw_private.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 27, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 139, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 145, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 161, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 71, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 383, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 234, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 239, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 495, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [23 x i8] c"../lib/pldmfw/pldmfw.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 528, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_pldmfw_flash_image, ptr @__ksymtab_pldmfw_op_pci_match_record, ptr @.str, ptr @pldm_firmware_header_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pldm_firmware_header_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pldmfw_op_pci_match_record(ptr nocapture noundef readonly %context, ptr noundef readonly %record) #0 align 64 {
entry:
  %id.sroa.0 = alloca i32, align 4
  %id.sroa.6 = alloca i32, align 4
  %id.sroa.9 = alloca i32, align 4
  %id.sroa.12 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pldmfw, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.sroa.6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.sroa.9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.sroa.12)
  %2 = ptrtoint ptr %id.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %id.sroa.0, align 4
  %3 = ptrtoint ptr %id.sroa.6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %id.sroa.6, align 4
  %4 = ptrtoint ptr %id.sroa.9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id.sroa.9, align 4
  %5 = ptrtoint ptr %id.sroa.12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %id.sroa.12, align 4
  %descs = getelementptr inbounds %struct.pldmfw_record, ptr %record, i32 0, i32 1
  %6 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %6)
  %desc.071 = load ptr, ptr %descs, align 4
  %cmp.not72 = icmp eq ptr %desc.071, %descs
  br i1 %cmp.not72, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %desc.073 = phi ptr [ %desc.0, %cleanup.for.body_crit_edge ], [ %desc.071, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.pldmfw_desc_tlv, ptr %desc.073, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %for.body.cleanup_crit_edge [
    i16 0, label %for.body.sw.epilog_crit_edge
    i16 256, label %sw.bb6
    i16 257, label %sw.bb7
    i16 258, label %sw.bb8
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %for.body.sw.epilog_crit_edge
  %ptr.0 = phi ptr [ %id.sroa.12, %sw.bb8 ], [ %id.sroa.9, %sw.bb7 ], [ %id.sroa.6, %sw.bb6 ], [ %id.sroa.0, %for.body.sw.epilog_crit_edge ]
  %data = getelementptr inbounds %struct.pldmfw_desc_tlv, ptr %desc.073, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %11, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  %conv9 = zext i16 %14 to i32
  %storemerge = select i1 %tobool.not, i32 -1, i32 %conv9
  %15 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %ptr.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.body.cleanup_crit_edge
  %16 = ptrtoint ptr %desc.073 to i32
  call void @__asan_load4_noabort(i32 %16)
  %desc.0 = load ptr, ptr %desc.073, align 4
  %cmp.not = icmp eq ptr %desc.0, %descs
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %id.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.id.sroa.0.0. = load i32, ptr %id.sroa.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.)
  %cmp17 = icmp eq i32 %id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.id.sroa.0.0., -1
  br i1 %cmp17, label %for.end.land.lhs.true_crit_edge, label %lor.lhs.false

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.end
  %vendor20 = getelementptr i8, ptr %1, i32 -104
  %18 = ptrtoint ptr %vendor20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor20, align 8
  %conv21 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.id.sroa.0.0., i32 %conv21)
  %cmp22 = icmp eq i32 %id.sroa.0.0.id.sroa.0.0.id.sroa.0.0.id.sroa.0.0., %conv21
  br i1 %cmp22, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.else54_crit_edge

lor.lhs.false.if.else54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else54

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.end.land.lhs.true_crit_edge
  %20 = ptrtoint ptr %id.sroa.6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %id.sroa.6.0.id.sroa.6.0.id.sroa.6.0.id.sroa.6.4. = load i32, ptr %id.sroa.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.sroa.6.0.id.sroa.6.0.id.sroa.6.0.id.sroa.6.4.)
  %cmp25 = icmp eq i32 %id.sroa.6.0.id.sroa.6.0.id.sroa.6.0.id.sroa.6.4., -1
  br i1 %cmp25, label %land.lhs.true.land.lhs.true33_crit_edge, label %lor.lhs.false27

land.lhs.true.land.lhs.true33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true33

lor.lhs.false27:                                  ; preds = %land.lhs.true
  %device29 = getelementptr i8, ptr %1, i32 -102
  %21 = ptrtoint ptr %device29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device29, align 2
  %conv30 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.sroa.6.0.id.sroa.6.0.id.sroa.6.0.id.sroa.6.4., i32 %conv30)
  %cmp31 = icmp eq i32 %id.sroa.6.0.id.sroa.6.0.id.sroa.6.0.id.sroa.6.4., %conv30
  br i1 %cmp31, label %lor.lhs.false27.land.lhs.true33_crit_edge, label %lor.lhs.false27.if.else54_crit_edge

lor.lhs.false27.if.else54_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else54

lor.lhs.false27.land.lhs.true33_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %lor.lhs.false27.land.lhs.true33_crit_edge, %land.lhs.true.land.lhs.true33_crit_edge
  %23 = ptrtoint ptr %id.sroa.9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %id.sroa.9.0.id.sroa.9.0.id.sroa.9.0.id.sroa.9.8. = load i32, ptr %id.sroa.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.sroa.9.0.id.sroa.9.0.id.sroa.9.0.id.sroa.9.8.)
  %cmp35 = icmp eq i32 %id.sroa.9.0.id.sroa.9.0.id.sroa.9.0.id.sroa.9.8., -1
  br i1 %cmp35, label %land.lhs.true33.land.lhs.true43_crit_edge, label %lor.lhs.false37

land.lhs.true33.land.lhs.true43_crit_edge:        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true43

lor.lhs.false37:                                  ; preds = %land.lhs.true33
  %subsystem_vendor39 = getelementptr i8, ptr %1, i32 -100
  %24 = ptrtoint ptr %subsystem_vendor39 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %subsystem_vendor39, align 4
  %conv40 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.sroa.9.0.id.sroa.9.0.id.sroa.9.0.id.sroa.9.8., i32 %conv40)
  %cmp41 = icmp eq i32 %id.sroa.9.0.id.sroa.9.0.id.sroa.9.0.id.sroa.9.8., %conv40
  br i1 %cmp41, label %lor.lhs.false37.land.lhs.true43_crit_edge, label %lor.lhs.false37.if.else54_crit_edge

lor.lhs.false37.if.else54_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else54

lor.lhs.false37.land.lhs.true43_crit_edge:        ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true43

land.lhs.true43:                                  ; preds = %lor.lhs.false37.land.lhs.true43_crit_edge, %land.lhs.true33.land.lhs.true43_crit_edge
  %26 = ptrtoint ptr %id.sroa.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %id.sroa.12.0.id.sroa.12.0.id.sroa.12.0.id.sroa.12.12. = load i32, ptr %id.sroa.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.sroa.12.0.id.sroa.12.0.id.sroa.12.0.id.sroa.12.12.)
  %cmp45 = icmp eq i32 %id.sroa.12.0.id.sroa.12.0.id.sroa.12.0.id.sroa.12.12., -1
  br i1 %cmp45, label %land.lhs.true43.cleanup55_crit_edge, label %lor.lhs.false47

land.lhs.true43.cleanup55_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

lor.lhs.false47:                                  ; preds = %land.lhs.true43
  %subsystem_device49 = getelementptr i8, ptr %1, i32 -98
  %27 = ptrtoint ptr %subsystem_device49 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_device49, align 2
  %conv50 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.sroa.12.0.id.sroa.12.0.id.sroa.12.0.id.sroa.12.12., i32 %conv50)
  %cmp51 = icmp eq i32 %id.sroa.12.0.id.sroa.12.0.id.sroa.12.0.id.sroa.12.12., %conv50
  br i1 %cmp51, label %lor.lhs.false47.cleanup55_crit_edge, label %lor.lhs.false47.if.else54_crit_edge

lor.lhs.false47.if.else54_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else54

lor.lhs.false47.cleanup55_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.else54:                                        ; preds = %lor.lhs.false47.if.else54_crit_edge, %lor.lhs.false37.if.else54_crit_edge, %lor.lhs.false27.if.else54_crit_edge, %lor.lhs.false.if.else54_crit_edge
  br label %cleanup55

cleanup55:                                        ; preds = %if.else54, %lor.lhs.false47.cleanup55_crit_edge, %land.lhs.true43.cleanup55_crit_edge
  %retval.0 = phi i1 [ false, %if.else54 ], [ true, %lor.lhs.false47.cleanup55_crit_edge ], [ true, %land.lhs.true43.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.sroa.6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.sroa.9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.sroa.12)
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pldmfw_flash_image(ptr noundef %context, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %records = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %records to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %records, ptr %records, align 4
  %prev.i = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %records, ptr %prev.i, align 8
  %components = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %components to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %components, ptr %components, align 4
  %prev.i42 = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %components, ptr %prev.i42, align 8
  %fw1 = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fw, ptr %fw1, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %context, ptr %call7.i.i, align 8
  %call3 = tail call fastcc i32 @pldm_parse_image(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.cond.i_crit_edge, label %if.end.out_release_data_crit_edge

if.end.out_release_data_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %record.0.in.i = phi ptr [ %record.0.i, %for.body.i.for.cond.i_crit_edge ], [ %records, %if.end.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %record.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %record.0.i = load ptr, ptr %record.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %record.0.i, %records
  br i1 %cmp.not.i, label %for.cond.i.out_release_data_crit_edge, label %for.body.i

for.cond.i.out_release_data_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

for.body.i:                                       ; preds = %for.cond.i
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = tail call zeroext i1 %13(ptr noundef %9, ptr noundef %record.0.i) #8
  br i1 %call.i, label %if.end10, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end10:                                         ; preds = %for.body.i
  %matching_record.i = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %matching_record.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %record.0.i, ptr %matching_record.i, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %send_package_data.i = getelementptr inbounds %struct.pldmfw_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %send_package_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %send_package_data.i, align 4
  %package_data.i = getelementptr inbounds %struct.pldmfw_record, ptr %record.0.i, i32 0, i32 7
  %21 = ptrtoint ptr %package_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %package_data.i, align 4
  %package_data_len.i = getelementptr inbounds %struct.pldmfw_record, ptr %record.0.i, i32 0, i32 5
  %23 = ptrtoint ptr %package_data_len.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %package_data_len.i, align 2
  %call.i44 = tail call i32 %20(ptr noundef %16, ptr noundef %22, i16 noundef zeroext %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool12.not = icmp eq i32 %call.i44, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out_release_data_crit_edge

if.end10.out_release_data_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

if.end14:                                         ; preds = %if.end10
  %25 = ptrtoint ptr %matching_record.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %matching_record.i, align 8
  %component_bitmap.i = getelementptr inbounds %struct.pldmfw_record, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %component_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %component_bitmap.i, align 4
  %29 = ptrtoint ptr %components to i32
  call void @__asan_load4_noabort(i32 %29)
  %component.064.i = load ptr, ptr %components, align 4
  %cmp.not65.i = icmp eq ptr %component.064.i, %components
  br i1 %cmp.not65.i, label %if.end14.if.end18_crit_edge, label %for.body.lr.ph.i

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

for.body.lr.ph.i:                                 ; preds = %if.end14
  %component_bitmap_len.i = getelementptr inbounds %struct.pldmfw_priv, ptr %call7.i.i, i32 0, i32 7
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.inc.i.for.body.i46_crit_edge, %for.body.lr.ph.i
  %component.066.i = phi ptr [ %component.064.i, %for.body.lr.ph.i ], [ %component.0.i, %for.inc.i.for.body.i46_crit_edge ]
  %index3.i = getelementptr inbounds %struct.pldmfw_component, ptr %component.066.i, i32 0, i32 11
  %30 = ptrtoint ptr %index3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index3.i, align 2
  %conv.i = zext i8 %31 to i32
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %28, i32 %div3.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %34 = shl nuw i32 1, %and.i.i
  %35 = and i32 %34, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %for.body.i46.for.inc.i_crit_edge, label %if.end.i

for.body.i46.for.inc.i_crit_edge:                 ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i46
  %36 = ptrtoint ptr %component_bitmap_len.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %component_bitmap_len.i, align 2
  %conv5.i = zext i16 %37 to i32
  %call6.i = tail call i32 @_find_first_bit_be(ptr noundef %28, i32 noundef %conv5.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %conv.i)
  %cmp7.i = icmp eq i32 %call6.i, %conv.i
  %spec.select.i = zext i1 %cmp7.i to i8
  %38 = ptrtoint ptr %component_bitmap_len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %component_bitmap_len.i, align 2
  %conv15.i = zext i16 %39 to i32
  %call5.i.i = tail call i32 @_find_last_bit(ptr noundef %28, i32 noundef %conv15.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %conv.i)
  %cmp17.i = icmp eq i32 %call5.i.i, %conv.i
  %40 = or i8 %spec.select.i, 4
  %transfer_flag.1.i = select i1 %cmp17.i, i8 %40, i8 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %transfer_flag.1.i)
  %tobool24.not.i = icmp eq i8 %transfer_flag.1.i, 0
  %spec.store.select.i = select i1 %tobool24.not.i, i8 2, i8 %transfer_flag.1.i
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %send_component_table.i = getelementptr inbounds %struct.pldmfw_ops, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %send_component_table.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %send_component_table.i, align 4
  %call28.i = tail call i32 %46(ptr noundef %42, ptr noundef %component.066.i, i8 noundef zeroext %spec.store.select.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.out_release_data_crit_edge

if.end.i.out_release_data_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i46.for.inc.i_crit_edge
  %47 = ptrtoint ptr %component.066.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %component.0.i = load ptr, ptr %component.066.i, align 4
  %cmp.not.i47 = icmp eq ptr %component.0.i, %components
  br i1 %cmp.not.i47, label %for.inc.i.if.end18_crit_edge, label %for.inc.i.for.body.i46_crit_edge

for.inc.i.for.body.i46_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i46

for.inc.i.if.end18_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %for.inc.i.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %call19 = tail call fastcc i32 @pldm_flash_components(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_release_data_crit_edge

if.end18.out_release_data_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

if.end22:                                         ; preds = %if.end18
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %finalize_update.i = getelementptr inbounds %struct.pldmfw_ops, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %finalize_update.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %finalize_update.i, align 4
  %tobool.not.i48 = icmp eq ptr %53, null
  br i1 %tobool.not.i48, label %if.end22.out_release_data_crit_edge, label %if.then.i50

if.end22.out_release_data_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_release_data

if.then.i50:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i49 = tail call i32 %53(ptr noundef %49) #8
  br label %out_release_data

out_release_data:                                 ; preds = %if.then.i50, %if.end22.out_release_data_crit_edge, %if.end18.out_release_data_crit_edge, %if.end.i.out_release_data_crit_edge, %if.end10.out_release_data_crit_edge, %for.cond.i.out_release_data_crit_edge, %if.end.out_release_data_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_release_data_crit_edge ], [ %call.i44, %if.end10.out_release_data_crit_edge ], [ %call19, %if.end18.out_release_data_crit_edge ], [ %call.i49, %if.then.i50 ], [ 0, %if.end22.out_release_data_crit_edge ], [ %call28.i, %if.end.i.out_release_data_crit_edge ], [ -2, %for.cond.i.out_release_data_crit_edge ]
  %54 = ptrtoint ptr %components to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %components, align 4
  %cmp.not94.i = icmp eq ptr %55, %components
  br i1 %cmp.not94.i, label %out_release_data.for.end.i_crit_edge, label %out_release_data.for.body.i53_crit_edge

out_release_data.for.body.i53_crit_edge:          ; preds = %out_release_data
  br label %for.body.i53

out_release_data.for.end.i_crit_edge:             ; preds = %out_release_data
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i53:                                     ; preds = %list_del.exit.i.for.body.i53_crit_edge, %out_release_data.for.body.i53_crit_edge
  %component.095.i = phi ptr [ %c_safe.0.i, %list_del.exit.i.for.body.i53_crit_edge ], [ %55, %out_release_data.for.body.i53_crit_edge ]
  %56 = ptrtoint ptr %component.095.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %c_safe.0.i = load ptr, ptr %component.095.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %component.095.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i53.list_del.exit.i_crit_edge

for.body.i53.list_del.exit.i_crit_edge:           ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %component.095.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %component.095.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %component.095.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i53.list_del.exit.i_crit_edge
  %63 = ptrtoint ptr %component.095.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %component.095.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %component.095.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %component.095.i) #8
  %cmp.not.i54 = icmp eq ptr %c_safe.0.i, %components
  br i1 %cmp.not.i54, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i53_crit_edge

list_del.exit.i.for.body.i53_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i53

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %out_release_data.for.end.i_crit_edge
  %65 = ptrtoint ptr %records to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %records, align 4
  %cmp26.not101.i = icmp eq ptr %66, %records
  br i1 %cmp26.not101.i, label %for.end.i.pldmfw_free_priv.exit_crit_edge, label %for.end.i.for.body28.i_crit_edge

for.end.i.for.body28.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body28.i

for.end.i.pldmfw_free_priv.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pldmfw_free_priv.exit

for.body28.i:                                     ; preds = %list_del.exit93.i.for.body28.i_crit_edge, %for.end.i.for.body28.i_crit_edge
  %record.0102.i = phi ptr [ %r_safe.0104.i, %list_del.exit93.i.for.body28.i_crit_edge ], [ %66, %for.end.i.for.body28.i_crit_edge ]
  %67 = ptrtoint ptr %record.0102.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %r_safe.0104.i = load ptr, ptr %record.0102.i, align 4
  %descs.i = getelementptr inbounds %struct.pldmfw_record, ptr %record.0102.i, i32 0, i32 1
  %68 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %descs.i, align 4
  %cmp41.not97.i = icmp eq ptr %69, %descs.i
  br i1 %cmp41.not97.i, label %for.body28.i.for.end51.i_crit_edge, label %for.body28.i.for.body43.i_crit_edge

for.body28.i.for.body43.i_crit_edge:              ; preds = %for.body28.i
  br label %for.body43.i

for.body28.i.for.end51.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51.i

for.body43.i:                                     ; preds = %list_del.exit87.i.for.body43.i_crit_edge, %for.body28.i.for.body43.i_crit_edge
  %desc.098.i = phi ptr [ %d_safe.0.i, %list_del.exit87.i.for.body43.i_crit_edge ], [ %69, %for.body28.i.for.body43.i_crit_edge ]
  %70 = ptrtoint ptr %desc.098.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %d_safe.0.i = load ptr, ptr %desc.098.i, align 4
  %call.i.i82.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %desc.098.i) #8
  br i1 %call.i.i82.i, label %if.end.i.i85.i, label %for.body43.i.list_del.exit87.i_crit_edge

for.body43.i.list_del.exit87.i_crit_edge:         ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit87.i

if.end.i.i85.i:                                   ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i83.i = getelementptr inbounds %struct.list_head, ptr %desc.098.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i83.i, align 4
  %73 = ptrtoint ptr %desc.098.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %desc.098.i, align 4
  %prev1.i.i.i84.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i84.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit87.i

list_del.exit87.i:                                ; preds = %if.end.i.i85.i, %for.body43.i.list_del.exit87.i_crit_edge
  %77 = ptrtoint ptr %desc.098.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %desc.098.i, align 4
  %prev.i86.i = getelementptr inbounds %struct.list_head, ptr %desc.098.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i86.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i86.i, align 4
  tail call void @kfree(ptr noundef %desc.098.i) #8
  %cmp41.not.i = icmp eq ptr %d_safe.0.i, %descs.i
  br i1 %cmp41.not.i, label %list_del.exit87.i.for.end51.i_crit_edge, label %list_del.exit87.i.for.body43.i_crit_edge

list_del.exit87.i.for.body43.i_crit_edge:         ; preds = %list_del.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.i

list_del.exit87.i.for.end51.i_crit_edge:          ; preds = %list_del.exit87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end51.i

for.end51.i:                                      ; preds = %list_del.exit87.i.for.end51.i_crit_edge, %for.body28.i.for.end51.i_crit_edge
  %component_bitmap.i56 = getelementptr inbounds %struct.pldmfw_record, ptr %record.0102.i, i32 0, i32 8
  %79 = ptrtoint ptr %component_bitmap.i56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %component_bitmap.i56, align 4
  %tobool.not.i57 = icmp eq ptr %80, null
  br i1 %tobool.not.i57, label %for.end51.i.if.end.i59_crit_edge, label %if.then.i58

for.end51.i.if.end.i59_crit_edge:                 ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i59

if.then.i58:                                      ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @bitmap_free(ptr noundef nonnull %80) #8
  %81 = ptrtoint ptr %component_bitmap.i56 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %component_bitmap.i56, align 4
  br label %if.end.i59

if.end.i59:                                       ; preds = %if.then.i58, %for.end51.i.if.end.i59_crit_edge
  %call.i.i88.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %record.0102.i) #8
  br i1 %call.i.i88.i, label %if.end.i.i91.i, label %if.end.i59.list_del.exit93.i_crit_edge

if.end.i59.list_del.exit93.i_crit_edge:           ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit93.i

if.end.i.i91.i:                                   ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i89.i = getelementptr inbounds %struct.list_head, ptr %record.0102.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i89.i, align 4
  %84 = ptrtoint ptr %record.0102.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %record.0102.i, align 4
  %prev1.i.i.i90.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i90.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit93.i

list_del.exit93.i:                                ; preds = %if.end.i.i91.i, %if.end.i59.list_del.exit93.i_crit_edge
  %88 = ptrtoint ptr %record.0102.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %record.0102.i, align 4
  %prev.i92.i = getelementptr inbounds %struct.list_head, ptr %record.0102.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i92.i, align 4
  tail call void @kfree(ptr noundef %record.0102.i) #8
  %cmp26.not.i = icmp eq ptr %r_safe.0104.i, %records
  br i1 %cmp26.not.i, label %list_del.exit93.i.pldmfw_free_priv.exit_crit_edge, label %list_del.exit93.i.for.body28.i_crit_edge

list_del.exit93.i.for.body28.i_crit_edge:         ; preds = %list_del.exit93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body28.i

list_del.exit93.i.pldmfw_free_priv.exit_crit_edge: ; preds = %list_del.exit93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pldmfw_free_priv.exit

pldmfw_free_priv.exit:                            ; preds = %list_del.exit93.i.pldmfw_free_priv.exit_crit_edge, %for.end.i.pldmfw_free_priv.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pldmfw_free_priv.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %pldmfw_free_priv.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_parse_image(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.pldmfw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %fw = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %data1 = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.rhs

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4 = icmp eq i32 %9, 0
  br i1 %tobool4, label %land.rhs.do.end_crit_edge, label %if.end27, !prof !58

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 588, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end27:                                         ; preds = %land.rhs
  %call = tail call fastcc i32 @pldm_parse_header(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %record_count.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %record_count.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %record_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp31.not.i = icmp eq i8 %11, 0
  br i1 %cmp31.not.i, label %if.end30.for.end.i_crit_edge, label %for.body.preheader.i

if.end30.for.end.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end30
  %record_start.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 11
  %12 = ptrtoint ptr %record_start.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %record_start.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.033.i = phi i8 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %record.032.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.preheader.i ]
  %call.i = tail call fastcc i32 @pldm_parse_one_record(ptr noundef %data, ptr noundef %record.032.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i8 %i.033.i, 1
  %14 = ptrtoint ptr %record.032.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %record.032.i, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %conv4.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %record.032.i, i32 %conv4.i
  %17 = ptrtoint ptr %record_count.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %record_count.i, align 4
  %cmp.i = icmp ult i8 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end30.for.end.i_crit_edge
  %19 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw, align 4
  %offset.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset.i, align 4
  %add.i.i.i = add i32 %22, 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.pldmfw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i.i.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %28, %add.i.i.i
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end34

do.body.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_image, %if.then4.i.i.i)) #8
          to label %cleanup [label %if.then4.i.i.i], !srcloc !59

if.then4.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %26, ptr noundef nonnull @.str.7, i32 noundef %32, i32 noundef %add.i.i.i) #8
  br label %cleanup

if.end34:                                         ; preds = %for.end.i
  %data5.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %33 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data5.i, align 4
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i.i.i, ptr %offset.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %34, i32 %22
  %36 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr6.i, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  %component_count.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 9
  %39 = ptrtoint ptr %component_count.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %component_count.i, align 2
  %components.i = getelementptr inbounds %struct.__pldmfw_component_area, ptr %add.ptr6.i, i32 0, i32 1
  %component_start.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 10
  %40 = ptrtoint ptr %component_start.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %components.i, ptr %component_start.i, align 4
  %call35 = tail call fastcc i32 @pldm_parse_components(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.pldmfw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1.i, align 4
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i, align 4
  %sub.i = add i32 %46, -4
  %47 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw, align 4
  %data2.i = getelementptr inbounds %struct.firmware, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data2.i, align 4
  %call.i55 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %50, i32 noundef %sub.i) #12
  %xor.i = xor i32 %call.i55, -1
  %header_crc.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 13
  %51 = ptrtoint ptr %header_crc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %header_crc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %xor.i)
  %cmp.not.i = icmp eq i32 %52, %xor.i
  br i1 %cmp.not.i, label %if.end38.cleanup_crit_edge, label %do.body.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_verify_header_crc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_image, %if.then6.i)) #8
          to label %cleanup [label %if.then6.i], !srcloc !59

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %header_crc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %header_crc.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_verify_header_crc.__UNIQUE_ID_ddebug244, ptr noundef %44, ptr noundef nonnull @.str.16, i32 noundef %xor.i, i32 noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %do.body.i, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then4.i.i.i, %do.body.i.i.i, %for.body.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end27.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ -14, %do.body.i.i.i ], [ -74, %if.then6.i ], [ 0, %if.end38.cleanup_crit_edge ], [ -74, %do.body.i ], [ -14, %if.then4.i.i.i ], [ %call.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_flash_components(ptr noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %matching_record = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %matching_record to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matching_record, align 4
  %component_bitmap = getelementptr inbounds %struct.pldmfw_record, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %component_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component_bitmap, align 4
  %components = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %components to i32
  call void @__asan_load4_noabort(i32 %4)
  %component.028 = load ptr, ptr %components, align 4
  %cmp.not29 = icmp eq ptr %component.028, %components
  br i1 %cmp.not29, label %entry.cleanup14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %component.030 = phi ptr [ %component.0, %for.inc.for.body_crit_edge ], [ %component.028, %entry.for.body_crit_edge ]
  %index3 = getelementptr inbounds %struct.pldmfw_component, ptr %component.030, i32 0, i32 11
  %5 = ptrtoint ptr %index3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index3, align 2
  %conv = zext i8 %6 to i32
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %3, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %flash_component = getelementptr inbounds %struct.pldmfw_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %flash_component to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_component, align 4
  %call5 = tail call i32 %16(ptr noundef %12, ptr noundef %component.030) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup14_crit_edge

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %component.030 to i32
  call void @__asan_load4_noabort(i32 %17)
  %component.0 = load ptr, ptr %component.030, align 4
  %cmp.not = icmp eq ptr %component.0, %components
  br i1 %cmp.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ %call5, %if.end.cleanup14_crit_edge ], [ 0, %for.inc.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_parse_header(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.pldmfw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %offset.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %add.i.i = add i32 %5, 36
  %fw.i.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %9, %add.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_header, %if.then4.i.i)) #8
          to label %cleanup [label %if.then4.i.i], !srcloc !59

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %13, i32 noundef %add.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i.i, ptr %offset.i, align 4
  %15 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i.i, align 4
  %data2 = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data2, align 4
  %header3 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %header3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %header3, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %18, ptr noundef nonnull dereferenceable(16) @pldm_firmware_header_id, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_parse_header.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_header, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !59

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_parse_header.__UNIQUE_ID_ddebug237, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @pldm_firmware_header_id, ptr noundef %18) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %revision = getelementptr inbounds %struct.__pldm_header, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.not = icmp eq i8 %21, 1
  br i1 %cmp.not, label %if.end34, label %do.body16

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_parse_header.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_header, %if.then28)) #8
          to label %cleanup [label %if.then28], !srcloc !59

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %revision, align 1
  %conv30 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_parse_header.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %conv30) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end13
  %size = getelementptr inbounds %struct.__pldm_header, ptr %18, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %size, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #8
  %total_header_size = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 6
  %27 = ptrtoint ptr %total_header_size to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %total_header_size, align 4
  %conv37 = zext i16 %26 to i32
  %sub = add nsw i32 %conv37, -36
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %add.i131 = add i32 %sub, %29
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.pldmfw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %add.i131)
  %cmp.i132 = icmp ult i32 %35, %add.i131
  br i1 %cmp.i132, label %do.body.i, label %if.end41

do.body.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_header, %if.then4.i)) #8
          to label %cleanup [label %if.then4.i], !srcloc !59

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %39, i32 noundef %add.i131) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %component_bitmap_len = getelementptr inbounds %struct.__pldm_header, ptr %18, i32 0, i32 4
  %40 = ptrtoint ptr %component_bitmap_len to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %component_bitmap_len, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #8
  %component_bitmap_len43 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 7
  %43 = ptrtoint ptr %component_bitmap_len43 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %component_bitmap_len43, align 2
  %44 = and i16 %42, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp46.not = icmp eq i16 %44, 0
  br i1 %cmp46.not, label %if.end67, label %do.body49

do.body49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_parse_header.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_header, %if.then61)) #8
          to label %cleanup [label %if.then61], !srcloc !59

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %component_bitmap_len43 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %component_bitmap_len43, align 2
  %conv63 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_parse_header.__UNIQUE_ID_ddebug239, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %conv63) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end41
  %div123 = lshr i16 %42, 3
  %bitmap_size = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 8
  %47 = ptrtoint ptr %bitmap_size to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %div123, ptr %bitmap_size, align 4
  %version_len = getelementptr inbounds %struct.__pldm_header, ptr %18, i32 0, i32 6
  %48 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %version_len, align 1
  %conv71 = zext i8 %49 to i32
  %call72 = tail call fastcc i32 @pldm_move_fw_offset(ptr noundef %data, i32 noundef %conv71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end67
  %50 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw.i.i, align 4
  %data77 = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %data77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data77, align 4
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  %call79 = tail call fastcc i32 @pldm_move_fw_offset(ptr noundef %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %53, i32 %55
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr, align 1
  %record_count83 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 12
  %58 = ptrtoint ptr %record_count83 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %record_count83, align 4
  %records = getelementptr inbounds %struct.__pldmfw_record_area, ptr %add.ptr, i32 0, i32 1
  %record_start = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 11
  %59 = ptrtoint ptr %record_start to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %records, ptr %record_start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end75.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.then61, %do.body49, %if.then4.i, %do.body.i, %if.then28, %do.body16, %if.then10, %do.body, %if.then4.i.i, %do.body.i.i
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -22, %if.then10 ], [ -95, %if.then28 ], [ -22, %if.then61 ], [ %call72, %if.end67.cleanup_crit_edge ], [ %call79, %if.end75.cleanup_crit_edge ], [ -14, %if.then4.i.i ], [ -14, %do.body.i.i ], [ -22, %do.body ], [ -95, %do.body16 ], [ -14, %if.then4.i ], [ -14, %do.body.i ], [ -22, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_parse_components(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.pldmfw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %component_count = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %component_count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %component_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp180.not = icmp eq i16 %5, 0
  br i1 %cmp180.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %component_start = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 10
  %6 = ptrtoint ptr %component_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component_start, align 4
  %offset.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %fw.i.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %components = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %__component.0182 = phi ptr [ %7, %for.body.lr.ph ], [ %add.ptr42, %for.inc.for.body_crit_edge ]
  %i.0181 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.i, align 4
  %add.i.i = add i32 %9, 22
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %dev1.i.i = getelementptr inbounds %struct.pldmfw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i.i, align 4
  %14 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %17, %add.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_components, %if.then4.i.i)) #8
          to label %cleanup67 [label %if.then4.i.i], !srcloc !59

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %add.i.i) #8
  br label %cleanup67

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i.i, ptr %offset.i, align 4
  %version_len = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 8
  %23 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %version_len, align 1
  %conv4 = zext i8 %24 to i32
  %add.i.i124 = add i32 %add.i.i, %conv4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev1.i.i125 = getelementptr inbounds %struct.pldmfw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev1.i.i125 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i.i125, align 4
  %29 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i.i124)
  %cmp.i.i127 = icmp ult i32 %32, %add.i.i124
  br i1 %cmp.i.i127, label %do.body.i.i128, label %if.end8

do.body.i.i128:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_components, %if.then4.i.i129)) #8
          to label %cleanup67 [label %if.then4.i.i129], !srcloc !59

if.then4.i.i129:                                  ; preds = %do.body.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef %36, i32 noundef %add.i.i124) #8
  br label %cleanup67

if.end8:                                          ; preds = %if.end
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i.i124, ptr %offset.i, align 4
  %location_offset = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 5
  %38 = ptrtoint ptr %location_offset to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %location_offset, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %size10 = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 6
  %41 = ptrtoint ptr %size10 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %size10, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %add.i134 = add i32 %43, %40
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.pldmfw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i, align 4
  %48 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %add.i134)
  %cmp.i = icmp ult i32 %51, %add.i134
  br i1 %cmp.i, label %do.body.i, label %if.end15

do.body.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_components, %if.then4.i)) #8
          to label %cleanup67 [label %if.then4.i], !srcloc !59

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %47, ptr noundef nonnull @.str.7, i32 noundef %55, i32 noundef %add.i134) #8
  br label %cleanup67

if.end15:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 36) #11
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup67_crit_edge, label %if.end19

if.end15.cleanup67_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end19:                                         ; preds = %if.end15
  %index = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %i.0181, ptr %index, align 2
  %58 = ptrtoint ptr %__component.0182 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %__component.0182, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #8
  %classification21 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %classification21 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %classification21, align 8
  %identifier = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 1
  %62 = ptrtoint ptr %identifier to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %identifier, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #8
  %identifier23 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %identifier23 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %identifier23, align 2
  %comparison_stamp = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 2
  %66 = ptrtoint ptr %comparison_stamp to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %comparison_stamp, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #8
  %comparison_stamp25 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %comparison_stamp25 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %comparison_stamp25, align 8
  %options = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 3
  %70 = ptrtoint ptr %options to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %options, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #8
  %options27 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %options27 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %options27, align 4
  %activation_method = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 4
  %74 = ptrtoint ptr %activation_method to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %activation_method, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #8
  %activation_method29 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %activation_method29 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %activation_method29, align 2
  %version_type = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 7
  %78 = ptrtoint ptr %version_type to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %version_type, align 1
  %version_type30 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %version_type30 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %version_type30, align 8
  %81 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %version_len, align 1
  %version_len32 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 10
  %83 = ptrtoint ptr %version_len32 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %version_len32, align 1
  %version_string = getelementptr inbounds %struct.__pldmfw_component_info, ptr %__component.0182, i32 0, i32 9
  %version_string33 = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 8
  %84 = ptrtoint ptr %version_string33 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %version_string, ptr %version_string33, align 4
  %85 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw.i.i, align 4
  %data34 = getelementptr inbounds %struct.firmware, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data34, align 4
  %add.ptr = getelementptr i8, ptr %88, i32 %40
  %component_data = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %component_data to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr, ptr %component_data, align 8
  %component_size = getelementptr inbounds %struct.pldmfw_component, ptr %call7.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %component_size to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %43, ptr %component_size, align 4
  %91 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %92, ptr noundef %components) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %94 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %components, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i, ptr %92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end19.for.inc_crit_edge
  %inc = add i8 %i.0181, 1
  %97 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %version_len, align 1
  %conv41 = zext i8 %98 to i32
  %add.ptr42 = getelementptr i8, ptr %version_string, i32 %conv41
  %99 = ptrtoint ptr %component_count to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %component_count, align 2
  %101 = zext i8 %inc to i16
  %cmp = icmp ugt i16 %100, %101
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %fw43 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %102 = ptrtoint ptr %fw43 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fw43, align 4
  %data44 = getelementptr inbounds %struct.firmware, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data44, align 4
  %offset45 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %106 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset45, align 4
  %add.ptr46 = getelementptr i8, ptr %105, i32 %107
  %add.i.i137 = add i32 %107, 4
  %108 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data, align 4
  %dev1.i.i138 = getelementptr inbounds %struct.pldmfw, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %dev1.i.i138 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1.i.i138, align 4
  %112 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %add.i.i137)
  %cmp.i.i140 = icmp ult i32 %113, %add.i.i137
  br i1 %cmp.i.i140, label %do.body.i.i141, label %if.end50

do.body.i.i141:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_components, %if.then4.i.i142)) #8
          to label %cleanup67 [label %if.then4.i.i142], !srcloc !59

if.then4.i.i142:                                  ; preds = %do.body.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %fw43 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fw43, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %111, ptr noundef nonnull @.str.7, i32 noundef %117, i32 noundef %add.i.i137) #8
  br label %cleanup67

if.end50:                                         ; preds = %for.end
  %118 = ptrtoint ptr %offset45 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add.i.i137, ptr %offset45, align 4
  %total_header_size = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 6
  %119 = ptrtoint ptr %total_header_size to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %total_header_size, align 4
  %conv52 = zext i16 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i137, i32 %conv52)
  %cmp53.not = icmp eq i32 %add.i.i137, %conv52
  br i1 %cmp53.not, label %if.end65, label %do.body

do.body:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_parse_components.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_components, %if.then60)) #8
          to label %cleanup67 [label %if.then60], !srcloc !59

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %total_header_size to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %total_header_size, align 4
  %conv62 = zext i16 %122 to i32
  %123 = ptrtoint ptr %offset45 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offset45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_parse_components.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %conv62, i32 noundef %124) #8
  br label %cleanup67

if.end65:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %add.ptr46, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #8
  %header_crc = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 13
  %128 = ptrtoint ptr %header_crc to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %header_crc, align 4
  br label %cleanup67

cleanup67:                                        ; preds = %if.end65, %if.then60, %do.body, %if.then4.i.i142, %do.body.i.i141, %if.end15.cleanup67_crit_edge, %if.then4.i, %do.body.i, %if.then4.i.i129, %do.body.i.i128, %if.then4.i.i, %do.body.i.i
  %retval.2 = phi i32 [ 0, %if.end65 ], [ -14, %if.then60 ], [ -14, %do.body.i.i ], [ -14, %do.body.i.i128 ], [ -14, %do.body.i ], [ -14, %if.then4.i.i142 ], [ -14, %do.body.i.i141 ], [ -14, %do.body ], [ -14, %if.then4.i ], [ -14, %if.then4.i.i129 ], [ -14, %if.then4.i.i ], [ -12, %if.end15.cleanup67_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_move_fw_offset(ptr nocapture noundef %data, i32 noundef %bytes_to_move) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add.i = add i32 %1, %bytes_to_move
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.pldmfw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i, align 4
  %fw.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.i = icmp ult i32 %9, %add.i
  br i1 %cmp.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_move_fw_offset, %if.then4.i)) #8
          to label %cleanup [label %if.then4.i], !srcloc !59

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %13, i32 noundef %add.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add = add i32 %15, %bytes_to_move
  store i32 %add, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4.i, %do.body.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then4.i ], [ -14, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_parse_one_record(ptr noundef %data, ptr noundef %__record) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %descs = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %descs, ptr %descs, align 8
  %prev.i = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %descs, ptr %prev.i, align 4
  %records = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 3
  %prev.i125 = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i125, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %records) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prev.i125 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i125, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %records, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %offset.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add.i.i = add i32 %10, 11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %dev1.i.i = getelementptr inbounds %struct.pldmfw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i.i, align 4
  %fw.i.i = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %18, %add.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end5

do.body.i.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_one_record, %if.then4.i.i)) #8
          to label %cleanup [label %if.then4.i.i], !srcloc !59

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %14, ptr noundef nonnull @.str.7, i32 noundef %22, i32 noundef %add.i.i) #8
  br label %cleanup

if.end5:                                          ; preds = %list_add_tail.exit
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i.i, ptr %offset.i, align 4
  %24 = ptrtoint ptr %__record to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %__record, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #8
  %package_data_len = getelementptr inbounds %struct.__pldmfw_record_info, ptr %__record, i32 0, i32 5
  %27 = ptrtoint ptr %package_data_len to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %package_data_len, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  %package_data_len9 = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %package_data_len9 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %package_data_len9, align 2
  %version_len = getelementptr inbounds %struct.__pldmfw_record_info, ptr %__record, i32 0, i32 4
  %31 = ptrtoint ptr %version_len to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %version_len, align 1
  %version_len10 = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %version_len10 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %version_len10, align 1
  %version_type = getelementptr inbounds %struct.__pldmfw_record_info, ptr %__record, i32 0, i32 3
  %34 = ptrtoint ptr %version_type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %version_type, align 1
  %version_type11 = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %version_type11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %version_type11, align 4
  %37 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw.i.i, align 4
  %data12 = getelementptr inbounds %struct.firmware, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data12, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %add.i.i
  %bitmap_size = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 8
  %41 = ptrtoint ptr %bitmap_size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bitmap_size, align 4
  %conv = zext i16 %42 to i32
  %add.i.i128 = add i32 %add.i.i, %conv
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %dev1.i.i129 = getelementptr inbounds %struct.pldmfw, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev1.i.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev1.i.i129, align 4
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add.i.i128)
  %cmp.i.i131 = icmp ult i32 %48, %add.i.i128
  br i1 %cmp.i.i131, label %do.body.i.i132, label %if.end16

do.body.i.i132:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_one_record, %if.then4.i.i133)) #8
          to label %cleanup [label %if.then4.i.i133], !srcloc !59

if.then4.i.i133:                                  ; preds = %do.body.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %46, ptr noundef nonnull @.str.7, i32 noundef %52, i32 noundef %add.i.i128) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %53 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i.i128, ptr %offset.i, align 4
  %component_bitmap_len = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 7
  %54 = ptrtoint ptr %component_bitmap_len to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %component_bitmap_len, align 2
  %component_bitmap_len17 = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %component_bitmap_len17 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %component_bitmap_len17, align 4
  %conv19 = zext i16 %55 to i32
  %call20 = tail call ptr @bitmap_zalloc(i32 noundef %conv19, i32 noundef 3264) #8
  %component_bitmap = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 8
  %57 = ptrtoint ptr %component_bitmap to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call20, ptr %component_bitmap, align 8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end16.cleanup_crit_edge, label %for.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %58 = ptrtoint ptr %bitmap_size to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %bitmap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp157.not = icmp eq i16 %59, 0
  br i1 %cmp157.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0158 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %60 = ptrtoint ptr %component_bitmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %component_bitmap, align 8
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.0158
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %63 to i32
  %mul = shl i32 %i.0158, 3
  %div7.i = lshr i32 %mul, 5
  %rem.i = and i32 %mul, 24
  %shl.i = shl nuw i32 255, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr i32, ptr %61, i32 %div7.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %65, %neg.i
  %shl1.i = shl nuw i32 %conv29, %rem.i
  %or.i = or i32 %and.i, %shl1.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.0158, 1
  %66 = ptrtoint ptr %bitmap_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %bitmap_size, align 4
  %conv26 = zext i16 %67 to i32
  %cmp = icmp ult i32 %inc, %conv26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %68 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw.i.i, align 4
  %data31 = getelementptr inbounds %struct.firmware, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data31, align 4
  %72 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset.i, align 4
  %add.ptr33 = getelementptr i8, ptr %71, i32 %73
  %version_string = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 2
  %74 = ptrtoint ptr %version_string to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr33, ptr %version_string, align 8
  %75 = ptrtoint ptr %version_len10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %version_len10, align 1
  %conv35 = zext i8 %76 to i32
  %add.i.i139 = add i32 %73, %conv35
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %dev1.i.i140 = getelementptr inbounds %struct.pldmfw, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %dev1.i.i140 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev1.i.i140, align 4
  %81 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %add.i.i139)
  %cmp.i.i142 = icmp ult i32 %82, %add.i.i139
  br i1 %cmp.i.i142, label %do.body.i.i143, label %if.end39

do.body.i.i143:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_one_record, %if.then4.i.i144)) #8
          to label %cleanup [label %if.then4.i.i144], !srcloc !59

if.then4.i.i144:                                  ; preds = %do.body.i.i143
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fw.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %80, ptr noundef nonnull @.str.7, i32 noundef %86, i32 noundef %add.i.i139) #8
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %87 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i.i139, ptr %offset.i, align 4
  %descriptor_count = getelementptr inbounds %struct.__pldmfw_record_info, ptr %__record, i32 0, i32 1
  %88 = ptrtoint ptr %descriptor_count to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %descriptor_count, align 1
  %call40 = tail call fastcc i32 @pldm_parse_desc_tlvs(ptr noundef %data, ptr noundef nonnull %call7.i.i, i8 noundef zeroext %89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %90 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fw.i.i, align 4
  %data45 = getelementptr inbounds %struct.firmware, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data45, align 4
  %94 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset.i, align 4
  %add.ptr47 = getelementptr i8, ptr %93, i32 %95
  %package_data = getelementptr inbounds %struct.pldmfw_record, ptr %call7.i.i, i32 0, i32 7
  %96 = ptrtoint ptr %package_data to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr47, ptr %package_data, align 4
  %97 = ptrtoint ptr %package_data_len9 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %package_data_len9, align 2
  %conv49 = zext i16 %98 to i32
  %call50 = tail call fastcc i32 @pldm_move_fw_offset(ptr noundef %data, i32 noundef %conv49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end43
  %99 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset.i, align 4
  %101 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fw.i.i, align 4
  %data56 = getelementptr inbounds %struct.firmware, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data56, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %__record to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %104 to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %100
  %conv57 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv57)
  %cmp58.not = icmp eq i32 %sub, %conv57
  br i1 %cmp58.not, label %if.end53.cleanup_crit_edge, label %do.body

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_parse_one_record.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_one_record, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !59

if.then65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.pldmfw, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_parse_one_record.__UNIQUE_ID_ddebug242, ptr noundef %108, ptr noundef nonnull @.str.9, i32 noundef %sub, i32 noundef %conv57) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body, %if.end53.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then4.i.i144, %do.body.i.i143, %if.end16.cleanup_crit_edge, %if.then4.i.i133, %do.body.i.i132, %if.then4.i.i, %do.body.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ %call50, %if.end43.cleanup_crit_edge ], [ -14, %if.then65 ], [ 0, %if.end53.cleanup_crit_edge ], [ -14, %if.then4.i.i ], [ -14, %do.body.i.i ], [ -14, %if.then4.i.i133 ], [ -14, %do.body.i.i132 ], [ -14, %if.then4.i.i144 ], [ -14, %do.body.i.i143 ], [ -14, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_parse_desc_tlvs(ptr nocapture noundef %data, ptr noundef %record, i8 noundef zeroext %desc_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 1
  %offset = getelementptr inbounds %struct.pldmfw_priv, ptr %data, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %desc_count)
  %cmp84.not = icmp eq i8 %desc_count, 0
  br i1 %cmp84.not, label %entry.cleanup35_crit_edge, label %for.body.lr.ph

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %data1 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %descs = getelementptr inbounds %struct.pldmfw_record, ptr %record, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.pldmfw_record, ptr %record, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %__desc.085 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr34, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.i.i = add i32 %7, 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %dev1.i.i = getelementptr inbounds %struct.pldmfw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %15, %add.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_desc_tlvs, %if.then4.i.i)) #8
          to label %cleanup35 [label %if.then4.i.i], !srcloc !59

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef %add.i.i) #8
  br label %cleanup35

if.end:                                           ; preds = %for.body
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i.i, ptr %offset, align 4
  %21 = ptrtoint ptr %__desc.085 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %__desc.085, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  %size6 = getelementptr inbounds %struct.__pldmfw_desc_tlv, ptr %__desc.085, i32 0, i32 1
  %24 = ptrtoint ptr %size6 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %size6, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #8
  %call8 = tail call fastcc i32 @pldm_check_desc_tlv_len(ptr noundef %data, i16 noundef zeroext %23, i16 noundef zeroext %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup35_crit_edge

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end11:                                         ; preds = %if.end
  %conv12 = zext i16 %26 to i32
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add.i.i60 = add i32 %28, %conv12
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %dev1.i.i61 = getelementptr inbounds %struct.pldmfw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %dev1.i.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1.i.i61, align 4
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add.i.i60)
  %cmp.i.i63 = icmp ult i32 %36, %add.i.i60
  br i1 %cmp.i.i63, label %do.body.i.i64, label %if.end16

do.body.i.i64:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_parse_desc_tlvs, %if.then4.i.i65)) #8
          to label %cleanup35 [label %if.then4.i.i65], !srcloc !59

if.then4.i.i65:                                   ; preds = %do.body.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_fw_space.__UNIQUE_ID_ddebug236, ptr noundef %32, ptr noundef nonnull @.str.7, i32 noundef %40, i32 noundef %add.i.i60) #8
  br label %cleanup35

if.end16:                                         ; preds = %if.end11
  %41 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i60, ptr %offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 16) #11
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.cleanup35_crit_edge, label %if.end20

if.end16.cleanup35_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

if.end20:                                         ; preds = %if.end16
  %type21 = getelementptr inbounds %struct.pldmfw_desc_tlv, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %type21 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %23, ptr %type21, align 4
  %size22 = getelementptr inbounds %struct.pldmfw_desc_tlv, ptr %call7.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %size22 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %26, ptr %size22, align 2
  %data23 = getelementptr inbounds %struct.__pldmfw_desc_tlv, ptr %__desc.085, i32 0, i32 2
  %data24 = getelementptr inbounds %struct.pldmfw_desc_tlv, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data23, ptr %data24, align 8
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %47, ptr noundef %descs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %49 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %descs, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i, ptr %47, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end20.for.inc_crit_edge
  %inc = add nuw i8 %i.086, 1
  %52 = ptrtoint ptr %size6 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %size6, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #8
  %conv33 = zext i16 %54 to i32
  %add.ptr34 = getelementptr i8, ptr %data23, i32 %conv33
  %cmp = icmp ult i8 %inc, %desc_count
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup35_crit_edge

for.inc.cleanup35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup35:                                        ; preds = %for.inc.cleanup35_crit_edge, %if.end16.cleanup35_crit_edge, %if.then4.i.i65, %do.body.i.i64, %if.end.cleanup35_crit_edge, %if.then4.i.i, %do.body.i.i, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ -14, %do.body.i.i ], [ -14, %do.body.i.i64 ], [ -14, %if.then4.i.i65 ], [ -14, %if.then4.i.i ], [ 0, %entry.cleanup35_crit_edge ], [ 0, %for.inc.cleanup35_crit_edge ], [ %call8, %if.end.cleanup35_crit_edge ], [ -12, %if.end16.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pldm_check_desc_tlv_len(ptr nocapture noundef readonly %data, i16 noundef zeroext %type, i16 noundef zeroext %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.pldmfw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %conv = zext i16 %type to i32
  %4 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %type, label %do.body [
    i16 0, label %entry.sw.epilog_crit_edge
    i16 256, label %entry.sw.epilog_crit_edge45
    i16 257, label %entry.sw.epilog_crit_edge46
    i16 258, label %entry.sw.epilog_crit_edge47
    i16 259, label %sw.bb2
    i16 3, label %sw.bb3
    i16 1, label %entry.sw.bb4_crit_edge
    i16 4, label %entry.sw.bb4_crit_edge48
    i16 260, label %entry.sw.bb4_crit_edge49
    i16 261, label %entry.sw.bb4_crit_edge50
    i16 2, label %sw.bb5
    i16 -1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.bb4_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge48, %entry.sw.bb4_crit_edge49, %entry.sw.bb4_crit_edge50
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_check_desc_tlv_len, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !59

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug240, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %conv) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge45, %entry.sw.epilog_crit_edge46, %entry.sw.epilog_crit_edge47
  %expected_size.0 = phi i32 [ 16, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 1, %sw.bb2 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge45 ], [ 2, %entry.sw.epilog_crit_edge46 ], [ 2, %entry.sw.epilog_crit_edge47 ]
  %conv10 = zext i16 %size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_size.0, i32 %conv10)
  %cmp.not = icmp eq i32 %expected_size.0, %conv10
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.body14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pldm_check_desc_tlv_len, %if.then26)) #8
          to label %cleanup [label %if.then26], !srcloc !59

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug241, ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv10, i32 noundef %expected_size.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %sw.epilog.cleanup_crit_edge, %if.then, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ -22, %if.then26 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %do.body ], [ -22, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_pldmfw_op_pci_match_record, !1, !"__ksymtab_pldmfw_op_pci_match_record", i1 false, i1 false}
!1 = !{!"../lib/pldmfw/pldmfw.c", i32 681, i32 1}
!2 = !{ptr @__ksymtab_pldmfw_flash_image, !3, !"__ksymtab_pldmfw_flash_image", i1 false, i1 false}
!3 = !{!"../lib/pldmfw/pldmfw.c", i32 875, i32 1}
!4 = !{ptr @__UNIQUE_ID_author245, !5, !"__UNIQUE_ID_author245", i1 false, i1 false}
!5 = !{!"../lib/pldmfw/pldmfw.c", i32 877, i32 1}
!6 = !{ptr @__UNIQUE_ID_file246, !7, !"__UNIQUE_ID_file246", i1 false, i1 false}
!7 = !{!"../lib/pldmfw/pldmfw.c", i32 878, i32 1}
!8 = !{ptr @__UNIQUE_ID_license247, !7, !"__UNIQUE_ID_license247", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description248, !10, !"__UNIQUE_ID_description248", i1 false, i1 false}
!10 = !{!"../lib/pldmfw/pldmfw.c", i32 879, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/pldmfw/pldmfw.c", i32 588, i32 6}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/pldmfw/pldmfw.c", i32 139, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pldm_parse_header.__UNIQUE_ID_ddebug237, !14, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/pldmfw/pldmfw.c", i32 145, i32 3}
!20 = !{ptr @pldm_parse_header.__UNIQUE_ID_ddebug238, !19, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/pldmfw/pldmfw.c", i32 161, i32 3}
!23 = !{ptr @pldm_parse_header.__UNIQUE_ID_ddebug239, !22, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!24 = !{ptr @pldm_firmware_header_id, !25, !"pldm_firmware_header_id", i1 false, i1 false}
!25 = !{!"../lib/pldmfw/pldmfw_private.h", i32 27, i32 21}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/pldmfw/pldmfw.c", i32 71, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pldm_check_fw_space.__UNIQUE_ID_ddebug236, !27, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/pldmfw/pldmfw.c", i32 383, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pldm_parse_one_record.__UNIQUE_ID_ddebug242, !31, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/pldmfw/pldmfw.c", i32 234, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug240, !35, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/pldmfw/pldmfw.c", i32 239, i32 3}
!40 = !{ptr @pldm_check_desc_tlv_len.__UNIQUE_ID_ddebug241, !39, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/pldmfw/pldmfw.c", i32 495, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pldm_parse_components.__UNIQUE_ID_ddebug243, !42, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/pldmfw/pldmfw.c", i32 528, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pldm_verify_header_crc.__UNIQUE_ID_ddebug244, !46, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2148336080, i64 2148336085, i64 2148336098, i64 2148336142, i64 2148336176, i64 2148336197}
