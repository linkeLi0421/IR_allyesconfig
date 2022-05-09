; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-npcm-pspi.c_pt.bc'
source_filename = "../drivers/spi/spi-npcm-pspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.npcm_pspi = type { %struct.completion, ptr, ptr, i32, i32, ptr, i8, i8, ptr, ptr, i32, ptr, i16, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_npcm_pspi__238_458_npcm_pspi_driver_init6 = internal global ptr @npcm_pspi_driver_init, section ".initcall6.init", align 4
@npcm_pspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @npcm_pspi_probe, ptr @npcm_pspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @npcm_pspi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_npcm_pspi_driver_exit = internal global ptr @npcm_pspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"spi_npcm_pspi.description=NPCM peripheral SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [61 x i8] c"spi_npcm_pspi.author=Tomer Maimon <tomer.maimon@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [45 x i8] c"spi_npcm_pspi.file=drivers/spi/spi-npcm-pspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"spi_npcm_pspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"npcm-pspi\00", [22 x i8] zeroinitializer }, align 32
@npcm_pspi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npcm750-pspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@npcm_pspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"npcm_pspi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-npcm-pspi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@npcm_pspi_probe._entry_ptr = internal global ptr @npcm_pspi_probe._entry, section ".printk_index", align 4
@npcm_pspi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@npcm_pspi_probe._entry_ptr.8 = internal global ptr @npcm_pspi_probe._entry.6, section ".printk_index", align 4
@npcm_pspi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016NPCM Peripheral SPI %d probed\0A\00", [63 x i8] zeroinitializer }, align 32
@npcm_pspi_probe._entry_ptr.11 = internal global ptr @npcm_pspi_probe._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@npcm_pspi_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@npcm_pspi_recv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.npcm_pspi_transfer_one = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 256, i16 128, i16 384], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"npcm_pspi_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 450, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 452, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"npcm_pspi_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 444, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 366, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 393, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private constant [31 x i8] c"../drivers/spi/spi-npcm-pspi.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 421, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 87, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [36 x i8] c"switch.table.npcm_pspi_transfer_one\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_npcm_pspi_driver_exit, ptr @__initcall__kmod_spi_npcm_pspi__238_458_npcm_pspi_driver_init6, ptr @npcm_pspi_driver_exit, ptr @npcm_pspi_probe._entry, ptr @npcm_pspi_probe._entry.6, ptr @npcm_pspi_probe._entry.9, ptr @npcm_pspi_probe._entry_ptr, ptr @npcm_pspi_probe._entry_ptr.11, ptr @npcm_pspi_probe._entry_ptr.8, ptr @npcm_pspi_driver, ptr @.str, ptr @npcm_pspi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @init_completion.__key, ptr @.str.12, ptr @switch.table.npcm_pspi_transfer_one], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_pspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_pspi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_pspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_pspi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npcm_pspi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.npcm_pspi_transfer_one to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @npcm_pspi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @npcm_pspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @npcm_pspi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 104, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i118 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i118, align 4
  %master2 = getelementptr inbounds %struct.npcm_pspi, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %master2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %master2, align 4
  %is_save_param = getelementptr inbounds %struct.npcm_pspi, ptr %2, i32 0, i32 6
  %4 = ptrtoint ptr %is_save_param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_save_param, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.npcm_pspi, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.npcm_pspi, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %clk, align 4
  %cmp.i119 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %spi_controller_put.exit

if.end18:                                         ; preds = %if.end9
  %call.i120 = tail call i32 @clk_prepare(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.spi_controller_put.exit_crit_edge

if.end18.spi_controller_put.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call11) #5
  br label %spi_controller_put.exit

if.end23:                                         ; preds = %if.end.i
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.out_disable_clk_crit_edge, label %if.end26

if.end23.out_disable_clk_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_clk

if.end26:                                         ; preds = %if.end23
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %reset = getelementptr inbounds %struct.npcm_pspi, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i121 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i.i to i32
  br label %out_disable_clk

