; ModuleID = '/llk/IR_all_yes/drivers/media/mmc/siano/smssdio.c_pt.bc'
source_filename = "../drivers/media/mmc/siano/smssdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smsdevice_params_t = type { ptr, ptr, i32, i32, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.smssdio_device = type { ptr, ptr, ptr }
%struct.smscore_buffer_t = type { %struct.list_head, i32, i32, ptr, i32, i32 }
%struct.sms_msg_hdr = type { i16, i8, i8, i16, i16 }

@smssdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @smssdio_ids, ptr @smssdio_probe, ptr @smssdio_remove, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_smssdio__239_369_smssdio_module_init6 = internal global ptr @smssdio_module_init, section ".initcall6.init", align 4
@__exitcall_smssdio_module_exit = internal global ptr @smssdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [46 x i8] c"smssdio.description=Siano SMS1xxx SDIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [29 x i8] c"smssdio.author=Pierre Ossman\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [45 x i8] c"smssdio.file=drivers/media/mmc/siano/smssdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [20 x i8] c"smssdio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smssdio\00", [24 x i8] zeroinitializer }, align 32
@smssdio_ids = internal constant { [11 x %struct.sdio_device_id], [60 x i8] } { [11 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 922, i16 21319, i32 1 }, %struct.sdio_device_id { i8 -1, i16 922, i16 4352, i32 2 }, %struct.sdio_device_id { i8 -1, i16 922, i16 513, i32 3 }, %struct.sdio_device_id { i8 -1, i16 922, i16 768, i32 4 }, %struct.sdio_device_id { i8 -1, i16 922, i16 769, i32 4 }, %struct.sdio_device_id { i8 -1, i16 922, i16 770, i32 16 }, %struct.sdio_device_id { i8 -1, i16 922, i16 1280, i32 17 }, %struct.sdio_device_id { i8 -1, i16 922, i16 1536, i32 18 }, %struct.sdio_device_id { i8 -1, i16 922, i16 1792, i32 20 }, %struct.sdio_device_id { i8 -1, i16 922, i16 2048, i32 19 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdio\\%s\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smssdio_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s:%s: Unable to read interrupt register!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smssdio_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/mmc/siano/smssdio.c\00", [62 x i8] zeroinitializer }, align 32
@smssdio_interrupt._entry_ptr = internal global ptr @smssdio_interrupt._entry, section ".printk_index", align 4
@smssdio_interrupt._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%s: Unable to allocate data buffer!\0A\00", [54 x i8] zeroinitializer }, align 32
@smssdio_interrupt._entry_ptr.7 = internal global ptr @smssdio_interrupt._entry.5, section ".printk_index", align 4
@smssdio_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s:%s: Error %d reading initial block!\0A\00", [54 x i8] zeroinitializer }, align 32
@smssdio_interrupt._entry_ptr.10 = internal global ptr @smssdio_interrupt._entry.8, section ".printk_index", align 4
@smssdio_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s:%s: Error %d reading data from card!\0A\00", [53 x i8] zeroinitializer }, align 32
@smssdio_interrupt._entry_ptr.13 = internal global ptr @smssdio_interrupt._entry.11, section ".printk_index", align 4
@smssdio_interrupt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smssdio_interrupt._entry_ptr.15 = internal global ptr @smssdio_interrupt._entry.14, section ".printk_index", align 4
@smssdio_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016smssdio: Siano SMS1xxx SDIO driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smssdio_module_init\00", [44 x i8] zeroinitializer }, align 32
@smssdio_module_init._entry_ptr = internal global ptr @smssdio_module_init._entry, section ".printk_index", align 4
@smssdio_module_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016smssdio: Copyright Pierre Ossman\0A\00", [60 x i8] zeroinitializer }, align 32
@smssdio_module_init._entry_ptr.20 = internal global ptr @smssdio_module_init._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"smssdio_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 341, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 342, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"smssdio_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 50, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 261, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 140, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 147, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 197, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 215, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 356, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [37 x i8] c"../drivers/media/mmc/siano/smssdio.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 357, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_smssdio_module_exit, ptr @__initcall__kmod_smssdio__239_369_smssdio_module_init6, ptr @smssdio_interrupt._entry, ptr @smssdio_interrupt._entry.11, ptr @smssdio_interrupt._entry.14, ptr @smssdio_interrupt._entry.5, ptr @smssdio_interrupt._entry.8, ptr @smssdio_interrupt._entry_ptr, ptr @smssdio_interrupt._entry_ptr.10, ptr @smssdio_interrupt._entry_ptr.13, ptr @smssdio_interrupt._entry_ptr.15, ptr @smssdio_interrupt._entry_ptr.7, ptr @smssdio_module_exit, ptr @smssdio_module_init._entry, ptr @smssdio_module_init._entry.18, ptr @smssdio_module_init._entry_ptr, ptr @smssdio_module_init._entry_ptr.20, ptr @smssdio_driver, ptr @.str, ptr @smssdio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_ids to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_interrupt._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_interrupt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smssdio_module_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smssdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdio_unregister_driver(ptr noundef nonnull @smssdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smssdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  %call6 = tail call i32 @sdio_register_driver(ptr noundef nonnull @smssdio_driver) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smssdio_probe(ptr noundef %func, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %params = alloca %struct.smsdevice_params_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %params) #8
  %driver_data = getelementptr inbounds %struct.sdio_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %func, ptr %call7.i.i, align 8
  %4 = getelementptr inbounds i8, ptr %params, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 68)
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %params, align 4
  %buffer_size = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20480, ptr %buffer_size, align 4
  %num_buffers = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 22, ptr %num_buffers, align 4
  %context = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 11
  %9 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %context, align 4
  %devpath = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %devpath, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i)
  %sendrequest_handler = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 8
  %14 = ptrtoint ptr %sendrequest_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smssdio_sendrequest, ptr %sendrequest_handler, align 4
  %call5 = tail call ptr @sms_get_board(i32 noundef %1) #8
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5, align 4
  %device_type = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 12
  %17 = ptrtoint ptr %device_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %device_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %dev_name.exit.free_crit_edge, label %if.then7

