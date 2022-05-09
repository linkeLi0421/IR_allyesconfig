; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/davinci_cpdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/davinci_cpdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpdma_control_info = type { i32, i32, i32, i32 }
%struct.cpdma_ctlr = type { i32, %struct.cpdma_params, ptr, ptr, %struct.spinlock, [64 x ptr], i32, i32, i32 }
%struct.cpdma_params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpdma_desc_pool = type { i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.cpdma_chan = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, i32, %struct.cpdma_chan_stats, i32, i32, i32, i32, i32, i32 }
%struct.cpdma_chan_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.submit_info = type { ptr, i32, ptr, ptr, i32, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.cpdma_desc = type { i32, i32, i32, i32, ptr, i32, i32 }

@cpdma_ctlr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctlr->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/ti/davinci_cpdma.c\00", [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpdma_chan_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpdma\00", [26 x i8] zeroinitializer }, align 32
@cpdma_desc_pool_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pool create failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpdma_desc_pool_create\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpdma_desc_pool_create._entry_ptr = internal global ptr @cpdma_desc_pool_create._entry, section ".printk_index", align 4
@cpdma_desc_pool_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.1, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pool add failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cpdma_desc_pool_create._entry_ptr.10 = internal global ptr @cpdma_desc_pool_create._entry.8, section ".printk_index", align 4
@controls = internal constant { [12 x %struct.cpdma_control_info], [32 x i8] } { [12 x %struct.cpdma_control_info] [%struct.cpdma_control_info { i32 32, i32 8, i32 65535, i32 3 }, %struct.cpdma_control_info { i32 32, i32 3, i32 1, i32 2 }, %struct.cpdma_control_info { i32 32, i32 4, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 2, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 1, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 0, i32 1, i32 3 }, %struct.cpdma_control_info { i32 36, i32 31, i32 1, i32 1 }, %struct.cpdma_control_info { i32 36, i32 16, i32 7, i32 3 }, %struct.cpdma_control_info { i32 36, i32 20, i32 15, i32 3 }, %struct.cpdma_control_info { i32 36, i32 8, i32 7, i32 3 }, %struct.cpdma_control_info { i32 36, i32 12, i32 15, i32 3 }, %struct.cpdma_control_info { i32 40, i32 0, i32 65535, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cpdma_desc_pool size %zd != avail %zd\00", [58 x i8] zeroinitializer }, align 32
@cpdma_chan_fit_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.1, i32 441, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Upper cpdma ch%d is not rate limited\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpdma_chan_fit_rate\00", [44 x i8] zeroinitializer }, align 32
@cpdma_chan_fit_rate._entry_ptr = internal global ptr @cpdma_chan_fit_rate._entry, section ".printk_index", align 4
@cpdma_chan_set_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.1, i32 462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"The bus frequency is not set\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpdma_chan_set_factors\00", [41 x i8] zeroinitializer }, align 32
@cpdma_chan_set_factors._entry_ptr = internal global ptr @cpdma_chan_set_factors._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 522, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 530, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 924, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 241, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 244, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 266, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 146, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 197, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 440, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private constant [43 x i8] c"../drivers/net/ethernet/ti/davinci_cpdma.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 462, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 326, i32 6 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @cpdma_chan_fit_rate._entry, ptr @cpdma_chan_fit_rate._entry_ptr, ptr @cpdma_chan_set_factors._entry, ptr @cpdma_chan_set_factors._entry_ptr, ptr @cpdma_desc_pool_create._entry, ptr @cpdma_desc_pool_create._entry.8, ptr @cpdma_desc_pool_create._entry_ptr, ptr @cpdma_desc_pool_create._entry_ptr.10, ptr @cpdma_ctlr_create.__key, ptr @.str, ptr @.str.1, ptr @cpdma_chan_create.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @controls, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_ctlr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_chan_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_desc_pool_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_desc_pool_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_chan_fit_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpdma_chan_set_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpdma_ctlr_create(ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 396, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %call.i, align 4
  %params1 = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %params1, ptr %params, i32 72)
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %params, align 4
  %dev3 = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dev3, align 4
  %chan_num = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %chan_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %chan_num, align 4
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @cpdma_ctlr_create.__key, i16 noundef signext 3) #7
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cpdma_desc_pool_create.exit.thread61_crit_edge, label %if.end.i

if.end.cpdma_desc_pool_create.exit.thread61_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_desc_pool_create.exit.thread61

if.end.i:                                         ; preds = %if.end
  %pool1.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %pool1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %pool1.i, align 4
  %desc_mem_size.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %desc_mem_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_mem_size.i, align 4
  %mem_size.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mem_size.i, align 4
  %desc_align.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 14
  %14 = ptrtoint ptr %desc_align.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_align.i, align 4
  %add.i = add i32 %15, 27
  %neg.i = sub i32 0, %15
  %and.i = and i32 %add.i, %neg.i
  %desc_size.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i, ptr %desc_size.i, align 4
  %div.i = sdiv i32 %12, %and.i
  %num_desc.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %num_desc.i, align 4
  %descs_pool_size.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 16
  %18 = ptrtoint ptr %descs_pool_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %descs_pool_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then7.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %num_desc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_desc.i, align 4
  %mul.i = mul i32 %19, %and.i
  %21 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %mem_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp.i = icmp sgt i32 %mul.i, %12
  br i1 %cmp.i, label %if.then15.i, label %if.then7.i.if.end17.i_crit_edge

if.then7.i.if.end17.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %desc_mem_phys.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %desc_mem_phys.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %desc_mem_phys.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then7.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %23 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3, align 4
  %25 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %desc_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #7, !range !48
  %sub.i.op.i.i = xor i32 %27, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %call30.i = tail call ptr @devm_gen_pool_create(ptr noundef %24, i32 noundef %sub.i.i, i32 noundef -1, ptr noundef nonnull @.str.3) #7
  %gen_pool.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %gen_pool.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call30.i, ptr %gen_pool.i, align 4
  %cmp.i.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cpdma_desc_pool_create.exit, label %if.end37.i

if.end37.i:                                       ; preds = %if.end17.i
  %desc_mem_phys38.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 11
  %29 = ptrtoint ptr %desc_mem_phys38.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %desc_mem_phys38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not.i = icmp eq i32 %30, 0
  br i1 %tobool39.not.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %call.i.i, align 4
  %32 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev3, align 4
  %34 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mem_size.i, align 4
  %call45.i = tail call ptr @devm_ioremap(ptr noundef %33, i32 noundef %30, i32 noundef %35) #7
  %desc_hw_addr.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 12
  %36 = ptrtoint ptr %desc_hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_hw_addr.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hw_addr.i, align 4
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev3, align 4
  %41 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mem_size.i, align 4
  %hw_addr48.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 1
  %call.i134.i = tail call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef %42, ptr noundef %hw_addr48.i, i32 noundef 3264, i32 noundef 0) #7
  %cpumap.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %cpumap.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i134.i, ptr %cpumap.i, align 4
  %44 = ptrtoint ptr %hw_addr48.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hw_addr48.i, align 4
  %46 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %call.i.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i, %if.then40.i
  %call45.sink.i = phi ptr [ %call.i134.i, %if.else.i ], [ %call45.i, %if.then40.i ]
  %47 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %call.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call45.sink.i, ptr %47, align 4
  %tobool56.not.i = icmp eq ptr %call45.sink.i, null
  br i1 %tobool56.not.i, label %if.end54.i.cpdma_desc_pool_create.exit.thread61_crit_edge, label %if.end58.i

if.end54.i.cpdma_desc_pool_create.exit.thread61_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_desc_pool_create.exit.thread61

if.end58.i:                                       ; preds = %if.end54.i
  %49 = ptrtoint ptr %gen_pool.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gen_pool.i, align 4
  %51 = ptrtoint ptr %call45.sink.i to i32
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i.i, align 4
  %54 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mem_size.i, align 4
  %call.i135.i = tail call i32 @gen_pool_add_owner(ptr noundef %50, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135.i)
  %cmp64.i = icmp slt i32 %call.i135.i, 0
  br i1 %cmp64.i, label %do.end69.i, label %if.end8

do.end69.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.9, i32 noundef %call.i135.i) #10
  tail call fastcc void @cpdma_desc_pool_destroy(ptr noundef nonnull %call.i) #7
  br label %cpdma_desc_pool_create.exit.thread61

cpdma_desc_pool_create.exit.thread61:             ; preds = %do.end69.i, %if.end54.i.cpdma_desc_pool_create.exit.thread61_crit_edge, %if.end.cpdma_desc_pool_create.exit.thread61_crit_edge
  %pool72.i63 = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 3
  %58 = ptrtoint ptr %pool72.i63 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %pool72.i63, align 4
  br label %cleanup

cpdma_desc_pool_create.exit:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %call30.i to i32
  %60 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.4, i32 noundef %59) #10
  %62 = ptrtoint ptr %pool1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %pool1.i, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end58.i
  %63 = ptrtoint ptr %pool1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pool1.i, align 4
  %num_desc = getelementptr inbounds %struct.cpdma_desc_pool, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_desc, align 4
  %div = sdiv i32 %66, 2
  %num_tx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div, ptr %num_tx_desc, align 4
  %68 = load i32, ptr %num_desc, align 4
  %sub = sub i32 %68, %div
  %num_rx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 7
  %69 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub, ptr %num_rx_desc, align 4
  %num_chan = getelementptr inbounds %struct.cpdma_ctlr, ptr %call.i, i32 0, i32 1, i32 8
  %70 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %71)
  %cmp = icmp sgt i32 %71, 32
  br i1 %cmp, label %do.end24, label %if.end8.cleanup_crit_edge, !prof !49

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 530, i32 noundef 9, ptr noundef null) #7
  %72 = ptrtoint ptr %num_chan to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 32, ptr %num_chan, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end8.cleanup_crit_edge, %cpdma_desc_pool_create.exit, %cpdma_desc_pool_create.exit.thread61, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %cpdma_desc_pool_create.exit ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call.i, %do.end24 ], [ null, %cpdma_desc_pool_create.exit.thread61 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_start(ptr noundef %ctlr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_soft_reset = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %has_soft_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_soft_reset, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end51_crit_edge, label %if.then8

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then8:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !52
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %if.then8
  %timeout.0177 = phi i32 [ 1000, %if.then8 ], [ %dec, %if.end23.while.body_crit_edge ]
  %6 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmaregs, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp20 = icmp eq i32 %8, 0
  br i1 %cmp20, label %while.body.if.end51_crit_edge, label %if.end23

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end23:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #7
  %dec = add nsw i32 %timeout.0177, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %do.end37.critedge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end37.critedge:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 557, i32 noundef 9, ptr noundef null) #7
  br label %if.end51

if.end51:                                         ; preds = %do.end37.critedge, %while.body.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %num_chan = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp53178 = icmp sgt i32 %11, 0
  br i1 %cmp53178, label %do.body55.lr.ph, label %if.end51.do.body78_crit_edge

if.end51.do.body78_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78

do.body55.lr.ph:                                  ; preds = %if.end51
  %txhdp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 2
  %rxhdp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 3
  %txcp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 4
  %rxcp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 5
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %do.body55.lr.ph
  %i.0179 = phi i32 [ 0, %do.body55.lr.ph ], [ %inc, %do.body55.do.body55_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %txhdp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %txhdp, align 4
  %mul = shl i32 %i.0179, 2
  %add.ptr59 = getelementptr i8, ptr %13, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %rxhdp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxhdp, align 4
  %add.ptr65 = getelementptr i8, ptr %15, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %txcp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txcp, align 4
  %add.ptr71 = getelementptr i8, ptr %17, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %rxcp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxcp, align 4
  %add.ptr77 = getelementptr i8, ptr %19, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #7, !srcloc !52
  %inc = add nuw nsw i32 %i.0179, 1
  %20 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_chan, align 4
  %cmp53 = icmp slt i32 %inc, %21
  br i1 %cmp53, label %do.body55.do.body55_crit_edge, label %do.body55.do.body78_crit_edge

do.body55.do.body78_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.body78:                                        ; preds = %do.body55.do.body78_crit_edge, %if.end51.do.body78_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %dmaregs82 = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dmaregs82, align 4
  %add.ptr83 = getelementptr i8, ptr %23, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 -1) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmaregs82, align 4
  %add.ptr89 = getelementptr i8, ptr %25, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 -1) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmaregs82, align 4
  %add.ptr95 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 16777216) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmaregs82, align 4
  %add.ptr101 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 16777216) #7, !srcloc !52
  %30 = ptrtoint ptr %ctlr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %ctlr, align 4
  br label %for.body106