if.end34:                                         ; preds = %if.end26
  %call.i122 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #5
  %14 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reset, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %15) #5
  %call.i123 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @npcm_pspi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool37.not = icmp eq i32 %call.i123, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %out_disable_clk

if.end43:                                         ; preds = %if.end34
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %2, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #5
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %call45 = tail call i32 @clk_get_rate(ptr noundef %18) #5
  %sub = add i32 %call45, 3
  %div116 = lshr i32 %sub, 2
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div116, ptr %max_speed_hz, align 8
  %sub47 = add i32 %call45, 255
  %div48117 = lshr i32 %sub47, 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div48117, ptr %min_speed_hz, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %mode_bits, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node51 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %24 = ptrtoint ptr %of_node51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node51, align 8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %bus_num, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32896, ptr %bits_per_word_mask, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %27 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @npcm_pspi_transfer_one, ptr %transfer_one, align 4
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %28 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @npcm_pspi_prepare_transfer_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %29 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @npcm_pspi_unprepare_transfer_hardware, ptr %unprepare_transfer_hardware, align 8
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %30 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  %call.i124 = tail call i32 @clk_get_rate(ptr noundef %32) #5
  %add.i = add i32 %call.i124, 25000000
  %div1.i = udiv i32 %add.i, 50000000
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 2
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %36 = and i16 %35, -255
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  %div1.tr.i = trunc i32 %div1.i to i16
  %38 = shl nuw i16 %div1.tr.i, 9
  %39 = add i16 %38, -512
  %conv5.i = or i16 %39, %37
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %41, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv5.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %42) #5, !srcloc !51
  %call53 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end59, label %if.end43.out_disable_clk_crit_edge

if.end43.out_disable_clk_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_clk

do.end59:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %bus_num, align 8
  %conv = sext i16 %44 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv) #8
  br label %cleanup

out_disable_clk:                                  ; preds = %if.end43.out_disable_clk_crit_edge, %do.end41, %if.then31, %if.end23.out_disable_clk_crit_edge
  %ret.0 = phi i32 [ %12, %if.then31 ], [ %call.i123, %do.end41 ], [ %call53, %if.end43.out_disable_clk_crit_edge ], [ %call24, %if.end23.out_disable_clk_crit_edge ]
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %46) #5
  tail call void @clk_unprepare(ptr noundef %46) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_disable_clk, %if.then3.i, %if.end18.spi_controller_put.exit_crit_edge, %do.end, %if.then6
  %ret.1 = phi i32 [ %6, %if.then6 ], [ %10, %do.end ], [ %ret.0, %out_disable_clk ], [ %call1.i, %if.then3.i ], [ %call.i120, %if.end18.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ 0, %do.end59 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %reset.i = getelementptr inbounds %struct.npcm_pspi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #5
  %7 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset.i, align 4
  %call2.i = tail call i32 @reset_control_deassert(ptr noundef %8) #5
  %clk = getelementptr inbounds %struct.npcm_pspi, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #5
  tail call void @clk_unprepare(ptr noundef %10) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %tx_buf = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 8
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 11
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %entry
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.if.end13_crit_edge, label %if.then6

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.then4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %tx_bytes = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then11, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 2
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %15 = and i16 %14, -257
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %15) #5, !srcloc !51
  tail call void @complete(ptr noundef %dev_id) #5
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.then4.if.end13_crit_edge
  %and15 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then18, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %if.end13
  %tx_bytes19 = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 3
  %18 = ptrtoint ptr %tx_bytes19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_bytes19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %if.then21

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.then18
  %bits_per_word.i = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 7
  %20 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bits_per_word.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp.i.i = icmp ult i8 %21, 9
  %cond.i.i = select i1 %cmp.i.i, i32 1, i32 2
  %22 = tail call i32 @llvm.umin.i32(i32 %cond.i.i, i32 %19) #5
  %sub.i = sub i32 %19, %22
  %23 = ptrtoint ptr %tx_bytes19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %tx_bytes19, align 4
  %24 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_buf, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then21.if.end24_crit_edge, label %if.end.i

