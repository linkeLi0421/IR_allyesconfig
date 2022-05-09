; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/btcx-risc.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/btcx-risc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.btcx_skiplist = type { i32, i32 }

@__param_str_btcx_debug = internal constant [16 x i8] c"bttv.btcx_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@btcx_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_btcx_debug = internal constant %struct.kernel_param { ptr @__param_str_btcx_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @btcx_debug } }, section "__param", align 4
@__UNIQUE_ID_btcx_debugtype236 = internal constant [29 x i8] c"bttv.parmtype=btcx_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_btcx_debug237 = internal constant [55 x i8] c"bttv.parm=btcx_debug:debug messages, default is 0 (no)\00", section ".modinfo", align 1
@memcnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@btcx_riscmem_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017bttv: %s: btcx: riscmem free [%d] dma=%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btcx_riscmem_free\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/bt8xx/btcx-risc.c\00", [60 x i8] zeroinitializer }, align 32
@btcx_riscmem_free._entry_ptr = internal global ptr @btcx_riscmem_free._entry, section ".printk_index", align 4
@btcx_riscmem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017bttv: %s: btcx: riscmem alloc [%d] dma=%lx cpu=%p size=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"btcx_riscmem_alloc\00", [45 x i8] zeroinitializer }, align 32
@btcx_riscmem_alloc._entry_ptr = internal global ptr @btcx_riscmem_alloc._entry, section ".printk_index", align 4
@btcx_align._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017bttv: %s: btcx: window align %dx%d+%d+%d [dx=%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"btcx_align\00", [21 x i8] zeroinitializer }, align 32
@btcx_align._entry_ptr = internal global ptr @btcx_align._entry, section ".printk_index", align 4
@btcx_align._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017bttv: %s: btcx:   clip align %dx%d+%d+%d\0A\00", [52 x i8] zeroinitializer }, align 32
@btcx_align._entry_ptr.9 = internal global ptr @btcx_align._entry.7, section ".printk_index", align 4
@btcx_calc_skips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017bttv: %s: btcx: skips line %d-%d:\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"btcx_calc_skips\00", [16 x i8] zeroinitializer }, align 32
@btcx_calc_skips._entry_ptr = internal global ptr @btcx_calc_skips._entry, section ".printk_index", align 4
@btcx_calc_skips._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c %d-%d\00", [23 x i8] zeroinitializer }, align 32
@btcx_calc_skips._entry_ptr.14 = internal global ptr @btcx_calc_skips._entry.12, section ".printk_index", align 4
@btcx_calc_skips._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@btcx_calc_skips._entry_ptr.17 = internal global ptr @btcx_calc_skips._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"btcx_debug\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 25, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"memcnt\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 39, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 48, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 73, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 135, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 146, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 224, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 226, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [39 x i8] c"../drivers/media/pci/bt8xx/btcx-risc.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 228, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_btcx_debug237, ptr @__UNIQUE_ID_btcx_debugtype236, ptr @__param_btcx_debug, ptr @btcx_align._entry, ptr @btcx_align._entry.7, ptr @btcx_align._entry_ptr, ptr @btcx_align._entry_ptr.9, ptr @btcx_calc_skips._entry, ptr @btcx_calc_skips._entry.12, ptr @btcx_calc_skips._entry.15, ptr @btcx_calc_skips._entry_ptr, ptr @btcx_calc_skips._entry_ptr.14, ptr @btcx_calc_skips._entry_ptr.17, ptr @btcx_riscmem_alloc._entry, ptr @btcx_riscmem_alloc._entry_ptr, ptr @btcx_riscmem_free._entry, ptr @btcx_riscmem_free._entry_ptr, ptr @btcx_debug, ptr @memcnt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_riscmem_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_riscmem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_align._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_align._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_calc_skips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_calc_skips._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btcx_calc_skips._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btcx_riscmem_free(ptr noundef %pci, ptr nocapture noundef %risc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @memcnt, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @memcnt, align 4
  %3 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.do.end4_crit_edge, label %do.end

if.end.do.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %dec, i32 noundef %5) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %if.end.do.end4_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %6 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %risc, align 4
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu, align 4
  %dma6 = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %10 = ptrtoint ptr %dma6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma6, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #7
  %12 = call ptr @memset(ptr %risc, i32 0, i32 16)
  br label %return

