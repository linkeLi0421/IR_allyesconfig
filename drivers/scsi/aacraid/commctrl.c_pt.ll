; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/commctrl.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/commctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.aac_fib_context = type { i16, i16, i32, i32, %struct.list_head, %struct.completion, i32, i32, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon, i32, i32, i32 }
%union.anon = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.revision = type { i32, i32, i32 }
%struct.fib_ioctl = type { i32, i32, ptr }
%struct.aac_srb_reply = type { i32, i32, i32, i32, i32, [30 x i8] }
%struct.user_aac_srb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], %struct.user_sgmap }
%struct.user_sgmap = type { i32, [1 x %struct.user_sgentry] }
%struct.user_sgentry = type { i32, i32 }
%struct.aac_hba_cmd_req = type { i8, i8, i8, i8, i32, i32, i32, [16 x i8], [8 x i8], i32, i8, i8, i16, i32, i32, i32, i32, [92 x %struct.aac_hba_sgl] }
%struct.aac_hba_sgl = type { i32, i32, i32, i32 }
%struct.user_sgentry64 = type { [2 x i32], i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.hw_fib = type { %struct.aac_fibhdr, [480 x i8] }
%struct.sgentry64 = type { [2 x i32], i32 }
%struct.aac_srb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], %struct.sgmap }
%struct.sgmap = type { i32, [1 x %struct.sgentry] }
%struct.sgentry = type { i32, i32 }
%struct.aac_native_hba = type { %union.anon.91, %union.anon.92 }
%union.anon.91 = type { %struct.aac_hba_cmd_req }
%union.anon.92 = type { %struct.aac_hba_resp, [460 x i8] }
%struct.aac_hba_resp = type { i8, [3 x i8], i32, i32, i8, i8, i8, i8, i32, [32 x i8] }
%struct.aac_pci_info = type { i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.aac_hba_info = type { [50 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [10 x i32] }
%struct.aac_reset_iop = type { i8 }
%struct.page = type { i32, %union.anon.3, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }

@aac_driver_version = external dso_local global [0 x i8], align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@aac_send_raw_srb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013aacraid: upsg->sg[%d].count=%u>%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_send_raw_srb\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/scsi/aacraid/commctrl.c\00", [32 x i8] zeroinitializer }, align 32
@aac_send_raw_srb._entry_ptr = internal global ptr @aac_send_raw_srb._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 270344, i64 270412, i64 270544, i64 270548, i64 270552, i64 270572, i64 270620, i64 270696, i64 270704, i64 270744]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 64, i64 128, i64 192]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 230, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 214, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 174, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 87, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 335, i32 18 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private constant [35 x i8] c"../drivers/scsi/aacraid/commctrl.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 660, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 326, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @aac_send_raw_srb._entry, ptr @aac_send_raw_srb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_send_raw_srb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_close_fib_context(ptr nocapture readnone %dev, ptr noundef %fibctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_list = getelementptr inbounds %struct.aac_fib_context, ptr %fibctx, i32 0, i32 8
  %0 = ptrtoint ptr %fib_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fib_list, align 4
  %cmp.i.not17 = icmp eq ptr %1, %fib_list
  br i1 %cmp.i.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %count = getelementptr inbounds %struct.aac_fib_context, ptr %fibctx, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %16, %list_del.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -128
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 4
  %hw_fib_va = getelementptr i8, ptr %2, i32 16
  %13 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_fib_va, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  %15 = ptrtoint ptr %fib_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %fib_list, align 4
  %cmp.i.not = icmp eq ptr %16, %fib_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %next3 = getelementptr inbounds %struct.aac_fib_context, ptr %fibctx, i32 0, i32 4
  %call.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next3) #9
  br i1 %call.i.i11, label %if.end.i.i14, label %while.end.list_del.exit16_crit_edge

while.end.list_del.exit16_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit16

if.end.i.i14:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i12 = getelementptr inbounds %struct.aac_fib_context, ptr %fibctx, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i12, align 4
  %19 = ptrtoint ptr %next3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next3, align 4
  %prev1.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i13, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit16

list_del.exit16:                                  ; preds = %if.end.i.i14, %while.end.list_del.exit16_crit_edge
  %23 = ptrtoint ptr %next3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %next3, align 4
  %prev.i15 = getelementptr inbounds %struct.aac_fib_context, ptr %fibctx, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i15, align 4
  %25 = ptrtoint ptr %fibctx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %fibctx, align 4
  tail call void @kfree(ptr noundef %fibctx) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_do_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %daddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioctl_mutex = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #9
  %adapter_shutdown = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 83
  %0 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %adapter_shutdown, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @aac_dev_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %call)
  %cmp.not = icmp eq i32 %call, -25
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end2.cleanup_crit_edge [
    i32 270572, label %sw.bb
    i32 270696, label %if.end2.sw.bb4_crit_edge
    i32 270344, label %if.end2.sw.bb4_crit_edge45
    i32 270544, label %sw.bb6
    i32 270548, label %sw.bb8
    i32 270552, label %sw.bb10
    i32 270412, label %sw.bb12
    i32 270620, label %sw.bb14
    i32 270744, label %sw.bb16
    i32 270704, label %sw.bb18
  ]

if.end2.sw.bb4_crit_edge45:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end2.sw.bb4_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call fastcc i32 @check_revision(ptr noundef %arg)
  br label %cleanup

sw.bb4:                                           ; preds = %if.end2.sw.bb4_crit_edge, %if.end2.sw.bb4_crit_edge45
  %in_reset.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 63
  %3 = ptrtoint ptr %in_reset.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_reset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb4
  %call.i = tail call ptr @aac_fib_alloc(ptr noundef %dev) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_fib_va.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end3.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end3.i.if.then11.i.i.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end3.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !33

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 32) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %6, ptr noundef %arg, i32 noundef 32) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !33

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end3.i.if.then11.i.i.i_crit_edge
  %res.0.i.i192.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %if.end3.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.0.i.i192.i
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i192.i)
  tail call void @aac_fib_free(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i.i.i
  %Size.i = getelementptr inbounds %struct.aac_fibhdr, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %Size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %Size.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #9
  %conv.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, 32
  %SenderSize.i = getelementptr inbounds %struct.aac_fibhdr, ptr %6, i32 0, i32 5
  %15 = ptrtoint ptr %SenderSize.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %SenderSize.i, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  %conv9.i = zext i16 %17 to i32
  %18 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 %conv9.i) #9
  %max_fib_size.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_fib_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp17.i = icmp ugt i32 %18, %20
  br i1 %cmp17.i, label %if.then19.i, label %if.end7.i.if.then.i.i.i.i_crit_edge

if.end7.i.if.then.i.i.i.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.then19.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %daddr.i) #9
  %21 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %daddr.i, align 4, !annotation !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %cmp20.i = icmp ugt i32 %18, 2048
  br i1 %cmp20.i, label %if.then19.i.if.end87.thread.i_crit_edge, label %if.end23.i

if.then19.i.if.end87.thread.i_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.thread.i

if.end23.i:                                       ; preds = %if.then19.i
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev24.i, i32 noundef %18, ptr noundef nonnull %daddr.i, i32 noundef 3264, i32 noundef 0) #9
  %tobool26.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool26.not.i, label %if.end23.i.if.end87.thread.i_crit_edge, label %cleanup.i

if.end23.i.if.end87.thread.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.thread.i

if.end87.thread.i:                                ; preds = %if.end23.i.if.end87.thread.i_crit_edge, %if.then19.i.if.end87.thread.i_crit_edge
  %retval1.0.ph.i = phi i32 [ -12, %if.end23.i.if.end87.thread.i_crit_edge ], [ -22, %if.then19.i.if.end87.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr.i) #9
  br label %if.then90.i

cleanup.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_fib_va.i, align 4
  %hw_fib_pa30.i = getelementptr inbounds %struct.fib, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %hw_fib_pa30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_fib_pa30.i, align 4
  store ptr %call.i.i, ptr %hw_fib_va.i, align 4
  %28 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %daddr.i, align 4
  store i32 %29, ptr %hw_fib_pa30.i, align 4
  %30 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_fib_size.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %31
  %sub.i = sub i32 %18, %31
  %32 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %33 = load i32, ptr %max_fib_size.i, align 8
  %34 = call ptr @memcpy(ptr %call.i.i, ptr %25, i32 %33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daddr.i) #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cleanup.i, %if.end7.i.if.then.i.i.i.i_crit_edge
  %kfib.1.i = phi ptr [ %call.i.i, %cleanup.i ], [ %6, %if.end7.i.if.then.i.i.i.i_crit_edge ]
  %hw_fib.1.i = phi ptr [ %25, %cleanup.i ], [ null, %if.end7.i.if.then.i.i.i.i_crit_edge ]
  %hw_fib_pa.1.i = phi i32 [ %27, %cleanup.i ], [ 0, %if.end7.i.if.then.i.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef %kfib.1.i, i32 noundef %18, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i156.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i156.i, label %if.then.i.i.i.i.if.then11.i.i172.i_crit_edge, label %land.lhs.true.i.i159.i

if.then.i.i.i.i.if.then11.i.i172.i_crit_edge:     ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i172.i

land.lhs.true.i.i159.i:                           ; preds = %if.then.i.i.i.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %18, i32 -1226833920) #12
  %asmresult.i.i157.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i157.i)
  %cmp.i6.i158.i = icmp eq i32 %asmresult.i.i157.i, 0
  br i1 %cmp.i6.i158.i, label %if.end.i.i169.i, label %land.lhs.true.i.i159.i.if.then11.i.i172.i_crit_edge, !prof !33

land.lhs.true.i.i159.i.if.then11.i.i172.i_crit_edge: ; preds = %land.lhs.true.i.i159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i172.i

if.end.i.i169.i:                                  ; preds = %land.lhs.true.i.i159.i
  %call.i.i.i160.i = call zeroext i1 @__kasan_check_write(ptr noundef %kfib.1.i, i32 noundef %18) #9
  %36 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i161.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i161.i to ptr
  %cpu_domain.i.i.i.i.i162.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i162.i) #4, !srcloc !34
  %and.i.i.i.i163.i = and i32 %38, -13
  %or.i.i.i.i164.i = or i32 %and.i.i.i.i163.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i164.i) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i165.i = call i32 @arm_copy_from_user(ptr noundef %kfib.1.i, ptr noundef %arg, i32 noundef %18) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i165.i)
  %tobool4.not.i.i168.i = icmp eq i32 %call1.i.i.i165.i, 0
  br i1 %tobool4.not.i.i168.i, label %if.end40.i, label %if.end.i.i169.i.if.then11.i.i172.i_crit_edge, !prof !33

if.end.i.i169.i.if.then11.i.i172.i_crit_edge:     ; preds = %if.end.i.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i172.i

if.then11.i.i172.i:                               ; preds = %if.end.i.i169.i.if.then11.i.i172.i_crit_edge, %land.lhs.true.i.i159.i.if.then11.i.i172.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i172.i_crit_edge
  %res.0.i.i167203.i = phi i32 [ %call1.i.i.i165.i, %if.end.i.i169.i.if.then11.i.i172.i_crit_edge ], [ %18, %if.then.i.i.i.i.if.then11.i.i172.i_crit_edge ], [ %18, %land.lhs.true.i.i159.i.if.then11.i.i172.i_crit_edge ]
  %sub.i.i170.i = sub i32 %18, %res.0.i.i167203.i
  %add.ptr.i.i171.i = getelementptr i8, ptr %kfib.1.i, i32 %sub.i.i170.i
  %39 = call ptr @memset(ptr %add.ptr.i.i171.i, i32 0, i32 %res.0.i.i167203.i)
  br label %cleanup79.i

if.end40.i:                                       ; preds = %if.end.i.i169.i
  %Size42.i = getelementptr inbounds %struct.aac_fibhdr, ptr %kfib.1.i, i32 0, i32 4
  %40 = ptrtoint ptr %Size42.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %Size42.i, align 4
  %42 = call i16 @llvm.bswap.i16(i16 %41) #9
  %conv43.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %41)
  %cmp45.not.i = icmp eq i16 %13, %41
  br i1 %cmp45.not.i, label %lor.lhs.false.i, label %if.end40.i.cleanup79.i_crit_edge

if.end40.i.cleanup79.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79.i

lor.lhs.false.i:                                  ; preds = %if.end40.i
  %SenderSize48.i = getelementptr inbounds %struct.aac_fibhdr, ptr %kfib.1.i, i32 0, i32 5
  %43 = ptrtoint ptr %SenderSize48.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %SenderSize48.i, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44) #9
  %conv49.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv49.i)
  %cmp50.i = icmp ult i32 %18, %conv49.i
  br i1 %cmp50.i, label %lor.lhs.false.i.cleanup79.i_crit_edge, label %if.end53.i

lor.lhs.false.i.cleanup79.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79.i

if.end53.i:                                       ; preds = %lor.lhs.false.i
  %Command.i = getelementptr inbounds %struct.aac_fibhdr, ptr %kfib.1.i, i32 0, i32 1
  %46 = ptrtoint ptr %Command.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %Command.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31744, i16 %47)
  %cmp56.i = icmp eq i16 %47, 31744
  br i1 %cmp56.i, label %if.then58.i, label %if.else.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %a_ops.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17
  %48 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %a_ops.i, align 4
  call void %49(ptr noundef %dev) #9
  %50 = ptrtoint ptr %kfib.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %kfib.1.i, align 4
  br label %if.then.i.i.i182.i