dev_name.exit.free_crit_edge:                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.then7:                                         ; preds = %dev_name.exit
  %flags = getelementptr inbounds %struct.smsdevice_params_t, ptr %params, i32 0, i32 5
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %flags, align 4
  %coredev = getelementptr inbounds %struct.smssdio_device, ptr %call7.i.i, i32 0, i32 1
  %call9 = call i32 @smscore_register_device(ptr noundef nonnull %params, ptr noundef %coredev, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then7.free_crit_edge, label %if.end12

if.then7.free_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end12:                                         ; preds = %if.then7
  %20 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %coredev, align 4
  call void @smscore_set_board_id(ptr noundef %21, i32 noundef %1) #8
  call void @sdio_claim_host(ptr noundef %func) #8
  %call14 = call i32 @sdio_enable_func(ptr noundef %func) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.release_crit_edge

if.end12.release_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 @sdio_set_block_size(ptr noundef %func, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.disable_crit_edge

if.end17.disable_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @sdio_claim_irq(ptr noundef %func, ptr noundef nonnull @smssdio_interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.disable_crit_edge

if.end21.disable_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable

if.end25:                                         ; preds = %if.end21
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  call void @sdio_release_host(ptr noundef %func) #8
  %23 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %coredev, align 4
  %call28 = call i32 @smscore_start_device(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %reclaim, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

reclaim:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @sdio_claim_host(ptr noundef %func) #8
  %call32 = call i32 @sdio_release_irq(ptr noundef %func) #8
  br label %disable

disable:                                          ; preds = %reclaim, %if.end21.disable_crit_edge, %if.end17.disable_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.disable_crit_edge ], [ %call22, %if.end21.disable_crit_edge ], [ %call28, %reclaim ]
  %call33 = call i32 @sdio_disable_func(ptr noundef %func) #8
  br label %release

release:                                          ; preds = %disable, %if.end12.release_crit_edge
  %ret.1 = phi i32 [ %call14, %if.end12.release_crit_edge ], [ %ret.0, %disable ]
  call void @sdio_release_host(ptr noundef %func) #8
  %25 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %coredev, align 4
  call void @smscore_unregister_device(ptr noundef %26) #8
  br label %free

free:                                             ; preds = %release, %if.then7.free_crit_edge, %dev_name.exit.free_crit_edge
  %ret.2 = phi i32 [ %call9, %if.then7.free_crit_edge ], [ %ret.1, %release ], [ -19, %dev_name.exit.free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %params) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smssdio_remove(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %split_cb = getelementptr inbounds %struct.smssdio_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %split_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %split_cb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %coredev = getelementptr inbounds %struct.smssdio_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %coredev, align 4
  tail call void @smscore_putbuffer(ptr noundef %5, ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %coredev2 = getelementptr inbounds %struct.smssdio_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %coredev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %coredev2, align 4
  tail call void @smscore_unregister_device(ptr noundef %7) #8
  tail call void @sdio_claim_host(ptr noundef %func) #8
  %call3 = tail call i32 @sdio_release_irq(ptr noundef %func) #8
  %call4 = tail call i32 @sdio_disable_func(ptr noundef %func) #8
  tail call void @sdio_release_host(ptr noundef %func) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smssdio_sendrequest(ptr nocapture noundef readonly %context, ptr noundef %buffer, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @sdio_claim_host(ptr noundef %1) #8
  tail call void @smsendian_handle_tx_message(ptr noundef %buffer) #8
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %cur_blksize32 = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cur_blksize32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_blksize32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp.not33 = icmp ugt i32 %5, %size
  br i1 %cmp.not33, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi i32 [ %11, %if.end.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %7 = phi ptr [ %9, %if.end.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %size.addr.035 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %size, %entry.while.body_crit_edge ]
  %buffer.addr.034 = phi ptr [ %add.ptr, %if.end.while.body_crit_edge ], [ %buffer, %entry.while.body_crit_edge ]
  %call = tail call i32 @sdio_memcpy_toio(ptr noundef %7, i32 noundef 0, ptr noundef %buffer.addr.034, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %cur_blksize6 = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %cur_blksize6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_blksize6, align 4
  %add.ptr = getelementptr i8, ptr %buffer.addr.034, i32 %11
  %sub = sub i32 %size.addr.035, %11
  %cmp.not = icmp ult i32 %sub, %11
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %buffer.addr.0.lcssa = phi ptr [ %buffer, %entry.while.end_crit_edge ], [ %add.ptr, %if.end.while.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %size, %entry.while.end_crit_edge ], [ %sub, %if.end.while.end_crit_edge ]
  %.lcssa = phi ptr [ %3, %entry.while.end_crit_edge ], [ %9, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %tobool9.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %tobool9.not, label %while.end.out_crit_edge, label %if.then10

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @sdio_memcpy_toio(ptr noundef %.lcssa, i32 noundef 0, ptr noundef %buffer.addr.0.lcssa, i32 noundef %size.addr.0.lcssa) #8
  br label %out

out:                                              ; preds = %if.then10, %while.end.out_crit_edge, %while.body.out_crit_edge
  %ret.1 = phi i32 [ %call12, %if.then10 ], [ 0, %while.end.out_crit_edge ], [ %call, %while.body.out_crit_edge ]
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  tail call void @sdio_release_host(ptr noundef %13) #8
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sms_get_board(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_set_board_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smssdio_interrupt(ptr noundef %func) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !58
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = call zeroext i8 @sdio_readb(ptr noundef %func, i32 noundef 4, ptr noundef nonnull %ret) #8
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  br label %cleanup120

if.end:                                           ; preds = %entry
  %split_cb = getelementptr inbounds %struct.smssdio_device, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %split_cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %split_cb, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then3, label %if.else38

if.then3:                                         ; preds = %if.end
  %coredev = getelementptr inbounds %struct.smssdio_device, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %coredev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %coredev, align 4
  %call4 = call ptr @smscore_getbuffer(ptr noundef %8) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #11
  br label %cleanup120

if.end12:                                         ; preds = %if.then3
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %p = getelementptr inbounds %struct.smscore_buffer_t, ptr %call4, i32 0, i32 3
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 4
  %call14 = call i32 @sdio_memcpy_fromio(ptr noundef %10, ptr noundef %12, i32 noundef 0, i32 noundef 128) #8
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call14, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %call14) #11
  br label %cleanup120

if.end22:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p, align 4
  %msg_flags = getelementptr inbounds %struct.sms_msg_hdr, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %msg_flags, align 2
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool24.not = icmp eq i16 %18, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %split_cb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %split_cb, align 4
  br label %cleanup120

if.end27:                                         ; preds = %if.end22
  %msg_length = getelementptr inbounds %struct.sms_msg_hdr, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %msg_length to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %msg_length, align 2
  %conv28 = zext i16 %21 to i32
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_blksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv28)
  %cmp30 = icmp ult i32 %25, %conv28
  %sub = sub i32 %conv28, %25
  br i1 %cmp30, label %if.end27.if.end45_crit_edge, label %if.end27.if.end114_crit_edge

if.end27.if.end114_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.end27.if.end45_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %p40 = getelementptr inbounds %struct.smscore_buffer_t, ptr %6, i32 0, i32 3
  %26 = ptrtoint ptr %p40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p40, align 4
  %msg_length41 = getelementptr inbounds %struct.sms_msg_hdr, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %msg_length41 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %msg_length41, align 2
  %conv42 = zext i16 %29 to i32
  %sub43 = add nsw i32 %conv42, -8
  %30 = ptrtoint ptr %split_cb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %split_cb, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else38, %if.end27.if.end45_crit_edge
  %size.0 = phi i32 [ %sub43, %if.else38 ], [ %sub, %if.end27.if.end45_crit_edge ]
  %hdr.0 = phi ptr [ %27, %if.else38 ], [ %15, %if.end27.if.end45_crit_edge ]
  %cb.0 = phi ptr [ %6, %if.else38 ], [ %call4, %if.end27.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool46.not = icmp eq i32 %size.0, 0
  br i1 %tobool46.not, label %if.end45.if.end114_crit_edge, label %if.then47

if.end45.if.end114_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then47:                                        ; preds = %if.end45
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %cur_blksize55 = getelementptr inbounds %struct.sdio_func, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %cur_blksize55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_blksize55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %34)
  %cmp56.not = icmp eq i32 %34, 128
  br i1 %cmp56.not, label %do.end69, label %do.body61, !prof !59

do.body61:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/mmc/siano/smssdio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end69:                                         ; preds = %if.then47
  %add = add i32 %size.0, 127
  %and52 = and i32 %add, -128
  %p48 = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb.0, i32 0, i32 3
  %35 = ptrtoint ptr %p48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p48, align 4
  %msg_length49 = getelementptr inbounds %struct.sms_msg_hdr, ptr %hdr.0, i32 0, i32 3
  %37 = ptrtoint ptr %msg_length49 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %msg_length49, align 2
  %conv50 = zext i16 %38 to i32
  %sub51 = sub i32 %conv50, %size.0
  %add.ptr = getelementptr i8, ptr %36, i32 %sub51
  %call71 = call i32 @sdio_memcpy_fromio(ptr noundef %32, ptr noundef %add.ptr, i32 noundef 0, i32 noundef %and52) #8
  %39 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call71, ptr %ret, align 4
  %40 = zext i32 %call71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call71, label %if.then75 [
    i32 -22, label %while.cond.preheader
    i32 0, label %do.end69.if.end114_crit_edge
  ]

do.end69.if.end114_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

while.cond.preheader:                             ; preds = %do.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool86.not179 = icmp eq i32 %and52, 0
  br i1 %tobool86.not179, label %while.cond.preheader.if.end114_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end114_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then75:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  %coredev76 = getelementptr inbounds %struct.smssdio_device, ptr %2, i32 0, i32 1
  %41 = ptrtoint ptr %coredev76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %coredev76, align 4
  call void @smscore_putbuffer(ptr noundef %42, ptr noundef nonnull %cb.0) #8
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ret, align 4
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %44) #11
  br label %cleanup120

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %buffer.0181 = phi ptr [ %add.ptr102, %if.end99.while.body_crit_edge ], [ %add.ptr, %while.cond.preheader.while.body_crit_edge ]
  %size.1180 = phi i32 [ %58, %if.end99.while.body_crit_edge ], [ %and52, %while.cond.preheader.while.body_crit_edge ]
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 4
  %cur_blksize89 = getelementptr inbounds %struct.sdio_func, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %cur_blksize89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_blksize89, align 4
  %call90 = call i32 @sdio_memcpy_fromio(ptr noundef %46, ptr noundef %buffer.0181, i32 noundef 0, i32 noundef %48) #8
  %49 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call90, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end99, label %if.then92

if.then92:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %coredev93 = getelementptr inbounds %struct.smssdio_device, ptr %2, i32 0, i32 1
  %50 = ptrtoint ptr %coredev93 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %coredev93, align 4
  call void @smscore_putbuffer(ptr noundef %51, ptr noundef nonnull %cb.0) #8
  %52 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ret, align 4
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %53) #11
  br label %cleanup120

if.end99:                                         ; preds = %while.body
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 4
  %cur_blksize101 = getelementptr inbounds %struct.sdio_func, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %cur_blksize101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur_blksize101, align 4
  %add.ptr102 = getelementptr i8, ptr %buffer.0181, i32 %57
  %58 = call i32 @llvm.usub.sat.i32(i32 %size.1180, i32 %57)
  %tobool86.not.not = icmp ugt i32 %size.1180, %57
  br i1 %tobool86.not.not, label %if.end99.while.body_crit_edge, label %if.end99.if.end114_crit_edge

if.end99.if.end114_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end114:                                        ; preds = %if.end99.if.end114_crit_edge, %while.cond.preheader.if.end114_crit_edge, %do.end69.if.end114_crit_edge, %if.end45.if.end114_crit_edge, %if.end27.if.end114_crit_edge
  %cb.0177 = phi ptr [ %cb.0, %if.end45.if.end114_crit_edge ], [ %call4, %if.end27.if.end114_crit_edge ], [ %cb.0, %do.end69.if.end114_crit_edge ], [ %cb.0, %while.cond.preheader.if.end114_crit_edge ], [ %cb.0, %if.end99.if.end114_crit_edge ]
  %hdr.0176 = phi ptr [ %hdr.0, %if.end45.if.end114_crit_edge ], [ %15, %if.end27.if.end114_crit_edge ], [ %hdr.0, %do.end69.if.end114_crit_edge ], [ %hdr.0, %while.cond.preheader.if.end114_crit_edge ], [ %hdr.0, %if.end99.if.end114_crit_edge ]
  %msg_length115 = getelementptr inbounds %struct.sms_msg_hdr, ptr %hdr.0176, i32 0, i32 3
  %59 = ptrtoint ptr %msg_length115 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %msg_length115, align 2
  %conv116 = zext i16 %60 to i32
  %size117 = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb.0177, i32 0, i32 1
  %61 = ptrtoint ptr %size117 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv116, ptr %size117, align 4
  %offset = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb.0177, i32 0, i32 2
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %offset, align 4
  %p118 = getelementptr inbounds %struct.smscore_buffer_t, ptr %cb.0177, i32 0, i32 3
  %63 = ptrtoint ptr %p118 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p118, align 4
  call void @smsendian_handle_rx_message(ptr noundef %64) #8
  %coredev119 = getelementptr inbounds %struct.smssdio_device, ptr %2, i32 0, i32 1
  %65 = ptrtoint ptr %coredev119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %coredev119, align 4
  call void @smscore_onresponse(ptr noundef %66, ptr noundef nonnull %cb.0177) #8
  br label %cleanup120

cleanup120:                                       ; preds = %if.end114, %if.then92, %if.then75, %if.then25, %do.end19, %do.end9, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smscore_start_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsendian_handle_tx_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smscore_getbuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_putbuffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smsendian_handle_rx_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smscore_onresponse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_smssdio__239_369_smssdio_module_init6, !1, !"__initcall__kmod_smssdio__239_369_smssdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 369, i32 1}
!2 = !{ptr @__exitcall_smssdio_module_exit, !3, !"__exitcall_smssdio_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 370, i32 1}
!4 = !{ptr @__UNIQUE_ID_description240, !5, !"__UNIQUE_ID_description240", i1 false, i1 false}
!5 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 372, i32 1}
!6 = !{ptr @__UNIQUE_ID_author241, !7, !"__UNIQUE_ID_author241", i1 false, i1 false}
!7 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 373, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 374, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 342, i32 10}
!13 = !{ptr @smssdio_driver, !14, !"smssdio_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 341, i32 27}
!15 = !{ptr @smssdio_ids, !16, !"smssdio_ids", i1 false, i1 false}
!16 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 50, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 261, i32 4}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 140, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @smssdio_interrupt._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @smssdio_interrupt._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 147, i32 4}
!27 = !{ptr @smssdio_interrupt._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @smssdio_interrupt._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 156, i32 4}
!31 = !{ptr @smssdio_interrupt._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @smssdio_interrupt._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 197, i32 4}
!35 = !{ptr @smssdio_interrupt._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smssdio_interrupt._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @smssdio_interrupt._entry.14, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 215, i32 6}
!39 = !{ptr @smssdio_interrupt._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 356, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @smssdio_module_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @smssdio_module_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/mmc/siano/smssdio.c", i32 357, i32 2}
!47 = !{ptr @smssdio_module_init._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @smssdio_module_init._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2154583695, i64 2154584193, i64 2154583732, i64 2154583788, i64 2154583822, i64 2154583846, i64 2154583887, i64 2154583908, i64 2154583936, i64 2154583970}