return:                                           ; preds = %do.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btcx_riscmem_alloc(ptr noundef %pci, ptr nocapture noundef %risc, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #7
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma, align 4
  %cpu1 = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 1
  %1 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu1, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.if.then6_crit_edge, label %land.lhs.true

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %risc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %size)
  %cmp3 = icmp ult i32 %4, %size
  br i1 %cmp3, label %if.end.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %5 = load i32, ptr @memcnt, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr @memcnt, align 4
  %6 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma.i = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %7 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %dec.i, i32 noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %9 = ptrtoint ptr %risc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %risc, align 4
  %11 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu1, align 4
  %dma6.i = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %13 = ptrtoint ptr %dma6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma6.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 0) #7
  %15 = call ptr @memset(ptr %risc, i32 0, i32 16)
  br label %if.then6

if.then6:                                         ; preds = %if.end, %entry.if.then6_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i33 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %size, ptr noundef nonnull %dma, i32 noundef 3264, i32 noundef 0) #7
  %cmp7 = icmp eq ptr %call.i33, null
  br i1 %cmp7, label %if.then6.cleanup_crit_edge, label %if.end9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %16 = ptrtoint ptr %cpu1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i33, ptr %cpu1, align 4
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %dma11 = getelementptr inbounds %struct.btcx_riscmem, ptr %risc, i32 0, i32 3
  %19 = ptrtoint ptr %dma11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dma11, align 4
  %20 = ptrtoint ptr %risc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size, ptr %risc, align 4
  %21 = load i32, ptr @memcnt, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr @memcnt, align 4
  %22 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %do.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %inc, i32 noundef %18, ptr noundef nonnull %call.i33, i32 noundef %size) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @btcx_screen_clips(i32 noundef %swidth, i32 noundef %sheight, ptr nocapture noundef readonly %win, ptr nocapture noundef writeonly %clips, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.v4l2_clip, ptr %clips, i32 %n
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %top, align 4
  %4 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %win, align 4
  %sub = sub i32 0, %5
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height9, align 4
  %inc = add i32 %n, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.addr.0 = phi i32 [ %inc, %if.then ], [ %n, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %win, align 4
  %width11 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 2
  %12 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width11, align 4
  %add = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %swidth)
  %cmp12 = icmp ugt i32 %add, %swidth
  br i1 %cmp12, label %if.then13, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub15 = sub i32 %swidth, %11
  %arrayidx16 = getelementptr %struct.v4l2_clip, ptr %clips, i32 %n.addr.0
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub15, ptr %arrayidx16, align 4
  %top21 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx16, i32 0, i32 1
  %15 = ptrtoint ptr %top21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top21, align 4
  %16 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width11, align 4
  %sub26 = sub i32 %17, %sub15
  %width29 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx16, i32 0, i32 2
  %18 = ptrtoint ptr %width29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub26, ptr %width29, align 4
  %height30 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %19 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height30, align 4
  %height33 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx16, i32 0, i32 3
  %21 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %height33, align 4
  %inc34 = add i32 %n.addr.0, 1
  br label %if.end35

if.end35:                                         ; preds = %if.then13, %if.end.if.end35_crit_edge
  %n.addr.1 = phi i32 [ %inc34, %if.then13 ], [ %n.addr.0, %if.end.if.end35_crit_edge ]
  %top36 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 1
  %22 = ptrtoint ptr %top36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %top36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37 = icmp slt i32 %23, 0
  br i1 %cmp37, label %if.then38, label %if.end35.if.end55_crit_edge

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx39 = getelementptr %struct.v4l2_clip, ptr %clips, i32 %n.addr.1
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx39, align 4
  %top44 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx39, i32 0, i32 1
  %25 = ptrtoint ptr %top44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top44, align 4
  %26 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %width11, align 4
  %width48 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx39, i32 0, i32 2
  %28 = ptrtoint ptr %width48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %width48, align 4
  %29 = ptrtoint ptr %top36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %top36, align 4
  %sub50 = sub i32 0, %30
  %height53 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx39, i32 0, i32 3
  %31 = ptrtoint ptr %height53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub50, ptr %height53, align 4
  %inc54 = add i32 %n.addr.1, 1
  br label %if.end55

if.end55:                                         ; preds = %if.then38, %if.end35.if.end55_crit_edge
  %n.addr.2 = phi i32 [ %inc54, %if.then38 ], [ %n.addr.1, %if.end35.if.end55_crit_edge ]
  %32 = ptrtoint ptr %top36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top36, align 4
  %height57 = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %34 = ptrtoint ptr %height57 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height57, align 4
  %add58 = add i32 %35, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %add58, i32 %sheight)
  %cmp59 = icmp ugt i32 %add58, %sheight
  br i1 %cmp59, label %if.then60, label %if.end55.if.end82_crit_edge