if.else.i:                                        ; preds = %if.end53.i
  %51 = call i16 @llvm.bswap.i16(i16 %47) #9
  %call65.i = call i32 @aac_fib_send(i16 noundef zeroext %51, ptr noundef nonnull %call.i, i32 noundef %conv43.i, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.else.i.cleanup79.i_crit_edge

if.else.i.cleanup79.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79.i

if.end68.i:                                       ; preds = %if.else.i
  %call69.i = call i32 @aac_fib_complete(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.not.i = icmp eq i32 %call69.i, 0
  br i1 %cmp70.not.i, label %if.end68.i.if.then.i.i.i182.i_crit_edge, label %if.end68.i.cleanup79.i_crit_edge

if.end68.i.cleanup79.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup79.i

if.end68.i.if.then.i.i.i182.i_crit_edge:          ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i182.i

if.then.i.i.i182.i:                               ; preds = %if.end68.i.if.then.i.i.i182.i_crit_edge, %if.then58.i
  call void @__check_object_size(ptr noundef %kfib.1.i, i32 noundef %18, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i183.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i183.i, label %if.then.i.i.i182.i.copy_to_user.exit.i_crit_edge, label %if.then2.i.i.i

if.then.i.i.i182.i.copy_to_user.exit.i_crit_edge: ; preds = %if.then.i.i.i182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i182.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i188.i = call zeroext i1 @__kasan_check_read(ptr noundef %kfib.1.i, i32 noundef %18) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef %kfib.1.i, i32 noundef %18) #9
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.then.i.i.i182.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i189.i = phi i32 [ %18, %if.then.i.i.i182.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i189.i)
  %tobool76.not.i = icmp eq i32 %n.addr.0.i189.i, 0
  %spec.select151.i = select i1 %tobool76.not.i, i32 0, i32 -14
  br label %cleanup79.i

cleanup79.i:                                      ; preds = %copy_to_user.exit.i, %if.end68.i.cleanup79.i_crit_edge, %if.else.i.cleanup79.i_crit_edge, %lor.lhs.false.i.cleanup79.i_crit_edge, %if.end40.i.cleanup79.i_crit_edge, %if.then11.i.i172.i
  %retval1.1.i = phi i32 [ %call65.i, %if.else.i.cleanup79.i_crit_edge ], [ -22, %lor.lhs.false.i.cleanup79.i_crit_edge ], [ -22, %if.end40.i.cleanup79.i_crit_edge ], [ -22, %if.end68.i.cleanup79.i_crit_edge ], [ %spec.select151.i, %copy_to_user.exit.i ], [ -14, %if.then11.i.i172.i ]
  %tobool80.not.i = icmp eq ptr %hw_fib.1.i, null
  br i1 %tobool80.not.i, label %cleanup79.i.if.end87.i_crit_edge, label %if.then81.i

cleanup79.i.if.end87.i_crit_edge:                 ; preds = %cleanup79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.then81.i:                                      ; preds = %cleanup79.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev82.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %52 = ptrtoint ptr %pdev82.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev82.i, align 4
  %dev83.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %hw_fib_pa84.i = getelementptr inbounds %struct.fib, ptr %call.i, i32 0, i32 14
  %54 = ptrtoint ptr %hw_fib_pa84.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_fib_pa84.i, align 4
  call void @dma_free_attrs(ptr noundef %dev83.i, i32 noundef %18, ptr noundef %kfib.1.i, i32 noundef %55, i32 noundef 0) #9
  %56 = ptrtoint ptr %hw_fib_pa84.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %hw_fib_pa.1.i, ptr %hw_fib_pa84.i, align 4
  %57 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %hw_fib.1.i, ptr %hw_fib_va.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then81.i, %cleanup79.i.if.end87.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %retval1.1.i)
  %cmp88.not.i = icmp eq i32 %retval1.1.i, -512
  br i1 %cmp88.not.i, label %if.end87.i.cleanup_crit_edge, label %if.end87.i.if.then90.i_crit_edge

if.end87.i.if.then90.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90.i

if.end87.i.cleanup_crit_edge:                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then90.i:                                      ; preds = %if.end87.i.if.then90.i_crit_edge, %if.end87.thread.i
  %retval1.1211214.i = phi i32 [ %retval1.0.ph.i, %if.end87.thread.i ], [ %retval1.1.i, %if.end87.i.if.then90.i_crit_edge ]
  call void @aac_fib_free(ptr noundef nonnull %call.i) #9
  br label %cleanup

sw.bb6:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @open_getadapter_fib(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc i32 @next_getadapter_fib(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call fastcc i32 @close_getadapter_fib(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc i32 @aac_send_raw_srb(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call fastcc i32 @aac_get_pci_info(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb16:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call fastcc i32 @aac_get_hba_info(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call fastcc i32 @aac_send_reset_adapter(ptr noundef %dev, ptr noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %if.then90.i, %if.end87.i.cleanup_crit_edge, %if.then11.i.i.i, %if.end.i.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %status.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call3, %sw.bb ], [ -13, %entry.cleanup_crit_edge ], [ -25, %if.end2.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ -16, %sw.bb4.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %retval1.1211214.i, %if.then90.i ], [ -512, %if.end87.i.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %ioctl_mutex) #9
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_revision(ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.revision, align 4
  %driver_version = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %response) #9
  %0 = getelementptr inbounds %struct.revision, ptr %response, i32 0, i32 1
  %1 = getelementptr inbounds %struct.revision, ptr %response, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %driver_version) #9
  %2 = ptrtoint ptr %driver_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @aac_driver_version, ptr %driver_version, align 4
  %3 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %response, align 4
  %call = call i32 @simple_strtol(ptr noundef nonnull @aac_driver_version, ptr noundef nonnull %driver_version, i32 noundef 10) #9
  %shl = shl i32 %call, 24
  %or = or i32 %shl, 1024
  %4 = ptrtoint ptr %driver_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_version, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1
  %call1 = call i32 @simple_strtol(ptr noundef %add.ptr, ptr noundef nonnull %driver_version, i32 noundef 10) #9
  %shl2 = shl i32 %call1, 16
  %add = add i32 %or, %shl2
  %6 = ptrtoint ptr %driver_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_version, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 1
  %call4 = call i32 @simple_strtol(ptr noundef %add.ptr3, ptr noundef null, i32 noundef 10) #9
  %add5 = add i32 %add, %call4
  %8 = call i32 @llvm.bswap.i32(i32 %add5)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 667353088, ptr %1, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %response, i32 noundef 12) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %response, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %12 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %driver_version) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %response) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_getadapter_fib(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 92) #13
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.if.end31_crit_edge, label %if.else

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 779, ptr %call7.i, align 8
  %size = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 92, ptr %size, align 2
  %3 = ptrtoint ptr %call7.i to i32
  %unique = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %unique, align 4
  %completion = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 5
  %5 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #9
  %wait = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 6
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %count = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 7
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 8
  %fib_list = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 8
  %8 = ptrtoint ptr %fib_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %fib_list, ptr %fib_list, align 4
  %prev.i = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fib_list, ptr %prev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %div = udiv i32 %10, 100
  %jiffies = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %jiffies, align 8
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #9
  %fib_list8 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %fib_list8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %entry1.057 = load ptr, ptr %fib_list8, align 4
  %cmp10.not58 = icmp eq ptr %entry1.057, %fib_list8
  br i1 %cmp10.not58, label %if.else.while.end_crit_edge, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.else.while.body_crit_edge
  %entry1.059 = phi ptr [ %entry1.0, %if.end.while.body_crit_edge ], [ %entry1.057, %if.else.while.body_crit_edge ]
  %unique13 = getelementptr i8, ptr %entry1.059, i32 -8
  %13 = ptrtoint ptr %unique13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unique13, align 4
  %15 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %unique, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp15 = icmp eq i32 %14, %16
  br i1 %cmp15, label %if.then17, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then17:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %14, 1
  %17 = ptrtoint ptr %unique to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %unique, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %while.body.if.end_crit_edge
  %entry1.1.in = phi ptr [ %fib_list8, %if.then17 ], [ %entry1.059, %while.body.if.end_crit_edge ]
  %18 = ptrtoint ptr %entry1.1.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.0 = load ptr, ptr %entry1.1.in, align 4
  %cmp10.not = icmp eq ptr %entry1.0, %fib_list8
  br i1 %cmp10.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.else.while.end_crit_edge
  %next23 = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 4
  %prev.i52 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i52, align 4
  %call.i.i53 = tail call zeroext i1 @__list_add_valid(ptr noundef %next23, ptr noundef %20, ptr noundef %fib_list8) #9
  br i1 %call.i.i53, label %if.end.i.i54, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i54:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %next23, ptr %prev.i52, align 4
  %22 = ptrtoint ptr %next23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fib_list8, ptr %next23, align 4
  %prev3.i.i = getelementptr inbounds %struct.aac_fib_context, ptr %call7.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %next23, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i54, %while.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call5) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %list_add_tail.exit.if.end31_crit_edge, label %if.end.i.i

list_add_tail.exit.if.end31_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i.i:                                       ; preds = %list_add_tail.exit
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 4, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.end31_crit_edge

if.end.i.i.if.end31_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %unique, i32 noundef 4) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef %unique, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %if.end31

if.end31:                                         ; preds = %copy_to_user.exit, %if.end.i.i.if.end31_crit_edge, %list_add_tail.exit.if.end31_crit_edge, %entry.if.end31_crit_edge
  %status.1 = phi i32 [ -12, %entry.if.end31_crit_edge ], [ -14, %list_add_tail.exit.if.end31_crit_edge ], [ -14, %if.end.i.i.if.end31_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @next_getadapter_fib(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.fib_ioctl, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %f) #9
  %0 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f, align 4, !annotation !37
  %1 = getelementptr inbounds %struct.fib_ioctl, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !37
  %3 = getelementptr inbounds %struct.fib_ioctl, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !37
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !33

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %f, i32 noundef 12) #9
  %6 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %f, ptr noundef %arg, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body15, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !33

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i166 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i166
  %add.ptr.i.i = getelementptr i8, ptr %f, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i166)
  br label %cleanup106

do.body15:                                        ; preds = %if.end.i.i
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #9
  %fib_list = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body15
  %entry1.0.in = phi ptr [ %fib_list, %do.body15 ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp21.not = icmp eq ptr %entry1.0, %fib_list
  br i1 %cmp21.not, label %while.cond.if.then31_crit_edge, label %while.body

while.cond.if.then31_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

while.body:                                       ; preds = %while.cond
  %unique = getelementptr i8, ptr %entry1.0, i32 -8
  %11 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unique, align 4
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  %cmp25 = icmp eq i32 %12, %14
  br i1 %cmp25, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.body
  %add.ptr.le = getelementptr i8, ptr %entry1.0, i32 -12
  %tobool30.not = icmp eq ptr %add.ptr.le, null
  br i1 %tobool30.not, label %while.end.if.then31_crit_edge, label %if.end33

while.end.if.then31_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %while.end.if.then31_crit_edge, %while.cond.if.then31_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call17) #9
  br label %cleanup106

if.end33:                                         ; preds = %while.end
  %15 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 779, i16 %16)
  %cmp35.not = icmp eq i16 %16, 779
  br i1 %cmp35.not, label %lor.lhs.false, label %if.end33.if.then40_crit_edge

if.end33.if.then40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end33
  %size = getelementptr i8, ptr %entry1.0, i32 -10
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 92, i16 %18)
  %cmp38.not = icmp eq i16 %18, 92
  br i1 %cmp38.not, label %return_fib.preheader, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

return_fib.preheader:                             ; preds = %lor.lhs.false
  %fib_list43 = getelementptr i8, ptr %entry1.0, i32 72
  %19 = ptrtoint ptr %fib_list43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %fib_list43, align 4
  %cmp.i.not179 = icmp eq ptr %20, %fib_list43
  br i1 %cmp.i.not179, label %if.else60.lr.ph, label %return_fib.preheader.if.then46_crit_edge

return_fib.preheader.if.then46_crit_edge:         ; preds = %return_fib.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

if.else60.lr.ph:                                  ; preds = %return_fib.preheader
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 50
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 63
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %thread = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 40
  %name = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %completion = getelementptr i8, ptr %entry1.0, i32 8
  br label %if.else60

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end33.if.then40_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call17) #9
  br label %cleanup106

if.then46:                                        ; preds = %do.body89.if.then46_crit_edge, %return_fib.preheader.if.then46_crit_edge
  %flags.0.lcssa = phi i32 [ %call17, %return_fib.preheader.if.then46_crit_edge ], [ %call97, %do.body89.if.then46_crit_edge ]
  %.lcssa = phi ptr [ %20, %return_fib.preheader.if.then46_crit_edge ], [ %57, %do.body89.if.then46_crit_edge ]
  %call.i.i161 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #9
  br i1 %call.i.i161, label %if.end.i.i162, label %if.then46.list_del.exit_crit_edge

if.then46.list_del.exit_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i162:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i162, %if.then46.list_del.exit_crit_edge
  %27 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr51 = getelementptr i8, ptr %.lcssa, i32 -128
  %count = getelementptr i8, ptr %entry1.0, i32 68
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %count, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %flags.0.lcssa) #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %hw_fib_va = getelementptr i8, ptr %.lcssa, i32 16
  %33 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_fib_va, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i155 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i155, label %list_del.exit.if.then56_crit_edge, label %if.end.i.i158

list_del.exit.if.then56_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.end.i.i158:                                    ; preds = %list_del.exit
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 512, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i156 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i156)
  %cmp.i6.i157 = icmp eq i32 %asmresult.i.i156, 0
  br i1 %cmp.i6.i157, label %copy_to_user.exit, label %if.end.i.i158.if.then56_crit_edge

if.end.i.i158.if.then56_crit_edge:                ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

copy_to_user.exit:                                ; preds = %if.end.i.i158
  %call.i.i.i159 = call zeroext i1 @__kasan_check_read(ptr noundef %34, i32 noundef 512) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef %34, i32 noundef 512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool55.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool55.not, label %if.end58, label %copy_to_user.exit.if.then56_crit_edge

copy_to_user.exit.if.then56_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %copy_to_user.exit.if.then56_crit_edge, %if.end.i.i158.if.then56_crit_edge, %list_del.exit.if.then56_crit_edge
  %36 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_fib_va, align 4
  call void @kfree(ptr noundef %37) #9
  call void @kfree(ptr noundef %add.ptr51) #9
  br label %cleanup106

if.end58:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_fib_va, align 4
  call void @kfree(ptr noundef %39) #9
  call void @kfree(ptr noundef %add.ptr51) #9
  br label %if.end105

if.else60:                                        ; preds = %do.body89.if.else60_crit_edge, %if.else60.lr.ph
  %flags.0180 = phi i32 [ %call17, %if.else60.lr.ph ], [ %call97, %do.body89.if.else60_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %flags.0180) #9
  %40 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool62.not = icmp eq i32 %41, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.else60.if.end79_crit_edge

if.else60.if.end79_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true:                                    ; preds = %if.else60
  %42 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool64.not = icmp eq i8 %43, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true65:                                  ; preds = %land.lhs.true
  %44 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %queues, align 8
  %tobool66.not = icmp eq ptr %45, null
  br i1 %tobool66.not, label %land.lhs.true65.if.end79_crit_edge, label %land.lhs.true67

land.lhs.true65.if.end79_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true67:                                  ; preds = %land.lhs.true65
  %46 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fsa_dev, align 8
  %tobool68.not = icmp eq ptr %47, null
  br i1 %tobool68.not, label %land.lhs.true67.if.end79_crit_edge, label %if.then69

land.lhs.true67.if.end79_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then69:                                        ; preds = %land.lhs.true67
  %48 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %thread, align 4
  %call70 = call i32 @kthread_stop(ptr noundef %49) #9
  call void @msleep(i32 noundef 1000) #9
  %50 = ptrtoint ptr %aif_thread to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %aif_thread, align 8
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 8
  %call72 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @aac_command_thread, ptr noundef %dev, i32 noundef -1, ptr noundef nonnull @.str.4, ptr noundef %52) #9
  %cmp.i163 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then69.if.end76_crit_edge, label %if.then74