for.body106:                                      ; preds = %for.inc117.for.body106_crit_edge, %do.body78
  %i.1181 = phi i32 [ 0, %do.body78 ], [ %inc118, %for.inc117.for.body106_crit_edge ]
  %prio_mode.0180 = phi i32 [ 0, %do.body78 ], [ %prio_mode.1, %for.inc117.for.body106_crit_edge ]
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.1181
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %tobool107.not = icmp eq ptr %32, null
  br i1 %tobool107.not, label %for.body106.for.inc117_crit_edge, label %if.then108

for.body106.for.inc117_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

if.then108:                                       ; preds = %for.body106
  %call109 = tail call fastcc i32 @cpdma_chan_set_chan_shaper(ptr noundef nonnull %32)
  %call110 = tail call fastcc i32 @cpdma_chan_on(ptr noundef nonnull %32)
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %34)
  %cmp111 = icmp sgt i32 %34, 31
  br i1 %cmp111, label %if.then108.for.inc117_crit_edge, label %land.lhs.true

if.then108.for.inc117_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc117

land.lhs.true:                                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %rate = getelementptr inbounds %struct.cpdma_chan, ptr %32, i32 0, i32 20
  %35 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool113.not = icmp eq i32 %36, 0
  %spec.select = select i1 %tobool113.not, i32 1, i32 %prio_mode.0180
  br label %for.inc117

for.inc117:                                       ; preds = %land.lhs.true, %if.then108.for.inc117_crit_edge, %for.body106.for.inc117_crit_edge
  %prio_mode.1 = phi i32 [ %prio_mode.0180, %if.then108.for.inc117_crit_edge ], [ %prio_mode.0180, %for.body106.for.inc117_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc118 = add nuw nsw i32 %i.1181, 1
  %exitcond.not = icmp eq i32 %inc118, 64
  br i1 %exitcond.not, label %for.end119, label %for.inc117.for.body106_crit_edge

for.inc117.for.body106_crit_edge:                 ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body106

for.end119:                                       ; preds = %for.inc117
  %has_ext_regs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 17
  %37 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_ext_regs.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %for.end119.cleanup_crit_edge, label %if.end.i

for.end119.cleanup_crit_edge:                     ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.end119
  %39 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 1
  br i1 %cmp.not.i, label %_cpdma_control_set.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

_cpdma_control_set.exit:                          ; preds = %if.end.i
  %41 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dmaregs82, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 32
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %44 = and i32 %43, -16777217
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %and14.i = and i32 %prio_mode.1, 1
  %or.i = or i32 %45, %and14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %47 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmaregs82, align 4
  %add.ptr20.i = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %46) #7, !srcloc !52
  %49 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr = load i8, ptr %has_ext_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i162 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i162, label %_cpdma_control_set.exit.cleanup_crit_edge, label %if.end.i164

_cpdma_control_set.exit.cleanup_crit_edge:        ; preds = %_cpdma_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i164:                                      ; preds = %_cpdma_control_set.exit
  %50 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr175 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr175)
  %cmp.not.i163 = icmp eq i32 %.pr175, 1
  br i1 %cmp.not.i163, label %if.end2.i165, label %if.end.i164.cleanup_crit_edge

if.end.i164.cleanup_crit_edge:                    ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i165:                                     ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmaregs82, align 4
  %add.ptr.i167 = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %54 = and i32 %53, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %dmaregs82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dmaregs82, align 4
  %add.ptr20.i169 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i169, i32 %54) #7, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i165, %if.end.i164.cleanup_crit_edge, %_cpdma_control_set.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.end119.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.end119.cleanup_crit_edge ], [ 0, %_cpdma_control_set.exit.cleanup_crit_edge ], [ 0, %if.end.i164.cleanup_crit_edge ], [ 0, %if.end2.i165 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_set_chan_shaper(ptr nocapture noundef readonly %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 20
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr1, align 4
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 7
  %4 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_num, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %rate_factor = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 19
  %6 = ptrtoint ptr %rate_factor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_factor, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !52
  %has_ext_regs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 17
  %11 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_ext_regs.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i, label %_cpdma_control_get.exit, label %_cpdma_control_get.exit.thread26

_cpdma_control_get.exit.thread26:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mask28 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 11
  %15 = ptrtoint ptr %mask28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask28, align 4
  %or29 = or i32 %16, -22
  br label %if.end.i16

_cpdma_control_get.exit:                          ; preds = %if.end.i
  %17 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmaregs, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !53
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %shr.i = lshr i32 %20, 8
  %and12.i = and i32 %shr.i, 65535
  %21 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %has_ext_regs.i, align 4
  %mask = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 11
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %or = or i32 %and12.i, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i14 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i14, label %_cpdma_control_get.exit.cleanup_crit_edge, label %_cpdma_control_get.exit.if.end.i16_crit_edge

_cpdma_control_get.exit.if.end.i16_crit_edge:     ; preds = %_cpdma_control_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16

_cpdma_control_get.exit.cleanup_crit_edge:        ; preds = %_cpdma_control_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i16:                                       ; preds = %_cpdma_control_get.exit.if.end.i16_crit_edge, %_cpdma_control_get.exit.thread26
  %or31 = phi i32 [ %or29, %_cpdma_control_get.exit.thread26 ], [ %or, %_cpdma_control_get.exit.if.end.i16_crit_edge ]
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not.i15 = icmp eq i32 %25, 1
  br i1 %cmp.not.i15, label %if.end2.i17, label %if.end.i16.cleanup_crit_edge

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i17:                                      ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmaregs, align 4
  %add.ptr.i19 = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %29 = and i32 %28, -16776961
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %and14.i = shl i32 %or31, 8
  %shl16.i = and i32 %and14.i, 16776960
  %or.i = or i32 %30, %shl16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %32 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmaregs, align 4
  %add.ptr20.i = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %31) #7, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i17, %if.end.i16.cleanup_crit_edge, %_cpdma_control_get.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end2.i17 ], [ -524, %_cpdma_control_get.exit.cleanup_crit_edge ], [ -22, %if.end.i16.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_on(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %pool2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pool2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool2, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp11.not = icmp eq i32 %7, 1
  br i1 %cmp11.not, label %do.body16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %mask = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 11
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmaregs, align 4
  %int_set = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 15
  %13 = ptrtoint ptr %int_set to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_set, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !52
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 4
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %do.body16.cleanup_crit_edge, label %do.body21

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body21:                                        ; preds = %do.body16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body21.desc_phys.exit_crit_edge, label %if.end.i

do.body21.desc_phys.exit_crit_edge:               ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_phys.exit

if.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %hw_addr.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_addr.i, align 4
  %22 = ptrtoint ptr %19 to i32
  %add.i = add i32 %21, %22
  %iomap.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iomap.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %sub.i = sub i32 %add.i, %25
  br label %desc_phys.exit

desc_phys.exit:                                   ; preds = %if.end.i, %do.body21.desc_phys.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end.i ], [ 0, %do.body21.desc_phys.exit_crit_edge ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %hdp = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 2
  %27 = ptrtoint ptr %hdp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hdp, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !52
  %rxfree = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %rxfree to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxfree, align 4
  %tobool26.not = icmp eq ptr %30, null
  br i1 %tobool26.not, label %desc_phys.exit.cleanup_crit_edge, label %do.body28

desc_phys.exit.cleanup_crit_edge:                 ; preds = %desc_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body28:                                        ; preds = %desc_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %count = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 9
  %31 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %rxfree to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rxfree, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %desc_phys.exit.cleanup_crit_edge, %do.body16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %desc_phys.exit.cleanup_crit_edge ], [ 0, %do.body28 ], [ 0, %do.body16.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_stop(ptr noundef %ctlr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5.not = icmp eq i32 %1, 1
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %ctlr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.073 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.073
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %4)
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.body18, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body18:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmaregs, align 4
  %add.ptr39 = getelementptr i8, ptr %8, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 -1) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmaregs, align 4
  %add.ptr45 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmaregs, align 4
  %add.ptr51 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #7, !srcloc !52
  %13 = ptrtoint ptr %ctlr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ctlr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %entry.cleanup_crit_edge
  %call26.sink = phi i32 [ %call26, %do.body18 ], [ %call2, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %do.body18 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call26.sink) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_stop(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %pool2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pool2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool2, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp7 = icmp eq i32 %5, 2
  br i1 %cmp7, label %entry.cleanup116_crit_edge, label %if.end

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup116

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %mask = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 11
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmaregs, align 4
  %int_clear = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 16
  %12 = ptrtoint ptr %int_clear to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_clear, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 7
  %14 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan_num, align 4
  %and = shl i32 %15, 24
  %16 = and i32 %and, 520093696
  %17 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmaregs, align 4
  %td = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 17
  %19 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %td, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %16) #7, !srcloc !52
  %cp20 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end
  %timeout.0159 = phi i32 [ 10000, %if.end ], [ %dec, %cleanup.while.body_crit_edge ]
  %21 = ptrtoint ptr %cp20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cp20, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %24 = and i32 %23, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 -50331649, i32 %24)
  %cmp25 = icmp eq i32 %24, -50331649
  br i1 %cmp25, label %while.body.if.end48_crit_edge, label %cleanup

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