if.end55.if.end82_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx61 = getelementptr %struct.v4l2_clip, ptr %clips, i32 %n.addr.2
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx61, align 4
  %37 = ptrtoint ptr %top36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %top36, align 4
  %sub65 = sub i32 %sheight, %38
  %top68 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx61, i32 0, i32 1
  %39 = ptrtoint ptr %top68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub65, ptr %top68, align 4
  %40 = ptrtoint ptr %width11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width11, align 4
  %width72 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx61, i32 0, i32 2
  %42 = ptrtoint ptr %width72 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %width72, align 4
  %43 = ptrtoint ptr %height57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height57, align 4
  %sub77 = sub i32 %44, %sub65
  %height80 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx61, i32 0, i32 3
  %45 = ptrtoint ptr %height80 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub77, ptr %height80, align 4
  %inc81 = add i32 %n.addr.2, 1
  br label %if.end82

if.end82:                                         ; preds = %if.then60, %if.end55.if.end82_crit_edge
  %n.addr.3 = phi i32 [ %inc81, %if.then60 ], [ %n.addr.2, %if.end55.if.end82_crit_edge ]
  ret i32 %n.addr.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btcx_align(ptr nocapture noundef %win, ptr nocapture noundef %clips, i32 noundef %n, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %win, align 4
  %add = add i32 %1, %mask
  %neg = xor i32 %mask, -1
  %and = and i32 %add, %neg
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %and2 = and i32 %3, %neg
  %add3 = add i32 %and, %and2
  %add6 = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %add6)
  %cmp = icmp ugt i32 %add3, %add6
  %sub = select i1 %cmp, i32 %neg, i32 0
  %nw.0 = add i32 %sub, %and2
  %sub9 = sub i32 %and, %1
  %4 = ptrtoint ptr %win to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %win, align 4
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nw.0, ptr %width, align 4
  %6 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %do.end

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %win, i32 0, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %nw.0, i32 noundef %8, i32 noundef %and, i32 noundef %10, i32 noundef %sub9) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end, %entry.do.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp19119.not = icmp eq i32 %n, 0
  br i1 %cmp19119.not, label %do.end18.for.end_crit_edge, label %for.body.lr.ph

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end18
  %add40 = add i32 %mask, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_clip, ptr %clips, i32 %i.0120
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %sub21 = sub i32 %12, %sub9
  %and23 = and i32 %sub21, %neg
  %width26 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %width26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width26, align 4
  %and28 = and i32 %14, %neg
  %add29 = add i32 %and23, %and28
  %add37 = add i32 %sub21, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %add37)
  %cmp38 = icmp ult i32 %add29, %add37
  %add41 = select i1 %cmp38, i32 %add40, i32 0
  %nw.1 = add i32 %add41, %and28
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and23, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %width26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %nw.1, ptr %width26, align 4
  %17 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool50.not = icmp eq i32 %17, 0
  br i1 %tobool50.not, label %for.body.for.inc_crit_edge, label %do.end54

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end54:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %height61 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 3
  %18 = ptrtoint ptr %height61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height61, align 4
  %top67 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %top67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %top67, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %nw.1, i32 noundef %19, i32 noundef %and23, i32 noundef %21) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end54, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end18.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btcx_sort_clips(ptr nocapture noundef %clips, i32 noundef %nclips) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %nclips, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %0 = icmp sgt i32 %sub, -1
  br i1 %0, label %entry.for.body4.preheader_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body4.preheader_crit_edge:              ; preds = %entry
  br label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.end.for.body4.preheader_crit_edge, %entry.for.body4.preheader_crit_edge
  %i.050 = phi i32 [ %dec, %for.end.for.body4.preheader_crit_edge ], [ %sub, %entry.for.body4.preheader_crit_edge ]
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.preheader
  %j.048 = phi i32 [ %add, %for.inc.for.body4_crit_edge ], [ 0, %for.body4.preheader ]
  %n.047 = phi i32 [ %n.1, %for.inc.for.body4_crit_edge ], [ 0, %for.body4.preheader ]
  %arrayidx = getelementptr %struct.v4l2_clip, ptr %clips, i32 %j.048
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %j.048, 1
  %arrayidx5 = getelementptr %struct.v4l2_clip, ptr %clips, i32 %add
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp8 = icmp sgt i32 %2, %4
  br i1 %cmp8, label %do.body, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  %__tmp.sroa.5.0.arrayidx10.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %5 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx10.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %__tmp.sroa.5.0.copyload = load i32, ptr %__tmp.sroa.5.0.arrayidx10.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx10.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %6 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx10.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %__tmp.sroa.6.0.copyload = load i32, ptr %__tmp.sroa.6.0.arrayidx10.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx10.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %7 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx10.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %__tmp.sroa.7.0.copyload = load i32, ptr %__tmp.sroa.7.0.arrayidx10.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx10.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %8 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx10.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %__tmp.sroa.8.0.copyload = load ptr, ptr %__tmp.sroa.8.0.arrayidx10.sroa_idx, align 4
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx5, i32 20)
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %2, ptr %arrayidx5, align 4
  %__tmp.sroa.5.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx5, i32 4
  %11 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.arrayidx15.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx5, i32 8
  %12 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %__tmp.sroa.6.0.copyload, ptr %__tmp.sroa.6.0.arrayidx15.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx5, i32 12
  %13 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %__tmp.sroa.7.0.copyload, ptr %__tmp.sroa.7.0.arrayidx15.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx15.sroa_idx = getelementptr inbounds i8, ptr %arrayidx5, i32 16
  %14 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx15.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %__tmp.sroa.8.0.copyload, ptr %__tmp.sroa.8.0.arrayidx15.sroa_idx, align 4
  %inc = add i32 %n.047, 1
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body4.for.inc_crit_edge
  %n.1 = phi i32 [ %inc, %do.body ], [ %n.047, %for.body4.for.inc_crit_edge ]
  %cmp3.not = icmp sgt i32 %add, %i.050
  br i1 %cmp3.not, label %for.end, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.1)
  %cmp18 = icmp ne i32 %n.1, 0
  %dec = add i32 %i.050, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp1 = icmp sgt i32 %dec, -1
  %or.cond = select i1 %cmp18, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.end.for.body4.preheader_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.for.body4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.preheader

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btcx_calc_skips(i32 noundef %line, i32 noundef %width, ptr nocapture noundef writeonly %maxy, ptr nocapture noundef %skips, ptr nocapture noundef %nskips, ptr nocapture noundef readonly %clips, i32 noundef %nclips) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nclips)
  %cmp227.not = icmp eq i32 %nclips, 0
  br i1 %cmp227.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %clip.0231 = phi i32 [ %inc117, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %skip.0229 = phi i32 [ %skip.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %maxline.0228 = phi i32 [ %maxline.2, %for.inc.for.body_crit_edge ], [ 9999, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.v4l2_clip, ptr %clips, i32 %clip.0231
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %width3 = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 2
  %2 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width3, align 4
  %add = sub i32 0, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp4 = icmp eq i32 %1, %add
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %width)
  %cmp8 = icmp sgt i32 %1, %width
  br i1 %cmp8, label %if.end.for.end_crit_edge, label %if.end10

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10:                                         ; preds = %if.end
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 1
  %4 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx, i32 0, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %add15 = add i32 %5, -1
  %sub = add i32 %add15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %line)
  %cmp16 = icmp ult i32 %sub, %line
  br i1 %cmp16, label %if.end10.for.inc_crit_edge, label %if.end18

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %line)
  %cmp22 = icmp sgt i32 %5, %line
  br i1 %cmp22, label %if.then23, label %if.end35

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.smin.i32(i32 %maxline.0228, i32 %add15)
  br label %for.inc