if.then69.if.end76_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = call i32 @wake_up_process(ptr noundef %call72) #9
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.then69.if.end76_crit_edge
  %53 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call72, ptr %thread, align 4
  call void @msleep(i32 noundef 1000) #9
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %land.lhs.true67.if.end79_crit_edge, %land.lhs.true65.if.end79_crit_edge, %land.lhs.true.if.end79_crit_edge, %if.else60.if.end79_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool81.not = icmp eq i32 %55, 0
  br i1 %tobool81.not, label %if.end79.if.end105_crit_edge, label %if.then82

if.end79.if.end105_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then82:                                        ; preds = %if.end79
  %call83 = call i32 @wait_for_completion_interruptible(ptr noundef %completion) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then82.if.end105_crit_edge, label %do.body89

if.then82.if.end105_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

do.body89:                                        ; preds = %if.then82
  %call97 = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #9
  %56 = ptrtoint ptr %fib_list43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %fib_list43, align 4
  %cmp.i.not = icmp eq ptr %57, %fib_list43
  br i1 %cmp.i.not, label %do.body89.if.else60_crit_edge, label %do.body89.if.then46_crit_edge

do.body89.if.then46_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then46

do.body89.if.else60_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

if.end105:                                        ; preds = %if.then82.if.end105_crit_edge, %if.end79.if.end105_crit_edge, %if.end58
  %status.0 = phi i32 [ 0, %if.end58 ], [ -11, %if.end79.if.end105_crit_edge ], [ -512, %if.then82.if.end105_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %div = udiv i32 %58, 100
  %jiffies = getelementptr i8, ptr %entry1.0, i32 -4
  %59 = ptrtoint ptr %jiffies to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div, ptr %jiffies, align 4
  br label %cleanup106

cleanup106:                                       ; preds = %if.end105, %if.then56, %if.then40, %if.then31, %if.then11.i.i
  %retval.1 = phi i32 [ -22, %if.then40 ], [ %status.0, %if.end105 ], [ -14, %if.then56 ], [ -22, %if.then31 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %f) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @close_getadapter_fib(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_list = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %arg to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %fib_list, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %1 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %fib_list
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %unique = getelementptr i8, ptr %entry1.0, i32 -8
  %2 = ptrtoint ptr %unique to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unique, align 4
  %cmp3 = icmp eq i32 %3, %0
  br i1 %cmp3, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %while.body
  %add.ptr.le = getelementptr i8, ptr %entry1.0, i32 -12
  %tobool.not = icmp eq ptr %add.ptr.le, null
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.end6

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %while.end
  %4 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.le, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 779, i16 %5)
  %cmp7.not = icmp eq i16 %5, 779
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %size = getelementptr i8, ptr %entry1.0, i32 -10
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 92, i16 %7)
  %cmp10.not = icmp eq i16 %7, 92
  br i1 %cmp10.not, label %do.body14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #9
  %call21 = tail call i32 @aac_close_fib_context(ptr undef, ptr noundef nonnull %add.ptr.le)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body14 ], [ 0, %while.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_send_raw_srb(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %fibsize = alloca i32, align 4
  %sg_user = alloca [28 x ptr], align 4
  %sg_list = alloca [28 x ptr], align 4
  %sg_count = alloca [28 x i32], align 4
  %reply = alloca %struct.aac_srb_reply, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fibsize) #9
  %0 = ptrtoint ptr %fibsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fibsize, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %sg_user) #9
  %1 = call ptr @memset(ptr %sg_user, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %sg_list) #9
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %sg_count) #9
  %2 = call ptr @memset(ptr %sg_count, i32 255, i32 112)
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 63
  %3 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup664_crit_edge

entry.cleanup664_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup664

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end2, label %if.end.cleanup664_crit_edge

if.end.cleanup664_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup664

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @aac_fib_alloc(ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup664_crit_edge, label %if.end6

if.end2.cleanup664_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup664

if.end6:                                          ; preds = %if.end2
  %5 = call ptr @memset(ptr %sg_list, i32 0, i32 112)
  %count = getelementptr inbounds %struct.user_aac_srb, ptr %arg, i32 0, i32 6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end6.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end6.if.then11.i.i_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %count, i32 4, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !33

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fibsize, i32 noundef 4) #9
  %7 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fibsize, ptr noundef %count, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !33

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end6.if.then11.i.i_crit_edge
  %res.0.i.i1351 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end6.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i1351
  %add.ptr.i.i = getelementptr i8, ptr %fibsize, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i1351)
  br label %cleanup650.thread1789

if.end10:                                         ; preds = %if.end.i.i
  %11 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fibsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %12)
  %cmp = icmp ult i32 %12, 56
  br i1 %cmp, label %if.end10.cleanup650.thread1789_crit_edge, label %lor.lhs.false

if.end10.cleanup650.thread1789_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

lor.lhs.false:                                    ; preds = %if.end10
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_fib_size, align 8
  %sub = add i32 %14, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub)
  %cmp11 = icmp ugt i32 %12, %sub
  br i1 %cmp11, label %lor.lhs.false.cleanup650.thread1789_crit_edge, label %if.end13

lor.lhs.false.cleanup650.thread1789_crit_edge:    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = call ptr @memdup_user(ptr noundef %arg, i32 noundef %12) #9
  %cmp.i1348 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1348, label %cleanup650, label %if.end18

if.end18:                                         ; preds = %if.end13
  %flags19 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 5
  %15 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags19, align 4
  %17 = trunc i32 %16 to i8
  %trunc = and i8 %17, -64
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %trunc, label %22 [
    i8 -128, label %if.end18._crit_edge
    i8 -64, label %sw.bb20
    i8 64, label %sw.bb21
  ]

if.end18._crit_edge:                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

sw.bb20:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

19:                                               ; preds = %sw.bb21, %sw.bb20, %if.end18._crit_edge
  %data_dir.0.ph = phi i32 [ 1, %if.end18._crit_edge ], [ 0, %sw.bb20 ], [ 2, %sw.bb21 ]
  %sg1769 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 10
  %20 = ptrtoint ptr %sg1769 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg1769, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %21)
  %cmp231770 = icmp ult i32 %21, 29
  br i1 %cmp231770, label %.if.end31_crit_edge, label %.cleanup650.thread1789_crit_edge

.cleanup650.thread1789_crit_edge:                 ; preds = %19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

.if.end31_crit_edge:                              ; preds = %19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

22:                                               ; preds = %if.end18
  %sg = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 10
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool29.not = icmp eq i32 %24, 0
  br i1 %tobool29.not, label %.if.end31_crit_edge2171, label %.cleanup650.thread1789_crit_edge2172

.cleanup650.thread1789_crit_edge2172:             ; preds = %22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

.if.end31_crit_edge2171:                          ; preds = %22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %.if.end31_crit_edge2171, %.if.end31_crit_edge
  %data_dir.017721782 = phi i32 [ %data_dir.0.ph, %.if.end31_crit_edge ], [ 3, %.if.end31_crit_edge2171 ]
  %sg17751781 = phi ptr [ %sg1769, %.if.end31_crit_edge ], [ %sg, %.if.end31_crit_edge2171 ]
  %25 = phi i32 [ %21, %.if.end31_crit_edge ], [ 0, %.if.end31_crit_edge2171 ]
  %mul = shl nuw nsw i32 %25, 3
  %add = add nuw nsw i32 %mul, 56
  %mul38 = shl nuw nsw i32 %25, 2
  %add39 = add nuw nsw i32 %add, %mul38
  %26 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fibsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp40.not = icmp eq i32 %add, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %27)
  %cmp42.not = icmp eq i32 %add39, %27
  %or.cond1010 = select i1 %cmp40.not, i1 true, i1 %cmp42.not
  br i1 %or.cond1010, label %if.end44, label %if.end31.cleanup650.thread1789_crit_edge

if.end31.cleanup650.thread1789_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end44:                                         ; preds = %if.end31
  %channel = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 1
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp45 = icmp ult i32 %29, 5
  br i1 %cmp45, label %land.lhs.true46, label %if.end44.if.else199_crit_edge

if.end44.if.else199_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else199

land.lhs.true46:                                  ; preds = %if.end44
  %id = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 2
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %31)
  %cmp47 = icmp ult i32 %31, 256
  br i1 %cmp47, label %land.lhs.true48, label %land.lhs.true46.if.else199_crit_edge

land.lhs.true46.if.else199_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else199

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %devtype = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %29, i32 %31, i32 1
  %32 = ptrtoint ptr %devtype to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp51 = icmp eq i8 %33, 3
  br i1 %cmp51, label %if.then53, label %land.lhs.true48.if.else199_crit_edge

land.lhs.true48.if.else199_crit_edge:             ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else199

if.then53:                                        ; preds = %land.lhs.true48
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 13
  %34 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_fib_va, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %data_dir.017721782)
  %37 = icmp ult i32 %data_dir.017721782, 3
  br i1 %37, label %switch.lookup, label %if.then53.if.end98_crit_edge

if.then53.if.end98_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

switch.lookup:                                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %switch.cast = trunc i32 %data_dir.017721782 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 66049, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %byte1 = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %byte1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %switch.masked, ptr %byte1, align 1
  br label %if.end98

if.end98:                                         ; preds = %switch.lookup, %if.then53.if.end98_crit_edge
  %lun = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 3
  %39 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lun, align 4
  %41 = lshr i32 %40, 24
  %conv60 = trunc i32 %41 to i8
  %arrayidx62 = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 8, i32 1
  %42 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv60, ptr %arrayidx62, align 1
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 4
  %arrayidx66 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %29, i32 %44
  %45 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx66, align 4
  %it_nexus = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 4
  %47 = ptrtoint ptr %it_nexus to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %it_nexus, align 4
  %cdb = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 7
  %cdb68 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 9
  %48 = call ptr @memcpy(ptr %cdb, ptr %cdb68, i32 16)
  %hw_error_pa = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 16
  %49 = ptrtoint ptr %hw_error_pa to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_error_pa, align 4
  %error_ptr_hi = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 14
  %51 = ptrtoint ptr %error_ptr_hi to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %error_ptr_hi, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %50)
  %error_ptr_lo = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 13
  %53 = ptrtoint ptr %error_ptr_lo to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %error_ptr_lo, align 4
  %error_length = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 15
  %54 = ptrtoint ptr %error_length to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 131072, ptr %error_length, align 4
  %55 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sg17751781, align 4
  %57 = lshr i32 %56, 24
  %conv76 = trunc i32 %57 to i8
  %emb_data_desc_count = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 11
  %58 = ptrtoint ptr %emb_data_desc_count to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv76, ptr %emb_data_desc_count, align 1
  %59 = load i32, ptr %sg17751781, align 4
  %mul79 = shl i32 %59, 4
  %add80 = add i32 %mul79, 64
  %hbacmd_size = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 17
  %60 = ptrtoint ptr %hbacmd_size to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add80, ptr %hbacmd_size, align 4
  %61 = load i32, ptr %sg17751781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp1041625.not = icmp eq i32 %61, 0
  br i1 %cmp1041625.not, label %if.end98.cleanup195.thread_crit_edge, label %for.body.lr.ph

if.end98.cleanup195.thread_crit_edge:             ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195.thread

for.body.lr.ph:                                   ; preds = %if.end98
  %sg108 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %and154 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01628 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %byte_count.01627 = phi i32 [ 0, %for.body.lr.ph ], [ %add182, %for.inc.for.body_crit_edge ]
  %sg_indx.01626 = phi i32 [ 0, %for.body.lr.ph ], [ %i.01628, %for.inc.for.body_crit_edge ]
  %62 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fibsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %63)
  %cmp106 = icmp eq i32 %add39, %63
  %count110 = getelementptr [1 x %struct.user_sgentry64], ptr %sg108, i32 0, i32 %i.01628, i32 1
  %count113 = getelementptr %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1, i32 %i.01628, i32 1
  %cond.in = select i1 %cmp106, ptr %count110, ptr %count113
  %64 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %64)
  %cond = load i32, ptr %cond.in, align 4
  %arrayidx114 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.01628
  %65 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond, ptr %arrayidx114, align 4
  %66 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scsi_host_ptr, align 8
  %max_sectors = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 30
  %68 = ptrtoint ptr %max_sectors to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_sectors, align 8
  %shl = shl i32 %69, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %shl)
  %cmp116 = icmp ugt i32 %cond, %shl
  br i1 %cmp116, label %do.end, label %if.end8.i

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.01628, i32 noundef %cond, i32 noundef %shl) #14
  br label %cleanup650.thread1789

if.end8.i:                                        ; preds = %for.body
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #15
  %tobool127.not = icmp eq ptr %call9.i, null
  br i1 %tobool127.not, label %if.end8.i.cleanup650.thread1789_crit_edge, label %if.end129

if.end8.i.cleanup650.thread1789_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end129:                                        ; preds = %if.end8.i
  %70 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fibsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %71)
  %cmp130 = icmp eq i32 %add39, %71
  %arrayidx134 = getelementptr [1 x %struct.user_sgentry64], ptr %sg108, i32 0, i32 %i.01628
  %arrayidx147 = getelementptr %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1, i32 %i.01628
  %addr.0.off0.in = select i1 %cmp130, ptr %arrayidx134, ptr %arrayidx147
  %72 = ptrtoint ptr %addr.0.off0.in to i32
  call void @__asan_load4_noabort(i32 %72)
  %addr.0.off0 = load i32, ptr %addr.0.off0.in, align 4
  %73 = inttoptr i32 %addr.0.off0 to ptr
  %arrayidx152 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.01628
  %74 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %arrayidx152, align 4
  %arrayidx153 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.01628
  %75 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call9.i, ptr %arrayidx153, align 4
  br i1 %tobool155.not, label %if.end129.for.inc_crit_edge, label %if.end8.i.i1019

if.end129.for.inc_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8.i.i1019:                                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp9.i.i = icmp slt i32 %cond, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i1019
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup650.thread1789_crit_edge, label %if.then27.i.i, !prof !33

land.rhs16.i.i.cleanup650.thread1789_crit_edge:   ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup650.thread1789

if.then.i.i.i:                                    ; preds = %if.end8.i.i1019
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %cond, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i1020 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1020, label %if.then.i.i.i.if.end.i.i1034_crit_edge, label %land.lhs.true.i.i1024

if.then.i.i.i.if.end.i.i1034_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1034

land.lhs.true.i.i1024:                            ; preds = %if.then.i.i.i
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %73, i32 %cond, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i1022 = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1022)
  %cmp.i6.i1023 = icmp eq i32 %asmresult.i.i1022, 0
  br i1 %cmp.i6.i1023, label %if.then.i7.i1031, label %land.lhs.true.i.i1024.if.end.i.i1034_crit_edge, !prof !33