cleanup:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #7
  %dec = add nsw i32 %timeout.0159, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end42, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end42:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1341, i32 noundef 9, ptr noundef null) #7
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %while.body.if.end48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %cp20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cp20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -50331649) #7, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %do.body61

do.body61:                                        ; preds = %do.body61.do.body61_crit_edge, %if.end48
  %call62 = tail call fastcc i32 @__cpdma_chan_process(ptr noundef %chan)
  %28 = and i32 %call62, -2013265920
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %do.body61.do.body61_crit_edge, label %do.body73

do.body61.do.body61_crit_edge:                    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

do.body73:                                        ; preds = %do.body61
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 4
  %tobool87.not160 = icmp eq ptr %31, null
  br i1 %tobool87.not160, label %do.body73.while.end113_crit_edge, label %while.body88.lr.ph

do.body73.while.end113_crit_edge:                 ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end113

while.body88.lr.ph:                               ; preds = %do.body73
  %iomap.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 2
  %hw_addr.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 1
  %count = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 9
  %teardown_dequeue = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14, i32 12
  br label %while.body88

while.body88:                                     ; preds = %desc_from_phys.exit.while.body88_crit_edge, %while.body88.lr.ph
  %32 = phi ptr [ %31, %while.body88.lr.ph ], [ %45, %desc_from_phys.exit.while.body88_crit_edge ]
  %flags.0161 = phi i32 [ %call81, %while.body88.lr.ph ], [ %call108, %desc_from_phys.exit.while.body88_crit_edge ]
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %while.body88.desc_from_phys.exit_crit_edge, label %cond.true.i

while.body88.desc_from_phys.exit_crit_edge:       ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_from_phys.exit

cond.true.i:                                      ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomap.i, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 %34
  %37 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hw_addr.i, align 4
  %idx.neg.i = sub i32 0, %38
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  br label %desc_from_phys.exit

desc_from_phys.exit:                              ; preds = %cond.true.i, %while.body88.desc_from_phys.exit_crit_edge
  %cond.i = phi ptr [ %add.ptr1.i, %cond.true.i ], [ null, %while.body88.desc_from_phys.exit_crit_edge ]
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cond.i, ptr %chan, align 4
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  %dec97 = add i32 %41, -1
  store i32 %dec97, ptr %count, align 4
  %42 = ptrtoint ptr %teardown_dequeue to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %teardown_dequeue, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %teardown_dequeue, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0161) #7
  tail call fastcc void @__cpdma_chan_free(ptr noundef %chan, ptr noundef nonnull %32, i32 noundef 0, i32 noundef -38)
  %call108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %44 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan, align 4
  %tobool87.not = icmp eq ptr %45, null
  br i1 %tobool87.not, label %desc_from_phys.exit.while.end113_crit_edge, label %desc_from_phys.exit.while.body88_crit_edge

desc_from_phys.exit.while.body88_crit_edge:       ; preds = %desc_from_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body88

desc_from_phys.exit.while.end113_crit_edge:       ; preds = %desc_from_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end113

while.end113:                                     ; preds = %desc_from_phys.exit.while.end113_crit_edge, %do.body73.while.end113_crit_edge
  %flags.0.lcssa = phi i32 [ %call81, %do.body73.while.end113_crit_edge ], [ %call108, %desc_from_phys.exit.while.end113_crit_edge ]
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %state, align 4
  br label %cleanup116

