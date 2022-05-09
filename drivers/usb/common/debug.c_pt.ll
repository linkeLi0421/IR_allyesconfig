; ModuleID = '/llk/IR_all_yes/drivers/usb/common/debug.c_pt.bc'
source_filename = "../drivers/usb/common/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_decode_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_decode_ctrl\09\09\09\09"
module asm "\09.long\09__crc_usb_decode_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_decode_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_decode_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_usb_decode_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_usb_decode_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_decode_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_decode_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_decode_ctrl to i32), ptr @__kstrtab_usb_decode_ctrl, ptr @__kstrtabns_usb_decode_ctrl }, section "___ksymtab_gpl+usb_decode_ctrl", align 4
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Get Device Status(Length = %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Get Interface Status(Intf = %d, Length = %d)\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get Endpoint Status(ep%d%s)\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s Device Feature(%s%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Clear\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Set\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Interface Feature(%s)\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Function Suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Endpoint Feature(%s ep%d%s)\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Halt\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Self Powered\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Remote Wakeup\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test Mode\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"U1 Enable\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"U2 Enable\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LTM Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c": TEST_J\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c": TEST_K\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c": TEST_SE0_NAK\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c": TEST_PACKET\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c": TEST_FORCE_EN\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c": UNKNOWN\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Address(Addr = %02x)\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Configuration\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"String\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Interface\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Endpoint\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Device Qualifier\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Other Speed Config\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Interface Power\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OTG\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Debug\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Interface Association\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BOS\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Device Capability\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pipe Usage\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SS Endpoint Companion\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SSP Isochronous Endpoint Companion\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s Descriptor(Index = %d, Length = %d)\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Get\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Get Configuration(Length = %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set Configuration(Config = %d)\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Get Interface(Intf = %d, Length = %d)\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set Interface(Intf = %d, Alt.Setting = %d)\00", [53 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Synch Frame(Endpoint = %d, Length = %d)\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set SEL(Length = %d)\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Set Isochronous Delay(Delay = %d ns)\00", [59 x i8] zeroinitializer }, align 32
@switch.table.usb_decode_ctrl = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 48, i64 49]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.56 = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 15, i64 16, i64 36, i64 48, i64 49]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 275, i32 23 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 19, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 23, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 27, i32 23 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 29, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 29, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 78, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 79, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 79, i32 51 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 82, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 85, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 88, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 88, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 91, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 93, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 38, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 40, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 44, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 46, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 48, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 58, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 60, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 62, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 64, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 66, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 68, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 102, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 113, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 116, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 119, i32 7 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 122, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 125, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 128, i32 7 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 131, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 134, i32 7 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 137, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 140, i32 7 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 143, i32 7 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 146, i32 7 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 149, i32 7 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 152, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 155, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 158, i32 7 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 165, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 166, i32 40 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 172, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 177, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 183, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 190, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 197, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 203, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [30 x i8] c"../drivers/usb/common/debug.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 208, i32 22 }
@___asan_gen_.216 = private unnamed_addr constant [29 x i8] c"switch.table.usb_decode_ctrl\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_usb_decode_ctrl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @switch.table.usb_decode_ctrl], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usb_decode_ctrl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_decode_ctrl(ptr noundef returned writeonly %str, i32 noundef %size, i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %bRequest to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bRequest, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %entry.sw.bb1_crit_edge
    i8 3, label %entry.sw.bb1_crit_edge117
    i8 5, label %sw.bb2
    i8 6, label %entry.sw.bb3_crit_edge
    i8 7, label %entry.sw.bb3_crit_edge118
    i8 8, label %sw.bb4
    i8 9, label %sw.bb5
    i8 10, label %sw.bb7
    i8 11, label %sw.bb8
    i8 12, label %sw.bb10
    i8 48, label %sw.bb11
    i8 49, label %sw.bb12
  ]

entry.sw.bb3_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb1_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  %1 = and i8 %bRequestType, 31
  %and.i = zext i8 %1 to i32
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and.i, label %sw.bb.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %conv1.i = zext i16 %wLength to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.1, i32 noundef %conv1.i) #3
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %conv3.i = zext i16 %wIndex to i32
  %conv4.i = zext i16 %wLength to i32
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.2, i32 noundef %conv3.i, i32 noundef %conv4.i) #3
  br label %sw.epilog