land.lhs.true.i.i1024.if.end.i.i1034_crit_edge:   ; preds = %land.lhs.true.i.i1024
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1034

if.then.i7.i1031:                                 ; preds = %land.lhs.true.i.i1024
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1025 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %cond) #9
  %77 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i1026 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i1026 to ptr
  %cpu_domain.i.i.i.i.i1027 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1027) #4, !srcloc !34
  %and.i.i.i.i1028 = and i32 %79, -13
  %or.i.i.i.i1029 = or i32 %and.i.i.i.i1028, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1029) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i1030 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %73, i32 noundef %cond) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %if.end.i.i1034

if.end.i.i1034:                                   ; preds = %if.then.i7.i1031, %land.lhs.true.i.i1024.if.end.i.i1034_crit_edge, %if.then.i.i.i.if.end.i.i1034_crit_edge
  %res.0.i.i1032 = phi i32 [ %cond, %if.then.i.i.i.if.end.i.i1034_crit_edge ], [ %call1.i.i.i1030, %if.then.i7.i1031 ], [ %cond, %land.lhs.true.i.i1024.if.end.i.i1034_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i1032)
  %tobool4.not.i.i1033 = icmp eq i32 %res.0.i.i1032, 0
  br i1 %tobool4.not.i.i1033, label %if.end.i.i1034.for.inc_crit_edge, label %if.then11.i.i1037, !prof !33

if.end.i.i1034.for.inc_crit_edge:                 ; preds = %if.end.i.i1034
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then11.i.i1037:                                ; preds = %if.end.i.i1034
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1035 = sub i32 %cond, %res.0.i.i1032
  %add.ptr.i.i1036 = getelementptr i8, ptr %call9.i, i32 %sub.i.i1035
  %80 = call ptr @memset(ptr %add.ptr.i.i1036, i32 0, i32 %res.0.i.i1032)
  br label %cleanup650.thread1789

for.inc:                                          ; preds = %if.end.i.i1034.for.inc_crit_edge, %if.end129.for.inc_crit_edge
  %81 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdev, align 4
  %dev164 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %call166 = call fastcc i32 @dma_map_single_attrs(ptr noundef %dev164, ptr noundef nonnull %call9.i, i32 noundef %cond, i32 noundef %data_dir.017721782)
  %arrayidx170 = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 17, i32 %i.01628
  %addr_hi = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 17, i32 %i.01628, i32 1
  %83 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %addr_hi, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %call166)
  %85 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx170, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %cond)
  %len = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 17, i32 %i.01628, i32 2
  %87 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %len, align 4
  %flags180 = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 17, i32 %i.01628, i32 3
  %88 = ptrtoint ptr %flags180 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %flags180, align 4
  %add182 = add i32 %cond, %byte_count.01627
  %inc = add nuw i32 %i.01628, 1
  %89 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sg17751781, align 4
  %cmp104 = icmp ult i32 %inc, %90
  br i1 %cmp104, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp185.not = icmp eq i32 %90, 0
  br i1 %cmp185.not, label %for.end.cleanup195.thread_crit_edge, label %if.then187

for.end.cleanup195.thread_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup195.thread

if.then187:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub190 = add i32 %90, -1
  %flags192 = getelementptr %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 17, i32 %sub190, i32 3
  %91 = ptrtoint ptr %flags192 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 64, ptr %flags192, align 4
  br label %cleanup195.thread

cleanup195.thread:                                ; preds = %if.then187, %for.end.cleanup195.thread_crit_edge, %if.end98.cleanup195.thread_crit_edge
  %byte_count.0.lcssa1788 = phi i32 [ %add182, %for.end.cleanup195.thread_crit_edge ], [ %add182, %if.then187 ], [ 0, %if.end98.cleanup195.thread_crit_edge ]
  %sg_indx.0.lcssa1787 = phi i32 [ %i.01628, %for.end.cleanup195.thread_crit_edge ], [ %i.01628, %if.then187 ], [ 0, %if.end98.cleanup195.thread_crit_edge ]
  %92 = call i32 @llvm.bswap.i32(i32 %byte_count.0.lcssa1788)
  %data_length = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %35, i32 0, i32 9
  %93 = ptrtoint ptr %data_length to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %data_length, align 4
  %call194 = call i32 @aac_hba_send(i8 noundef zeroext 64, ptr noundef nonnull %call3, ptr noundef null, ptr noundef null) #9
  br label %if.end579

if.else199:                                       ; preds = %land.lhs.true48.if.else199_crit_edge, %land.lhs.true46.if.else199_crit_edge, %if.end44.if.else199_crit_edge
  call void @aac_fib_init(ptr noundef nonnull %call3) #9
  %hw_fib_va81 = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 13
  %94 = ptrtoint ptr %hw_fib_va81 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw_fib_va81, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %and82 = and i32 %97, -2049
  store i32 %and82, ptr %95, align 4
  %98 = load ptr, ptr %hw_fib_va81, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %data, align 4
  %100 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel, align 4
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %channel86 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 4
  %103 = ptrtoint ptr %channel86 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %channel86, align 4
  %id87 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 2
  %104 = ptrtoint ptr %id87 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %id87, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105)
  %id88 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 8
  %107 = ptrtoint ptr %id88 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %id88, align 4
  %lun89 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 3
  %108 = ptrtoint ptr %lun89 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lun89, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %lun90 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 12
  %111 = ptrtoint ptr %lun90 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %lun90, align 4
  %timeout = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 4
  %112 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %timeout, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %timeout91 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 16
  %115 = ptrtoint ptr %timeout91 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %timeout91, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %16)
  %flags92 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 20
  %117 = ptrtoint ptr %flags92 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %flags92, align 4
  %retry_limit = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 28
  %118 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %retry_limit, align 4
  %cdb_size = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 8
  %119 = ptrtoint ptr %cdb_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cdb_size, align 4
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %cdb_size93 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 32
  %122 = ptrtoint ptr %cdb_size93 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %cdb_size93, align 4
  %cdb94 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 36
  %cdb96 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 9
  %123 = call ptr @memcpy(ptr %cdb94, ptr %cdb96, i32 16)
  %options = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 51, i32 19
  %124 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %options, align 4
  %and200 = and i32 %125, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  %sg402 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 52
  %126 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fibsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %127)
  %cmp403 = icmp eq i32 %add39, %127
  br i1 %tobool201.not, label %if.else398, label %if.then202

if.then202:                                       ; preds = %if.else199
  br i1 %cmp403, label %for.cond208.preheader, label %if.else295

for.cond208.preheader:                            ; preds = %if.then202
  %128 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sg17751781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp2101604.not = icmp eq i32 %129, 0
  br i1 %cmp2101604.not, label %for.cond208.preheader.cleanup394_crit_edge, label %for.body212.lr.ph

for.cond208.preheader.cleanup394_crit_edge:       ; preds = %for.cond208.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup394

for.body212.lr.ph:                                ; preds = %for.cond208.preheader
  %sg215 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1
  %scsi_host_ptr225 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %and255 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  %pdev265 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %sg272 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 56
  br label %for.body212

for.body212:                                      ; preds = %for.inc292.for.body212_crit_edge, %for.body212.lr.ph
  %i.11607 = phi i32 [ 0, %for.body212.lr.ph ], [ %inc293, %for.inc292.for.body212_crit_edge ]
  %byte_count.31606 = phi i32 [ 0, %for.body212.lr.ph ], [ %add283, %for.inc292.for.body212_crit_edge ]
  %sg_indx.31605 = phi i32 [ 0, %for.body212.lr.ph ], [ %i.11607, %for.inc292.for.body212_crit_edge ]
  %arrayidx216 = getelementptr [1 x %struct.user_sgentry64], ptr %sg215, i32 0, i32 %i.11607
  %count217 = getelementptr [1 x %struct.user_sgentry64], ptr %sg215, i32 0, i32 %i.11607, i32 1
  %130 = ptrtoint ptr %count217 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count217, align 4
  %arrayidx218 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.11607
  %132 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx218, align 4
  %133 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %options, align 4
  %and222 = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %for.body212.cond.end229_crit_edge, label %cond.true224

for.body212.cond.end229_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end229

cond.true224:                                     ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %scsi_host_ptr225 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %scsi_host_ptr225, align 8
  %max_sectors226 = getelementptr inbounds %struct.Scsi_Host, ptr %136, i32 0, i32 30
  %137 = ptrtoint ptr %max_sectors226 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_sectors226, align 8
  %shl227 = shl i32 %138, 9
  br label %cond.end229

cond.end229:                                      ; preds = %cond.true224, %for.body212.cond.end229_crit_edge
  %cond230 = phi i32 [ %shl227, %cond.true224 ], [ 65536, %for.body212.cond.end229_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %cond230)
  %cmp231 = icmp ugt i32 %131, %cond230
  br i1 %cmp231, label %cond.end229.cleanup650.thread1789_crit_edge, label %if.end8.i1067

cond.end229.cleanup650.thread1789_crit_edge:      ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end8.i1067:                                    ; preds = %cond.end229
  %call9.i1066 = call noalias align 128 ptr @__kmalloc(i32 noundef %131, i32 noundef 3264) #15
  %tobool237.not = icmp eq ptr %call9.i1066, null
  br i1 %tobool237.not, label %if.end8.i1067.cleanup650.thread1789_crit_edge, label %if.end239

if.end8.i1067.cleanup650.thread1789_crit_edge:    ; preds = %if.end8.i1067
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end239:                                        ; preds = %if.end8.i1067
  %139 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx216, align 4
  %141 = inttoptr i32 %140 to ptr
  %arrayidx253 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.11607
  %142 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %141, ptr %arrayidx253, align 4
  %arrayidx254 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.11607
  %143 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call9.i1066, ptr %arrayidx254, align 4
  br i1 %tobool256.not, label %if.end239.for.inc292_crit_edge, label %if.end8.i.i1077

if.end239.for.inc292_crit_edge:                   ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc292

if.end8.i.i1077:                                  ; preds = %if.end239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp9.i.i1076 = icmp slt i32 %131, 0
  br i1 %cmp9.i.i1076, label %land.rhs16.i.i1079, label %if.then.i.i.i1082

land.rhs16.i.i1079:                               ; preds = %if.end8.i.i1077
  %.b71.i.i1078 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1078, label %land.rhs16.i.i1079.cleanup650.thread1789_crit_edge, label %if.then27.i.i1080, !prof !33

land.rhs16.i.i1079.cleanup650.thread1789_crit_edge: ; preds = %land.rhs16.i.i1079
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.then27.i.i1080:                                ; preds = %land.rhs16.i.i1079
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup650.thread1789

if.then.i.i.i1082:                                ; preds = %if.end8.i.i1077
  call void @__check_object_size(ptr noundef nonnull %call9.i1066, i32 noundef %131, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i1083 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1083, label %if.then.i.i.i1082.if.end.i.i1097_crit_edge, label %land.lhs.true.i.i1087

if.then.i.i.i1082.if.end.i.i1097_crit_edge:       ; preds = %if.then.i.i.i1082
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1097

land.lhs.true.i.i1087:                            ; preds = %if.then.i.i.i1082
  %144 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %141, i32 %131, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i1085 = extractvalue { i32, i32 } %144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1085)
  %cmp.i6.i1086 = icmp eq i32 %asmresult.i.i1085, 0
  br i1 %cmp.i6.i1086, label %if.then.i7.i1094, label %land.lhs.true.i.i1087.if.end.i.i1097_crit_edge, !prof !33

land.lhs.true.i.i1087.if.end.i.i1097_crit_edge:   ; preds = %land.lhs.true.i.i1087
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1097

if.then.i7.i1094:                                 ; preds = %land.lhs.true.i.i1087
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1088 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i1066, i32 noundef %131) #9
  %145 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i1089 = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i.i1089 to ptr
  %cpu_domain.i.i.i.i.i1090 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 4
  %147 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1090) #4, !srcloc !34
  %and.i.i.i.i1091 = and i32 %147, -13
  %or.i.i.i.i1092 = or i32 %and.i.i.i.i1091, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1092) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i1093 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i1066, ptr noundef %141, i32 noundef %131) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %if.end.i.i1097

if.end.i.i1097:                                   ; preds = %if.then.i7.i1094, %land.lhs.true.i.i1087.if.end.i.i1097_crit_edge, %if.then.i.i.i1082.if.end.i.i1097_crit_edge
  %res.0.i.i1095 = phi i32 [ %131, %if.then.i.i.i1082.if.end.i.i1097_crit_edge ], [ %call1.i.i.i1093, %if.then.i7.i1094 ], [ %131, %land.lhs.true.i.i1087.if.end.i.i1097_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i1095)
  %tobool4.not.i.i1096 = icmp eq i32 %res.0.i.i1095, 0
  br i1 %tobool4.not.i.i1096, label %if.end.i.i1097.for.inc292_crit_edge, label %if.then11.i.i1100, !prof !33

if.end.i.i1097.for.inc292_crit_edge:              ; preds = %if.end.i.i1097
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc292

if.then11.i.i1100:                                ; preds = %if.end.i.i1097
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1098 = sub i32 %131, %res.0.i.i1095
  %add.ptr.i.i1099 = getelementptr i8, ptr %call9.i1066, i32 %sub.i.i1098
  %148 = call ptr @memset(ptr %add.ptr.i.i1099, i32 0, i32 %res.0.i.i1095)
  br label %cleanup650.thread1789

for.inc292:                                       ; preds = %if.end.i.i1097.for.inc292_crit_edge, %if.end239.for.inc292_crit_edge
  %149 = ptrtoint ptr %pdev265 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev265, align 4
  %dev266 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  %call268 = call fastcc i32 @dma_map_single_attrs(ptr noundef %dev266, ptr noundef nonnull %call9.i1066, i32 noundef %131, i32 noundef %data_dir.017721782)
  %151 = call i32 @llvm.bswap.i32(i32 %call268)
  %arrayidx273 = getelementptr [1 x %struct.sgentry64], ptr %sg272, i32 0, i32 %i.11607
  %152 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx273, align 4
  %arrayidx281 = getelementptr [2 x i32], ptr %arrayidx273, i32 0, i32 1
  %153 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %arrayidx281, align 4
  %add283 = add i32 %131, %byte_count.31606
  %154 = call i32 @llvm.bswap.i32(i32 %131)
  %count287 = getelementptr [1 x %struct.sgentry64], ptr %sg272, i32 0, i32 %i.11607, i32 1
  %155 = ptrtoint ptr %count287 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %count287, align 4
  %inc293 = add nuw i32 %i.11607, 1
  %156 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sg17751781, align 4
  %cmp210 = icmp ult i32 %inc293, %157
  br i1 %cmp210, label %for.inc292.for.body212_crit_edge, label %for.inc292.cleanup394_crit_edge