cleanup116:                                       ; preds = %while.end113, %entry.cleanup116_crit_edge
  %flags.0.lcssa.sink = phi i32 [ %flags.0.lcssa, %while.end113 ], [ %call4, %entry.cleanup116_crit_edge ]
  %retval.0 = phi i32 [ 0, %while.end113 ], [ -22, %entry.cleanup116_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa.sink) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_destroy(ptr noundef %ctlr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctlr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end.for.body.preheader_crit_edge, label %if.then1

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cpdma_ctlr_stop(ptr noundef nonnull %ctlr)
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then1, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %cpdma_chan_destroy.exit.for.body_crit_edge, %for.body.preheader
  %i.012 = phi i32 [ %inc, %cpdma_chan_destroy.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.cpdma_chan_destroy.exit_crit_edge, label %if.end.i

for.body.cpdma_chan_destroy.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_chan_destroy.exit

if.end.i:                                         ; preds = %for.body
  %ctlr1.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ctlr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr1.i, align 4
  %lock.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %state.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 0
  br i1 %cmp6.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then8.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %3) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %chan_num.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_num.i, align 4
  %arrayidx.i = getelementptr %struct.cpdma_ctlr, ptr %5, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx.i, align 4
  %chan_num11.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %chan_num11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan_num11.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %chan_num11.i, align 4
  %dev.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void @devm_kfree(ptr noundef %14, ptr noundef nonnull %3) #7
  %call12.i = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  br label %cpdma_chan_destroy.exit

cpdma_chan_destroy.exit:                          ; preds = %if.end10.i, %for.body.cpdma_chan_destroy.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %cpdma_chan_destroy.exit.for.body_crit_edge

cpdma_chan_destroy.exit.for.body_crit_edge:       ; preds = %cpdma_chan_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cpdma_chan_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cpdma_desc_pool_destroy(ptr noundef nonnull %ctlr)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_destroy(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %chan)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 7
  %4 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_num, align 4
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %1, i32 0, i32 5, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %chan_num11 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %chan_num11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_num11, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %chan_num11, align 4
  %dev = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %10, ptr noundef nonnull %chan) #7
  %call12 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpdma_desc_pool_destroy(ptr nocapture noundef readonly %ctlr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 3
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gen_pool = getelementptr inbounds %struct.cpdma_desc_pool, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gen_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gen_pool, align 4
  %call = tail call i32 @gen_pool_size(ptr noundef %3) #7
  %4 = ptrtoint ptr %gen_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gen_pool, align 4
  %call3 = tail call i32 @gen_pool_avail(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call3)
  %cmp.not = icmp eq i32 %call, %call3
  br i1 %cmp.not, label %if.end.if.end22_crit_edge, label %do.end, !prof !79

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %gen_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gen_pool, align 4
  %call14 = tail call i32 @gen_pool_size(ptr noundef %7) #7
  %8 = ptrtoint ptr %gen_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_pool, align 4
  %call16 = tail call i32 @gen_pool_avail(ptr noundef %9) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %call14, i32 noundef %call16) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge
  %cpumap = getelementptr inbounds %struct.cpdma_desc_pool, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cpumap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpumap, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %if.end22.cleanup_crit_edge, label %if.then30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %mem_size = getelementptr inbounds %struct.cpdma_desc_pool, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %17, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_int_ctrl(ptr noundef %ctlr, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5.not = icmp eq i32 %1, 1
  br i1 %cmp5.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %lock.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %state.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.not.i = icmp eq i32 %5, 1
  br i1 %cmp5.not.i, label %do.body8.i, label %if.then10.cpdma_chan_int_ctrl.exit_crit_edge

if.then10.cpdma_chan_int_ctrl.exit_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_chan_int_ctrl.exit

do.body8.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %mask.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %ctlr.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctlr.i, align 4
  %dmaregs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmaregs.i, align 4
  %int_set.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 15
  %int_clear.i = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 16
  %cond.in.i = select i1 %enable, ptr %int_set.i, ptr %int_clear.i
  %13 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %cond.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !52
  br label %cpdma_chan_int_ctrl.exit

cpdma_chan_int_ctrl.exit:                         ; preds = %do.body8.i, %if.then10.cpdma_chan_int_ctrl.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br label %for.inc

for.inc:                                          ; preds = %cpdma_chan_int_ctrl.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_int_ctrl(ptr noundef %chan, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp5.not = icmp eq i32 %1, 1
  br i1 %cmp5.not, label %do.body8, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %mask = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 11
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %ctlr = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %5 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctlr, align 4
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmaregs, align 4
  %int_set = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 15
  %int_clear = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 16
  %cond.in = select i1 %enable, ptr %int_set, ptr %int_clear
  %9 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond = load i32, ptr %cond.in, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body8 ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpdma_ctlr_eoi(ptr nocapture noundef readonly %ctlr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctrl_rxchs_state(ptr nocapture noundef readonly %ctlr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctrl_txchs_state(ptr nocapture noundef readonly %ctlr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaregs = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dmaregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmaregs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !53
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_set_weight(ptr noundef %ch, i32 noundef %weight) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %lock13 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 8
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock13) #7
  %weight20 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 18
  %2 = ptrtoint ptr %weight20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %weight20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %weight)
  %cmp21 = icmp eq i32 %3, %weight
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call15) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %weight20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %weight, ptr %weight20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call15) #7
  %call27 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call27, %if.end ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_split_pool(ptr nocapture noundef readonly %ctlr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_num = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 6
  %0 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0105 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tx_weight.0104 = phi i32 [ %tx_weight.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rx_weight.0103 = phi i32 [ %rx_weight.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %free_tx_num.0102 = phi i32 [ %free_tx_num.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %free_rx_num.0101 = phi i32 [ %free_rx_num.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.0105
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %chan_num4 = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chan_num4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_num4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp5 = icmp sgt i32 %5, 31
  %weight = getelementptr inbounds %struct.cpdma_chan, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %inc = zext i1 %tobool7.not to i32
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = add i32 %free_rx_num.0101, %inc
  %add = add i32 %7, %rx_weight.0103
  br label %for.inc

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select70 = add i32 %free_tx_num.0102, %inc
  %add17 = add i32 %7, %tx_weight.0104
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then6, %for.body.for.inc_crit_edge
  %free_rx_num.2 = phi i32 [ %spec.select, %if.then6 ], [ %free_rx_num.0101, %if.else ], [ %free_rx_num.0101, %for.body.for.inc_crit_edge ]
  %free_tx_num.2 = phi i32 [ %free_tx_num.0102, %if.then6 ], [ %spec.select70, %if.else ], [ %free_tx_num.0102, %for.body.for.inc_crit_edge ]
  %rx_weight.1 = phi i32 [ %add, %if.then6 ], [ %rx_weight.0103, %if.else ], [ %rx_weight.0103, %for.body.for.inc_crit_edge ]
  %tx_weight.1 = phi i32 [ %tx_weight.0104, %if.then6 ], [ %add17, %if.else ], [ %tx_weight.0104, %for.body.for.inc_crit_edge ]
  %inc19 = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc19, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %rx_weight.1)
  %cmp20 = icmp sgt i32 %rx_weight.1, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %tx_weight.1)
  %cmp21 = icmp sgt i32 %tx_weight.1, 100
  %or.cond = select i1 %cmp20, i1 true, i1 %cmp21
  br i1 %or.cond, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %num_tx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 8
  %8 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_desc, align 4
  %num_rx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 7
  %10 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_rx_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_tx_num.2)
  %tobool24.not = icmp eq i32 %free_tx_num.2, 0
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %9, %tx_weight.1
  %div.neg = sdiv i32 %mul, -100
  %sub = add i32 %div.neg, %9
  %div26 = sdiv i32 %sub, %free_tx_num.2
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %tx_per_ch_desc.0 = phi i32 [ %div26, %if.then25 ], [ 0, %if.end23.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free_rx_num.2)
  %tobool28.not = icmp eq i32 %free_rx_num.2, 0
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %mul30 = mul i32 %11, %rx_weight.1
  %div31.neg = sdiv i32 %mul30, -100
  %sub32 = add i32 %div31.neg, %11
  %div33 = sdiv i32 %sub32, %free_rx_num.2
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27.if.end34_crit_edge
  %rx_per_ch_desc.0 = phi i32 [ %div33, %if.then29 ], [ 0, %if.end27.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end34.cpdma_chan_set_descs.exit_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.cpdma_chan_set_descs.exit_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_chan_set_descs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %most_dnum.051.i = phi i32 [ %most_dnum.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %desc_cnt.050.i = phi i32 [ %desc_cnt.1.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %if.end34.for.body.i_crit_edge ]
  %most_chan.049.i = phi ptr [ %most_chan.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end34.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.052.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %weight.i = getelementptr inbounds %struct.cpdma_chan, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %weight.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not.i = icmp eq i32 %15, 0
  %mul.i = mul i32 %15, %9
  %div.i = sdiv i32 %mul.i, 100
  %div.sink.i = select i1 %tobool7.not.i, i32 %tx_per_ch_desc.0, i32 %div.i
  %16 = getelementptr inbounds %struct.cpdma_chan, ptr %13, i32 0, i32 10
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.sink.i, ptr %16, align 4
  %sub.i = sub i32 %desc_cnt.050.i, %div.sink.i
  call void @__sanitizer_cov_trace_cmp4(i32 %most_dnum.051.i, i32 %div.sink.i)
  %cmp16.i = icmp ult i32 %most_dnum.051.i, %div.sink.i
  %spec.select.i = select i1 %cmp16.i, ptr %13, ptr %most_chan.049.i
  %18 = tail call i32 @llvm.umax.i32(i32 %most_dnum.051.i, i32 %div.sink.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body.i.for.inc.i_crit_edge
  %most_chan.1.i = phi ptr [ %most_chan.049.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end6.i ]
  %desc_cnt.1.i = phi i32 [ %desc_cnt.050.i, %for.body.i.for.inc.i_crit_edge ], [ %sub.i, %if.end6.i ]
  %most_dnum.1.i = phi i32 [ %most_dnum.051.i, %for.body.i.for.inc.i_crit_edge ], [ %18, %if.end6.i ]
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool20.not.i = icmp eq ptr %most_chan.1.i, null
  br i1 %tobool20.not.i, label %for.end.i.cpdma_chan_set_descs.exit_crit_edge, label %if.then21.i

for.end.i.cpdma_chan_set_descs.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpdma_chan_set_descs.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %desc_num22.i = getelementptr inbounds %struct.cpdma_chan, ptr %most_chan.1.i, i32 0, i32 10
  %19 = ptrtoint ptr %desc_num22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_num22.i, align 4
  %add.i = add i32 %20, %desc_cnt.1.i
  store i32 %add.i, ptr %desc_num22.i, align 4
  br label %cpdma_chan_set_descs.exit

cpdma_chan_set_descs.exit:                        ; preds = %if.then21.i, %for.end.i.cpdma_chan_set_descs.exit_crit_edge, %if.end34.cpdma_chan_set_descs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i71 = icmp eq i32 %11, 0
  br i1 %tobool.not.i71, label %cpdma_chan_set_descs.exit.cleanup_crit_edge, label %cpdma_chan_set_descs.exit.for.body.i79_crit_edge

cpdma_chan_set_descs.exit.for.body.i79_crit_edge: ; preds = %cpdma_chan_set_descs.exit
  br label %for.body.i79

cpdma_chan_set_descs.exit.cleanup_crit_edge:      ; preds = %cpdma_chan_set_descs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i79:                                     ; preds = %for.inc.i94.for.body.i79_crit_edge, %cpdma_chan_set_descs.exit.for.body.i79_crit_edge
  %i.052.i73 = phi i32 [ %inc.i92, %for.inc.i94.for.body.i79_crit_edge ], [ 32, %cpdma_chan_set_descs.exit.for.body.i79_crit_edge ]
  %most_dnum.051.i74 = phi i32 [ %most_dnum.1.i91, %for.inc.i94.for.body.i79_crit_edge ], [ 0, %cpdma_chan_set_descs.exit.for.body.i79_crit_edge ]
  %desc_cnt.050.i75 = phi i32 [ %desc_cnt.1.i90, %for.inc.i94.for.body.i79_crit_edge ], [ %11, %cpdma_chan_set_descs.exit.for.body.i79_crit_edge ]
  %most_chan.049.i76 = phi ptr [ %most_chan.1.i89, %for.inc.i94.for.body.i79_crit_edge ], [ null, %cpdma_chan_set_descs.exit.for.body.i79_crit_edge ]
  %arrayidx.i77 = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %i.052.i73
  %21 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i77, align 4
  %tobool4.not.i78 = icmp eq ptr %22, null
  br i1 %tobool4.not.i78, label %for.body.i79.for.inc.i94_crit_edge, label %if.end6.i88

for.body.i79.for.inc.i94_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i94

if.end6.i88:                                      ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  %weight.i80 = getelementptr inbounds %struct.cpdma_chan, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %weight.i80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %weight.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool7.not.i81 = icmp eq i32 %24, 0
  %mul.i82 = mul i32 %24, %11
  %div.i83 = sdiv i32 %mul.i82, 100
  %div.sink.i84 = select i1 %tobool7.not.i81, i32 %rx_per_ch_desc.0, i32 %div.i83
  %25 = getelementptr inbounds %struct.cpdma_chan, ptr %22, i32 0, i32 10
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div.sink.i84, ptr %25, align 4
  %sub.i85 = sub i32 %desc_cnt.050.i75, %div.sink.i84
  call void @__sanitizer_cov_trace_cmp4(i32 %most_dnum.051.i74, i32 %div.sink.i84)
  %cmp16.i86 = icmp ult i32 %most_dnum.051.i74, %div.sink.i84
  %spec.select.i87 = select i1 %cmp16.i86, ptr %22, ptr %most_chan.049.i76
  %27 = tail call i32 @llvm.umax.i32(i32 %most_dnum.051.i74, i32 %div.sink.i84) #7
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %if.end6.i88, %for.body.i79.for.inc.i94_crit_edge
  %most_chan.1.i89 = phi ptr [ %most_chan.049.i76, %for.body.i79.for.inc.i94_crit_edge ], [ %spec.select.i87, %if.end6.i88 ]
  %desc_cnt.1.i90 = phi i32 [ %desc_cnt.050.i75, %for.body.i79.for.inc.i94_crit_edge ], [ %sub.i85, %if.end6.i88 ]
  %most_dnum.1.i91 = phi i32 [ %most_dnum.051.i74, %for.body.i79.for.inc.i94_crit_edge ], [ %27, %if.end6.i88 ]
  %inc.i92 = add nuw nsw i32 %i.052.i73, 1
  %exitcond.not.i93 = icmp eq i32 %inc.i92, 64
  br i1 %exitcond.not.i93, label %for.end.i96, label %for.inc.i94.for.body.i79_crit_edge

for.inc.i94.for.body.i79_crit_edge:               ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i79

for.end.i96:                                      ; preds = %for.inc.i94
  %tobool20.not.i95 = icmp eq ptr %most_chan.1.i89, null
  br i1 %tobool20.not.i95, label %for.end.i96.cleanup_crit_edge, label %if.then21.i99

for.end.i96.cleanup_crit_edge:                    ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i99:                                    ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  %desc_num22.i97 = getelementptr inbounds %struct.cpdma_chan, ptr %most_chan.1.i89, i32 0, i32 10
  %28 = ptrtoint ptr %desc_num22.i97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %desc_num22.i97, align 4
  %add.i98 = add i32 %29, %desc_cnt.1.i90
  store i32 %add.i98, ptr %desc_num22.i97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21.i99, %for.end.i96.cleanup_crit_edge, %cpdma_chan_set_descs.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %cpdma_chan_set_descs.exit.cleanup_crit_edge ], [ 0, %for.end.i96.cleanup_crit_edge ], [ 0, %if.then21.i99 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_chan_get_min_rate(ptr nocapture noundef readonly %ctlr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_freq_mhz = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 15
  %0 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bus_freq_mhz, align 4
  %mul1 = mul i32 %1, 32000
  %sub = add i32 %mul1, 16384
  %div = udiv i32 %sub, 16385
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_set_rate(ptr noundef %ch, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 7
  %0 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rate1 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 20
  %2 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp2 = icmp eq i32 %3, %rate
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctlr5 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 6
  %4 = ptrtoint ptr %ctlr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr5, align 4
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %lock18 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #7
  %6 = ptrtoint ptr %ctlr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr5, align 4
  %8 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4
  %i.037.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rlim.036.i = phi i32 [ 0, %if.end4 ], [ %rlim.1.i, %for.inc.i.for.body.i_crit_edge ]
  %new_rmask.035.i = phi i32 [ 0, %if.end4 ], [ %new_rmask.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cpdma_ctlr, ptr %7, i32 0, i32 5, i32 %i.037.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %cmp3.i = icmp eq ptr %11, %ch
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rate, ptr %rate1, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %rate7.i = getelementptr inbounds %struct.cpdma_chan, ptr %11, i32 0, i32 20
  %13 = ptrtoint ptr %rate7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not.i = icmp eq i32 %14, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %mask.i = getelementptr inbounds %struct.cpdma_chan, ptr %11, i32 0, i32 11
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i, align 4
  %or.i = or i32 %16, %new_rmask.035.i
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlim.036.i)
  %tobool11.not.i = icmp eq i32 %rlim.036.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.for.inc.i_crit_edge, label %cpdma_chan_fit_rate.exit

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.then9.i, %for.body.i.for.inc.i_crit_edge
  %new_rmask.1.i = phi i32 [ %or.i, %if.then9.i ], [ %new_rmask.035.i, %if.end10.i.for.inc.i_crit_edge ], [ %new_rmask.035.i, %for.body.i.for.inc.i_crit_edge ]
  %rlim.1.i = phi i32 [ 1, %if.then9.i ], [ 0, %if.end10.i.for.inc.i_crit_edge ], [ %rlim.036.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end28, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cpdma_chan_fit_rate.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %9, ptr %rate1, align 4
  %dev.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %chan_num.i = getelementptr inbounds %struct.cpdma_chan, ptr %11, i32 0, i32 7
  %20 = ptrtoint ptr %chan_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan_num.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %21) #10
  br label %err

if.end28:                                         ; preds = %for.inc.i
  %22 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i64 = icmp eq i32 %23, 0
  br i1 %tobool.not.i64, label %if.end28.if.end32_crit_edge, label %if.end.i65

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end.i65:                                       ; preds = %if.end28
  %bus_freq_mhz.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 1, i32 15
  %24 = ptrtoint ptr %bus_freq_mhz.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_freq_mhz.i, align 4
  %mul1.i = mul i32 %25, 32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i)
  %tobool2.not.i = icmp eq i32 %mul1.i, 0
  br i1 %tobool2.not.i, label %cpdma_chan_set_factors.exit, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i65
  %sub.i = sub i32 %mul1.i, %23
  %sub7.i = add i32 %mul1.i, -1
  %div.i = udiv i32 %sub7.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %div.i)
  %cmp1137.i = icmp ult i32 %div.i, 16385
  br i1 %cmp1137.i, label %while.body.lr.ph.i, label %if.end4.i.while.end.i_crit_edge

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end4.i
  %conv.i = zext i32 %div.i to i64
  %conv11.i = zext i32 %23 to i64
  %26 = lshr i32 %sub.i, 1
  %div14996.i = zext i32 %26 to i64
  %conv207.i = zext i32 %mul1.i to i64
  %div466998.i = lshr i32 %23, 1
  %conv467.i = zext i32 %div466998.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %delta.01145.i = phi i32 [ -1, %while.body.lr.ph.i ], [ %cond446.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %prev_delta.01144.i = phi i32 [ -1, %while.body.lr.ph.i ], [ %prev_delta.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %best_delta.01143.i = phi i32 [ -1, %while.body.lr.ph.i ], [ %best_delta.1.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %best_send_cnt.01142.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %best_send_cnt.1.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %best_idle_cnt.01141.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %best_idle_cnt.1.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %best_rate.01140.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %best_rate.1.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %send_cnt.01138.i = phi i64 [ %conv.i, %while.body.lr.ph.i ], [ %send_cnt.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %mul12.i = mul nuw nsw i64 %send_cnt.01138.i, %conv11.i
  %add15.i = add nuw nsw i64 %mul12.i, %div14996.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add15.i)
  %cmp190.i = icmp ult i64 %add15.i, 4294967296
  br i1 %cmp190.i, label %if.then194.i, label %if.else200.i, !prof !79

if.then194.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv195.i = trunc i64 %add15.i to i32
  %div198.i = udiv i32 %conv195.i, %sub.i
  %conv199.i = zext i32 %div198.i to i64
  br label %if.end204.i

if.else200.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub.i, i64 %add15.i) #11, !srcloc !84
  %asmresult1.i.i = extractvalue { i64, i64 } %27, 1
  br label %if.end204.i

if.end204.i:                                      ; preds = %if.else200.i, %if.then194.i
  %_tmp.0.i = phi i64 [ %conv199.i, %if.then194.i ], [ %asmresult1.i.i, %if.else200.i ]
  %mul208.i = mul i64 %_tmp.0.i, %conv207.i
  %add209.i = add i64 %_tmp.0.i, %send_cnt.01138.i
  %div212997.i = lshr i64 %add209.i, 1
  %add213.i = add i64 %div212997.i, %mul208.i
  %conv215.i = trunc i64 %add209.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add213.i)
  %cmp416.i = icmp ult i64 %add213.i, 4294967296
  br i1 %cmp416.i, label %if.then424.i, label %if.else430.i, !prof !79

if.then424.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv425.i = trunc i64 %add213.i to i32
  %div428.i = udiv i32 %conv425.i, %conv215.i
  br label %if.end434.i

if.else430.i:                                     ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv215.i, i64 %add213.i) #11, !srcloc !84
  %asmresult1.i1033.i = extractvalue { i64, i64 } %28, 1
  %extract.t1131.i = trunc i64 %asmresult1.i1033.i to i32
  br label %if.end434.i

if.end434.i:                                      ; preds = %if.else430.i, %if.then424.i
  %_tmp211.0.off0.i = phi i32 [ %div428.i, %if.then424.i ], [ %extract.t1131.i, %if.else430.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %_tmp211.0.off0.i, i32 %23)
  %cmp439.not.i = icmp ult i32 %_tmp211.0.off0.i, %23
  %sub443.i = sub i32 %_tmp211.0.off0.i, %23
  %cond446.i = select i1 %cmp439.not.i, i32 %delta.01145.i, i32 %sub443.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond446.i, i32 %best_delta.01143.i)
  %cmp447.i = icmp ult i32 %cond446.i, %best_delta.01143.i
  br i1 %cmp447.i, label %if.then449.i, label %if.end434.i.if.end455.i_crit_edge

if.end434.i.if.end455.i_crit_edge:                ; preds = %if.end434.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455.i

if.then449.i:                                     ; preds = %if.end434.i
  %conv450.i = trunc i64 %send_cnt.01138.i to i32
  %conv451.i = trunc i64 %_tmp.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond446.i)
  %tobool452.not.i = icmp eq i32 %cond446.i, 0
  br i1 %tobool452.not.i, label %while.end.i.loopexit.split.loop.exit, label %if.then449.i.if.end455.i_crit_edge

if.then449.i.if.end455.i_crit_edge:               ; preds = %if.then449.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end455.i

if.end455.i:                                      ; preds = %if.then449.i.if.end455.i_crit_edge, %if.end434.i.if.end455.i_crit_edge
  %best_rate.1.i = phi i32 [ %_tmp211.0.off0.i, %if.then449.i.if.end455.i_crit_edge ], [ %best_rate.01140.i, %if.end434.i.if.end455.i_crit_edge ]
  %best_idle_cnt.1.i = phi i32 [ %conv451.i, %if.then449.i.if.end455.i_crit_edge ], [ %best_idle_cnt.01141.i, %if.end434.i.if.end455.i_crit_edge ]
  %best_send_cnt.1.i = phi i32 [ %conv450.i, %if.then449.i.if.end455.i_crit_edge ], [ %best_send_cnt.01142.i, %if.end434.i.if.end455.i_crit_edge ]
  %best_delta.1.i = phi i32 [ %cond446.i, %if.then449.i.if.end455.i_crit_edge ], [ %best_delta.01143.i, %if.end434.i.if.end455.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_delta.01144.i, i32 %cond446.i)
  %cmp456.not.i = icmp ult i32 %prev_delta.01144.i, %cond446.i
  br i1 %cmp456.not.i, label %if.end459.i, label %if.then458.i

if.then458.i:                                     ; preds = %if.end455.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i67 = add nuw nsw i64 %send_cnt.01138.i, 1
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end688.i, %if.then458.i
  %send_cnt.0.be.i = phi i64 [ %inc.i67, %if.then458.i ], [ %sub691.i, %if.end688.i ]
  %prev_delta.0.be.i = phi i32 [ %cond446.i, %if.then458.i ], [ -1, %if.end688.i ]
  %cmp.i = icmp ult i64 %send_cnt.0.be.i, 16385
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.while.end.i_crit_edge

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end459.i:                                      ; preds = %if.end455.i
  %inc460.i = add i64 %_tmp.0.i, 1
  %mul462.i = mul i64 %inc460.i, %conv207.i
  %add468.i = add i64 %mul462.i, %conv467.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add468.i)
  %cmp670.i = icmp ult i64 %add468.i, 4294967296
  br i1 %cmp670.i, label %if.then678.i, label %if.else684.i, !prof !79

if.then678.i:                                     ; preds = %if.end459.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv679.i = trunc i64 %add468.i to i32
  %div682.i = udiv i32 %conv679.i, %23
  %conv683.i = zext i32 %div682.i to i64
  br label %if.end688.i

if.else684.i:                                     ; preds = %if.end459.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %add468.i) #11, !srcloc !84
  %asmresult1.i1062.i = extractvalue { i64, i64 } %29, 1
  br label %if.end688.i

if.end688.i:                                      ; preds = %if.else684.i, %if.then678.i
  %_tmp465.0.i = phi i64 [ %conv683.i, %if.then678.i ], [ %asmresult1.i1062.i, %if.else684.i ]
  %sub691.i = sub i64 %_tmp465.0.i, %inc460.i
  br label %while.cond.backedge.i

while.end.i.loopexit.split.loop.exit:             ; preds = %if.then449.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv450.i.le = trunc i64 %send_cnt.01138.i to i32
  %conv451.i.le = trunc i64 %_tmp.0.i to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit.split.loop.exit, %while.cond.backedge.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %best_rate.2.i = phi i32 [ 0, %if.end4.i.while.end.i_crit_edge ], [ %_tmp211.0.off0.i, %while.end.i.loopexit.split.loop.exit ], [ %best_rate.1.i, %while.cond.backedge.i.while.end.i_crit_edge ]
  %best_idle_cnt.2.i = phi i32 [ 0, %if.end4.i.while.end.i_crit_edge ], [ %conv451.i.le, %while.end.i.loopexit.split.loop.exit ], [ %best_idle_cnt.1.i, %while.cond.backedge.i.while.end.i_crit_edge ]
  %best_send_cnt.2.i = phi i32 [ 0, %if.end4.i.while.end.i_crit_edge ], [ %conv450.i.le, %while.end.i.loopexit.split.loop.exit ], [ %best_send_cnt.1.i, %while.cond.backedge.i.while.end.i_crit_edge ]
  %30 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %best_rate.2.i, ptr %rate1, align 4
  %shl693.i = shl i32 %best_idle_cnt.2.i, 16
  %or694.i = or i32 %best_send_cnt.2.i, %shl693.i
  br label %if.end32

cpdma_chan_set_factors.exit:                      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i66 = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i66, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14) #10
  br label %err

if.end32:                                         ; preds = %while.end.i, %if.end28.if.end32_crit_edge
  %or694.sink.i = phi i32 [ %or694.i, %while.end.i ], [ 0, %if.end28.if.end32_crit_edge ]
  %rate_factor695.i = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 19
  %33 = ptrtoint ptr %rate_factor695.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or694.sink.i, ptr %rate_factor695.i, align 4
  %34 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chan_num, align 4
  %mul696.i = shl i32 %35, 2
  %add697.i = add i32 %mul696.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %rate_factor695.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_factor695.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %dmaregs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %add697.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #7, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #7
  %has_ext_regs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 1, i32 17
  %41 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_ext_regs.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i70 = icmp eq i8 %42, 0
  br i1 %tobool.not.i70, label %if.end32.cleanup.sink.split_crit_edge, label %if.end.i71

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i71:                                       ; preds = %if.end32
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 1
  br i1 %cmp.not.i, label %_cpdma_control_set.exit, label %if.end.i71.cleanup.sink.split_crit_edge

if.end.i71.cleanup.sink.split_crit_edge:          ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

_cpdma_control_set.exit:                          ; preds = %if.end.i71
  %45 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %46, i32 32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %48 = and i32 %47, -16776961
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %and14.i = shl i32 %new_rmask.1.i, 8
  %shl16.i = and i32 %and14.i, 16776960
  %or.i75 = or i32 %49, %shl16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i75) #7
  %51 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %52, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %50) #7, !srcloc !52
  %53 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %.pr = load i8, ptr %has_ext_regs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i78 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i78, label %_cpdma_control_set.exit.cleanup.sink.split_crit_edge, label %if.end.i80