sw.bb6.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %conv7.i = zext i16 %wIndex to i32
  %and8.i = and i32 %conv7.i, 65407
  %and10.i = and i32 %conv7.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.5, ptr @.str.4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.3, i32 noundef %and8.i, ptr noundef nonnull %cond.i) #3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge117
  %3 = and i8 %bRequestType, 31
  %and.i88 = zext i8 %3 to i32
  %4 = zext i32 %and.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and.i88, label %sw.bb1.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i90
    i32 1, label %sw.bb9.i
    i32 2, label %sw.bb19.i
  ]

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i90:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bRequest)
  %cmp.i = icmp eq i8 %bRequest, 1
  %cond.i89 = select i1 %cmp.i, ptr @.str.7, ptr @.str.8
  %5 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %wValue, label %sw.default.i.i [
    i16 0, label %sw.bb.i90.cond.end.i_crit_edge
    i16 1, label %sw.bb1.i.i
    i16 2, label %cond.true.i
    i16 48, label %sw.bb3.i.i
    i16 49, label %sw.bb4.i.i
    i16 50, label %sw.bb5.i.i
  ]

sw.bb.i90.cond.end.i_crit_edge:                   ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

sw.bb3.i.i:                                       ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

sw.bb4.i.i:                                       ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

sw.bb5.i.i:                                       ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

sw.default.i.i:                                   ; preds = %sw.bb.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb.i90
  %switch.tableidx = add i16 %wIndex, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %6 = icmp ult i16 %switch.tableidx, 5
  br i1 %6, label %switch.lookup, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

switch.lookup:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.usb_decode_ctrl, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %switch.lookup, %cond.true.i.cond.end.i_crit_edge, %sw.default.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb1.i.i, %sw.bb.i90.cond.end.i_crit_edge
  %retval.0.i53.i = phi ptr [ @.str.15, %sw.bb.i90.cond.end.i_crit_edge ], [ @.str.16, %sw.bb1.i.i ], [ @.str.18, %sw.bb3.i.i ], [ @.str.19, %sw.bb4.i.i ], [ @.str.20, %sw.bb5.i.i ], [ @.str.12, %sw.default.i.i ], [ @.str.17, %switch.lookup ], [ @.str.17, %cond.true.i.cond.end.i_crit_edge ]
  %cond7.i = phi ptr [ @.str.9, %sw.bb.i90.cond.end.i_crit_edge ], [ @.str.9, %sw.bb1.i.i ], [ @.str.9, %sw.bb3.i.i ], [ @.str.9, %sw.bb4.i.i ], [ @.str.9, %sw.bb5.i.i ], [ @.str.9, %sw.default.i.i ], [ %switch.load, %switch.lookup ], [ @.str.26, %cond.true.i.cond.end.i_crit_edge ]
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond.i89, ptr noundef nonnull %retval.0.i53.i, ptr noundef nonnull %cond7.i) #3
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bRequest)
  %cmp11.i = icmp eq i8 %bRequest, 1
  %cond13.i = select i1 %cmp11.i, ptr @.str.7, ptr @.str.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wValue)
  %cmp15.i = icmp eq i16 %wValue, 0
  %cond17.i = select i1 %cmp15.i, ptr @.str.11, ptr @.str.12
  %call18.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond13.i, ptr noundef nonnull %cond17.i) #3
  br label %sw.epilog