for.inc292.cleanup394_crit_edge:                  ; preds = %for.inc292
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup394

for.inc292.for.body212_crit_edge:                 ; preds = %for.inc292
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body212

if.else295:                                       ; preds = %if.then202
  %add297 = or i32 %mul, 4
  %call298 = call ptr @kmemdup(ptr noundef %sg17751781, i32 noundef %add297, i32 noundef 3264) #9
  %tobool299.not = icmp eq ptr %call298, null
  br i1 %tobool299.not, label %if.else295.cleanup650.thread1789_crit_edge, label %for.cond302.preheader

if.else295.cleanup650.thread1789_crit_edge:       ; preds = %if.else295
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

for.cond302.preheader:                            ; preds = %if.else295
  %158 = ptrtoint ptr %call298 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %call298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp3041598.not = icmp eq i32 %159, 0
  br i1 %cmp3041598.not, label %for.cond302.preheader.cleanup379_crit_edge, label %for.body306.lr.ph

for.cond302.preheader.cleanup379_crit_edge:       ; preds = %for.cond302.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

for.body306.lr.ph:                                ; preds = %for.cond302.preheader
  %scsi_host_ptr319 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %and339 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339)
  %tobool340.not = icmp eq i32 %and339, 0
  %pdev349 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %sg356 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 56
  br label %for.body306

for.body306:                                      ; preds = %for.inc376.for.body306_crit_edge, %for.body306.lr.ph
  %i.21601 = phi i32 [ 0, %for.body306.lr.ph ], [ %inc377, %for.inc376.for.body306_crit_edge ]
  %byte_count.51600 = phi i32 [ 0, %for.body306.lr.ph ], [ %add367, %for.inc376.for.body306_crit_edge ]
  %sg_indx.51599 = phi i32 [ 0, %for.body306.lr.ph ], [ %i.21601, %for.inc376.for.body306_crit_edge ]
  %arrayidx310 = getelementptr %struct.user_sgmap, ptr %call298, i32 0, i32 1, i32 %i.21601
  %count311 = getelementptr %struct.user_sgmap, ptr %call298, i32 0, i32 1, i32 %i.21601, i32 1
  %160 = ptrtoint ptr %count311 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count311, align 4
  %arrayidx312 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.21601
  %162 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %arrayidx312, align 4
  %163 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %options, align 4
  %and316 = and i32 %164, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %for.body306.cond.end323_crit_edge, label %cond.true318

for.body306.cond.end323_crit_edge:                ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end323

cond.true318:                                     ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %scsi_host_ptr319 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %scsi_host_ptr319, align 8
  %max_sectors320 = getelementptr inbounds %struct.Scsi_Host, ptr %166, i32 0, i32 30
  %167 = ptrtoint ptr %max_sectors320 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %max_sectors320, align 8
  %shl321 = shl i32 %168, 9
  br label %cond.end323

cond.end323:                                      ; preds = %cond.true318, %for.body306.cond.end323_crit_edge
  %cond324 = phi i32 [ %shl321, %cond.true318 ], [ 65536, %for.body306.cond.end323_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %cond324)
  %cmp325 = icmp ugt i32 %161, %cond324
  br i1 %cmp325, label %if.then327, label %if.end8.i1130

if.then327:                                       ; preds = %cond.end323
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call298) #9
  br label %cleanup650.thread1789

if.end8.i1130:                                    ; preds = %cond.end323
  %call9.i1129 = call noalias align 128 ptr @__kmalloc(i32 noundef %161, i32 noundef 3264) #15
  %tobool331.not = icmp eq ptr %call9.i1129, null
  br i1 %tobool331.not, label %if.then332, label %if.end333

if.then332:                                       ; preds = %if.end8.i1130
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call298) #9
  br label %cleanup650.thread1789

if.end333:                                        ; preds = %if.end8.i1130
  %169 = ptrtoint ptr %arrayidx310 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx310, align 4
  %171 = inttoptr i32 %170 to ptr
  %arrayidx337 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.21601
  %172 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %arrayidx337, align 4
  %arrayidx338 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.21601
  %173 = ptrtoint ptr %arrayidx338 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call9.i1129, ptr %arrayidx338, align 4
  br i1 %tobool340.not, label %if.end333.for.inc376_crit_edge, label %if.end8.i.i1140

if.end333.for.inc376_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc376

if.end8.i.i1140:                                  ; preds = %if.end333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp9.i.i1139 = icmp slt i32 %161, 0
  br i1 %cmp9.i.i1139, label %land.rhs16.i.i1142, label %if.then.i.i.i1145

land.rhs16.i.i1142:                               ; preds = %if.end8.i.i1140
  %.b71.i.i1141 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1141, label %land.rhs16.i.i1142.if.then346_crit_edge, label %if.then27.i.i1143, !prof !33

land.rhs16.i.i1142.if.then346_crit_edge:          ; preds = %land.rhs16.i.i1142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then346

if.then27.i.i1143:                                ; preds = %land.rhs16.i.i1142
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %if.then346

if.then.i.i.i1145:                                ; preds = %if.end8.i.i1140
  call void @__check_object_size(ptr noundef nonnull %call9.i1129, i32 noundef %161, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i1146 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1146, label %if.then.i.i.i1145.if.end.i.i1160_crit_edge, label %land.lhs.true.i.i1150

if.then.i.i.i1145.if.end.i.i1160_crit_edge:       ; preds = %if.then.i.i.i1145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1160

land.lhs.true.i.i1150:                            ; preds = %if.then.i.i.i1145
  %174 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %171, i32 %161, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i1148 = extractvalue { i32, i32 } %174, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1148)
  %cmp.i6.i1149 = icmp eq i32 %asmresult.i.i1148, 0
  br i1 %cmp.i6.i1149, label %if.then.i7.i1157, label %land.lhs.true.i.i1150.if.end.i.i1160_crit_edge, !prof !33

land.lhs.true.i.i1150.if.end.i.i1160_crit_edge:   ; preds = %land.lhs.true.i.i1150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1160

if.then.i7.i1157:                                 ; preds = %land.lhs.true.i.i1150
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1151 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i1129, i32 noundef %161) #9
  %175 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i1152 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i.i1152 to ptr
  %cpu_domain.i.i.i.i.i1153 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 4
  %177 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1153) #4, !srcloc !34
  %and.i.i.i.i1154 = and i32 %177, -13
  %or.i.i.i.i1155 = or i32 %and.i.i.i.i1154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1155) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i1156 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i1129, ptr noundef %171, i32 noundef %161) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %177) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %if.end.i.i1160

if.end.i.i1160:                                   ; preds = %if.then.i7.i1157, %land.lhs.true.i.i1150.if.end.i.i1160_crit_edge, %if.then.i.i.i1145.if.end.i.i1160_crit_edge
  %res.0.i.i1158 = phi i32 [ %161, %if.then.i.i.i1145.if.end.i.i1160_crit_edge ], [ %call1.i.i.i1156, %if.then.i7.i1157 ], [ %161, %land.lhs.true.i.i1150.if.end.i.i1160_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i1158)
  %tobool4.not.i.i1159 = icmp eq i32 %res.0.i.i1158, 0
  br i1 %tobool4.not.i.i1159, label %if.end.i.i1160.for.inc376_crit_edge, label %if.then11.i.i1163, !prof !33

if.end.i.i1160.for.inc376_crit_edge:              ; preds = %if.end.i.i1160
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc376

if.then11.i.i1163:                                ; preds = %if.end.i.i1160
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1161 = sub i32 %161, %res.0.i.i1158
  %add.ptr.i.i1162 = getelementptr i8, ptr %call9.i1129, i32 %sub.i.i1161
  %178 = call ptr @memset(ptr %add.ptr.i.i1162, i32 0, i32 %res.0.i.i1158)
  br label %if.then346

if.then346:                                       ; preds = %if.then11.i.i1163, %if.then27.i.i1143, %land.rhs16.i.i1142.if.then346_crit_edge
  call void @kfree(ptr noundef nonnull %call298) #9
  br label %cleanup650.thread1789

for.inc376:                                       ; preds = %if.end.i.i1160.for.inc376_crit_edge, %if.end333.for.inc376_crit_edge
  %179 = ptrtoint ptr %pdev349 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev349, align 4
  %dev350 = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  %call352 = call fastcc i32 @dma_map_single_attrs(ptr noundef %dev350, ptr noundef nonnull %call9.i1129, i32 noundef %161, i32 noundef %data_dir.017721782)
  %181 = call i32 @llvm.bswap.i32(i32 %call352)
  %arrayidx357 = getelementptr [1 x %struct.sgentry64], ptr %sg356, i32 0, i32 %i.21601
  %182 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx357, align 4
  %arrayidx365 = getelementptr [2 x i32], ptr %arrayidx357, i32 0, i32 1
  %183 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %arrayidx365, align 4
  %add367 = add i32 %161, %byte_count.51600
  %184 = call i32 @llvm.bswap.i32(i32 %161)
  %count371 = getelementptr [1 x %struct.sgentry64], ptr %sg356, i32 0, i32 %i.21601, i32 1
  %185 = ptrtoint ptr %count371 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %count371, align 4
  %inc377 = add nuw i32 %i.21601, 1
  %186 = ptrtoint ptr %call298 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %call298, align 4
  %cmp304 = icmp ult i32 %inc377, %187
  br i1 %cmp304, label %for.inc376.for.body306_crit_edge, label %for.inc376.cleanup379_crit_edge

for.inc376.cleanup379_crit_edge:                  ; preds = %for.inc376
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup379

for.inc376.for.body306_crit_edge:                 ; preds = %for.inc376
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body306

cleanup379:                                       ; preds = %for.inc376.cleanup379_crit_edge, %for.cond302.preheader.cleanup379_crit_edge
  %sg_indx.5.lcssa = phi i32 [ 0, %for.cond302.preheader.cleanup379_crit_edge ], [ %i.21601, %for.inc376.cleanup379_crit_edge ]
  %byte_count.5.lcssa = phi i32 [ 0, %for.cond302.preheader.cleanup379_crit_edge ], [ %add367, %for.inc376.cleanup379_crit_edge ]
  call void @kfree(ptr noundef nonnull %call298) #9
  br label %cleanup394

cleanup394:                                       ; preds = %cleanup379, %for.inc292.cleanup394_crit_edge, %for.cond208.preheader.cleanup394_crit_edge
  %sg_indx.8 = phi i32 [ %sg_indx.5.lcssa, %cleanup379 ], [ 0, %for.cond208.preheader.cleanup394_crit_edge ], [ %i.11607, %for.inc292.cleanup394_crit_edge ]
  %byte_count.8 = phi i32 [ %byte_count.5.lcssa, %cleanup379 ], [ 0, %for.cond208.preheader.cleanup394_crit_edge ], [ %add283, %for.inc292.cleanup394_crit_edge ]
  %188 = call i32 @llvm.bswap.i32(i32 %byte_count.8)
  %count383 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 24
  %189 = ptrtoint ptr %count383 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %count383, align 4
  %190 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %sg17751781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool386.not = icmp eq i32 %191, 0
  %add388 = add nuw i32 %sg_indx.8, 1
  %192 = call i32 @llvm.bswap.i32(i32 %add388)
  %storemerge1008 = select i1 %tobool386.not, i32 0, i32 %192
  %193 = ptrtoint ptr %sg402 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %storemerge1008, ptr %sg402, align 4
  %call393 = call i32 @aac_fib_send(i16 noundef zeroext 601, ptr noundef nonnull %call3, i32 noundef %add39, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  br label %if.end579

if.else398:                                       ; preds = %if.else199
  %194 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sg17751781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp4091618.not = icmp eq i32 %195, 0
  br i1 %cmp403, label %for.cond407.preheader, label %for.cond495.preheader

for.cond495.preheader:                            ; preds = %if.else398
  br i1 %cmp4091618.not, label %for.cond495.preheader.cleanup574_crit_edge, label %for.body499.lr.ph

for.cond495.preheader.cleanup574_crit_edge:       ; preds = %for.cond495.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup574

for.body499.lr.ph:                                ; preds = %for.cond495.preheader
  %scsi_host_ptr512 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %and532 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and532)
  %tobool533.not = icmp eq i32 %and532, 0
  %pdev542 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  br label %for.body499

for.cond407.preheader:                            ; preds = %if.else398
  br i1 %cmp4091618.not, label %for.cond407.preheader.cleanup574_crit_edge, label %for.body411.lr.ph

for.cond407.preheader.cleanup574_crit_edge:       ; preds = %for.cond407.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup574

for.body411.lr.ph:                                ; preds = %for.cond407.preheader
  %sg414 = getelementptr inbounds %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1
  %scsi_host_ptr424 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %and456 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and456)
  %tobool457.not = icmp eq i32 %and456, 0
  %pdev466 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  br label %for.body411

for.body411:                                      ; preds = %for.inc488.for.body411_crit_edge, %for.body411.lr.ph
  %i.31621 = phi i32 [ 0, %for.body411.lr.ph ], [ %inc489, %for.inc488.for.body411_crit_edge ]
  %byte_count.101620 = phi i32 [ 0, %for.body411.lr.ph ], [ %add479, %for.inc488.for.body411_crit_edge ]
  %sg_indx.101619 = phi i32 [ 0, %for.body411.lr.ph ], [ %i.31621, %for.inc488.for.body411_crit_edge ]
  %arrayidx415 = getelementptr [1 x %struct.user_sgentry64], ptr %sg414, i32 0, i32 %i.31621
  %count416 = getelementptr [1 x %struct.user_sgentry64], ptr %sg414, i32 0, i32 %i.31621, i32 1
  %196 = ptrtoint ptr %count416 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %count416, align 4
  %arrayidx417 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.31621
  %198 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %arrayidx417, align 4
  %199 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %options, align 4
  %and421 = and i32 %200, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and421)
  %tobool422.not = icmp eq i32 %and421, 0
  br i1 %tobool422.not, label %for.body411.cond.end428_crit_edge, label %cond.true423

for.body411.cond.end428_crit_edge:                ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end428

cond.true423:                                     ; preds = %for.body411
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %scsi_host_ptr424 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %scsi_host_ptr424, align 8
  %max_sectors425 = getelementptr inbounds %struct.Scsi_Host, ptr %202, i32 0, i32 30
  %203 = ptrtoint ptr %max_sectors425 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %max_sectors425, align 8
  %shl426 = shl i32 %204, 9
  br label %cond.end428

cond.end428:                                      ; preds = %cond.true423, %for.body411.cond.end428_crit_edge
  %cond429 = phi i32 [ %shl426, %cond.true423 ], [ 65536, %for.body411.cond.end428_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %cond429)
  %cmp430 = icmp ugt i32 %197, %cond429
  br i1 %cmp430, label %cond.end428.cleanup650.thread1789_crit_edge, label %if.end8.i1193

