; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zd_ioreq16 = type { i16, i16 }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.zd_rf = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@zd_rf_init_rf2959._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RF2959 is currently not supported for ZD1211B devices\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_rf_init_rf2959\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd_rf_init_rf2959._entry_ptr = internal global ptr @zd_rf_init_rf2959._entry, section ".printk_index", align 4
@rf2959_init_hw.ioreqs = internal constant { [75 x %struct.zd_ioreq16], [84 x i8] } { [75 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28664, i16 30 }, %struct.zd_ioreq16 { i16 -28636, i16 32 }, %struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28628, i16 0 }, %struct.zd_ioreq16 { i16 -28612, i16 208 }, %struct.zd_ioreq16 { i16 -28604, i16 104 }, %struct.zd_ioreq16 { i16 -28596, i16 74 }, %struct.zd_ioreq16 { i16 -28592, i16 12 }, %struct.zd_ioreq16 { i16 -28588, i16 14 }, %struct.zd_ioreq16 { i16 -28580, i16 72 }, %struct.zd_ioreq16 { i16 -28576, i16 20 }, %struct.zd_ioreq16 { i16 -28568, i16 144 }, %struct.zd_ioreq16 { i16 -28564, i16 48 }, %struct.zd_ioreq16 { i16 -28556, i16 32 }, %struct.zd_ioreq16 { i16 -28548, i16 178 }, %struct.zd_ioreq16 { i16 -28544, i16 67 }, %struct.zd_ioreq16 { i16 -28540, i16 40 }, %struct.zd_ioreq16 { i16 -28520, i16 48 }, %struct.zd_ioreq16 { i16 -28536, i16 15 }, %struct.zd_ioreq16 { i16 -28532, i16 240 }, %struct.zd_ioreq16 { i16 -28508, i16 42 }, %struct.zd_ioreq16 { i16 -28488, i16 127 }, %struct.zd_ioreq16 { i16 -28484, i16 30 }, %struct.zd_ioreq16 { i16 -28468, i16 197 }, %struct.zd_ioreq16 { i16 -28464, i16 197 }, %struct.zd_ioreq16 { i16 -28460, i16 197 }, %struct.zd_ioreq16 { i16 -28356, i16 88 }, %struct.zd_ioreq16 { i16 -28352, i16 48 }, %struct.zd_ioreq16 { i16 -28348, i16 48 }, %struct.zd_ioreq16 { i16 -28344, i16 0 }, %struct.zd_ioreq16 { i16 -28340, i16 36 }, %struct.zd_ioreq16 { i16 -28336, i16 4 }, %struct.zd_ioreq16 { i16 -28332, i16 0 }, %struct.zd_ioreq16 { i16 -28328, i16 16 }, %struct.zd_ioreq16 { i16 -28324, i16 42 }, %struct.zd_ioreq16 { i16 -28320, i16 16 }, %struct.zd_ioreq16 { i16 -28316, i16 36 }, %struct.zd_ioreq16 { i16 -28312, i16 24 }, %struct.zd_ioreq16 { i16 -28308, i16 0 }, %struct.zd_ioreq16 { i16 -28304, i16 10 }, %struct.zd_ioreq16 { i16 -28300, i16 0 }, %struct.zd_ioreq16 { i16 -28296, i16 1 }, %struct.zd_ioreq16 { i16 -28292, i16 0 }, %struct.zd_ioreq16 { i16 -28288, i16 64 }, %struct.zd_ioreq16 { i16 -28284, i16 55 }, %struct.zd_ioreq16 { i16 -28280, i16 5 }, %struct.zd_ioreq16 { i16 -28276, i16 40 }, %struct.zd_ioreq16 { i16 -28272, i16 0 }, %struct.zd_ioreq16 { i16 -28268, i16 19 }, %struct.zd_ioreq16 { i16 -28264, i16 39 }, %struct.zd_ioreq16 { i16 -28260, i16 39 }, %struct.zd_ioreq16 { i16 -28256, i16 24 }, %struct.zd_ioreq16 { i16 -28252, i16 18 }, %struct.zd_ioreq16 { i16 -28248, i16 26 }, %struct.zd_ioreq16 { i16 -28244, i16 36 }, %struct.zd_ioreq16 { i16 -28240, i16 10 }, %struct.zd_ioreq16 { i16 -28236, i16 19 }, %struct.zd_ioreq16 { i16 -28232, i16 47 }, %struct.zd_ioreq16 { i16 -28228, i16 39 }, %struct.zd_ioreq16 { i16 -28224, i16 39 }, %struct.zd_ioreq16 { i16 -28220, i16 39 }, %struct.zd_ioreq16 { i16 -28216, i16 39 }, %struct.zd_ioreq16 { i16 -28212, i16 64 }, %struct.zd_ioreq16 { i16 -28208, i16 64 }, %struct.zd_ioreq16 { i16 -28204, i16 240 }, %struct.zd_ioreq16 { i16 -28200, i16 240 }, %struct.zd_ioreq16 { i16 -28196, i16 22 }, %struct.zd_ioreq16 { i16 -28184, i16 0 }, %struct.zd_ioreq16 { i16 -28164, i16 3 }, %struct.zd_ioreq16 { i16 -28148, i16 8 }, %struct.zd_ioreq16 { i16 -28120, i16 40 }, %struct.zd_ioreq16 { i16 -28080, i16 68 }, %struct.zd_ioreq16 { i16 -28072, i16 16 }, %struct.zd_ioreq16 { i16 -27996, i16 187 }, %struct.zd_ioreq16 { i16 -27992, i16 187 }], [84 x i8] zeroinitializer }, align 32
@rf2959_init_hw.rv = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 7, i32 515395, i32 526681, i32 943718, i32 1141335, i32 1563971, i32 1579513, i32 1992294, i32 2180436, i32 2484218, i32 2621434, i32 2703656, i32 2883584, i32 3145728, i32 3407872, i32 3677711, i32 7084047], [60 x i8] zeroinitializer }, align 32
@rf2959_table = internal constant { [14 x [2 x i32]], [48 x i8] } { [14 x [2 x i32]] [[2 x i32] [i32 1579385, i32 1992294], [2 x i32] [i32 1579401, i32 1992294], [2 x i32] [i32 1579417, i32 1992294], [2 x i32] [i32 1579433, i32 1992294], [2 x i32] [i32 1579449, i32 1992294], [2 x i32] [i32 1579465, i32 1992294], [2 x i32] [i32 1579481, i32 1992294], [2 x i32] [i32 1579497, i32 1992294], [2 x i32] [i32 1579513, i32 1992294], [2 x i32] [i32 1579529, i32 1992294], [2 x i32] [i32 1579545, i32 1992294], [2 x i32] [i32 1579561, i32 1992294], [2 x i32] [i32 1579577, i32 1992294], [2 x i32] [i32 1579616, i32 1835008]], [48 x i8] zeroinitializer }, align 32
@zd_rfwrite_locked.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zd1211rw\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd_rfwrite_locked\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d ASSERT %s VIOLATED!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mutex_is_locked(&chip->mutex)\00", [34 x i8] zeroinitializer }, align 32
@rf2959_switch_radio_on.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28632, i16 137 }, %struct.zd_ioreq16 { i16 -28628, i16 0 }], [24 x i8] zeroinitializer }, align 32
@rf2959_switch_radio_off.ioreqs = internal constant { [2 x %struct.zd_ioreq16], [24 x i8] } { [2 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i16 -28632, i16 21 }, %struct.zd_ioreq16 { i16 -28628, i16 129 }], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 259, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 141, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 182, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"rf2959_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 14, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 854, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 234, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"ioreqs\00", align 1
@___asan_gen_.56 = private constant [54 x i8] c"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 245, i32 33 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @zd_rf_init_rf2959._entry, ptr @zd_rf_init_rf2959._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rf2959_init_hw.ioreqs, ptr @rf2959_init_hw.rv, ptr @rf2959_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rf2959_switch_radio_on.ioreqs, ptr @rf2959_switch_radio_off.ioreqs], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd_rf_init_rf2959._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2959_init_hw.ioreqs to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2959_init_hw.rv to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2959_table to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2959_switch_radio_on.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rf2959_switch_radio_off.ioreqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zd_rf_init_rf2959(ptr nocapture noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %is_zd1211b.i = getelementptr i8, ptr %rf, i32 -4
  %0 = ptrtoint ptr %is_zd1211b.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %is_zd1211b.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %intf = getelementptr i8, ptr %rf, i32 -192
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %2, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %init_hw = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 4
  %3 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rf2959_init_hw, ptr %init_hw, align 4
  %set_channel = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 5
  %4 = ptrtoint ptr %set_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rf2959_set_channel, ptr %set_channel, align 4
  %switch_radio_on = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 6
  %5 = ptrtoint ptr %switch_radio_on to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rf2959_switch_radio_on, ptr %switch_radio_on, align 4
  %switch_radio_off = getelementptr inbounds %struct.zd_rf, ptr %rf, i32 0, i32 7
  %6 = ptrtoint ptr %switch_radio_off to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rf2959_switch_radio_off, ptr %switch_radio_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rf2959_init_hw(ptr noundef %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rf2959_init_hw.ioreqs, i32 noundef 75) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @zd_rfwritev_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rf2959_init_hw.rv, i32 noundef 17, i8 noundef zeroext 24) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rf2959_set_channel(ptr noundef %rf, i8 noundef zeroext %channel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [14 x [2 x i32]], ptr @rf2959_table, i32 0, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %mutex.i = getelementptr i8, ptr %rf, i32 32
  br label %for.body

for.body:                                         ; preds = %zd_rfwrite_locked.exit.for.body_crit_edge, %entry
  %cmp = phi i1 [ false, %zd_rfwrite_locked.exit.for.body_crit_edge ], [ true, %entry ]
  %i.010 = phi i32 [ 1, %zd_rfwrite_locked.exit.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx2 = getelementptr i32, ptr %arrayidx, i32 %i.010
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex.i) #3
  br i1 %call.i, label %for.body.zd_rfwrite_locked.exit_crit_edge, label %do.body3.i, !prof !34

for.body.zd_rfwrite_locked.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %zd_rfwrite_locked.exit

do.body3.i:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rf2959_set_channel, %do.end.i)) #3
          to label %if.then14.i [label %do.end.i], !srcloc !35

