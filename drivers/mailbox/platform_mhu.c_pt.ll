; ModuleID = '/llk/IR_all_yes/drivers/mailbox/platform_mhu.c_pt.bc'
source_filename = "../drivers/mailbox/platform_mhu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.platform_mhu = type { ptr, [3 x %struct.platform_mhu_link], [3 x %struct.mbox_chan], %struct.mbox_controller }
%struct.platform_mhu_link = type { i32, ptr, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }

@__initcall__kmod_platform_mhu__187_180_platform_mhu_driver_init6 = internal global ptr @platform_mhu_driver_init, section ".initcall6.init", align 4
@platform_mhu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_mhu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_mhu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_platform_mhu_driver_exit = internal global ptr @platform_mhu_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [47 x i8] c"platform_mhu.file=drivers/mailbox/platform_mhu\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [28 x i8] c"platform_mhu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [41 x i8] c"platform_mhu.alias=platform:platform-mhu\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [45 x i8] c"platform_mhu.description=Platform MHU Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [61 x i8] c"platform_mhu.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform-mhu\00", [19 x i8] zeroinitializer }, align 32
@platform_mhu_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-mhu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"platform_mhu_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/platform_mhu.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry_ptr = internal global ptr @platform_mhu_probe._entry, section ".printk_index", align 4
@platform_mhu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get irq%d\0A\00", [43 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry_ptr.8 = internal global ptr @platform_mhu_probe._entry.6, section ".printk_index", align 4
@platform_mhu_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @platform_mhu_send_data, ptr null, ptr @platform_mhu_startup, ptr @platform_mhu_shutdown, ptr @platform_mhu_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register mailboxes %d\0A\00", [63 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry_ptr.11 = internal global ptr @platform_mhu_probe._entry.9, section ".printk_index", align 4
@platform_mhu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 162, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Platform MHU Mailbox registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@platform_mhu_probe._entry_ptr.15 = internal global ptr @platform_mhu_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"platform_mhu_link\00", [46 x i8] zeroinitializer }, align 32
@platform_mhu_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to acquire IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"platform_mhu_startup\00", [43 x i8] zeroinitializer }, align 32
@platform_mhu_startup._entry_ptr = internal global ptr @platform_mhu_startup._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"platform_mhu_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 172, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 175, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"platform_mhu_dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 166, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 139, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"platform_mhu_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 158, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 162, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 91, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [34 x i8] c"../drivers/mailbox/platform_mhu.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 93, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_platform_mhu_driver_exit, ptr @__initcall__kmod_platform_mhu__187_180_platform_mhu_driver_init6, ptr @platform_mhu_driver_exit, ptr @platform_mhu_probe._entry, ptr @platform_mhu_probe._entry.12, ptr @platform_mhu_probe._entry.6, ptr @platform_mhu_probe._entry.9, ptr @platform_mhu_probe._entry_ptr, ptr @platform_mhu_probe._entry_ptr.11, ptr @platform_mhu_probe._entry_ptr.15, ptr @platform_mhu_probe._entry_ptr.8, ptr @platform_mhu_startup._entry, ptr @platform_mhu_startup._entry_ptr, ptr @platform_mhu_driver, ptr @.str, ptr @platform_mhu_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @platform_mhu_ops, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_mhu_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_mhu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @platform_mhu_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @platform_mhu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @platform_mhu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_mhu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 752, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 0
  %con_priv = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 2, i32 0, i32 9
  %1 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %con_priv, align 4
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call10, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp16 = icmp slt i32 %call10, 0
  br i1 %cmp16, label %for.body.preheader.do.end20_crit_edge, label %if.end24

for.body.preheader.do.end20_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

do.end20:                                         ; preds = %if.end24.1.do.end20_crit_edge, %if.end24.do.end20_crit_edge, %for.body.preheader.do.end20_crit_edge
  %i.0105.lcssa = phi i32 [ 0, %for.body.preheader.do.end20_crit_edge ], [ 1, %if.end24.do.end20_crit_edge ], [ 2, %if.end24.1.do.end20_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.end20_crit_edge ], [ %arrayidx.1, %if.end24.do.end20_crit_edge ], [ %arrayidx.2, %if.end24.1.do.end20_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %i.0105.lcssa) #9
  %6 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.lcssa, align 4
  br label %cleanup

if.end24:                                         ; preds = %for.body.preheader
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  %rx_reg = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %rx_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rx_reg, align 4
  %add.ptr32 = getelementptr i8, ptr %9, i32 36
  %tx_reg = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %tx_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr32, ptr %tx_reg, align 4
  %arrayidx.1 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 1
  %con_priv.1 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 2, i32 1, i32 9
  %12 = ptrtoint ptr %con_priv.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.1, ptr %con_priv.1, align 4
  %call10.1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call10.1, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp16.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp16.1, label %if.end24.do.end20_crit_edge, label %if.end24.1