_cpdma_control_set.exit.cleanup.sink.split_crit_edge: ; preds = %_cpdma_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i80:                                       ; preds = %_cpdma_control_set.exit
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr102 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr102)
  %cmp.not.i79 = icmp eq i32 %.pr102, 1
  br i1 %cmp.not.i79, label %if.end2.i81, label %if.end.i80.cleanup.sink.split_crit_edge

if.end.i80.cleanup.sink.split_crit_edge:          ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end2.i81:                                      ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %56, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %58 = and i32 %57, -16777217
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %and14.i86 = and i32 %rlim.1.i, 1
  %or.i87 = or i32 %59, %and14.i86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i87) #7
  %61 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr20.i88 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i88, i32 %60) #7, !srcloc !52
  br label %cleanup.sink.split

err:                                              ; preds = %cpdma_chan_set_factors.exit, %cpdma_chan_fit_rate.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err, %if.end2.i81, %if.end.i80.cleanup.sink.split_crit_edge, %_cpdma_control_set.exit.cleanup.sink.split_crit_edge, %if.end.i71.cleanup.sink.split_crit_edge, %if.end32.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %err ], [ 0, %if.end.i71.cleanup.sink.split_crit_edge ], [ 0, %if.end32.cleanup.sink.split_crit_edge ], [ 0, %_cpdma_control_set.exit.cleanup.sink.split_crit_edge ], [ 0, %if.end.i80.cleanup.sink.split_crit_edge ], [ 0, %if.end2.i81 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rate, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_rate(ptr noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %rate5 = getelementptr inbounds %struct.cpdma_chan, ptr %ch, i32 0, i32 20
  %0 = ptrtoint ptr %rate5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpdma_chan_create(ptr noundef %ctlr, i32 noundef %chan_num, ptr noundef %handler, i32 noundef %rx_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %chan_num, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_type)
  %tobool.not = icmp eq i32 %rx_type, 0
  %add = add i32 %chan_num, 32
  %cond = select i1 %tobool.not, i32 %chan_num, i32 %add
  %and = and i32 %cond, 31
  %num_chan = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %1)
  %cmp.not = icmp slt i32 %and, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 172, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx = getelementptr %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 5, i32 %cond
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %7, ptr noundef nonnull %call.i) #7
  br label %cleanup

