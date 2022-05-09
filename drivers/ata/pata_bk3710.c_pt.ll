; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_bk3710.c_pt.bc'
source_filename = "../drivers/ata/pata_bk3710.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pata_bk3710_udmatiming = type { i32, i32 }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.83, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.83 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__UNIQUE_ID_alias289 = internal constant [39 x i8] c"pata_bk3710.alias=platform:palm_bk3710\00", section ".modinfo", align 1
@__initcall__kmod_pata_bk3710__290_379_pata_bk3710_init6 = internal global ptr @pata_bk3710_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"pata_bk3710.file=drivers/ata/pata_bk3710\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"pata_bk3710.license=GPL v2\00", section ".modinfo", align 1
@pata_bk3710_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"palm_bk3710\00", [20 x i8] zeroinitializer }, align 32
@ideclk_period = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pata_bk3710_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pata_bk3710: failed to get IRQ resource\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pata_bk3710_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_bk3710.c\00", [38 x i8] zeroinitializer }, align 32
@pata_bk3710_probe._entry_ptr = internal global ptr @pata_bk3710_probe._entry, section ".printk_index", align 4
@pata_bk3710_ports_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_80wire, ptr null, ptr @pata_bk3710_set_piomode, ptr @pata_bk3710_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd 0x%lx ctl 0x%lx\00", [44 x i8] zeroinitializer }, align 32
@pata_bk3710_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.5, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pata_bk3710_udmatimings = internal constant { [6 x %struct.pata_bk3710_udmatiming], [48 x i8] } { [6 x %struct.pata_bk3710_udmatiming] [%struct.pata_bk3710_udmatiming { i32 160, i32 120 }, %struct.pata_bk3710_udmatiming { i32 125, i32 80 }, %struct.pata_bk3710_udmatiming { i32 100, i32 60 }, %struct.pata_bk3710_udmatiming { i32 100, i32 45 }, %struct.pata_bk3710_udmatiming { i32 100, i32 30 }, %struct.pata_bk3710_udmatiming { i32 85, i32 20 }], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_bk3710\00", [20 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"pata_bk3710_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 368, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 370, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"ideclk_period\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 50, i32 21 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 317, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"pata_bk3710_ports_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 283, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 356, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"pata_bk3710_sht\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 46, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"pata_bk3710_udmatimings\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 58, i32 44 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [29 x i8] c"../drivers/ata/pata_bk3710.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 47, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__initcall__kmod_pata_bk3710__290_379_pata_bk3710_init6, ptr @pata_bk3710_probe._entry, ptr @pata_bk3710_probe._entry_ptr, ptr @pata_bk3710_driver, ptr @.str, ptr @ideclk_period, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pata_bk3710_ports_ops, ptr @.str.4, ptr @pata_bk3710_sht, ptr @pata_bk3710_udmatimings, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_bk3710_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ideclk_period to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_bk3710_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_bk3710_ports_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_bk3710_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_bk3710_udmatimings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_bk3710_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @pata_bk3710_driver, ptr noundef nonnull @pata_bk3710_probe, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_bk3710_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @clk_enable(ptr noundef %call) #5
  %call3 = tail call i32 @clk_get_rate(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %div = udiv i32 1000000000, %call3
  store i32 %div, ptr @ideclk_period, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #5
  %cmp.i110 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %add.ptr.i = getelementptr i8, ptr %call12, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 128) #5, !srcloc !39
  %add.ptr1.i = getelementptr i8, ptr %call12, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 0) #5, !srcloc !39
  %add.ptr2.i = getelementptr i8, ptr %call12, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #5, !srcloc !41
  %add.ptr3.i = getelementptr i8, ptr %call12, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #5, !srcloc !41
  %add.ptr4.i = getelementptr i8, ptr %call12, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 3584) #5, !srcloc !39
  tail call fastcc void @pata_bk3710_setpiomode(ptr noundef %call12, ptr noundef null, i32 noundef 0, i32 noundef 600, i32 noundef 0) #5
  tail call fastcc void @pata_bk3710_setpiomode(ptr noundef %call12, ptr noundef null, i32 noundef 1, i32 noundef 600, i32 noundef 0) #5
  %call18 = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %ports = getelementptr inbounds %struct.ata_host, ptr %call18, i32 0, i32 12
  %1 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ports, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pata_bk3710_ports_ops, ptr %ops, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 15
  %4 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 31, ptr %pio_mask, align 16
  %mwdma_mask = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 16
  %5 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %mwdma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %call3)
  %cmp22 = icmp ult i32 %call3, 100000000
  %cond = select i1 %cmp22, i32 31, i32 63
  %udma_mask = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 17
  %6 = ptrtoint ptr %udma_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %udma_mask, align 8
  %flags = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %flags, align 4
  %add.ptr = getelementptr i8, ptr %call12, i32 496
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %data_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %data_addr, align 4
  %add.ptr24 = getelementptr i8, ptr %call12, i32 497
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %error_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr24, ptr %error_addr, align 8
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %feature_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr24, ptr %feature_addr, align 4
  %add.ptr30 = getelementptr i8, ptr %call12, i32 498
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 4
  %12 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr30, ptr %nsect_addr, align 16
  %add.ptr33 = getelementptr i8, ptr %call12, i32 499
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 5
  %13 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr33, ptr %lbal_addr, align 4
  %add.ptr36 = getelementptr i8, ptr %call12, i32 500
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr36, ptr %lbam_addr, align 8
  %add.ptr39 = getelementptr i8, ptr %call12, i32 501
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr39, ptr %lbah_addr, align 4
  %add.ptr42 = getelementptr i8, ptr %call12, i32 502
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 8
  %16 = ptrtoint ptr %device_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr42, ptr %device_addr, align 32
  %add.ptr45 = getelementptr i8, ptr %call12, i32 503
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 9
  %17 = ptrtoint ptr %status_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr45, ptr %status_addr, align 4
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 10
  %18 = ptrtoint ptr %command_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr45, ptr %command_addr, align 8
  %add.ptr50 = getelementptr i8, ptr %call12, i32 1014
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 11
  %19 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr50, ptr %altstatus_addr, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 12
  %20 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr50, ptr %ctl_addr, align 16
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 13
  %21 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call12, ptr %bmdma_addr, align 4
  %22 = ptrtoint ptr %call12 to i32
  %add = add i32 %22, 496
  %add55 = add i32 %22, 1014
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %add, i32 noundef %add55) #5
  %call56 = tail call i32 @ata_host_activate(ptr noundef nonnull %call18, i32 noundef %call7, ptr noundef nonnull @ata_sff_interrupt, i32 noundef 0, ptr noundef nonnull @pata_bk3710_sht) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %if.then14, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %0, %if.then14 ], [ %call56, %if.end21 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pata_bk3710_setpiomode(ptr noundef %base, ptr noundef readonly %pair, i32 noundef %dev, i32 noundef %cycletime, i32 noundef %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %mode to i8
  %conv = add i8 %0, 8
  %call = tail call ptr @ata_timing_find_mode(i8 noundef zeroext %conv) #5
  %1 = load i32, ptr @ideclk_period, align 4
  %add1 = add i32 %1, -1
  %sub = add i32 %add1, %cycletime
  %div = udiv i32 %sub, %1
  %active = getelementptr inbounds %struct.ata_timing, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active, align 2
  %conv3 = zext i16 %3 to i32
  %sub5 = add i32 %add1, %conv3
  %div6 = udiv i32 %sub5, %1
  %4 = xor i32 %div6, -1
  %sub11 = add i32 %div, %4
  %dec = add i32 %div6, 255
  %add.ptr = getelementptr i8, ptr %base, i32 92
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !42
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %tobool.not = icmp eq i32 %dev, 0
  %shl = select i1 %tobool.not, i32 65280, i32 255
  %and = and i32 %6, %shl
  %conv14 = and i32 %dec, 255
  %cond16 = select i1 %tobool.not, i32 0, i32 8
  %shl17 = shl nuw nsw i32 %conv14, %cond16
  %or = or i32 %and, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #5, !srcloc !41
  %add.ptr19 = getelementptr i8, ptr %base, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !42
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and24 = and i32 %9, %shl
  %conv25 = and i32 %sub11, 255
  %shl28 = shl nuw nsw i32 %conv25, %cond16
  %or29 = or i32 %and24, %shl28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %or29) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #5, !srcloc !41
  %cyc8b = getelementptr inbounds %struct.ata_timing, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %cyc8b to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cyc8b, align 2
  %conv40 = zext i16 %12 to i32
  %13 = load i32, ptr @ideclk_period, align 4
  %add41 = add i32 %13, -1
  %sub42 = add i32 %add41, %conv40
  %div43 = udiv i32 %sub42, %13
  %act8b = getelementptr inbounds %struct.ata_timing, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %act8b to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %act8b, align 2
  %conv45 = zext i16 %15 to i32
  %sub47 = add i32 %add41, %conv45
  %div48 = udiv i32 %sub47, %13
  %16 = xor i32 %div48, -1
  %sub53 = add i32 %div43, %16
  %dec55 = add i32 %div48, 255
  %add.ptr56 = getelementptr i8, ptr %base, i32 84
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #5, !srcloc !42
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and61 = and i32 %18, %shl
  %conv62 = and i32 %dec55, 255
  %shl65 = shl nuw nsw i32 %conv62, %cond16
  %or66 = or i32 %and61, %shl65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or66) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %19) #5, !srcloc !41
  %add.ptr68 = getelementptr i8, ptr %base, i32 88
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #5, !srcloc !42
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and73 = and i32 %21, %shl
  %conv74 = and i32 %sub53, 255
  %shl77 = shl nuw nsw i32 %conv74, %cond16
  %or78 = or i32 %and73, %shl77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or78) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %22) #5, !srcloc !41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_timing_find_mode(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_80wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_bk3710_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmdma_addr, align 4
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #5
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %2 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pio_mode, align 16
  %call1 = tail call ptr @ata_timing_find_mode(i8 noundef zeroext %3) #5
  %4 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %5 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devno, align 4
  %7 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pio_mode, align 16
  %sub = add i8 %8, -8
  %arrayidx = getelementptr i16, ptr %4, i32 53
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = and i16 %10, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %entry.if.then23_crit_edge, label %if.then