if.then21.if.end24_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end.i:                                         ; preds = %if.then21
  %26 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %land.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i = getelementptr i8, ptr %25, i32 1
  %27 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %incdec.ptr.i, ptr %tx_buf, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %25, align 1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %29) #5, !srcloc !55
  br label %if.end24

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr8.i = getelementptr i8, ptr %25, i32 1
  %32 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %incdec.ptr8.i, ptr %tx_buf, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %25, align 1
  %incdec.ptr11.i = getelementptr i8, ptr %25, i32 2
  store ptr %incdec.ptr11.i, ptr %tx_buf, align 4
  %35 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr8.i, align 1
  %conv12.i = zext i8 %36 to i16
  %conv13.i = zext i8 %34 to i16
  %shl.i = shl nuw i16 %conv13.i, 8
  %or.i = or i16 %shl.i, %conv12.i
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %39 = tail call i16 @llvm.bswap.i16(i16 %or.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %39) #5, !srcloc !51
  br label %if.end24

land.end.i:                                       ; preds = %if.end.i
  %.b71.i = load i1, ptr @npcm_pspi_send.__already_done, align 1
  br i1 %.b71.i, label %land.end.i.if.end24_crit_edge, label %if.then23.i, !prof !56

land.end.i.if.end24_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @npcm_pspi_send.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 217, i32 noundef 9, ptr noundef null) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23.i, %land.end.i.if.end24_crit_edge, %sw.bb6.i, %sw.bb.i, %if.then21.if.end24_crit_edge, %if.then18.if.end24_crit_edge, %if.end13.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %rx_buf25 = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 11
  %40 = ptrtoint ptr %rx_buf25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_buf25, align 4
  %tobool26.not = icmp eq ptr %41, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.then27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.end24
  %conv28 = zext i8 %2 to i32
  %and29 = and i32 %conv28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then27.if.end40_crit_edge, label %if.then31

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then31:                                        ; preds = %if.then27
  %rx_bytes = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 4
  %42 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool32.not = icmp eq i32 %43, 0
  br i1 %tobool32.not, label %if.then31.cleanup_crit_edge, label %if.end.i80

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i80:                                       ; preds = %if.then31
  %bits_per_word.i75 = getelementptr inbounds %struct.npcm_pspi, ptr %dev_id, i32 0, i32 7
  %44 = ptrtoint ptr %bits_per_word.i75 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bits_per_word.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %45)
  %cmp.i.i76 = icmp ult i8 %45, 9
  %cond.i.i77 = select i1 %cmp.i.i76, i32 1, i32 2
  %46 = tail call i32 @llvm.umin.i32(i32 %cond.i.i77, i32 %43) #5
  %sub.i78 = sub i32 %43, %46
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i78, ptr %rx_bytes, align 4
  %48 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %46, label %land.end.i84 [
    i32 1, label %sw.bb.i83
    i32 2, label %sw.bb5.i
  ]

sw.bb.i83:                                        ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %52 = ptrtoint ptr %rx_buf25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_buf25, align 4
  %incdec.ptr.i82 = getelementptr i8, ptr %53, i32 1
  store ptr %incdec.ptr.i82, ptr %rx_buf25, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %51, ptr %53, align 1
  br label %npcm_pspi_recv.exitthread-pre-split