if.end24.do.end20_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end24.1:                                       ; preds = %if.end24
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %add.ptr.1 = getelementptr i8, ptr %15, i32 12
  %rx_reg.1 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %rx_reg.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.1, ptr %rx_reg.1, align 4
  %add.ptr32.1 = getelementptr i8, ptr %15, i32 48
  %tx_reg.1 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %tx_reg.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr32.1, ptr %tx_reg.1, align 4
  %arrayidx.2 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 2
  %con_priv.2 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 2, i32 2, i32 9
  %18 = ptrtoint ptr %con_priv.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.2, ptr %con_priv.2, align 4
  %call10.2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 2) #6
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call10.2, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp16.2 = icmp slt i32 %call10.2, 0
  br i1 %cmp16.2, label %if.end24.1.do.end20_crit_edge, label %if.end24.2

if.end24.1.do.end20_crit_edge:                    ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end24.2:                                       ; preds = %if.end24.1
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  %add.ptr.2 = getelementptr i8, ptr %21, i32 24
  %rx_reg.2 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 2, i32 2
  %22 = ptrtoint ptr %rx_reg.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.2, ptr %rx_reg.2, align 4
  %add.ptr32.2 = getelementptr i8, ptr %21, i32 60
  %tx_reg.2 = getelementptr %struct.platform_mhu, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %tx_reg.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr32.2, ptr %tx_reg.2, align 4
  %mbox = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %mbox, align 8
  %chan36 = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 2
  %chans = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %chan36, ptr %chans, align 8
  %num_chans = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %num_chans, align 4
  %ops = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @platform_mhu_ops, ptr %ops, align 4
  %txdone_irq = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.platform_mhu, ptr %call.i, i32 0, i32 3, i32 6
  %30 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %txpoll_period, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call45 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef %mbox) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end54, label %do.end50

do.end50:                                         ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call45) #9
  br label %cleanup

do.end54:                                         ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end50, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %7, %do.end20 ], [ %call45, %do.end50 ], [ 0, %do.end54 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_mhu_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %tx_reg = getelementptr inbounds %struct.platform_mhu_link, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #6, !srcloc !57
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_mhu_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tx_reg = getelementptr inbounds %struct.platform_mhu_link, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !58
  %5 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_reg, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %4) #6, !srcloc !57
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @platform_mhu_rx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17, i32 noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @platform_mhu_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %chan) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @platform_mhu_last_tx_done(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tx_reg = getelementptr inbounds %struct.platform_mhu_link, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @platform_mhu_rx_interrupt(i32 noundef %irq, ptr noundef %p) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %rx_reg = getelementptr inbounds %struct.platform_mhu_link, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rx_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_reg, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !58
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @mbox_chan_received_data(ptr noundef %p, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %rx_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_reg, align 4
  %add.ptr2 = getelementptr i8, ptr %11, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #6, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_platform_mhu__187_180_platform_mhu_driver_init6, !1, !"__initcall__kmod_platform_mhu__187_180_platform_mhu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/platform_mhu.c", i32 180, i32 1}
!2 = !{ptr @__exitcall_platform_mhu_driver_exit, !1, !"__exitcall_platform_mhu_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/platform_mhu.c", i32 182, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias190, !7, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/platform_mhu.c", i32 183, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/platform_mhu.c", i32 184, i32 1}
!10 = !{ptr @__UNIQUE_ID_author192, !11, !"__UNIQUE_ID_author192", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/platform_mhu.c", i32 185, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/platform_mhu.c", i32 175, i32 11}
!14 = !{ptr @platform_mhu_driver, !15, !"platform_mhu_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/platform_mhu.c", i32 172, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/platform_mhu.c", i32 131, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @platform_mhu_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @platform_mhu_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/platform_mhu.c", i32 139, i32 4}
!26 = !{ptr @platform_mhu_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @platform_mhu_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/platform_mhu.c", i32 158, i32 3}
!30 = !{ptr @platform_mhu_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @platform_mhu_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/platform_mhu.c", i32 162, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @platform_mhu_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @platform_mhu_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @platform_mhu_ops, !38, !"platform_mhu_ops", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/platform_mhu.c", i32 108, i32 35}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/platform_mhu.c", i32 91, i32 19}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/platform_mhu.c", i32 93, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @platform_mhu_startup._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @platform_mhu_startup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @platform_mhu_dt_ids, !47, !"platform_mhu_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/mailbox/platform_mhu.c", i32 166, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4200598}
!58 = !{i64 4201016}