if.then14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 854, ptr noundef nonnull @.str.9) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %do.body3.i
  tail call void @dump_stack() #6
  br label %zd_rfwrite_locked.exit

zd_rfwrite_locked.exit:                           ; preds = %do.end.i, %for.body.zd_rfwrite_locked.exit_crit_edge
  %call17.i = tail call i32 @zd_usb_rfwrite(ptr noundef %add.ptr.i, i32 noundef %1, i8 noundef zeroext 24) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not = icmp eq i32 %call17.i, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %zd_rfwrite_locked.exit.for.body_crit_edge, label %cleanup

zd_rfwrite_locked.exit.for.body_crit_edge:        ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %zd_rfwrite_locked.exit
  call void @__sanitizer_cov_trace_pc() #5
  ret i32 %call17.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rf2959_switch_radio_on(ptr noundef %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rf2959_switch_radio_on.ioreqs, i32 noundef 2) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rf2959_switch_radio_off(ptr noundef %rf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rf, i32 -10596
  %call1 = tail call i32 @zd_iowrite16a_locked(ptr noundef %add.ptr.i, ptr noundef nonnull @rf2959_switch_radio_off.ioreqs, i32 noundef 2) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_iowrite16a_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_rfwritev_locked(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zd_usb_rfwrite(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 259, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @zd_rf_init_rf2959._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @zd_rf_init_rf2959._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @rf2959_init_hw.ioreqs, !9, !"ioreqs", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 141, i32 33}
!10 = !{ptr @rf2959_init_hw.rv, !11, !"rv", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 182, i32 19}
!12 = !{ptr @rf2959_table, !13, !"rf2959_table", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 14, i32 18}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_chip.h", i32 854, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @zd_rfwrite_locked.__UNIQUE_ID_ddebug356, !15, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!20 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rf2959_switch_radio_on.ioreqs, !22, !"ioreqs", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 234, i32 33}
!23 = !{ptr @rf2959_switch_radio_off.ioreqs, !24, !"ioreqs", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/zydas/zd1211rw/zd_rf_rf2959.c", i32 245, i32 33}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2148697853, i64 2148697858, i64 2148697871, i64 2148697915, i64 2148697949, i64 2148697970}