sw.bb5.i:                                         ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %56) #5, !srcloc !48
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %59 = lshr i16 %58, 8
  %conv10.i = trunc i16 %59 to i8
  %60 = ptrtoint ptr %rx_buf25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf25, align 4
  %incdec.ptr12.i = getelementptr i8, ptr %61, i32 1
  store ptr %incdec.ptr12.i, ptr %rx_buf25, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv10.i, ptr %61, align 1
  %conv14.i = trunc i16 %58 to i8
  %63 = load ptr, ptr %rx_buf25, align 4
  %incdec.ptr16.i = getelementptr i8, ptr %63, i32 1
  store ptr %incdec.ptr16.i, ptr %rx_buf25, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv14.i, ptr %63, align 1
  br label %npcm_pspi_recv.exitthread-pre-split

land.end.i84:                                     ; preds = %if.end.i80
  %.b69.i = load i1, ptr @npcm_pspi_recv.__already_done, align 1
  br i1 %.b69.i, label %land.end.i84.npcm_pspi_recv.exit_crit_edge, label %if.then23.i85, !prof !56

land.end.i84.npcm_pspi_recv.exit_crit_edge:       ; preds = %land.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_pspi_recv.exit

if.then23.i85:                                    ; preds = %land.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @npcm_pspi_recv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 243, i32 noundef 9, ptr noundef null) #5
  br label %npcm_pspi_recv.exitthread-pre-split

npcm_pspi_recv.exitthread-pre-split:              ; preds = %if.then23.i85, %sw.bb5.i, %sw.bb.i83
  %65 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %rx_bytes, align 4
  br label %npcm_pspi_recv.exit

npcm_pspi_recv.exit:                              ; preds = %npcm_pspi_recv.exitthread-pre-split, %land.end.i84.npcm_pspi_recv.exit_crit_edge
  %66 = phi i32 [ %.pr, %npcm_pspi_recv.exitthread-pre-split ], [ %sub.i78, %land.end.i84.npcm_pspi_recv.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool36.not = icmp eq i32 %66, 0
  br i1 %tobool36.not, label %if.then37, label %npcm_pspi_recv.exit.if.end40_crit_edge

npcm_pspi_recv.exit.if.end40_crit_edge:           ; preds = %npcm_pspi_recv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then37:                                        ; preds = %npcm_pspi_recv.exit
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr.i87 = getelementptr i8, ptr %68, i32 2
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i87) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %70 = and i16 %69, -257
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr3.i88 = getelementptr i8, ptr %72, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i88, i16 %70) #5, !srcloc !51
  tail call void @complete(ptr noundef %dev_id) #5
  br label %cleanup

if.end40:                                         ; preds = %npcm_pspi_recv.exit.if.end40_crit_edge, %if.then27.if.end40_crit_edge
  %and42 = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true45:                                  ; preds = %if.end40
  %73 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tx_buf, align 4
  %tobool47.not = icmp eq ptr %74, null
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true45.cleanup_crit_edge

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 0) #5, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %land.lhs.true45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then37, %if.then31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then11, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %if.then37 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 1, %if.end40.cleanup_crit_edge ], [ 1, %land.lhs.true45.cleanup_crit_edge ], [ 1, %if.then48 ], [ 1, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  %tx_buf1.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %tx_buf1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf2.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %rx_buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %rx_buf2.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_bytes.i, align 4
  %15 = load i32, ptr %len.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rx_bytes.i, align 4
  %is_save_param.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_save_param.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %mode.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 12
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode.i, align 4
  %conv.i = zext i16 %20 to i32
  %mode4.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %21 = ptrtoint ptr %mode4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %22, %conv.i
  br i1 %cmp.not.i, label %lor.lhs.false.i.if.end.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %23 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %27 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i.i, align 8
  %and.i.i = and i32 %28, 3
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.npcm_pspi_transfer_one, i32 0, i32 %and.i.i
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %29)
  %switch.load = load i16, ptr %switch.gep, align 2
  %base.i.i = getelementptr inbounds %struct.npcm_pspi, ptr %26, i32 0, i32 5
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 2
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %33 = and i16 %32, 32766
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #5
  %or.i.i = or i16 %34, %switch.load
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %36, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %37 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 %37) #5, !srcloc !51
  %38 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode.i.i, align 8
  %conv7.i = trunc i32 %39 to i16
  %mode8.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 12
  %40 = ptrtoint ptr %mode8.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv7.i, ptr %mode8.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %bits_per_word.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 7
  %41 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits_per_word.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp10.i = icmp eq i8 %42, 8
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %bits_per_word15.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %45 = ptrtoint ptr %bits_per_word15.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %bits_per_word15.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %46 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_save_param.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool18.not.i = icmp eq i8 %47, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.then26.i_crit_edge, label %lor.lhs.false19.i

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26.i