entry.if.then23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then:                                          ; preds = %entry
  %arrayidx5 = getelementptr i16, ptr %4, i32 49
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  %14 = and i16 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  %arrayidx10 = getelementptr %struct.ata_device, ptr %adev, i32 0, i32 25, i32 0, i32 34
  %arrayidx12 = getelementptr i16, ptr %4, i32 67
  %cycle_time.0.in.in = select i1 %tobool8.not, ptr %arrayidx12, ptr %arrayidx10
  %15 = ptrtoint ptr %cycle_time.0.in.in to i32
  call void @__asan_load2_noabort(i32 %15)
  %cycle_time.0.in = load i16, ptr %cycle_time.0.in.in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %sub)
  %cmp = icmp ult i8 %sub, 3
  br i1 %cmp, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %cycle = getelementptr inbounds %struct.ata_timing, ptr %call1, i32 0, i32 8
  %16 = ptrtoint ptr %cycle to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cycle, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %cycle_time.0.in, i16 %17)
  %cmp17 = icmp ult i16 %cycle_time.0.in, %17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cycle_time.0.in)
  %tobool22.not = icmp eq i16 %cycle_time.0.in, 0
  %or.cond = or i1 %tobool22.not, %cmp17
  br i1 %or.cond, label %land.lhs.true.if.then23_crit_edge, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.end21:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cycle_time.0.in)
  %tobool22.not.old = icmp eq i16 %cycle_time.0.in, 0
  br i1 %tobool22.not.old, label %if.end21.if.then23_crit_edge, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end21.if.then23_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %if.end21.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge, %entry.if.then23_crit_edge
  %cycle24 = getelementptr inbounds %struct.ata_timing, ptr %call1, i32 0, i32 8
  %18 = ptrtoint ptr %cycle24 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cycle24, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge
  %cycle_time.2.in = phi i16 [ %cycle_time.0.in, %if.end21.if.end26_crit_edge ], [ %19, %if.then23 ], [ %cycle_time.0.in, %land.lhs.true.if.end26_crit_edge ]
  %cycle_time.2 = zext i16 %cycle_time.2.in to i32
  %conv27 = zext i8 %sub to i32
  tail call fastcc void @pata_bk3710_setpiomode(ptr noundef %1, ptr noundef %call, i32 noundef %6, i32 noundef %cycle_time.2, i32 noundef %conv27)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_bk3710_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmdma_addr, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devno, align 4
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %5)
  %cmp = icmp ugt i8 %5, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -64
  %arrayidx.i = getelementptr [6 x %struct.pata_bk3710_udmatiming], ptr @pata_bk3710_udmatimings, i32 0, i32 %sub
  %cycletime.i = getelementptr [6 x %struct.pata_bk3710_udmatiming], ptr @pata_bk3710_udmatimings, i32 0, i32 %sub, i32 1
  %6 = ptrtoint ptr %cycletime.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cycletime.i, align 4
  %8 = load i32, ptr @ideclk_period, align 4
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %7
  %div.i = udiv i32 %sub.i, %8
  %conv.i = add i32 %div.i, 255
  %sub3.i = add i32 %8, 19
  %div4.i = udiv i32 %sub3.i, %8
  %conv6.i = add i32 %div4.i, 255
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %sub9.i = add i32 %10, %add.i
  %div10.i = udiv i32 %sub9.i, %8
  %conv12.i = add i32 %div10.i, 255
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !42
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %shl.i = select i1 %tobool.not.i, i32 65280, i32 255
  %and.i = and i32 %12, %shl.i
  %conv13.i = and i32 %conv.i, 255
  %cond15.i = select i1 %tobool.not.i, i32 0, i32 8
  %shl16.i = shl nuw nsw i32 %conv13.i, %cond15.i
  %or.i = or i32 %and.i, %shl16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !41
  %add.ptr18.i = getelementptr i8, ptr %1, i32 112
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !42
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and23.i = and i32 %15, %shl.i
  %conv24.i = and i32 %conv12.i, 255
  %shl27.i = shl nuw nsw i32 %conv24.i, %cond15.i
  %or28.i = or i32 %and23.i, %shl27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or28.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %16) #5, !srcloc !41
  %add.ptr30.i = getelementptr i8, ptr %1, i32 116
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #5, !srcloc !42
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and35.i = and i32 %18, %shl.i
  %conv36.i = and i32 %conv6.i, 255
  %shl39.i = shl nuw nsw i32 %conv36.i, %cond15.i
  %or40.i = or i32 %and35.i, %shl39.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %19) #5, !srcloc !41
  %add.ptr42.i = getelementptr i8, ptr %1, i32 72
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr42.i) #5, !srcloc !44
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %shl45.i = shl nuw i32 1, %3
  %22 = trunc i32 %shl45.i to i16
  %conv47.i = or i16 %21, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv47.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42.i, i16 %23) #5, !srcloc !39
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %24 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  %arrayidx = getelementptr [256 x i16], ptr %24, i32 0, i32 65
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %call.i = tail call ptr @ata_timing_find_mode(i8 noundef zeroext %5) #5
  %cycle.i = getelementptr inbounds %struct.ata_timing, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %cycle.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cycle.i, align 2
  %29 = tail call i16 @llvm.umax.i16(i16 %28, i16 %26) #5
  %cond.i = zext i16 %29 to i32
  %30 = load i32, ptr @ideclk_period, align 4
  %add.i10 = add i32 %30, -1
  %sub.i11 = add i32 %add.i10, %cond.i
  %div.i12 = udiv i32 %sub.i11, %30
  %active.i = getelementptr inbounds %struct.ata_timing, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %active.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %active.i, align 2
  %conv5.i = zext i16 %32 to i32
  %sub7.i = add i32 %add.i10, %conv5.i
  %div8.i = udiv i32 %sub7.i, %30
  %33 = xor i32 %div8.i, -1
  %sub13.i = add i32 %div.i12, %33
  %dec.i = add i32 %div8.i, 255
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 100
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #5, !srcloc !42
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i14 = icmp eq i32 %3, 0
  %shl.i15 = select i1 %tobool.not.i14, i32 65280, i32 255
  %and.i16 = and i32 %35, %shl.i15
  %conv17.i = and i32 %dec.i, 255
  %cond19.i = select i1 %tobool.not.i14, i32 0, i32 8
  %shl20.i = shl nuw nsw i32 %conv17.i, %cond19.i
  %or.i17 = or i32 %and.i16, %shl20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %36) #5, !srcloc !41
  %add.ptr22.i = getelementptr i8, ptr %1, i32 104
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #5, !srcloc !42
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and27.i = and i32 %38, %shl.i15
  %conv28.i = and i32 %sub13.i, 255
  %shl31.i = shl nuw nsw i32 %conv28.i, %cond19.i
  %or32.i = or i32 %and27.i, %shl31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %or32.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %39) #5, !srcloc !41
  %add.ptr34.i = getelementptr i8, ptr %1, i32 72
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr34.i) #5, !srcloc !44
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %shl37.i = shl nuw i32 1, %3
  %42 = trunc i32 %shl37.i to i16
  %43 = xor i16 %42, -1
  %conv39.i = and i16 %41, %43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv39.i) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i, i16 %44) #5, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_alias289, !1, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_bk3710.c", i32 366, i32 1}