if.end17:                                         ; preds = %do.body6
  %ctlr18 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %ctlr18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctlr, ptr %ctlr18, align 4
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state, align 4
  %chan_num19 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %chan_num19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %chan_num19, align 4
  %handler20 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %handler20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %handler, ptr %handler20, align 4
  %rate = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 20
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rate, align 4
  %weight = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 18
  %13 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %cond)
  %cmp22 = icmp sgt i32 %cond, 31
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %rxhdp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %rxhdp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rxhdp, align 4
  %rxcp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %rxcp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxcp, align 4
  %rxfree = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 7
  %18 = ptrtoint ptr %rxfree to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxfree, align 4
  %add.ptr29 = getelementptr i8, ptr %19, i32 %mul
  %rxfree30 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %rxfree30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr29, ptr %rxfree30, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %txhdp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %txhdp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txhdp, align 4
  %txcp = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %txcp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txcp, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then24
  %.pn = phi ptr [ %15, %if.then24 ], [ %22, %if.else ]
  %.pn111 = phi ptr [ %17, %if.then24 ], [ %24, %if.else ]
  %.sink110 = phi i32 [ 168, %if.then24 ], [ 136, %if.else ]
  %.sink109 = phi i32 [ 172, %if.then24 ], [ 140, %if.else ]
  %.sink108 = phi i32 [ 24, %if.then24 ], [ 8, %if.else ]
  %.sink = phi i32 [ 2, %if.then24 ], [ 1, %if.else ]
  %add.ptr35.sink = getelementptr i8, ptr %.pn111, i32 %mul
  %add.ptr32.sink = getelementptr i8, ptr %.pn, i32 %mul
  %25 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr32.sink, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr35.sink, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink110, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink109, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 17
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink108, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink, ptr %35, align 4
  %37 = ptrtoint ptr %chan_num19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chan_num19, align 4
  %and43 = and i32 %38, 31
  %shl = shl nuw i32 1, %and43
  %mask = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl, ptr %mask, align 4
  %lock45 = getelementptr inbounds %struct.cpdma_chan, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock45, ptr noundef nonnull @.str.2, ptr noundef nonnull @cpdma_chan_create.__key, i16 noundef signext 3) #7
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %arrayidx, align 4
  %chan_num51 = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 6
  %41 = ptrtoint ptr %chan_num51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chan_num51, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %chan_num51, align 4
  %call52 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %ctlr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then13 ], [ %call.i, %if.end41 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_rx_buf_num(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %desc_num5 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 10
  %0 = ptrtoint ptr %desc_num5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_num5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_stats(ptr noundef %chan, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %stats5 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14
  %0 = call ptr @memcpy(ptr %stats, ptr %stats5, i32 52)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_idle_submit(ptr noundef %chan, ptr noundef %token, ptr noundef %data, i32 noundef %len, i32 noundef %directed) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.submit_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %si) #7
  %0 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 1
  %1 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 2
  %2 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 3
  %3 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 4
  %4 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 5
  %5 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan, ptr %si, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %token, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %4, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %directed, ptr %0, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %si)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %si) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_submit_si(ptr nocapture noundef readonly %si) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %si, align 4
  %ctlr2 = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ctlr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr2, align 4
  %len3 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 5
  %4 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len3, align 4
  %count = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %desc_num = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %desc_alloc_fail = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %desc_alloc_fail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %desc_alloc_fail, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %desc_alloc_fail, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %pool = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool, align 4
  %gen_pool.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %gen_pool.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gen_pool.i, align 4
  %desc_size.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_size.i, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %15, i32 noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef null) #7
  %22 = inttoptr i32 %call.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %desc_alloc_fail6 = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14, i32 4
  %23 = ptrtoint ptr %desc_alloc_fail6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc_alloc_fail6, align 4
  %inc7 = add i32 %24, 1
  store i32 %inc7, ptr %desc_alloc_fail6, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %min_packet_size = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %min_packet_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_packet_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %26)
  %cmp9 = icmp slt i32 %5, %26
  br i1 %cmp9, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %runt_transmit_buff = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14, i32 7
  %27 = ptrtoint ptr %runt_transmit_buff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %runt_transmit_buff, align 4
  %inc14 = add i32 %28, 1
  store i32 %inc14, ptr %runt_transmit_buff, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8.if.end15_crit_edge
  %len.0 = phi i32 [ %26, %if.then10 ], [ %5, %if.end8.if.end15_crit_edge ]
  %chan_num = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %30)
  %cmp16 = icmp sgt i32 %30, 31
  br i1 %cmp16, label %if.end15.do.end_crit_edge, label %land.lhs.true

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %if.end15
  %directed = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 1
  %31 = ptrtoint ptr %directed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %directed, align 4
  %.off = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then20, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %32, 16
  %or22 = or i32 %shl, -535822336
  br label %do.end

do.end:                                           ; preds = %if.then20, %land.lhs.true.do.end_crit_edge, %if.end15.do.end_crit_edge
  %mode.0 = phi i32 [ -536870912, %if.end15.do.end_crit_edge ], [ %or22, %if.then20 ], [ -536870912, %land.lhs.true.do.end_crit_edge ]
  %data_dma = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 4
  %33 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool24.not = icmp eq i32 %34, 0
  %dev27 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev27, align 4
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dir = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 13
  %37 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %36, i32 noundef %34, i32 noundef %len.0, i32 noundef %38) #7
  br label %desc_phys.exit.i

if.else:                                          ; preds = %do.end
  %data_virt = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 3
  %39 = ptrtoint ptr %data_virt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data_virt, align 4
  %dir28 = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %dir28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dir28, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.else
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !79

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %36) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %36, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %47 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev27, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %48, i32 noundef -1) #7
  br label %if.then33

dma_map_single_attrs.exit:                        ; preds = %if.else
  tail call void @debug_dma_map_single(ptr noundef %36, ptr noundef %40, i32 noundef %len.0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %50 = ptrtoint ptr %40 to i32
  %sub.i = add i32 %50, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %49, i32 %shr.i
  %and.i = and i32 %50, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len.0, i32 noundef %42, i32 noundef 0) #7
  %51 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev27, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then33_crit_edge, label %dma_map_single_attrs.exit.desc_phys.exit.i_crit_edge

dma_map_single_attrs.exit.desc_phys.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_phys.exit.i

dma_map_single_attrs.exit.if.then33_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %dma_map_single_attrs.exit.if.then33_crit_edge, %dma_map_single_attrs.exit.thread
  %53 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pool, align 4
  %gen_pool.i112 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %gen_pool.i112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %gen_pool.i112, align 4
  %desc_size.i113 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %desc_size.i113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %desc_size.i113, align 4
  tail call void @gen_pool_free_owner(ptr noundef %56, i32 noundef %call.i.i.i, i32 noundef %58, ptr noundef null) #7
  br label %cleanup