lor.lhs.false19.i:                                ; preds = %if.end16.i
  %48 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bits_per_word.i, align 1
  %bits_per_word22.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %50 = ptrtoint ptr %bits_per_word22.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bits_per_word22.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp24.not.i = icmp eq i8 %49, %51
  br i1 %cmp24.not.i, label %lor.lhs.false19.i.if.end31.i_crit_edge, label %lor.lhs.false19.i.if.then26.i_crit_edge

lor.lhs.false19.i.if.then26.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26.i

lor.lhs.false19.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then26.i:                                      ; preds = %lor.lhs.false19.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge
  %bits_per_word27.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %52 = ptrtoint ptr %bits_per_word27.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bits_per_word27.i, align 1
  %base.i79.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 5
  %54 = ptrtoint ptr %base.i79.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i79.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %55, i32 2
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i80.i) #5, !srcloc !48
  %57 = tail call i16 @llvm.bswap.i16(i16 %56) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %58 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %53, label %if.then26.i.npcm_pspi_set_transfer_size.exit.i_crit_edge [
    i8 8, label %sw.bb.i.i
    i8 16, label %sw.bb2.i81.i
  ]

if.then26.i.npcm_pspi_set_transfer_size.exit.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_pspi_set_transfer_size.exit.i

sw.bb.i.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = and i16 %57, -5
  br label %npcm_pspi_set_transfer_size.exit.i

sw.bb2.i81.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = or i16 %57, 4
  br label %npcm_pspi_set_transfer_size.exit.i

npcm_pspi_set_transfer_size.exit.i:               ; preds = %sw.bb2.i81.i, %sw.bb.i.i, %if.then26.i.npcm_pspi_set_transfer_size.exit.i_crit_edge
  %regtemp.0.i.i = phi i16 [ %57, %if.then26.i.npcm_pspi_set_transfer_size.exit.i_crit_edge ], [ %60, %sw.bb2.i81.i ], [ %59, %sw.bb.i.i ]
  %61 = ptrtoint ptr %base.i79.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i79.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %62, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %63 = tail call i16 @llvm.bswap.i16(i16 %regtemp.0.i.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 %63) #5, !srcloc !51
  %64 = ptrtoint ptr %bits_per_word27.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bits_per_word27.i, align 1
  %66 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %bits_per_word.i, align 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %npcm_pspi_set_transfer_size.exit.i, %lor.lhs.false19.i.if.end31.i_crit_edge
  %67 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_save_param.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool33.not.i = icmp eq i8 %68, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.then38.i_crit_edge, label %lor.lhs.false34.i

if.end31.i.if.then38.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false34.i:                                ; preds = %if.end31.i
  %speed_hz.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 10
  %69 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed_hz.i, align 4
  %speed_hz35.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %71 = ptrtoint ptr %speed_hz35.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed_hz35.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp36.not.i = icmp eq i32 %70, %72
  br i1 %cmp36.not.i, label %lor.lhs.false34.i.if.end42.i_crit_edge, label %lor.lhs.false34.i.if.then38.i_crit_edge