if.end35:                                         ; preds = %if.end18
  %9 = tail call i32 @llvm.umin.i32(i32 %maxline.0228, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.0229)
  %cmp55 = icmp eq i32 %skip.0229, 0
  br i1 %cmp55, label %if.end35.if.then63_crit_edge, label %lor.lhs.false

if.end35.if.then63_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false:                                    ; preds = %if.end35
  %sub59 = add i32 %skip.0229, -1
  %end61 = getelementptr %struct.btcx_skiplist, ptr %skips, i32 %sub59, i32 1
  %10 = ptrtoint ptr %end61 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp62 = icmp sgt i32 %1, %11
  br i1 %cmp62, label %lor.lhs.false.if.then63_crit_edge, label %if.else

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %if.end35.if.then63_crit_edge
  %arrayidx67 = getelementptr %struct.btcx_skiplist, ptr %skips, i32 %skip.0229
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %13 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx67, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %width3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width3, align 4
  %add81 = add i32 %17, %15
  %end83 = getelementptr %struct.btcx_skiplist, ptr %skips, i32 %skip.0229, i32 1
  %18 = tail call i32 @llvm.smin.i32(i32 %add81, i32 %width)
  %19 = ptrtoint ptr %end83 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %end83, align 4
  %inc = add i32 %skip.0229, 1
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  %add97 = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add97)
  %cmp101 = icmp slt i32 %11, %add97
  br i1 %cmp101, label %if.then102, label %if.else.if.end106_crit_edge

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then102:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %end61 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add97, ptr %end61, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.else.if.end106_crit_edge
  %21 = ptrtoint ptr %end61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %width)
  %cmp110 = icmp sgt i32 %22, %width
  br i1 %cmp110, label %if.then111, label %if.end106.for.inc_crit_edge

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %end61 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %width, ptr %end61, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then111, %if.end106.for.inc_crit_edge, %if.then63, %if.then23, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %maxline.2 = phi i32 [ %maxline.0228, %for.body.for.inc_crit_edge ], [ %maxline.0228, %if.end10.for.inc_crit_edge ], [ %9, %if.then63 ], [ %9, %if.then111 ], [ %9, %if.end106.for.inc_crit_edge ], [ %8, %if.then23 ]
  %skip.1 = phi i32 [ %skip.0229, %for.body.for.inc_crit_edge ], [ %skip.0229, %if.end10.for.inc_crit_edge ], [ %inc, %if.then63 ], [ %skip.0229, %if.then111 ], [ %skip.0229, %if.end106.for.inc_crit_edge ], [ %skip.0229, %if.then23 ]
  %inc117 = add nuw i32 %clip.0231, 1
  %exitcond.not = icmp eq i32 %inc117, %nclips
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %maxline.0.lcssa = phi i32 [ 9999, %entry.for.end_crit_edge ], [ %maxline.0228, %if.end.for.end_crit_edge ], [ %maxline.2, %for.inc.for.end_crit_edge ]
  %skip.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %skip.0229, %if.end.for.end_crit_edge ], [ %skip.1, %for.inc.for.end_crit_edge ]
  %24 = ptrtoint ptr %nskips to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %skip.0.lcssa, ptr %nskips, align 4
  %25 = ptrtoint ptr %maxy to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %maxline.0.lcssa, ptr %maxy, align 4
  %26 = load i32, ptr @btcx_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %for.end.if.end145_crit_edge, label %do.end

