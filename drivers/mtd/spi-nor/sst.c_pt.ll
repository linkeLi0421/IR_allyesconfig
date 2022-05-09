; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/sst.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/sst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_nor_locking_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.76, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.76 = type { ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sst\00", [28 x i8] zeroinitializer }, align 32
@sst_parts = internal constant { [15 x %struct.flash_info], [264 x i8] } { [15 x %struct.flash_info] [%struct.flash_info { ptr @.str.1, [6 x i8] c"\BF%\8D\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.2, [6 x i8] c"\BF%\8E\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.3, [6 x i8] c"\BF%A\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.4, [6 x i8] c"\BF%J\00\00\00", i8 3, i32 65536, i16 64, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.5, [6 x i8] c"\BF%K\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 41, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.6, [6 x i8] c"\BF%\01\00\00\00", i8 3, i32 65536, i16 1, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.7, [6 x i8] c"\BF%\02\00\00\00", i8 3, i32 65536, i16 2, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.8, [6 x i8] c"\BF%\03\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.9, [6 x i8] c"b\16\12\00\00\00", i8 3, i32 65536, i16 4, i16 256, i16 0, i8 0, i16 1, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.10, [6 x i8] c"b\16\13\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 1, i8 2, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.11, [6 x i8] c"\BF%\04\00\00\00", i8 3, i32 65536, i16 8, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.12, [6 x i8] c"\BF%\05\00\00\00", i8 3, i32 65536, i16 16, i16 256, i16 0, i8 0, i16 33, i8 2, i8 0, i8 1, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.13, [6 x i8] c"\BF&Q\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.14, [6 x i8] c"\BF&A\00\00\00", i8 3, i32 65536, i16 32, i16 256, i16 0, i8 0, i16 0, i8 10, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr null }, %struct.flash_info { ptr @.str.15, [6 x i8] c"\BF&C\00\00\00", i8 3, i32 65536, i16 128, i16 256, i16 0, i8 0, i16 33, i8 26, i8 0, i8 0, %struct.spi_nor_otp_organization zeroinitializer, ptr @sst26vf_fixups }], [264 x i8] zeroinitializer }, align 32
@sst_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @sst_late_init }, [16 x i8] zeroinitializer }, align 32
@spi_nor_sst = dso_local constant { %struct.spi_nor_manufacturer, [16 x i8] } { %struct.spi_nor_manufacturer { ptr @.str, ptr @sst_parts, i32 15, ptr @sst_fixups }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25vf040b\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25vf080b\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25vf016b\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25vf032b\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25vf064c\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sst25wf512\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sst25wf010\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sst25wf020\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25wf020a\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst25wf040b\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sst25wf040\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sst25wf080\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst26wf016b\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst26vf016b\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sst26vf064b\00", [20 x i8] zeroinitializer }, align 32
@sst26vf_fixups = internal constant { %struct.spi_nor_fixups, [16 x i8] } { %struct.spi_nor_fixups { ptr null, ptr null, ptr null, ptr @sst26vf_late_init }, [16 x i8] zeroinitializer }, align 32
@sst26vf_locking_ops = internal constant { %struct.spi_nor_locking_ops, [20 x i8] } { %struct.spi_nor_locking_ops { ptr @sst26vf_lock, ptr @sst26vf_unlock, ptr @sst26vf_is_locked }, [20 x i8] zeroinitializer }, align 32
@sst26vf_unlock.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, i8 0, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_nor\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sst26vf_unlock\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/spi-nor/sst.c\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Any block has been permanently locked\0A\00", [57 x i8] zeroinitializer }, align 32
@sst_write.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.18, ptr @.str.21, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sst_write\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"to 0x%08x, len %zd\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"While writing 1 byte written %i bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"While writing 2 bytes written %i bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 217, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"sst_parts\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 61, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"sst_fixups\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 212, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"spi_nor_sst\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 216, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 63, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 67, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 71, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 75, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 79, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 83, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 87, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 91, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 95, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 98, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 101, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 105, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 109, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 112, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 114, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"sst26vf_fixups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 57, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"sst26vf_locking_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 46, i32 41 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 34, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 127, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 147, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [29 x i8] c"../drivers/mtd/spi-nor/sst.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 164, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @sst_parts, ptr @sst_fixups, ptr @spi_nor_sst, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sst26vf_fixups, ptr @sst26vf_locking_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_parts to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_nor_sst to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst26vf_fixups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sst26vf_locking_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sst26vf_late_init(ptr nocapture noundef readonly %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %locking_ops = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %locking_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sst26vf_locking_ops, ptr %locking_ops, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sst26vf_lock(ptr nocapture noundef readnone %nor, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst26vf_unlock(ptr noundef %nor, i64 noundef %ofs, i64 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ofs)
  %cmp.not = icmp eq i64 %ofs, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %params = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 21
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %len)
  %cmp1.not = icmp eq i64 %3, %len
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bouncebuf = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 4
  %4 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bouncebuf, align 4
  %call = tail call i32 @spi_nor_read_cr(ptr noundef %nor, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %bouncebuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bouncebuf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sst26vf_unlock.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sst26vf_unlock, %if.then11)) #4
          to label %cleanup [label %if.then11], !srcloc !65

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sst26vf_unlock.__UNIQUE_ID_ddebug236, ptr noundef %12, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 @spi_nor_global_block_unlock(ptr noundef %nor) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11, %do.body, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sst26vf_is_locked(ptr nocapture noundef readnone %nor, i64 noundef %ofs, i64 noundef %len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_read_cr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_global_block_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sst_late_init(ptr nocapture noundef %nor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %mfr_flags = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mfr_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mfr_flags, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %_write = getelementptr inbounds %struct.mtd_info, ptr %nor, i32 0, i32 25
  %5 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sst_write, ptr %_write, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sst_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sst_write.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sst_write, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %conv = trunc i64 %to to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sst_write.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %len) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @spi_nor_lock_and_prep(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @spi_nor_write_enable(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end11:                                         ; preds = %if.end7
  %sst_write_second = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 16
  %2 = ptrtoint ptr %sst_write_second to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sst_write_second, align 8
  %3 = and i64 %to, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool12.not = icmp eq i64 %3, 0
  br i1 %tobool12.not, label %if.end11.if.end54_crit_edge, label %if.then13

if.end11.if.end54_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then13:                                        ; preds = %if.end11
  %program_opcode = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 12
  %4 = ptrtoint ptr %program_opcode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %program_opcode, align 8
  %call14 = tail call i32 @spi_nor_write_data(ptr noundef %mtd, i64 noundef %to, i32 noundef 1, ptr noundef %buf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp18.not = icmp eq i32 %call14, 1
  br i1 %cmp18.not, label %if.end17.if.end41_crit_edge, label %do.end35, !prof !66

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end35:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %call14) #4
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.end17.if.end41_crit_edge
  %call49 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end52:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add i64 %to, 1
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %if.end11.if.end54_crit_edge
  %actual.0 = phi i32 [ 1, %if.end52 ], [ 0, %if.end11.if.end54_crit_edge ]
  %to.addr.0 = phi i64 [ %inc, %if.end52 ], [ %to, %if.end11.if.end54_crit_edge ]
  %sub = add i32 %len, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %actual.0, i32 %sub)
  %cmp55226 = icmp ult i32 %actual.0, %sub
  br i1 %cmp55226, label %for.body.lr.ph, label %if.end54.for.end_crit_edge

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end54
  %program_opcode57 = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end98.for.body_crit_edge, %for.body.lr.ph
  %to.addr.1228 = phi i64 [ %to.addr.0, %for.body.lr.ph ], [ %add, %if.end98.for.body_crit_edge ]
  %actual.1227 = phi i32 [ %actual.0, %for.body.lr.ph ], [ %add100, %if.end98.for.body_crit_edge ]
  %5 = ptrtoint ptr %program_opcode57 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -83, ptr %program_opcode57, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %actual.1227
  %call58 = tail call i32 @spi_nor_write_data(ptr noundef %mtd, i64 noundef %to.addr.1228, i32 noundef 2, ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %for.body.out_crit_edge, label %if.end62

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call58)
  %cmp64.not = icmp eq i32 %call58, 2
  br i1 %cmp64.not, label %if.end62.if.end87_crit_edge, label %do.end81, !prof !66

if.end62.if.end87_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

do.end81:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 164, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %call58) #4
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %if.end62.if.end87_crit_edge
  %call95 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end98:                                         ; preds = %if.end87
  %add = add i64 %to.addr.1228, 2
  %6 = ptrtoint ptr %sst_write_second to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %sst_write_second, align 8
  %add100 = add i32 %actual.1227, 2
  %cmp55 = icmp ult i32 %add100, %sub
  br i1 %cmp55, label %if.end98.for.body_crit_edge, label %if.end98.for.end_crit_edge

if.end98.for.end_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end98.for.body_crit_edge:                      ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end98.for.end_crit_edge, %if.end54.for.end_crit_edge
  %actual.1.lcssa = phi i32 [ %actual.0, %if.end54.for.end_crit_edge ], [ %add100, %if.end98.for.end_crit_edge ]
  %to.addr.1.lcssa = phi i64 [ %to.addr.0, %if.end54.for.end_crit_edge ], [ %add, %if.end98.for.end_crit_edge ]
  %7 = ptrtoint ptr %sst_write_second to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %sst_write_second, align 8
  %call102 = tail call i32 @spi_nor_write_disable(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end105:                                        ; preds = %for.end
  %call106 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end105.out_crit_edge

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end109:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_cmp4(i32 %actual.1.lcssa, i32 %len)
  %cmp110.not = icmp eq i32 %actual.1.lcssa, %len
  br i1 %cmp110.not, label %if.end109.out_crit_edge, label %if.then112

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then112:                                       ; preds = %if.end109
  %call113 = tail call i32 @spi_nor_write_enable(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then112.out_crit_edge

if.then112.out_crit_edge:                         ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end116:                                        ; preds = %if.then112
  %program_opcode117 = getelementptr inbounds %struct.spi_nor, ptr %mtd, i32 0, i32 12
  %8 = ptrtoint ptr %program_opcode117 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %program_opcode117, align 8
  %add.ptr118 = getelementptr i8, ptr %buf, i32 %actual.1.lcssa
  %call119 = tail call i32 @spi_nor_write_data(ptr noundef %mtd, i64 noundef %to.addr.1.lcssa, i32 noundef 1, ptr noundef %add.ptr118) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end116.out_crit_edge, label %if.end123

if.end116.out_crit_edge:                          ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call119)
  %cmp125.not = icmp eq i32 %call119, 1
  br i1 %cmp125.not, label %if.end123.if.end148_crit_edge, label %do.end142, !prof !66

if.end123.if.end148_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end148

do.end142:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %call119) #4
  br label %if.end148

if.end148:                                        ; preds = %do.end142, %if.end123.if.end148_crit_edge
  %call156 = tail call i32 @spi_nor_wait_till_ready(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end148.out_crit_edge

if.end148.out_crit_edge:                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end159:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  %add160 = add i32 %actual.1.lcssa, 1
  %call161 = tail call i32 @spi_nor_write_disable(ptr noundef %mtd) #4
  br label %out

out:                                              ; preds = %if.end159, %if.end148.out_crit_edge, %if.end116.out_crit_edge, %if.then112.out_crit_edge, %if.end109.out_crit_edge, %if.end105.out_crit_edge, %for.end.out_crit_edge, %if.end87.out_crit_edge, %for.body.out_crit_edge, %if.end41.out_crit_edge, %if.then13.out_crit_edge, %if.end7.out_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ %call14, %if.then13.out_crit_edge ], [ %call49, %if.end41.out_crit_edge ], [ %call102, %for.end.out_crit_edge ], [ %call106, %if.end105.out_crit_edge ], [ %call113, %if.then112.out_crit_edge ], [ %call119, %if.end116.out_crit_edge ], [ %call156, %if.end148.out_crit_edge ], [ %call161, %if.end159 ], [ 0, %if.end109.out_crit_edge ], [ %call95, %if.end87.out_crit_edge ], [ %call58, %for.body.out_crit_edge ]
  %actual.2 = phi i32 [ 0, %if.end7.out_crit_edge ], [ 0, %if.then13.out_crit_edge ], [ 0, %if.end41.out_crit_edge ], [ %actual.1.lcssa, %for.end.out_crit_edge ], [ %actual.1.lcssa, %if.end105.out_crit_edge ], [ %actual.1.lcssa, %if.then112.out_crit_edge ], [ %actual.1.lcssa, %if.end116.out_crit_edge ], [ %actual.1.lcssa, %if.end148.out_crit_edge ], [ %add160, %if.end159 ], [ %len, %if.end109.out_crit_edge ], [ %actual.1227, %for.body.out_crit_edge ], [ %actual.1227, %if.end87.out_crit_edge ]
  %9 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retlen, align 4
  %add163 = add i32 %10, %actual.2
  store i32 %add163, ptr %retlen, align 4
  tail call void @spi_nor_unlock_and_unprep(ptr noundef %mtd) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call4, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_lock_and_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_wait_till_ready(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_write_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_unlock_and_unprep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/sst.c", i32 217, i32 10}
!2 = !{ptr @spi_nor_sst, !3, !"spi_nor_sst", i1 false, i1 false}
!3 = !{!"../drivers/mtd/spi-nor/sst.c", i32 216, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/spi-nor/sst.c", i32 63, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/sst.c", i32 67, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/spi-nor/sst.c", i32 71, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/sst.c", i32 75, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/sst.c", i32 79, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/sst.c", i32 83, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/sst.c", i32 87, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/spi-nor/sst.c", i32 91, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/spi-nor/sst.c", i32 95, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/spi-nor/sst.c", i32 98, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/spi-nor/sst.c", i32 101, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/spi-nor/sst.c", i32 105, i32 4}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/spi-nor/sst.c", i32 109, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/spi-nor/sst.c", i32 112, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/sst.c", i32 114, i32 4}
!34 = !{ptr @sst_parts, !35, !"sst_parts", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/sst.c", i32 61, i32 32}
!36 = !{ptr @sst26vf_fixups, !37, !"sst26vf_fixups", i1 false, i1 false}
!37 = !{!"../drivers/mtd/spi-nor/sst.c", i32 57, i32 36}
!38 = !{ptr @sst26vf_locking_ops, !39, !"sst26vf_locking_ops", i1 false, i1 false}
!39 = !{!"../drivers/mtd/spi-nor/sst.c", i32 46, i32 41}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/spi-nor/sst.c", i32 34, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sst26vf_unlock.__UNIQUE_ID_ddebug236, !41, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!46 = !{ptr @sst_fixups, !47, !"sst_fixups", i1 false, i1 false}
!47 = !{!"../drivers/mtd/spi-nor/sst.c", i32 212, i32 36}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/spi-nor/sst.c", i32 127, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sst_write.__UNIQUE_ID_ddebug237, !49, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/spi-nor/sst.c", i32 147, i32 3}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/spi-nor/sst.c", i32 164, i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148787797, i64 2148787802, i64 2148787815, i64 2148787859, i64 2148787893, i64 2148787914}
!66 = !{!"branch_weights", i32 2000, i32 1}