lor.lhs.false34.i.if.then38.i_crit_edge:          ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false34.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then38.i:                                      ; preds = %lor.lhs.false34.i.if.then38.i_crit_edge, %if.end31.i.if.then38.i_crit_edge
  %speed_hz39.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %73 = ptrtoint ptr %speed_hz39.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %speed_hz39.i, align 4
  %clk.i.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 9
  %75 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %76) #5
  %mul.i.i = shl i32 %74, 1
  %div12.i.i = and i32 %74, 2147483647
  %add.i.i = add i32 %call.i.i, %div12.i.i
  %div1.i.i = udiv i32 %add.i.i, %mul.i.i
  %base.i82.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 5
  %77 = ptrtoint ptr %base.i82.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i82.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %78, i32 2
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i83.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %80 = and i16 %79, -255
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #5
  %div1.tr.i.i = trunc i32 %div1.i.i to i16
  %82 = shl i16 %div1.tr.i.i, 9
  %83 = add i16 %82, -512
  %conv5.i.i = or i16 %81, %83
  %84 = ptrtoint ptr %base.i82.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i82.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %85, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %86 = tail call i16 @llvm.bswap.i16(i16 %conv5.i.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 %86) #5, !srcloc !51
  %87 = ptrtoint ptr %speed_hz39.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %speed_hz39.i, align 4
  %speed_hz41.i = getelementptr inbounds %struct.npcm_pspi, ptr %5, i32 0, i32 10
  %89 = ptrtoint ptr %speed_hz41.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %speed_hz41.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %lor.lhs.false34.i.if.end42.i_crit_edge
  %90 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_save_param.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool44.not.i = icmp eq i8 %91, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end42.i.npcm_pspi_setup_transfer.exit_crit_edge

if.end42.i.npcm_pspi_setup_transfer.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %npcm_pspi_setup_transfer.exit

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %is_save_param.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %is_save_param.i, align 4
  br label %npcm_pspi_setup_transfer.exit

npcm_pspi_setup_transfer.exit:                    ; preds = %if.then45.i, %if.end42.i.npcm_pspi_setup_transfer.exit_crit_edge
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %1, align 4
  %base.i = getelementptr inbounds %struct.npcm_pspi, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 2
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %97 = or i16 %96, 256
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %99, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 %97) #5, !srcloc !51
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %1, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %npcm_pspi_setup_transfer.exit.cleanup_crit_edge

npcm_pspi_setup_transfer.exit.cleanup_crit_edge:  ; preds = %npcm_pspi_setup_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %npcm_pspi_setup_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %101, i32 2
  %102 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %103 = and i16 %102, -257
  %104 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i, align 4
  %add.ptr3.i10 = getelementptr i8, ptr %105, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i10, i16 %103) #5, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %if.then, %npcm_pspi_setup_transfer.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then ], [ 0, %npcm_pspi_setup_transfer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_prepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.npcm_pspi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = or i16 %4, 24576
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %5) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @npcm_pspi_unprepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.npcm_pspi, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = and i16 %4, -24577
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %5) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_spi_npcm_pspi__238_458_npcm_pspi_driver_init6, !1, !"__initcall__kmod_spi_npcm_pspi__238_458_npcm_pspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 458, i32 1}
!2 = !{ptr @__exitcall_npcm_pspi_driver_exit, !1, !"__exitcall_npcm_pspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 460, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 461, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 462, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 452, i32 12}
!12 = !{ptr @npcm_pspi_driver, !13, !"npcm_pspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 450, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 366, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @npcm_pspi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @npcm_pspi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 393, i32 3}
!24 = !{ptr @npcm_pspi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @npcm_pspi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 421, i32 2}
!28 = !{ptr @npcm_pspi_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @npcm_pspi_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 217, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 243, i32 3}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @npcm_pspi_match, !38, !"npcm_pspi_match", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-npcm-pspi.c", i32 444, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 4269114}
!49 = !{i64 2151809689}
!50 = !{i64 2151811106}
!51 = !{i64 4268914}
!52 = !{i64 4269732}
!53 = !{i64 2151809077}
!54 = !{i64 2151810682}
!55 = !{i64 4269337}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i8 0, i8 2}