sw.bb19.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bRequest)
  %cmp21.i = icmp eq i8 %bRequest, 1
  %cond23.i = select i1 %cmp21.i, ptr @.str.7, ptr @.str.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wValue)
  %cmp25.i = icmp eq i16 %wValue, 0
  %cond27.i = select i1 %cmp25.i, ptr @.str.14, ptr @.str.12
  %conv28.i = zext i16 %wIndex to i32
  %and29.i = and i32 %conv28.i, 65407
  %and31.i = and i32 %conv28.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool.not.i91 = icmp eq i32 %and31.i, 0
  %cond32.i = select i1 %tobool.not.i91, ptr @.str.5, ptr @.str.4
  %call33.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond23.i, ptr noundef nonnull %cond27.i, i32 noundef %and29.i, ptr noundef nonnull %cond32.i) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i = zext i16 %wValue to i32
  %call.i92 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.27, i32 noundef %conv.i) #3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge118
  %9 = lshr i16 %wValue, 8
  %trunc.i = trunc i16 %9 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %trunc.i, label %sw.default.i [
    i8 1, label %sw.bb3.usb_decode_get_set_descriptor.exit_crit_edge
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb2.i93
    i8 4, label %sw.bb3.i
    i8 5, label %sw.bb4.i
    i8 6, label %sw.bb5.i
    i8 7, label %sw.bb6.i94
    i8 8, label %sw.bb7.i
    i8 9, label %sw.bb8.i
    i8 10, label %sw.bb9.i95
    i8 11, label %sw.bb10.i
    i8 15, label %sw.bb11.i
    i8 16, label %sw.bb12.i
    i8 36, label %sw.bb13.i
    i8 48, label %sw.bb14.i
    i8 49, label %sw.bb15.i
  ]

sw.bb3.usb_decode_get_set_descriptor.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb1.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb2.i93:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb3.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb4.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb5.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb6.i94:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb7.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb8.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb9.i95:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb10.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb11.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb12.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb13.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb14.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.bb15.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

sw.default.i:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_decode_get_set_descriptor.exit