!2 = !{ptr @__initcall__kmod_pata_bk3710__290_379_pata_bk3710_init6, !3, !"__initcall__kmod_pata_bk3710__290_379_pata_bk3710_init6", i1 false, i1 false}
!3 = !{!"../drivers/ata/pata_bk3710.c", i32 379, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/ata/pata_bk3710.c", i32 380, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_bk3710.c", i32 370, i32 11}
!9 = !{ptr @pata_bk3710_driver, !10, !"pata_bk3710_driver", i1 false, i1 false}
!10 = !{!"../drivers/ata/pata_bk3710.c", i32 368, i32 31}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/ata/pata_bk3710.c", i32 317, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pata_bk3710_probe._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @pata_bk3710_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ata/pata_bk3710.c", i32 356, i32 20}
!19 = !{ptr @ideclk_period, !20, !"ideclk_period", i1 false, i1 false}
!20 = !{!"../drivers/ata/pata_bk3710.c", i32 50, i32 21}
!21 = !{ptr @pata_bk3710_ports_ops, !22, !"pata_bk3710_ports_ops", i1 false, i1 false}
!22 = !{!"../drivers/ata/pata_bk3710.c", i32 283, i32 35}
!23 = !{ptr @pata_bk3710_udmatimings, !24, !"pata_bk3710_udmatimings", i1 false, i1 false}
!24 = !{!"../drivers/ata/pata_bk3710.c", i32 58, i32 44}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ata/pata_bk3710.c", i32 47, i32 2}
!27 = !{ptr @pata_bk3710_sht, !28, !"pata_bk3710_sht", i1 false, i1 false}
!28 = !{!"../drivers/ata/pata_bk3710.c", i32 46, i32 34}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2151919062}
!39 = !{i64 4376870}
!40 = !{i64 2151919612}
!41 = !{i64 4377490}
!42 = !{i64 4377908}
!43 = !{i64 2151918257}
!44 = !{i64 4377070}
!45 = !{i64 2151917645}