cond.end428.cleanup650.thread1789_crit_edge:      ; preds = %cond.end428
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end8.i1193:                                    ; preds = %cond.end428
  %call9.i1192 = call noalias align 128 ptr @__kmalloc(i32 noundef %197, i32 noundef 3264) #15
  %tobool436.not = icmp eq ptr %call9.i1192, null
  br i1 %tobool436.not, label %if.end8.i1193.cleanup650.thread1789_crit_edge, label %if.end438

if.end8.i1193.cleanup650.thread1789_crit_edge:    ; preds = %if.end8.i1193
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end438:                                        ; preds = %if.end8.i1193
  %205 = ptrtoint ptr %arrayidx415 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx415, align 4
  %207 = inttoptr i32 %206 to ptr
  %arrayidx454 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.31621
  %208 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %207, ptr %arrayidx454, align 4
  %arrayidx455 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.31621
  %209 = ptrtoint ptr %arrayidx455 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call9.i1192, ptr %arrayidx455, align 4
  br i1 %tobool457.not, label %if.end438.for.inc488_crit_edge, label %if.end8.i.i1203

if.end438.for.inc488_crit_edge:                   ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc488

if.end8.i.i1203:                                  ; preds = %if.end438
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp9.i.i1202 = icmp slt i32 %197, 0
  br i1 %cmp9.i.i1202, label %land.rhs16.i.i1205, label %if.then.i.i.i1208

land.rhs16.i.i1205:                               ; preds = %if.end8.i.i1203
  %.b71.i.i1204 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1204, label %land.rhs16.i.i1205.cleanup650.thread1789_crit_edge, label %if.then27.i.i1206, !prof !33

land.rhs16.i.i1205.cleanup650.thread1789_crit_edge: ; preds = %land.rhs16.i.i1205
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.then27.i.i1206:                                ; preds = %land.rhs16.i.i1205
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup650.thread1789

if.then.i.i.i1208:                                ; preds = %if.end8.i.i1203
  call void @__check_object_size(ptr noundef nonnull %call9.i1192, i32 noundef %197, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i1209 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1209, label %if.then.i.i.i1208.if.end.i.i1223_crit_edge, label %land.lhs.true.i.i1213

if.then.i.i.i1208.if.end.i.i1223_crit_edge:       ; preds = %if.then.i.i.i1208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1223

land.lhs.true.i.i1213:                            ; preds = %if.then.i.i.i1208
  %210 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %207, i32 %197, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i1211 = extractvalue { i32, i32 } %210, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1211)
  %cmp.i6.i1212 = icmp eq i32 %asmresult.i.i1211, 0
  br i1 %cmp.i6.i1212, label %if.then.i7.i1220, label %land.lhs.true.i.i1213.if.end.i.i1223_crit_edge, !prof !33

land.lhs.true.i.i1213.if.end.i.i1223_crit_edge:   ; preds = %land.lhs.true.i.i1213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1223

if.then.i7.i1220:                                 ; preds = %land.lhs.true.i.i1213
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1214 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i1192, i32 noundef %197) #9
  %211 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i1215 = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i.i.i.i1215 to ptr
  %cpu_domain.i.i.i.i.i1216 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 4
  %213 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1216) #4, !srcloc !34
  %and.i.i.i.i1217 = and i32 %213, -13
  %or.i.i.i.i1218 = or i32 %and.i.i.i.i1217, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1218) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i1219 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i1192, ptr noundef %207, i32 noundef %197) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %213) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %if.end.i.i1223

if.end.i.i1223:                                   ; preds = %if.then.i7.i1220, %land.lhs.true.i.i1213.if.end.i.i1223_crit_edge, %if.then.i.i.i1208.if.end.i.i1223_crit_edge
  %res.0.i.i1221 = phi i32 [ %197, %if.then.i.i.i1208.if.end.i.i1223_crit_edge ], [ %call1.i.i.i1219, %if.then.i7.i1220 ], [ %197, %land.lhs.true.i.i1213.if.end.i.i1223_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i1221)
  %tobool4.not.i.i1222 = icmp eq i32 %res.0.i.i1221, 0
  br i1 %tobool4.not.i.i1222, label %if.end.i.i1223.for.inc488_crit_edge, label %if.then11.i.i1226, !prof !33

if.end.i.i1223.for.inc488_crit_edge:              ; preds = %if.end.i.i1223
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc488

if.then11.i.i1226:                                ; preds = %if.end.i.i1223
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1224 = sub i32 %197, %res.0.i.i1221
  %add.ptr.i.i1225 = getelementptr i8, ptr %call9.i1192, i32 %sub.i.i1224
  %214 = call ptr @memset(ptr %add.ptr.i.i1225, i32 0, i32 %res.0.i.i1221)
  br label %cleanup650.thread1789

for.inc488:                                       ; preds = %if.end.i.i1223.for.inc488_crit_edge, %if.end438.for.inc488_crit_edge
  %215 = ptrtoint ptr %pdev466 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pdev466, align 4
  %dev467 = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 44
  %217 = ptrtoint ptr %count416 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %count416, align 4
  %call471 = call fastcc i32 @dma_map_single_attrs(ptr noundef %dev467, ptr noundef nonnull %call9.i1192, i32 noundef %218, i32 noundef %data_dir.017721782)
  %219 = call i32 @llvm.bswap.i32(i32 %call471)
  %arrayidx474 = getelementptr %struct.aac_srb, ptr %data, i32 0, i32 10, i32 1, i32 %i.31621
  %220 = ptrtoint ptr %arrayidx474 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %arrayidx474, align 4
  %221 = ptrtoint ptr %count416 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %count416, align 4
  %add479 = add i32 %222, %byte_count.101620
  %223 = call i32 @llvm.bswap.i32(i32 %197)
  %count483 = getelementptr %struct.aac_srb, ptr %data, i32 0, i32 10, i32 1, i32 %i.31621, i32 1
  %224 = ptrtoint ptr %count483 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %count483, align 4
  %inc489 = add nuw i32 %i.31621, 1
  %225 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %sg17751781, align 4
  %cmp409 = icmp ult i32 %inc489, %226
  br i1 %cmp409, label %for.inc488.for.body411_crit_edge, label %for.inc488.cleanup574_crit_edge

for.inc488.cleanup574_crit_edge:                  ; preds = %for.inc488
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup574

for.inc488.for.body411_crit_edge:                 ; preds = %for.inc488
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body411

for.body499:                                      ; preds = %for.inc559.for.body499_crit_edge, %for.body499.lr.ph
  %i.41614 = phi i32 [ 0, %for.body499.lr.ph ], [ %inc560, %for.inc559.for.body499_crit_edge ]
  %byte_count.131613 = phi i32 [ 0, %for.body499.lr.ph ], [ %add550, %for.inc559.for.body499_crit_edge ]
  %sg_indx.131612 = phi i32 [ 0, %for.body499.lr.ph ], [ %i.41614, %for.inc559.for.body499_crit_edge ]
  %arrayidx503 = getelementptr %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1, i32 %i.41614
  %count504 = getelementptr %struct.user_aac_srb, ptr %call14, i32 0, i32 10, i32 1, i32 %i.41614, i32 1
  %227 = ptrtoint ptr %count504 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %count504, align 4
  %arrayidx505 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.41614
  %229 = ptrtoint ptr %arrayidx505 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %arrayidx505, align 4
  %230 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %options, align 4
  %and509 = and i32 %231, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and509)
  %tobool510.not = icmp eq i32 %and509, 0
  br i1 %tobool510.not, label %for.body499.cond.end516_crit_edge, label %cond.true511

for.body499.cond.end516_crit_edge:                ; preds = %for.body499
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end516

cond.true511:                                     ; preds = %for.body499
  call void @__sanitizer_cov_trace_pc() #11
  %232 = ptrtoint ptr %scsi_host_ptr512 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %scsi_host_ptr512, align 8
  %max_sectors513 = getelementptr inbounds %struct.Scsi_Host, ptr %233, i32 0, i32 30
  %234 = ptrtoint ptr %max_sectors513 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %max_sectors513, align 8
  %shl514 = shl i32 %235, 9
  br label %cond.end516

cond.end516:                                      ; preds = %cond.true511, %for.body499.cond.end516_crit_edge
  %cond517 = phi i32 [ %shl514, %cond.true511 ], [ 65536, %for.body499.cond.end516_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %cond517)
  %cmp518 = icmp ugt i32 %228, %cond517
  br i1 %cmp518, label %cond.end516.cleanup650.thread1789_crit_edge, label %if.end8.i1256

cond.end516.cleanup650.thread1789_crit_edge:      ; preds = %cond.end516
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end8.i1256:                                    ; preds = %cond.end516
  %call9.i1255 = call noalias align 128 ptr @__kmalloc(i32 noundef %228, i32 noundef 3264) #15
  %tobool524.not = icmp eq ptr %call9.i1255, null
  br i1 %tobool524.not, label %if.end8.i1256.cleanup650.thread1789_crit_edge, label %if.end526

if.end8.i1256.cleanup650.thread1789_crit_edge:    ; preds = %if.end8.i1256
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end526:                                        ; preds = %if.end8.i1256
  %236 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx503, align 4
  %238 = inttoptr i32 %237 to ptr
  %arrayidx530 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.41614
  %239 = ptrtoint ptr %arrayidx530 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %238, ptr %arrayidx530, align 4
  %arrayidx531 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.41614
  %240 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call9.i1255, ptr %arrayidx531, align 4
  br i1 %tobool533.not, label %if.end526.for.inc559_crit_edge, label %if.end8.i.i1266

if.end526.for.inc559_crit_edge:                   ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc559

if.end8.i.i1266:                                  ; preds = %if.end526
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp9.i.i1265 = icmp slt i32 %228, 0
  br i1 %cmp9.i.i1265, label %land.rhs16.i.i1268, label %if.then.i.i.i1271

land.rhs16.i.i1268:                               ; preds = %if.end8.i.i1266
  %.b71.i.i1267 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1267, label %land.rhs16.i.i1268.cleanup650.thread1789_crit_edge, label %if.then27.i.i1269, !prof !33

land.rhs16.i.i1268.cleanup650.thread1789_crit_edge: ; preds = %land.rhs16.i.i1268
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.then27.i.i1269:                                ; preds = %land.rhs16.i.i1268
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup650.thread1789

if.then.i.i.i1271:                                ; preds = %if.end8.i.i1266
  call void @__check_object_size(ptr noundef nonnull %call9.i1255, i32 noundef %228, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i1272 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1272, label %if.then.i.i.i1271.if.end.i.i1286_crit_edge, label %land.lhs.true.i.i1276

if.then.i.i.i1271.if.end.i.i1286_crit_edge:       ; preds = %if.then.i.i.i1271
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1286

land.lhs.true.i.i1276:                            ; preds = %if.then.i.i.i1271
  %241 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %238, i32 %228, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i1274 = extractvalue { i32, i32 } %241, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1274)
  %cmp.i6.i1275 = icmp eq i32 %asmresult.i.i1274, 0
  br i1 %cmp.i6.i1275, label %if.then.i7.i1283, label %land.lhs.true.i.i1276.if.end.i.i1286_crit_edge, !prof !33

land.lhs.true.i.i1276.if.end.i.i1286_crit_edge:   ; preds = %land.lhs.true.i.i1276
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i1286

if.then.i7.i1283:                                 ; preds = %land.lhs.true.i.i1276
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1277 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i1255, i32 noundef %228) #9
  %242 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i1278 = and i32 %242, -16384
  %243 = inttoptr i32 %and.i.i.i.i.i.i1278 to ptr
  %cpu_domain.i.i.i.i.i1279 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 4
  %244 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i1279) #4, !srcloc !34
  %and.i.i.i.i1280 = and i32 %244, -13
  %or.i.i.i.i1281 = or i32 %and.i.i.i.i1280, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i1281) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i1282 = call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i1255, ptr noundef %238, i32 noundef %228) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  br label %if.end.i.i1286

if.end.i.i1286:                                   ; preds = %if.then.i7.i1283, %land.lhs.true.i.i1276.if.end.i.i1286_crit_edge, %if.then.i.i.i1271.if.end.i.i1286_crit_edge
  %res.0.i.i1284 = phi i32 [ %228, %if.then.i.i.i1271.if.end.i.i1286_crit_edge ], [ %call1.i.i.i1282, %if.then.i7.i1283 ], [ %228, %land.lhs.true.i.i1276.if.end.i.i1286_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i1284)
  %tobool4.not.i.i1285 = icmp eq i32 %res.0.i.i1284, 0
  br i1 %tobool4.not.i.i1285, label %if.end.i.i1286.for.inc559_crit_edge, label %if.then11.i.i1289, !prof !33

if.end.i.i1286.for.inc559_crit_edge:              ; preds = %if.end.i.i1286
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc559

if.then11.i.i1289:                                ; preds = %if.end.i.i1286
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i1287 = sub i32 %228, %res.0.i.i1284
  %add.ptr.i.i1288 = getelementptr i8, ptr %call9.i1255, i32 %sub.i.i1287
  %245 = call ptr @memset(ptr %add.ptr.i.i1288, i32 0, i32 %res.0.i.i1284)
  br label %cleanup650.thread1789

for.inc559:                                       ; preds = %if.end.i.i1286.for.inc559_crit_edge, %if.end526.for.inc559_crit_edge
  %246 = ptrtoint ptr %pdev542 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pdev542, align 4
  %dev543 = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44
  %call545 = call fastcc i32 @dma_map_single_attrs(ptr noundef %dev543, ptr noundef nonnull %call9.i1255, i32 noundef %228, i32 noundef %data_dir.017721782)
  %248 = call i32 @llvm.bswap.i32(i32 %call545)
  %arrayidx547 = getelementptr %struct.aac_srb, ptr %data, i32 0, i32 10, i32 1, i32 %i.41614
  %249 = ptrtoint ptr %arrayidx547 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %arrayidx547, align 4
  %add550 = add i32 %228, %byte_count.131613
  %250 = call i32 @llvm.bswap.i32(i32 %228)
  %count554 = getelementptr %struct.aac_srb, ptr %data, i32 0, i32 10, i32 1, i32 %i.41614, i32 1
  %251 = ptrtoint ptr %count554 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %count554, align 4
  %inc560 = add nuw i32 %i.41614, 1
  %252 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %sg17751781, align 4
  %cmp497 = icmp ult i32 %inc560, %253
  br i1 %cmp497, label %for.inc559.for.body499_crit_edge, label %for.inc559.cleanup574_crit_edge

for.inc559.cleanup574_crit_edge:                  ; preds = %for.inc559
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup574

for.inc559.for.body499_crit_edge:                 ; preds = %for.inc559
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body499