desc_phys.exit.i:                                 ; preds = %dma_map_single_attrs.exit.desc_phys.exit.i_crit_edge, %if.then25
  %buffer.0 = phi i32 [ %34, %if.then25 ], [ %call41.i, %dma_map_single_attrs.exit.desc_phys.exit.i_crit_edge ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #7, !srcloc !52
  %59 = tail call i32 @llvm.bswap.i32(i32 %buffer.0)
  %hw_buffer = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hw_buffer, i32 %59) #7, !srcloc !52
  %60 = tail call i32 @llvm.bswap.i32(i32 %len.0)
  %hw_len = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hw_len, i32 %60) #7, !srcloc !52
  %or37 = or i32 %mode.0, %len.0
  %61 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %hw_mode = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hw_mode, i32 %61) #7, !srcloc !52
  %token = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 2
  %62 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %token, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %sw_token = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_token, i32 %65) #7, !srcloc !52
  %sw_buffer = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_buffer, i32 %59) #7, !srcloc !52
  %66 = ptrtoint ptr %data_dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool39.not = icmp eq i32 %67, 0
  %or40 = or i32 %len.0, 65536
  %cond = select i1 %tobool39.not, i32 %len.0, i32 %or40
  %68 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %sw_len = getelementptr inbounds %struct.cpdma_desc, ptr %22, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %sw_len, i32 %68) #7, !srcloc !52
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sw_len) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %tail.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %ctlr2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctlr2, align 4
  %pool2.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %pool2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pool2.i, align 4
  %hw_addr.i.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hw_addr.i.i, align 4
  %add.i.i = add i32 %75, %call.i.i.i
  %iomap.i.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iomap.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %sub.i.i = sub i32 %add.i.i, %78
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %if.then.i118, label %do.body7.i

if.then.i118:                                     ; preds = %desc_phys.exit.i
  %stats.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14
  %81 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stats.i, align 4
  %inc.i = add i32 %82, 1
  store i32 %inc.i, ptr %stats.i, align 4
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %22, ptr %1, align 4
  %84 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %22, ptr %tail.i, align 4
  %state.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i117 = icmp eq i32 %86, 1
  br i1 %cmp.i117, label %do.body.i, label %if.then.i118.__cpdma_chan_submit.exit_crit_edge

if.then.i118.__cpdma_chan_submit.exit_crit_edge:  ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cpdma_chan_submit.exit

do.body.i:                                        ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #7
  %hdp.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %hdp.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hdp.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #7, !srcloc !52
  br label %__cpdma_chan_submit.exit

do.body7.i:                                       ; preds = %desc_phys.exit.i
  %90 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tail.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %92) #7, !srcloc !52
  %93 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %22, ptr %tail.i, align 4
  %tail_enqueue.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14, i32 1
  %94 = ptrtoint ptr %tail_enqueue.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tail_enqueue.i, align 4
  %inc12.i = add i32 %95, 1
  store i32 %inc12.i, ptr %tail_enqueue.i, align 4
  %hw_mode.i = getelementptr inbounds %struct.cpdma_desc, ptr %91, i32 0, i32 3
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hw_mode.i) #7, !srcloc !53
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and.i119 = and i32 %97, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and.i119)
  %cmp15.i = icmp eq i32 %and.i119, 268435456
  br i1 %cmp15.i, label %land.lhs.true.i, label %do.body7.i.__cpdma_chan_submit.exit_crit_edge

do.body7.i.__cpdma_chan_submit.exit_crit_edge:    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cpdma_chan_submit.exit

land.lhs.true.i:                                  ; preds = %do.body7.i
  %state16.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %state16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp17.i = icmp eq i32 %99, 1
  br i1 %cmp17.i, label %do.body19.i, label %land.lhs.true.i.__cpdma_chan_submit.exit_crit_edge

land.lhs.true.i.__cpdma_chan_submit.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cpdma_chan_submit.exit

do.body19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %and22.i = and i32 %97, -268435457
  %100 = tail call i32 @llvm.bswap.i32(i32 %and22.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hw_mode.i, i32 %100) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %hdp27.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %hdp27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hdp27.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %92) #7, !srcloc !52
  %misqueued.i = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 14, i32 3
  %103 = ptrtoint ptr %misqueued.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %misqueued.i, align 4
  %inc29.i = add i32 %104, 1
  store i32 %inc29.i, ptr %misqueued.i, align 4
  br label %__cpdma_chan_submit.exit

__cpdma_chan_submit.exit:                         ; preds = %do.body19.i, %land.lhs.true.i.__cpdma_chan_submit.exit_crit_edge, %do.body7.i.__cpdma_chan_submit.exit_crit_edge, %do.body.i, %if.then.i118.__cpdma_chan_submit.exit_crit_edge
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp44 = icmp eq i32 %106, 1
  br i1 %cmp44, label %land.lhs.true45, label %__cpdma_chan_submit.exit.if.end52_crit_edge

__cpdma_chan_submit.exit.if.end52_crit_edge:      ; preds = %__cpdma_chan_submit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true45:                                  ; preds = %__cpdma_chan_submit.exit
  %rxfree = getelementptr inbounds %struct.cpdma_chan, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %rxfree to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rxfree, align 4
  %tobool46.not = icmp eq ptr %108, null
  br i1 %tobool46.not, label %land.lhs.true45.if.end52_crit_edge, label %do.body48

land.lhs.true45.if.end52_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.body48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %rxfree to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rxfree, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 16777216) #7, !srcloc !52
  br label %if.end52

if.end52:                                         ; preds = %do.body48, %land.lhs.true45.if.end52_crit_edge, %__cpdma_chan_submit.exit.if.end52_crit_edge
  %111 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count, align 4
  %inc54 = add i32 %112, 1
  store i32 %inc54, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then33, %if.then4, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end52 ], [ -22, %if.then33 ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_idle_submit_mapped(ptr noundef %chan, ptr noundef %token, i32 noundef %data, i32 noundef %len, i32 noundef %directed) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.submit_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %si) #7
  %0 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 1
  %1 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 2
  %2 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 3
  %3 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 4
  %4 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 5
  %5 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan, ptr %si, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %token, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %data, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %4, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %directed, ptr %0, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %si)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %si) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_submit(ptr noundef %chan, ptr noundef %token, ptr noundef %data, i32 noundef %len, i32 noundef %directed) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.submit_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %si) #7
  %0 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 1
  %1 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 2
  %2 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 3
  %3 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 4
  %4 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 5
  %5 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan, ptr %si, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %token, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %4, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %directed, ptr %0, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.not = icmp eq i32 %12, 1
  br i1 %cmp9.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %si)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %si) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_submit_mapped(ptr noundef %chan, ptr noundef %token, i32 noundef %data, i32 noundef %len, i32 noundef %directed) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.submit_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %si) #7
  %0 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 1
  %1 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 2
  %2 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 3
  %3 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 4
  %4 = getelementptr inbounds %struct.submit_info, ptr %si, i32 0, i32 5
  %5 = ptrtoint ptr %si to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan, ptr %si, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %token, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %data, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %4, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %directed, ptr %0, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9.not = icmp eq i32 %12, 1
  br i1 %cmp9.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %si)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %si) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %pool2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pool2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool2, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %count = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 9
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %desc_num = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 10
  %6 = ptrtoint ptr %desc_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7 = icmp ult i32 %5, %7
  br i1 %cmp7, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gen_pool = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %gen_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_pool, align 4
  %call9 = tail call i32 @gen_pool_avail(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool = icmp ne i32 %call9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_process(ptr noundef %chan, i32 noundef %quota) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota)
  %cmp19 = icmp sgt i32 %quota, 0
  br i1 %cmp19, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %used.010 = phi i32 [ %inc, %if.end4.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %call = tail call fastcc i32 @__cpdma_chan_process(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %if.end4

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %while.body
  %inc = add nuw nsw i32 %used.010, 1
  %exitcond.not = icmp eq i32 %inc, %quota
  br i1 %exitcond.not, label %if.end4.cleanup_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %used.010, %while.body.cleanup_crit_edge ], [ %quota, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cpdma_chan_process(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %pool2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pool2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool2, align 4
  %lock = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %desc_phys.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %empty_dequeue = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14, i32 8
  br label %unlock_ret

desc_phys.exit:                                   ; preds = %entry
  %hw_addr.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_addr.i, align 4
  %8 = ptrtoint ptr %5 to i32
  %add.i = add i32 %7, %8
  %iomap.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomap.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %sub.i = sub i32 %add.i, %11
  %hw_mode = getelementptr inbounds %struct.cpdma_desc, ptr %5, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hw_mode) #7, !srcloc !53
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %and11 = and i32 %13, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %desc_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  %busy_dequeue = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14, i32 9
  br label %unlock_ret

if.end16:                                         ; preds = %desc_phys.exit
  %and = and i32 %13, 2047
  %and17 = and i32 %13, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %sub = add nsw i32 %and, -4
  %spec.select = select i1 %tobool18.not, i32 %and, i32 %sub
  %and21 = and i32 %13, 403636224
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i93 = icmp eq i32 %14, 0
  br i1 %tobool.not.i93, label %if.end16.desc_from_phys.exit_crit_edge, label %cond.true.i

if.end16.desc_from_phys.exit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_from_phys.exit

cond.true.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomap.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %15
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_addr.i, align 4
  %idx.neg.i = sub i32 0, %19
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  br label %desc_from_phys.exit

desc_from_phys.exit:                              ; preds = %cond.true.i, %if.end16.desc_from_phys.exit_crit_edge
  %cond.i = phi ptr [ %add.ptr1.i, %cond.true.i ], [ null, %if.end16.desc_from_phys.exit_crit_edge ]
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cond.i, ptr %chan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %sub.i)
  %cp = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !52
  %count = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 9
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %count, align 4
  %good_dequeue = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14, i32 10
  %26 = ptrtoint ptr %good_dequeue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %good_dequeue, align 4
  %inc33 = add i32 %27, 1
  store i32 %inc33, ptr %good_dequeue, align 4
  %and34 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %desc_from_phys.exit.if.end46_crit_edge, label %land.lhs.true

desc_from_phys.exit.if.end46_crit_edge:           ; preds = %desc_from_phys.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true:                                    ; preds = %desc_from_phys.exit
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %land.lhs.true.if.end46_crit_edge, label %if.then38

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then38:                                        ; preds = %land.lhs.true
  %requeue = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 14, i32 11
  %30 = ptrtoint ptr %requeue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %requeue, align 4
  %inc40 = add i32 %31, 1
  store i32 %inc40, ptr %requeue, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %tobool.not.i96 = icmp eq ptr %33, null
  br i1 %tobool.not.i96, label %if.then38.desc_phys.exit103_crit_edge, label %if.end.i101

if.then38.desc_phys.exit103_crit_edge:            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_phys.exit103

if.end.i101:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw_addr.i, align 4
  %36 = ptrtoint ptr %33 to i32
  %add.i98 = add i32 %35, %36
  %37 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomap.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %sub.i100 = sub i32 %add.i98, %39
  br label %desc_phys.exit103

desc_phys.exit103:                                ; preds = %if.end.i101, %if.then38.desc_phys.exit103_crit_edge
  %retval.0.i102 = phi i32 [ %sub.i100, %if.end.i101 ], [ 0, %if.then38.desc_phys.exit103_crit_edge ]
  %40 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i102)
  %hdp = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 2
  %41 = ptrtoint ptr %hdp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hdp, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !52
  br label %if.end46

