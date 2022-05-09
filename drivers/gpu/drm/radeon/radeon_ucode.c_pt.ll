; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_ucode.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_ucode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.common_firmware_header = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.mc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32 }
%struct.smc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32 }
%struct.gfx_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32 }
%struct.rlc_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32, i32 }
%struct.sdma_firmware_header_v1_0 = type { %struct.common_firmware_header, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MC\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"io_debug_size_bytes: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"io_debug_array_offset_bytes: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown MC ucode version: %u.%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ucode_start_addr: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown SMC ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GFX\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ucode_feature_version: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jt_offset: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jt_size: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown GFX ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RLC\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"save_and_restore_offset: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clear_state_descriptor_offset: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"avail_scratch_ram_locations: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"master_pkt_description_offset: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown RLC ucode version: %u.%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDMA\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ucode_change_version: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown SDMA ucode version: %u.%u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"size_bytes: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"header_size_bytes: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"header_version_major: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"header_version_minor: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_version_major: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip_version_minor: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ucode_version: 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ucode_size_bytes: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ucode_array_offset_bytes: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crc32: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 51, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 58, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 60, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 63, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 72, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 79, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 81, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 90, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 97, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 99, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 100, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 102, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 111, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 120, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 122, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 124, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 126, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 129, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 138, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 147, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 152, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 33, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 34, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 35, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 36, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 37, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 38, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 39, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 40, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 41, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_ucode.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 43, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ucode_print_mc_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #4
  tail call fastcc void @radeon_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %io_debug_size_bytes = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %io_debug_size_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_debug_size_bytes, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %6) #4
  %io_debug_array_offset_bytes = getelementptr inbounds %struct.mc_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %io_debug_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_debug_array_offset_bytes, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %9) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %10 to i32
  %11 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %11 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_ucode_print_common_hdr(ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %2) #4
  %header_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %header_size_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %header_size_bytes, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %5) #4
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %header_version_major, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, i32 noundef %conv) #4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %9 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %header_version_minor, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv1 = zext i16 %11 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %conv1) #4
  %ip_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 4
  %12 = ptrtoint ptr %ip_version_major to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ip_version_major, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv2 = zext i16 %14 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %conv2) #4
  %ip_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 5
  %15 = ptrtoint ptr %ip_version_minor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ip_version_minor, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv3 = zext i16 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %conv3) #4
  %ucode_version = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 6
  %18 = ptrtoint ptr %ucode_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucode_version, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27, i32 noundef %20) #4
  %ucode_size_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 7
  %21 = ptrtoint ptr %ucode_size_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ucode_size_bytes, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %23) #4
  %ucode_array_offset_bytes = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 8
  %24 = ptrtoint ptr %ucode_array_offset_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ucode_array_offset_bytes, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %26) #4
  %crc32 = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 9
  %27 = ptrtoint ptr %crc32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crc32, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %29) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ucode_print_smc_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #4
  tail call fastcc void @radeon_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ucode_start_addr = getelementptr inbounds %struct.smc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_start_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_start_addr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %6) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %7 to i32
  %8 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %8 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ucode_print_gfx_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #4
  tail call fastcc void @radeon_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ucode_feature_version = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_feature_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %6) #4
  %jt_offset = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %jt_offset, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %9) #4
  %jt_size = getelementptr inbounds %struct.gfx_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jt_size, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %12) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %13 to i32
  %14 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %14 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ucode_print_rlc_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12) #4
  tail call fastcc void @radeon_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ucode_feature_version = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_feature_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %6) #4
  %save_and_restore_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %save_and_restore_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %save_and_restore_offset, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %9) #4
  %clear_state_descriptor_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %clear_state_descriptor_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clear_state_descriptor_offset, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %12) #4
  %avail_scratch_ram_locations = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 4
  %13 = ptrtoint ptr %avail_scratch_ram_locations to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avail_scratch_ram_locations, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %15) #4
  %master_pkt_description_offset = getelementptr inbounds %struct.rlc_firmware_header_v1_0, ptr %hdr, i32 0, i32 5
  %16 = ptrtoint ptr %master_pkt_description_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %master_pkt_description_offset, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef %18) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %19 to i32
  %20 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %20 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ucode_print_sdma_hdr(ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %header_version_major = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %header_version_major to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %header_version_major, align 4
  %header_version_minor = getelementptr inbounds %struct.common_firmware_header, ptr %hdr, i32 0, i32 3
  %2 = ptrtoint ptr %header_version_minor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %header_version_minor, align 2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.18) #4
  tail call fastcc void @radeon_ucode_print_common_hdr(ptr noundef %hdr)
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp = icmp eq i16 %1, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ucode_feature_version = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %ucode_feature_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ucode_feature_version, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %6) #4
  %ucode_change_version = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 2
  %7 = ptrtoint ptr %ucode_change_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ucode_change_version, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19, i32 noundef %9) #4
  %jt_offset = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 3
  %10 = ptrtoint ptr %jt_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jt_offset, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %12) #4
  %jt_size = getelementptr inbounds %struct.sdma_firmware_header_v1_0, ptr %hdr, i32 0, i32 4
  %13 = ptrtoint ptr %jt_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jt_size, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %15) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %16 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %16 to i32
  %17 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv3 = zext i16 %17 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %conv3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_ucode_validate(ptr nocapture noundef readonly %fw) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp = icmp eq i32 %3, %6
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 58, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 60, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 63, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 72, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 79, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 81, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 90, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 97, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 99, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 100, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 102, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 111, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 120, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 122, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 124, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 126, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 129, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 138, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 147, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 152, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 33, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 34, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 35, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 36, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 37, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 38, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 39, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 40, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 41, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_ucode.c", i32 43, i32 2}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