cleanup574:                                       ; preds = %for.inc559.cleanup574_crit_edge, %for.inc488.cleanup574_crit_edge, %for.cond407.preheader.cleanup574_crit_edge, %for.cond495.preheader.cleanup574_crit_edge
  %sg_indx.15 = phi i32 [ 0, %for.cond407.preheader.cleanup574_crit_edge ], [ 0, %for.cond495.preheader.cleanup574_crit_edge ], [ %i.31621, %for.inc488.cleanup574_crit_edge ], [ %i.41614, %for.inc559.cleanup574_crit_edge ]
  %byte_count.15 = phi i32 [ 0, %for.cond407.preheader.cleanup574_crit_edge ], [ 0, %for.cond495.preheader.cleanup574_crit_edge ], [ %add479, %for.inc488.cleanup574_crit_edge ], [ %add550, %for.inc559.cleanup574_crit_edge ]
  %254 = call i32 @llvm.bswap.i32(i32 %byte_count.15)
  %count563 = getelementptr inbounds %struct.hw_fib, ptr %98, i32 0, i32 1, i32 24
  %255 = ptrtoint ptr %count563 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %count563, align 4
  %256 = ptrtoint ptr %sg17751781 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %sg17751781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool566.not = icmp eq i32 %257, 0
  %add568 = add nuw i32 %sg_indx.15, 1
  %258 = call i32 @llvm.bswap.i32(i32 %add568)
  %storemerge = select i1 %tobool566.not, i32 0, i32 %258
  %259 = ptrtoint ptr %sg402 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %storemerge, ptr %sg402, align 4
  %call573 = call i32 @aac_fib_send(i16 noundef zeroext 600, ptr noundef nonnull %call3, i32 noundef %add, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  br label %if.end579

if.end579:                                        ; preds = %cleanup574, %cleanup394, %cleanup195.thread
  %tobool99.not1358 = phi i1 [ true, %cleanup394 ], [ true, %cleanup574 ], [ false, %cleanup195.thread ]
  %status.3 = phi i32 [ %call393, %cleanup394 ], [ %call573, %cleanup574 ], [ %call194, %cleanup195.thread ]
  %sg_indx.17 = phi i32 [ %sg_indx.8, %cleanup394 ], [ %sg_indx.15, %cleanup574 ], [ %sg_indx.0.lcssa1787, %cleanup195.thread ]
  %byte_count.17 = phi i32 [ %byte_count.8, %cleanup394 ], [ %byte_count.15, %cleanup574 ], [ %byte_count.0.lcssa1788, %cleanup195.thread ]
  %260 = zext i32 %status.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %status.3, label %if.end579.cleanup650.thread1789_crit_edge [
    i32 -512, label %cleanup650.thread
    i32 0, label %if.end587
  ]

if.end579.cleanup650.thread1789_crit_edge:        ; preds = %if.end579
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

cleanup650.thread:                                ; preds = %if.end579
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call14) #9
  br label %cleanup664

if.end587:                                        ; preds = %if.end579
  %and588 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and588)
  %tobool589.not = icmp eq i32 %and588, 0
  br i1 %tobool589.not, label %if.end587.if.end605_crit_edge, label %if.end587.for.body594_crit_edge

if.end587.for.body594_crit_edge:                  ; preds = %if.end587
  br label %for.body594

if.end587.if.end605_crit_edge:                    ; preds = %if.end587
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end605

for.cond591:                                      ; preds = %copy_to_user.exit
  %inc603 = add nuw i32 %i.51634, 1
  %exitcond = icmp eq i32 %i.51634, %sg_indx.17
  br i1 %exitcond, label %for.cond591.if.end605_crit_edge, label %for.cond591.for.body594_crit_edge

for.cond591.for.body594_crit_edge:                ; preds = %for.cond591
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body594

for.cond591.if.end605_crit_edge:                  ; preds = %for.cond591
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end605

for.body594:                                      ; preds = %for.cond591.for.body594_crit_edge, %if.end587.for.body594_crit_edge
  %i.51634 = phi i32 [ %inc603, %for.cond591.for.body594_crit_edge ], [ 0, %if.end587.for.body594_crit_edge ]
  %arrayidx595 = getelementptr [28 x ptr], ptr %sg_user, i32 0, i32 %i.51634
  %261 = ptrtoint ptr %arrayidx595 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %arrayidx595, align 4
  %arrayidx596 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.51634
  %263 = ptrtoint ptr %arrayidx596 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %arrayidx596, align 4
  %arrayidx597 = getelementptr [28 x i32], ptr %sg_count, i32 0, i32 %i.51634
  %265 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx597, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp9.i.i1299 = icmp slt i32 %266, 0
  br i1 %cmp9.i.i1299, label %land.rhs16.i.i1302, label %if.then.i.i.i1305

land.rhs16.i.i1302:                               ; preds = %for.body594
  %.b71.i.i1301 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1301, label %land.rhs16.i.i1302.cleanup650.thread1789_crit_edge, label %if.then27.i.i1303, !prof !33

land.rhs16.i.i1302.cleanup650.thread1789_crit_edge: ; preds = %land.rhs16.i.i1302
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.then27.i.i1303:                                ; preds = %land.rhs16.i.i1302
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup650.thread1789

if.then.i.i.i1305:                                ; preds = %for.body594
  call void @__check_object_size(ptr noundef %264, i32 noundef %266, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i1306 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1306, label %if.then.i.i.i1305.copy_to_user.exit_crit_edge, label %if.end.i.i1310

if.then.i.i.i1305.copy_to_user.exit_crit_edge:    ; preds = %if.then.i.i.i1305
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i1310:                                   ; preds = %if.then.i.i.i1305
  %267 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %262, i32 %266, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i1308 = extractvalue { i32, i32 } %267, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1308)
  %cmp.i6.i1309 = icmp eq i32 %asmresult.i.i1308, 0
  br i1 %cmp.i6.i1309, label %if.then2.i.i, label %if.end.i.i1310.copy_to_user.exit_crit_edge

if.end.i.i1310.copy_to_user.exit_crit_edge:       ; preds = %if.end.i.i1310
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i1310
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1311 = call zeroext i1 @__kasan_check_read(ptr noundef %264, i32 noundef %266) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %262, ptr noundef %264, i32 noundef %266) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i1310.copy_to_user.exit_crit_edge, %if.then.i.i.i1305.copy_to_user.exit_crit_edge
  %n.addr.0.i1312 = phi i32 [ %266, %if.then.i.i.i1305.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %266, %if.end.i.i1310.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1312)
  %tobool599.not = icmp eq i32 %n.addr.0.i1312, 0
  br i1 %tobool599.not, label %for.cond591, label %copy_to_user.exit.cleanup650.thread1789_crit_edge

copy_to_user.exit.cleanup650.thread1789_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end605:                                        ; preds = %for.cond591.if.end605_crit_edge, %if.end587.if.end605_crit_edge
  %268 = ptrtoint ptr %fibsize to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %fibsize, align 4
  %add.ptr = getelementptr i8, ptr %arg, i32 %269
  %hw_fib_va639 = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 13
  %270 = ptrtoint ptr %hw_fib_va639 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hw_fib_va639, align 4
  br i1 %tobool99.not1358, label %if.else637, label %if.then607

if.then607:                                       ; preds = %if.end605
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %reply) #9
  %flags610 = getelementptr inbounds %struct.fib, ptr %call3, i32 0, i32 9
  %272 = call ptr @memset(ptr %reply, i32 0, i32 52)
  %273 = ptrtoint ptr %flags610 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %flags610, align 4
  %and611 = and i32 %274, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and611)
  %tobool612.not = icmp eq i32 %and611, 0
  br i1 %tobool612.not, label %if.else615, label %if.then613

if.then613:                                       ; preds = %if.then607
  call void @__sanitizer_cov_trace_pc() #11
  %sense_data = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 5
  %275 = call ptr @memset(ptr %sense_data, i32 0, i32 30)
  br label %if.end8.i.i1318

if.else615:                                       ; preds = %if.then607
  call void @__sanitizer_cov_trace_pc() #11
  %service_response = getelementptr inbounds %struct.aac_native_hba, ptr %271, i32 0, i32 1, i32 0, i32 4
  %276 = ptrtoint ptr %service_response to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %service_response, align 4
  %conv616 = zext i8 %277 to i32
  %status618 = getelementptr inbounds %struct.aac_native_hba, ptr %271, i32 0, i32 1, i32 0, i32 5
  %278 = ptrtoint ptr %status618 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %status618, align 1
  %conv619 = zext i8 %279 to i32
  %residual_count = getelementptr inbounds %struct.aac_native_hba, ptr %271, i32 0, i32 1, i32 0, i32 8
  %280 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %residual_count, align 4
  %282 = call i32 @llvm.bswap.i32(i32 %281)
  %sub621 = sub i32 %byte_count.17, %282
  %sense_response_data_len = getelementptr inbounds %struct.aac_native_hba, ptr %271, i32 0, i32 1, i32 0, i32 7
  %283 = ptrtoint ptr %sense_response_data_len to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %sense_response_data_len, align 1
  %conv623 = zext i8 %284 to i32
  %sense_data625 = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 5
  %sense_response_buf = getelementptr inbounds %struct.aac_native_hba, ptr %271, i32 0, i32 1, i32 0, i32 9
  %285 = call ptr @memcpy(ptr %sense_data625, ptr %sense_response_buf, i32 30)
  br label %if.end8.i.i1318

if.end8.i.i1318:                                  ; preds = %if.else615, %if.then613
  %.sink1766 = phi i32 [ %conv616, %if.else615 ], [ 1, %if.then613 ]
  %.sink1765 = phi i32 [ %conv619, %if.else615 ], [ 0, %if.then613 ]
  %byte_count.17.sink = phi i32 [ %sub621, %if.else615 ], [ %byte_count.17, %if.then613 ]
  %.sink = phi i32 [ %conv623, %if.else615 ], [ 0, %if.then613 ]
  %286 = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 1
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %.sink1766, ptr %286, align 4
  %288 = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 2
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %.sink1765, ptr %288, align 4
  %290 = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 3
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %byte_count.17.sink, ptr %290, align 4
  %292 = getelementptr inbounds %struct.aac_srb_reply, ptr %reply, i32 0, i32 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %.sink, ptr %292, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i1320 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1320, label %if.end8.i.i1318.copy_to_user.exit1330.thread_crit_edge, label %if.end.i.i1324

if.end8.i.i1318.copy_to_user.exit1330.thread_crit_edge: ; preds = %if.end8.i.i1318
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1330.thread

if.end.i.i1324:                                   ; preds = %if.end8.i.i1318
  %294 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 52, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i1322 = extractvalue { i32, i32 } %294, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1322)
  %cmp.i6.i1323 = icmp eq i32 %asmresult.i.i1322, 0
  br i1 %cmp.i6.i1323, label %copy_to_user.exit1330, label %if.end.i.i1324.copy_to_user.exit1330.thread_crit_edge

if.end.i.i1324.copy_to_user.exit1330.thread_crit_edge: ; preds = %if.end.i.i1324
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit1330.thread

copy_to_user.exit1330:                            ; preds = %if.end.i.i1324
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1325 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %reply, i32 noundef 52) #9
  %call.i12.i.i1326 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef nonnull %reply, i32 noundef 52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1326)
  %tobool630.not = icmp eq i32 %call.i12.i.i1326, 0
  %spec.select = select i1 %tobool630.not, i32 0, i32 -14
  br label %copy_to_user.exit1330.thread

copy_to_user.exit1330.thread:                     ; preds = %copy_to_user.exit1330, %if.end.i.i1324.copy_to_user.exit1330.thread_crit_edge, %if.end8.i.i1318.copy_to_user.exit1330.thread_crit_edge
  %295 = phi i32 [ -14, %if.end8.i.i1318.copy_to_user.exit1330.thread_crit_edge ], [ -14, %if.end.i.i1324.copy_to_user.exit1330.thread_crit_edge ], [ %spec.select, %copy_to_user.exit1330 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %reply) #9
  br label %cleanup650.thread1789

if.else637:                                       ; preds = %if.end605
  %data640 = getelementptr inbounds %struct.hw_fib, ptr %271, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i1337 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i1337, label %if.else637.cleanup650.thread1789_crit_edge, label %if.end.i.i1341

if.else637.cleanup650.thread1789_crit_edge:       ; preds = %if.else637
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

if.end.i.i1341:                                   ; preds = %if.else637
  %296 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 52, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i1339 = extractvalue { i32, i32 } %296, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1339)
  %cmp.i6.i1340 = icmp eq i32 %asmresult.i.i1339, 0
  br i1 %cmp.i6.i1340, label %copy_to_user.exit1347, label %if.end.i.i1341.cleanup650.thread1789_crit_edge

if.end.i.i1341.cleanup650.thread1789_crit_edge:   ; preds = %if.end.i.i1341
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup650.thread1789

copy_to_user.exit1347:                            ; preds = %if.end.i.i1341
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i1342 = call zeroext i1 @__kasan_check_read(ptr noundef %data640, i32 noundef 52) #9
  %call.i12.i.i1343 = call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %data640, i32 noundef 52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1343)
  %tobool643.not = icmp eq i32 %call.i12.i.i1343, 0
  %spec.select1444 = select i1 %tobool643.not, i32 0, i32 -14
  br label %cleanup650.thread1789