if.end46:                                         ; preds = %desc_phys.exit103, %land.lhs.true.if.end46_crit_edge, %desc_from_phys.exit.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %and48 = and i32 %13, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %and21. = select i1 %tobool49.not, i32 %and21, i32 -38, !prof !79
  tail call fastcc void @__cpdma_chan_free(ptr noundef %chan, ptr noundef nonnull %5, i32 noundef %spec.select, i32 noundef %and21.)
  br label %cleanup

unlock_ret:                                       ; preds = %if.then13, %if.then
  %busy_dequeue.sink105 = phi ptr [ %busy_dequeue, %if.then13 ], [ %empty_dequeue, %if.then ]
  %status.0 = phi i32 [ -16, %if.then13 ], [ -2, %if.then ]
  %43 = ptrtoint ptr %busy_dequeue.sink105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %busy_dequeue.sink105, align 4
  %inc15 = add i32 %44, 1
  store i32 %inc15, ptr %busy_dequeue.sink105, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock_ret, %if.end46
  %retval.0 = phi i32 [ %status.0, %unlock_ret ], [ %and21, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_start(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call6 = tail call fastcc i32 @cpdma_chan_set_chan_shaper(ptr noundef %chan)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call fastcc i32 @cpdma_chan_on(ptr noundef %chan)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %entry.cleanup_crit_edge ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cpdma_chan_free(ptr nocapture noundef readonly %chan, ptr noundef %desc, i32 noundef %outlen, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %pool2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pool2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool2, align 4
  %sw_token = getelementptr inbounds %struct.cpdma_desc, ptr %desc, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sw_token) #7, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %sw_len = getelementptr inbounds %struct.cpdma_desc, ptr %desc, i32 0, i32 6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sw_len) #7, !srcloc !53
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %sw_buffer = getelementptr inbounds %struct.cpdma_desc, ptr %desc, i32 0, i32 5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sw_buffer) #7, !srcloc !53
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %and = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %6, -65537
  %dev = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dir = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 13
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %10, i32 noundef %8, i32 noundef %and14, i32 noundef %12) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.cpdma_ctlr, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  %dir16 = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 13
  %15 = ptrtoint ptr %dir16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dir16, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %8, i32 noundef %6, i32 noundef %16, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = tail call i32 @llvm.bswap.i32(i32 %4)
  %gen_pool.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %gen_pool.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gen_pool.i, align 4
  %20 = ptrtoint ptr %desc to i32
  %desc_size.i = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_size.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %19, i32 noundef %20, i32 noundef %22, ptr noundef null) #7
  %handler = getelementptr inbounds %struct.cpdma_chan, ptr %chan, i32 0, i32 12
  %23 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler, align 4
  %25 = inttoptr i32 %17 to ptr
  tail call void %24(ptr noundef %25, i32 noundef %outlen, i32 noundef %status) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_control_get(ptr noundef %ctlr, i32 noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control
  %has_ext_regs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 17
  %0 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_ext_regs.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry._cpdma_control_get.exit_crit_edge, label %if.end.i

entry._cpdma_control_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_get.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i._cpdma_control_get.exit_crit_edge

if.end.i._cpdma_control_get.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_get.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %control)
  %cmp4.i = icmp ugt i32 %control, 11
  br i1 %cmp4.i, label %if.end2.i._cpdma_control_get.exit_crit_edge, label %if.end6.i

if.end2.i._cpdma_control_get.exit_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_get.exit

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %control)
  %cmp7.not.not.i = icmp eq i32 %control, 1
  br i1 %cmp7.not.not.i, label %if.end6.i._cpdma_control_get.exit_crit_edge, label %if.end9.i

if.end6.i._cpdma_control_get.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_get.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %dmaregs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaregs.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !53
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %shift.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control, i32 1
  %10 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %9, %11
  %mask.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control, i32 2
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask.i, align 4
  %and12.i = and i32 %shr.i, %13
  br label %_cpdma_control_get.exit

_cpdma_control_get.exit:                          ; preds = %if.end9.i, %if.end6.i._cpdma_control_get.exit_crit_edge, %if.end2.i._cpdma_control_get.exit_crit_edge, %if.end.i._cpdma_control_get.exit_crit_edge, %entry._cpdma_control_get.exit_crit_edge
  %retval.0.i = phi i32 [ %and12.i, %if.end9.i ], [ -524, %entry._cpdma_control_get.exit_crit_edge ], [ -22, %if.end.i._cpdma_control_get.exit_crit_edge ], [ -2, %if.end2.i._cpdma_control_get.exit_crit_edge ], [ -1, %if.end6.i._cpdma_control_get.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_control_set(ptr noundef %ctlr, i32 noundef %control, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %arrayidx.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control
  %has_ext_regs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 17
  %0 = ptrtoint ptr %has_ext_regs.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_ext_regs.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry._cpdma_control_set.exit_crit_edge, label %if.end.i

entry._cpdma_control_set.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_set.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctlr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i._cpdma_control_set.exit_crit_edge

if.end.i._cpdma_control_set.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_set.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %control)
  %cmp4.i = icmp ugt i32 %control, 11
  br i1 %cmp4.i, label %if.end2.i._cpdma_control_set.exit_crit_edge, label %if.end6.i

if.end2.i._cpdma_control_set.exit_crit_edge:      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_set.exit

if.end6.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %control)
  %cmp7.not.not.i = icmp eq i32 %control, 6
  br i1 %cmp7.not.not.i, label %if.end6.i._cpdma_control_set.exit_crit_edge, label %if.end9.i

if.end6.i._cpdma_control_set.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_cpdma_control_set.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %dmaregs.i = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmaregs.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !53
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %mask.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control, i32 2
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %control, i32 1
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %11, %13
  %neg.i = xor i32 %shl.i, -1
  %and12.i = and i32 %9, %neg.i
  %and14.i = and i32 %11, %value
  %shl16.i = shl i32 %and14.i, %13
  %or.i = or i32 %and12.i, %shl16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %15 = ptrtoint ptr %dmaregs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmaregs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %16, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %14) #7, !srcloc !52
  br label %_cpdma_control_set.exit

_cpdma_control_set.exit:                          ; preds = %if.end9.i, %if.end6.i._cpdma_control_set.exit_crit_edge, %if.end2.i._cpdma_control_set.exit_crit_edge, %if.end.i._cpdma_control_set.exit_crit_edge, %entry._cpdma_control_set.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end9.i ], [ -524, %entry._cpdma_control_set.exit_crit_edge ], [ -22, %if.end.i._cpdma_control_set.exit_crit_edge ], [ -2, %if.end2.i._cpdma_control_set.exit_crit_edge ], [ -1, %if.end6.i._cpdma_control_set.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_get_num_rx_descs(ptr nocapture noundef readonly %ctlr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 7
  %0 = ptrtoint ptr %num_rx_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_desc, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_get_num_tx_descs(ptr nocapture noundef readonly %ctlr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_desc, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpdma_set_num_rx_descs(ptr noundef %ctlr, i32 noundef %num_rx_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %num_rx_desc5 = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 7
  %0 = ptrtoint ptr %num_rx_desc5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_desc5, align 4
  store i32 %num_rx_desc, ptr %num_rx_desc5, align 4
  %pool = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 3
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %num_desc = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_desc, align 4
  %sub = sub i32 %5, %num_rx_desc
  %num_tx_desc = getelementptr inbounds %struct.cpdma_ctlr, ptr %ctlr, i32 0, i32 8
  %6 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %num_tx_desc, align 4
  %call8 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %ctlr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %num_rx_desc5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %num_rx_desc5, align 4
  %8 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool, align 4
  %num_desc11 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %num_desc11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_desc11, align 4
  %sub13 = sub i32 %11, %1
  %12 = ptrtoint ptr %num_tx_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub13, ptr %num_tx_desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gen_pool_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @cpdma_ctlr_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 522, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 530, i32 6}
!5 = !{ptr @cpdma_chan_create.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 924, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 241, i32 16}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 244, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cpdma_desc_pool_create._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @cpdma_desc_pool_create._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 266, i32 3}
!19 = !{ptr @cpdma_desc_pool_create._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cpdma_desc_pool_create._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @controls, !22, !"controls", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 146, i32 34}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 197, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 440, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cpdma_chan_fit_rate._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @cpdma_chan_fit_rate._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ti/davinci_cpdma.c", i32 462, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cpdma_chan_set_factors._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cpdma_chan_set_factors._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i32 0, i32 33}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i8 0, i8 2}
!51 = !{i64 2153932712}
!52 = !{i64 6291851}
!53 = !{i64 6292269}
!54 = !{i64 2153933523}
!55 = !{i64 2153934813}
!56 = !{i64 2153935212}
!57 = !{i64 2153935610}
!58 = !{i64 2153936007}
!59 = !{i64 2153936500}
!60 = !{i64 2153937031}
!61 = !{i64 2153937544}
!62 = !{i64 2153938030}
!63 = !{i64 2153907019}
!64 = !{i64 2153907326}
!65 = !{i64 2153909031}
!66 = !{i64 2153908693}
!67 = !{i64 2153909960}
!68 = !{i64 2153910479}
!69 = !{i64 2153910992}
!70 = !{i64 2153940141}
!71 = !{i64 2153940672}
!72 = !{i64 2153941185}
!73 = !{i64 2153941671}
!74 = !{i64 2153967796}
!75 = !{i64 2153968506}
!76 = !{i64 2153969300}
!77 = !{i64 2153970646}
!78 = !{i64 2153971803}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2153972912}
!81 = !{i64 2153943333}
!82 = !{i64 2153944156}
!83 = !{i64 2153944779}
!84 = !{i64 2148633901, i64 2148634181, i64 2148634515, i64 2148634849}
!85 = !{i64 2153930828}
!86 = !{i64 2153955321}
!87 = !{i64 2153949904}
!88 = !{i64 2153950374}
!89 = !{i64 2153951120}
!90 = !{i64 2153951797}
!91 = !{i64 2153952360}
!92 = !{i64 2153955570}
!93 = !{i64 2153960262}
!94 = !{i64 2153965533}
!95 = !{i64 2153965788}
!96 = !{i64 2153966353}
!97 = !{i64 2153958077}
!98 = !{i64 2153958599}
!99 = !{i64 2153959136}