for.end.if.end145_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

do.end:                                           ; preds = %for.end
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %line, i32 noundef %maxline.0.lcssa) #10
  %27 = ptrtoint ptr %nskips to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nskips, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp126235.not = icmp eq i32 %28, 0
  br i1 %cmp126235.not, label %do.end.do.end142_crit_edge, label %do.end.do.end130_crit_edge

do.end.do.end130_crit_edge:                       ; preds = %do.end
  br label %do.end130

do.end.do.end142_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end142

do.end130:                                        ; preds = %do.end130.do.end130_crit_edge, %do.end.do.end130_crit_edge
  %skip.2236 = phi i32 [ %inc138, %do.end130.do.end130_crit_edge ], [ 0, %do.end.do.end130_crit_edge ]
  %arrayidx132 = getelementptr %struct.btcx_skiplist, ptr %skips, i32 %skip.2236
  %29 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx132, align 4
  %end135 = getelementptr %struct.btcx_skiplist, ptr %skips, i32 %skip.2236, i32 1
  %31 = ptrtoint ptr %end135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end135, align 4
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %30, i32 noundef %32) #10
  %inc138 = add nuw i32 %skip.2236, 1
  %33 = ptrtoint ptr %nskips to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nskips, align 4
  %cmp126 = icmp ult i32 %inc138, %34
  br i1 %cmp126, label %do.end130.do.end130_crit_edge, label %do.end130.do.end142_crit_edge

do.end130.do.end142_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end142

do.end130.do.end130_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

do.end142:                                        ; preds = %do.end130.do.end142_crit_edge, %do.end.do.end142_crit_edge
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %if.end145

if.end145:                                        ; preds = %do.end142, %for.end.if.end145_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__param_btcx_debug, !1, !"__param_btcx_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_btcx_debugtype236, !1, !"__UNIQUE_ID_btcx_debugtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_btcx_debug237, !4, !"__UNIQUE_ID_btcx_debug237", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 27, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 48, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @btcx_riscmem_free._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @btcx_riscmem_free._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 73, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @btcx_riscmem_alloc._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @btcx_riscmem_alloc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 135, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @btcx_align._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @btcx_align._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 146, i32 3}
!23 = !{ptr @btcx_align._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @btcx_align._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 224, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @btcx_calc_skips._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @btcx_calc_skips._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 226, i32 4}
!32 = !{ptr @btcx_calc_skips._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @btcx_calc_skips._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 228, i32 3}
!36 = !{ptr @btcx_calc_skips._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @btcx_calc_skips._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @btcx_debug, !39, !"btcx_debug", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 25, i32 21}
!40 = !{ptr @memcnt, !41, !"memcnt", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/bt8xx/btcx-risc.c", i32 39, i32 12}
!42 = !{ptr @__param_str_btcx_debug, !1, !"__param_str_btcx_debug", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