cleanup650.thread1789:                            ; preds = %copy_to_user.exit1347, %if.end.i.i1341.cleanup650.thread1789_crit_edge, %if.else637.cleanup650.thread1789_crit_edge, %copy_to_user.exit1330.thread, %copy_to_user.exit.cleanup650.thread1789_crit_edge, %if.then27.i.i1303, %land.rhs16.i.i1302.cleanup650.thread1789_crit_edge, %if.end579.cleanup650.thread1789_crit_edge, %if.then11.i.i1289, %if.then27.i.i1269, %land.rhs16.i.i1268.cleanup650.thread1789_crit_edge, %if.end8.i1256.cleanup650.thread1789_crit_edge, %cond.end516.cleanup650.thread1789_crit_edge, %if.then11.i.i1226, %if.then27.i.i1206, %land.rhs16.i.i1205.cleanup650.thread1789_crit_edge, %if.end8.i1193.cleanup650.thread1789_crit_edge, %cond.end428.cleanup650.thread1789_crit_edge, %if.then346, %if.then332, %if.then327, %if.else295.cleanup650.thread1789_crit_edge, %if.then11.i.i1100, %if.then27.i.i1080, %land.rhs16.i.i1079.cleanup650.thread1789_crit_edge, %if.end8.i1067.cleanup650.thread1789_crit_edge, %cond.end229.cleanup650.thread1789_crit_edge, %if.then11.i.i1037, %if.then27.i.i, %land.rhs16.i.i.cleanup650.thread1789_crit_edge, %if.end8.i.cleanup650.thread1789_crit_edge, %do.end, %if.end31.cleanup650.thread1789_crit_edge, %.cleanup650.thread1789_crit_edge2172, %.cleanup650.thread1789_crit_edge, %lor.lhs.false.cleanup650.thread1789_crit_edge, %if.end10.cleanup650.thread1789_crit_edge, %if.then11.i.i
  %user_srbcmd.0.ph = phi ptr [ %call14, %.cleanup650.thread1789_crit_edge ], [ %call14, %copy_to_user.exit1347 ], [ %call14, %if.end.i.i1341.cleanup650.thread1789_crit_edge ], [ %call14, %if.else637.cleanup650.thread1789_crit_edge ], [ %call14, %land.rhs16.i.i1302.cleanup650.thread1789_crit_edge ], [ %call14, %if.then27.i.i1303 ], [ %call14, %if.end579.cleanup650.thread1789_crit_edge ], [ %call14, %land.rhs16.i.i1268.cleanup650.thread1789_crit_edge ], [ %call14, %if.then27.i.i1269 ], [ %call14, %if.then11.i.i1289 ], [ %call14, %land.rhs16.i.i1205.cleanup650.thread1789_crit_edge ], [ %call14, %if.then27.i.i1206 ], [ %call14, %if.then11.i.i1226 ], [ %call14, %if.then332 ], [ %call14, %if.then346 ], [ %call14, %if.then327 ], [ %call14, %if.else295.cleanup650.thread1789_crit_edge ], [ %call14, %land.rhs16.i.i1079.cleanup650.thread1789_crit_edge ], [ %call14, %if.then27.i.i1080 ], [ %call14, %if.then11.i.i1100 ], [ %call14, %land.rhs16.i.i.cleanup650.thread1789_crit_edge ], [ %call14, %if.then27.i.i ], [ %call14, %if.then11.i.i1037 ], [ null, %if.then11.i.i ], [ %call14, %do.end ], [ %call14, %if.end31.cleanup650.thread1789_crit_edge ], [ %call14, %.cleanup650.thread1789_crit_edge2172 ], [ null, %if.end10.cleanup650.thread1789_crit_edge ], [ null, %lor.lhs.false.cleanup650.thread1789_crit_edge ], [ %call14, %copy_to_user.exit1330.thread ], [ %call14, %copy_to_user.exit.cleanup650.thread1789_crit_edge ], [ %call14, %if.end8.i.cleanup650.thread1789_crit_edge ], [ %call14, %cond.end428.cleanup650.thread1789_crit_edge ], [ %call14, %if.end8.i1193.cleanup650.thread1789_crit_edge ], [ %call14, %cond.end516.cleanup650.thread1789_crit_edge ], [ %call14, %if.end8.i1256.cleanup650.thread1789_crit_edge ], [ %call14, %cond.end229.cleanup650.thread1789_crit_edge ], [ %call14, %if.end8.i1067.cleanup650.thread1789_crit_edge ]
  %rcode.20.ph = phi i32 [ -22, %.cleanup650.thread1789_crit_edge ], [ %spec.select1444, %copy_to_user.exit1347 ], [ -14, %if.end.i.i1341.cleanup650.thread1789_crit_edge ], [ -14, %if.else637.cleanup650.thread1789_crit_edge ], [ -14, %land.rhs16.i.i1302.cleanup650.thread1789_crit_edge ], [ -14, %if.then27.i.i1303 ], [ -6, %if.end579.cleanup650.thread1789_crit_edge ], [ -14, %land.rhs16.i.i1268.cleanup650.thread1789_crit_edge ], [ -14, %if.then27.i.i1269 ], [ -14, %if.then11.i.i1289 ], [ -14, %land.rhs16.i.i1205.cleanup650.thread1789_crit_edge ], [ -14, %if.then27.i.i1206 ], [ -14, %if.then11.i.i1226 ], [ -12, %if.then332 ], [ -14, %if.then346 ], [ -22, %if.then327 ], [ -12, %if.else295.cleanup650.thread1789_crit_edge ], [ -14, %land.rhs16.i.i1079.cleanup650.thread1789_crit_edge ], [ -14, %if.then27.i.i1080 ], [ -14, %if.then11.i.i1100 ], [ -14, %land.rhs16.i.i.cleanup650.thread1789_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i1037 ], [ -14, %if.then11.i.i ], [ -22, %do.end ], [ -22, %if.end31.cleanup650.thread1789_crit_edge ], [ -22, %.cleanup650.thread1789_crit_edge2172 ], [ -22, %if.end10.cleanup650.thread1789_crit_edge ], [ -22, %lor.lhs.false.cleanup650.thread1789_crit_edge ], [ %295, %copy_to_user.exit1330.thread ], [ -14, %copy_to_user.exit.cleanup650.thread1789_crit_edge ], [ -12, %if.end8.i.cleanup650.thread1789_crit_edge ], [ -12, %if.end8.i1193.cleanup650.thread1789_crit_edge ], [ -22, %cond.end428.cleanup650.thread1789_crit_edge ], [ -12, %if.end8.i1256.cleanup650.thread1789_crit_edge ], [ -22, %cond.end516.cleanup650.thread1789_crit_edge ], [ -12, %if.end8.i1067.cleanup650.thread1789_crit_edge ], [ -22, %cond.end229.cleanup650.thread1789_crit_edge ]
  %sg_indx.18.ph = phi i32 [ 0, %.cleanup650.thread1789_crit_edge ], [ %sg_indx.17, %copy_to_user.exit1347 ], [ %sg_indx.17, %if.end.i.i1341.cleanup650.thread1789_crit_edge ], [ %sg_indx.17, %if.else637.cleanup650.thread1789_crit_edge ], [ %sg_indx.17, %land.rhs16.i.i1302.cleanup650.thread1789_crit_edge ], [ %sg_indx.17, %if.then27.i.i1303 ], [ %sg_indx.17, %if.end579.cleanup650.thread1789_crit_edge ], [ %i.41614, %land.rhs16.i.i1268.cleanup650.thread1789_crit_edge ], [ %i.41614, %if.then27.i.i1269 ], [ %i.41614, %if.then11.i.i1289 ], [ %i.31621, %land.rhs16.i.i1205.cleanup650.thread1789_crit_edge ], [ %i.31621, %if.then27.i.i1206 ], [ %i.31621, %if.then11.i.i1226 ], [ %sg_indx.51599, %if.then332 ], [ %i.21601, %if.then346 ], [ %sg_indx.51599, %if.then327 ], [ 0, %if.else295.cleanup650.thread1789_crit_edge ], [ %i.11607, %land.rhs16.i.i1079.cleanup650.thread1789_crit_edge ], [ %i.11607, %if.then27.i.i1080 ], [ %i.11607, %if.then11.i.i1100 ], [ %i.01628, %land.rhs16.i.i.cleanup650.thread1789_crit_edge ], [ %i.01628, %if.then27.i.i ], [ %i.01628, %if.then11.i.i1037 ], [ 0, %if.then11.i.i ], [ %sg_indx.01626, %do.end ], [ 0, %if.end31.cleanup650.thread1789_crit_edge ], [ 0, %.cleanup650.thread1789_crit_edge2172 ], [ 0, %if.end10.cleanup650.thread1789_crit_edge ], [ 0, %lor.lhs.false.cleanup650.thread1789_crit_edge ], [ %sg_indx.17, %copy_to_user.exit1330.thread ], [ %sg_indx.17, %copy_to_user.exit.cleanup650.thread1789_crit_edge ], [ %sg_indx.01626, %if.end8.i.cleanup650.thread1789_crit_edge ], [ %sg_indx.101619, %cond.end428.cleanup650.thread1789_crit_edge ], [ %sg_indx.101619, %if.end8.i1193.cleanup650.thread1789_crit_edge ], [ %sg_indx.131612, %cond.end516.cleanup650.thread1789_crit_edge ], [ %sg_indx.131612, %if.end8.i1256.cleanup650.thread1789_crit_edge ], [ %sg_indx.31605, %cond.end229.cleanup650.thread1789_crit_edge ], [ %sg_indx.31605, %if.end8.i1067.cleanup650.thread1789_crit_edge ]
  call void @kfree(ptr noundef %user_srbcmd.0.ph) #9
  br label %for.body657.preheader

cleanup650:                                       ; preds = %if.end13
  %297 = ptrtoint ptr %call14 to i32
  call void @kfree(ptr noundef null) #9
  %cmp651.not = icmp eq ptr %call14, inttoptr (i32 -512 to ptr)
  br i1 %cmp651.not, label %cleanup650.cleanup664_crit_edge, label %cleanup650.for.body657.preheader_crit_edge

cleanup650.for.body657.preheader_crit_edge:       ; preds = %cleanup650
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body657.preheader

cleanup650.cleanup664_crit_edge:                  ; preds = %cleanup650
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup664

for.body657.preheader:                            ; preds = %cleanup650.for.body657.preheader_crit_edge, %cleanup650.thread1789
  %sg_indx.181795 = phi i32 [ %sg_indx.18.ph, %cleanup650.thread1789 ], [ 0, %cleanup650.for.body657.preheader_crit_edge ]
  %rcode.201794 = phi i32 [ %rcode.20.ph, %cleanup650.thread1789 ], [ %297, %cleanup650.for.body657.preheader_crit_edge ]
  br label %for.body657

for.body657:                                      ; preds = %for.body657.for.body657_crit_edge, %for.body657.preheader
  %i.61635 = phi i32 [ %inc660, %for.body657.for.body657_crit_edge ], [ 0, %for.body657.preheader ]
  %arrayidx658 = getelementptr [28 x ptr], ptr %sg_list, i32 0, i32 %i.61635
  %298 = ptrtoint ptr %arrayidx658 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %arrayidx658, align 4
  call void @kfree(ptr noundef %299) #9
  %inc660 = add nuw i32 %i.61635, 1
  %exitcond1764 = icmp eq i32 %i.61635, %sg_indx.181795
  br i1 %exitcond1764, label %for.end661, label %for.body657.for.body657_crit_edge

for.body657.for.body657_crit_edge:                ; preds = %for.body657
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body657

for.end661:                                       ; preds = %for.body657
  call void @__sanitizer_cov_trace_pc() #11
  %call662 = call i32 @aac_fib_complete(ptr noundef nonnull %call3) #9
  call void @aac_fib_free(ptr noundef nonnull %call3) #9
  br label %cleanup664

cleanup664:                                       ; preds = %for.end661, %cleanup650.cleanup664_crit_edge, %cleanup650.thread, %if.end2.cleanup664_crit_edge, %if.end.cleanup664_crit_edge, %entry.cleanup664_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup664_crit_edge ], [ -1, %if.end.cleanup664_crit_edge ], [ -12, %if.end2.cleanup664_crit_edge ], [ %rcode.201794, %for.end661 ], [ -512, %cleanup650.cleanup664_crit_edge ], [ -512, %cleanup650.thread ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %sg_count) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %sg_list) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %sg_user) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fibsize) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_get_pci_info(ptr nocapture noundef readonly %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %pci_info = alloca %struct.aac_pci_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pci_info) #9
  %0 = getelementptr inbounds %struct.aac_pci_info, ptr %pci_info, i32 0, i32 1
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %pci_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %pci_info, align 4
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %9, 3
  %and = and i32 %shr, 31
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %0, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 8, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %pci_info, i32 noundef 8) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %pci_info, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %12 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pci_info) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_get_hba_info(ptr nocapture noundef readonly %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %hbainfo = alloca %struct.aac_hba_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %hbainfo) #9
  %0 = call ptr @memset(ptr %hbainfo, i32 0, i32 200)
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %conv = trunc i32 %2 to i8
  %adapter_number = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 1
  %3 = ptrtoint ptr %adapter_number to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %adapter_number, align 2
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 4
  %system_io_bus_number = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 2
  %10 = ptrtoint ptr %system_io_bus_number to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %system_io_bus_number, align 1
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %12, 3
  %conv2 = trunc i32 %shr to i8
  %device_number = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 3
  %13 = ptrtoint ptr %device_number to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2, ptr %device_number, align 4
  %14 = load i32, ptr %devfn, align 4
  %and = and i32 %14, 7
  %function_number = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 4
  %15 = ptrtoint ptr %function_number to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %function_number, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor, align 8
  %conv6 = zext i16 %17 to i32
  %vendor_id = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 5
  %18 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv6, ptr %vendor_id, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %conv8 = zext i16 %20 to i32
  %device_id = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 6
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv8, ptr %device_id, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 9
  %22 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %subsystem_vendor, align 4
  %conv10 = zext i16 %23 to i32
  %sub_vendor_id = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 7
  %24 = ptrtoint ptr %sub_vendor_id to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv10, ptr %sub_vendor_id, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 10
  %25 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device, align 2
  %conv12 = zext i16 %26 to i32
  %sub_system_id = getelementptr inbounds %struct.aac_hba_info, ptr %hbainfo, i32 0, i32 8
  %27 = ptrtoint ptr %sub_system_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv12, ptr %sub_system_id, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 200, i32 -1226833920) #12, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hbainfo, i32 noundef 200) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %hbainfo, i32 noundef 200) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %29 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %hbainfo) #9
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_send_reset_adapter(ptr noundef %dev, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %reset = alloca %struct.aac_reset_iop, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset) #9
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reset, align 1, !annotation !37
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 1, i32 -1226833920) #12, !srcloc !32
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !33

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reset, i32 noundef 1) #9
  %2 = call i32 @llvm.read_register.i32(metadata !22) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !34
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %reset, ptr noundef %arg, i32 noundef 1) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !33

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i10 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 1, %entry.if.then11.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 1, %res.0.i.i10
  %add.ptr.i.i = getelementptr i8, ptr %reset, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i10)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter_shutdown = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 83
  %6 = ptrtoint ptr %adapter_shutdown to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %adapter_shutdown, align 8
  %ioctl_mutex = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 13
  call void @mutex_unlock(ptr noundef %ioctl_mutex) #9
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reset, align 1
  %call2 = call i32 @aac_reset_adapter(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext %8) #9
  call void @mutex_lock_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_fib_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_send(i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_fib_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_command_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_fib_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size, i32 noundef %dir) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #9
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !33

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16, ptr noundef %retval.0.i) #9
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef %dir, i32 noundef 0) #9
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_hba_send(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_reset_adapter(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !16, !17, !18, !20, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!7 = !{ptr @init_completion.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../include/linux/completion.h", i32 87, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aacraid/commctrl.c", i32 335, i32 18}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aacraid/commctrl.c", i32 660, i32 5}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @aac_send_raw_srb._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @aac_send_raw_srb._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2153903766, i64 2153903791}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 6399321}
!35 = !{i64 6399518}
!36 = !{i64 2153884751}
!37 = !{!"auto-init"}
!38 = !{i64 2153904447, i64 2153904472}