usb_decode_get_set_descriptor.exit:               ; preds = %sw.default.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i95, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i94, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i93, %sw.bb1.i, %sw.bb3.usb_decode_get_set_descriptor.exit_crit_edge
  %s.0.i = phi ptr [ @.str.12, %sw.default.i ], [ @.str.43, %sw.bb15.i ], [ @.str.42, %sw.bb14.i ], [ @.str.41, %sw.bb13.i ], [ @.str.40, %sw.bb12.i ], [ @.str.39, %sw.bb11.i ], [ @.str.38, %sw.bb10.i ], [ @.str.37, %sw.bb9.i95 ], [ @.str.36, %sw.bb8.i ], [ @.str.35, %sw.bb7.i ], [ @.str.34, %sw.bb6.i94 ], [ @.str.33, %sw.bb5.i ], [ @.str.32, %sw.bb4.i ], [ @.str.31, %sw.bb3.i ], [ @.str.30, %sw.bb2.i93 ], [ @.str.29, %sw.bb1.i ], [ @.str.28, %sw.bb3.usb_decode_get_set_descriptor.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bRequest)
  %cmp.i96 = icmp eq i8 %bRequest, 6
  %cond.i97 = select i1 %cmp.i96, ptr @.str.45, ptr @.str.8
  %11 = and i16 %wValue, 255
  %and.i98 = zext i16 %11 to i32
  %conv19.i = zext i16 %wLength to i32
  %call.i99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.44, ptr noundef nonnull %cond.i97, ptr noundef nonnull %s.0.i, i32 noundef %and.i98, i32 noundef %conv19.i) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i100 = zext i16 %wLength to i32
  %call.i101 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.46, i32 noundef %conv.i100) #3
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %12 = and i16 %wValue, 255
  %conv.i102 = zext i16 %12 to i32
  %call.i103 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.47, i32 noundef %conv.i102) #3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i104 = zext i16 %wIndex to i32
  %conv1.i105 = zext i16 %wLength to i32
  %call.i106 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.48, i32 noundef %conv.i104, i32 noundef %conv1.i105) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i107 = zext i16 %wIndex to i32
  %13 = and i16 %wValue, 255
  %conv1.i108 = zext i16 %13 to i32
  %call.i109 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.49, i32 noundef %conv.i107, i32 noundef %conv1.i108) #3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i110 = zext i16 %wIndex to i32
  %conv1.i111 = zext i16 %wLength to i32
  %call.i112 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.50, i32 noundef %conv.i110, i32 noundef %conv1.i111) #3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i113 = zext i16 %wLength to i32
  %call.i114 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.51, i32 noundef %conv.i113) #3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %14 = and i16 %wValue, 255
  %conv.i115 = zext i16 %14 to i32
  %call.i116 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str.52, i32 noundef %conv.i115) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %bRequest to i32
  %conv14 = zext i8 %bRequestType to i32
  %15 = tail call i16 @llvm.bswap.i16(i16 %wValue)
  %16 = and i16 %15, 255
  %conv18 = zext i16 %16 to i32
  %17 = lshr i16 %15, 8
  %conv20 = zext i16 %17 to i32
  %18 = tail call i16 @llvm.bswap.i16(i16 %wIndex)
  %19 = and i16 %18, 255
  %conv25 = zext i16 %19 to i32
  %20 = lshr i16 %18, 8
  %conv28 = zext i16 %20 to i32
  %21 = tail call i16 @llvm.bswap.i16(i16 %wLength)
  %22 = and i16 %21, 255
  %conv33 = zext i16 %22 to i32
  %23 = lshr i16 %21, 8
  %conv36 = zext i16 %23 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef %size, ptr noundef nonnull @.str, i32 noundef %conv14, i32 noundef %conv, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv33, i32 noundef %conv36)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %usb_decode_get_set_descriptor.exit, %sw.bb2, %sw.bb19.i, %sw.bb9.i, %cond.end.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb6.i, %sw.bb2.i, %sw.bb.i, %sw.bb.sw.epilog_crit_edge
  ret ptr %str
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/common/debug.c", i32 275, i32 23}
!2 = !{ptr @__ksymtab_usb_decode_ctrl, !3, !"__ksymtab_usb_decode_ctrl", i1 false, i1 false}
!3 = !{!"../drivers/usb/common/debug.c", i32 287, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/common/debug.c", i32 19, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/common/debug.c", i32 23, i32 5}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/common/debug.c", i32 27, i32 23}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/common/debug.c", i32 29, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/common/debug.c", i32 29, i32 34}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/common/debug.c", i32 78, i32 23}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/common/debug.c", i32 79, i32 41}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/common/debug.c", i32 79, i32 51}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/common/debug.c", i32 82, i32 36}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/common/debug.c", i32 85, i32 23}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/common/debug.c", i32 88, i32 5}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/common/debug.c", i32 88, i32 26}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/common/debug.c", i32 91, i32 23}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/common/debug.c", i32 93, i32 35}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/common/debug.c", i32 38, i32 10}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/common/debug.c", i32 40, i32 10}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/common/debug.c", i32 42, i32 10}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/common/debug.c", i32 44, i32 10}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/common/debug.c", i32 46, i32 10}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/common/debug.c", i32 48, i32 10}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/common/debug.c", i32 58, i32 10}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/common/debug.c", i32 60, i32 10}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/common/debug.c", i32 62, i32 10}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/common/debug.c", i32 64, i32 10}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/common/debug.c", i32 66, i32 10}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/common/debug.c", i32 68, i32 10}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/common/debug.c", i32 102, i32 22}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/common/debug.c", i32 113, i32 7}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/common/debug.c", i32 116, i32 7}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/common/debug.c", i32 119, i32 7}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/common/debug.c", i32 122, i32 7}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/common/debug.c", i32 125, i32 7}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/common/debug.c", i32 128, i32 7}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/common/debug.c", i32 131, i32 7}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/common/debug.c", i32 134, i32 7}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/common/debug.c", i32 137, i32 7}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/common/debug.c", i32 140, i32 7}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/common/debug.c", i32 143, i32 7}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/common/debug.c", i32 146, i32 7}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/common/debug.c", i32 149, i32 7}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/common/debug.c", i32 152, i32 7}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/common/debug.c", i32 155, i32 7}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/common/debug.c", i32 158, i32 7}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/common/debug.c", i32 165, i32 22}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/common/debug.c", i32 166, i32 40}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/common/debug.c", i32 172, i32 22}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/common/debug.c", i32 177, i32 22}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/common/debug.c", i32 183, i32 22}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/common/debug.c", i32 190, i32 22}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/common/debug.c", i32 197, i32 22}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/common/debug.c", i32 203, i32 22}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/common/debug.c", i32 208, i32 22}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
