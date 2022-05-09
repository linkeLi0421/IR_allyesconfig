; ModuleID = '/llk/IR_all_yes/drivers/net/can/m_can/m_can_platform.c_pt.bc'
source_filename = "../drivers/net/can/m_can/m_can_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.m_can_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.m_can_plat_priv = type { %struct.m_can_classdev, ptr, ptr }
%struct.m_can_classdev = type { %struct.can_priv, %struct.can_rx_offload, %struct.napi_struct, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x %struct.mram_cfg] }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mram_cfg = type { i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__initcall__kmod_m_can_platform__462_233_m_can_plat_driver_init6 = internal global ptr @m_can_plat_driver_init, section ".initcall6.init", align 4
@m_can_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @m_can_plat_probe, ptr @m_can_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @m_can_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m_can_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_m_can_plat_driver_exit = internal global ptr @m_can_plat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author463 = internal constant [58 x i8] c"m_can_platform.author=Dong Aisheng <b29396@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author464 = internal constant [50 x i8] c"m_can_platform.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file465 = internal constant [57 x i8] c"m_can_platform.file=drivers/net/can/m_can/m_can_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [30 x i8] c"m_can_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description467 = internal constant [72 x i8] c"m_can_platform.description=M_CAN driver for IO Mapped Bosch controllers\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"m_can_platform\00", [17 x i8] zeroinitializer }, align 32
@m_can_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bosch,m_can\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@m_can_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @m_can_suspend, ptr @m_can_resume, ptr @m_can_suspend, ptr @m_can_resume, ptr @m_can_suspend, ptr @m_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m_can_runtime_suspend, ptr @m_can_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"m_can\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"int0\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"message_ram\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get phy\0A\00", [45 x i8] zeroinitializer }, align 32
@m_can_plat_ops = internal global { %struct.m_can_ops, [40 x i8] } { %struct.m_can_ops { ptr null, ptr @iomap_read_reg, ptr @iomap_write_reg, ptr @iomap_read_fifo, ptr @iomap_write_fifo, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"m_can_plat_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 223, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 225, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"m_can_of_table\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 217, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"m_can_pmops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 211, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 98, i32 53 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 99, i32 38 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 106, i32 59 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 121, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"m_can_plat_ops\00", align 1
@___asan_gen_.30 = private constant [42 x i8] c"../drivers/net/can/m_can/m_can_platform.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 70, i32 25 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description467, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_m_can_plat_driver_exit, ptr @__initcall__kmod_m_can_platform__462_233_m_can_plat_driver_init6, ptr @m_can_plat_driver_exit, ptr @m_can_plat_driver, ptr @.str, ptr @m_can_of_table, ptr @m_can_pmops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @m_can_plat_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_can_plat_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_plat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @m_can_plat_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m_can_plat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @m_can_plat_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @m_can_class_allocate_dev(ptr noundef %dev, i32 noundef 1040) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @m_can_class_get_clocks(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.probe_fail_crit_edge

if.end.probe_fail_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_fail

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #4
  %call7 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end5.probe_fail_crit_edge, label %if.end10

if.end5.probe_fail_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_fail

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.probe_fail_crit_edge, label %if.end14

if.end10.probe_fail_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_fail

if.end14:                                         ; preds = %if.end10
  %0 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call11, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call17 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %1, i32 noundef %add.i) #4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.probe_fail_crit_edge, label %if.end20

if.end14.probe_fail_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_fail

if.end20:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_phy_optional_get(ptr noundef %dev, ptr noundef null) #4
  %cmp.i96 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call22 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.4) #4
  br label %probe_fail

if.end28:                                         ; preds = %if.end20
  %tobool29.not = icmp eq ptr %call22, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %max_link_rate = getelementptr inbounds %struct.phy, ptr %call22, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %max_link_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_link_rate, align 4
  %bitrate_max = getelementptr inbounds %struct.can_priv, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %bitrate_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bitrate_max, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %base = getelementptr inbounds %struct.m_can_plat_priv, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %base, align 8
  %mram_base = getelementptr inbounds %struct.m_can_plat_priv, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %mram_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %mram_base, align 4
  %net = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 8
  %irq32 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 64
  %12 = ptrtoint ptr %irq32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call7, ptr %irq32, align 4
  %pm_clock_support = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 16
  %13 = ptrtoint ptr %pm_clock_support to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %pm_clock_support, align 4
  %cclk = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cclk, align 4
  %call33 = tail call i32 @clk_get_rate(ptr noundef %15) #4
  %clock = getelementptr inbounds %struct.can_priv, ptr %call, i32 0, i32 13
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call33, ptr %clock, align 8
  %dev36 = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev36, align 4
  %transceiver37 = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 10
  %18 = ptrtoint ptr %transceiver37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call22, ptr %transceiver37, align 4
  %ops = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @m_can_plat_ops, ptr %ops, align 8
  %is_peripheral = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 17
  %20 = ptrtoint ptr %is_peripheral to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %is_peripheral, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call38 = tail call i32 @m_can_init_ram(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end31.probe_fail_crit_edge

if.end31.probe_fail_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_fail

if.end41:                                         ; preds = %if.end31
  %22 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev36, align 4
  tail call void @pm_runtime_enable(ptr noundef %23) #4
  %call43 = tail call i32 @m_can_class_register(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %out_runtime_disable

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

out_runtime_disable:                              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev36, align 4
  tail call void @__pm_runtime_disable(ptr noundef %25, i1 noundef zeroext true) #4
  br label %probe_fail

probe_fail:                                       ; preds = %out_runtime_disable, %if.end31.probe_fail_crit_edge, %if.then24, %if.end14.probe_fail_crit_edge, %if.end10.probe_fail_crit_edge, %if.end5.probe_fail_crit_edge, %if.end.probe_fail_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.probe_fail_crit_edge ], [ %4, %if.then24 ], [ %call38, %if.end31.probe_fail_crit_edge ], [ %call43, %out_runtime_disable ], [ -22, %if.end5.probe_fail_crit_edge ], [ -19, %if.end10.probe_fail_crit_edge ], [ -12, %if.end14.probe_fail_crit_edge ]
  %net48 = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %net48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net48, align 8
  tail call void @m_can_class_free_dev(ptr noundef %27) #4
  br label %cleanup

cleanup:                                          ; preds = %probe_fail, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %probe_fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_plat_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @m_can_class_unregister(ptr noundef %1) #4
  %net = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 8
  tail call void @m_can_class_free_dev(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @m_can_class_allocate_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_get_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_init_ram(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @m_can_class_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_read_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.m_can_plat_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !39
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_write_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.m_can_plat_priv, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_read_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_count)
  %tobool.not6 = icmp eq i32 %val_count, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %mram_base = getelementptr inbounds %struct.m_can_plat_priv, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %mram_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mram_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %src.09 = phi ptr [ %add.ptr3, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %val.addr.08 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %val_count.addr.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %val_count, %while.body.preheader ]
  %dec = add i32 %val_count.addr.07, -1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %src.09) #4, !srcloc !39
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %4 = ptrtoint ptr %val.addr.08 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val.addr.08, align 4
  %add.ptr2 = getelementptr i8, ptr %val.addr.08, i32 4
  %add.ptr3 = getelementptr i8, ptr %src.09, i32 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iomap_write_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_count)
  %tobool.not5 = icmp eq i32 %val_count, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %mram_base = getelementptr inbounds %struct.m_can_plat_priv, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %mram_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mram_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dst.08 = phi ptr [ %add.ptr2, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %val.addr.07 = phi ptr [ %add.ptr1, %while.body.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %val_count.addr.06 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %val_count, %while.body.preheader ]
  %dec = add i32 %val_count.addr.06, -1
  %2 = ptrtoint ptr %val.addr.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.addr.07, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.08, i32 %4) #4, !srcloc !42
  %add.ptr1 = getelementptr i8, ptr %val.addr.07, i32 4
  %add.ptr2 = getelementptr i8, ptr %dst.08, i32 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @m_can_class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @m_can_class_suspend(ptr noundef %dev) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @m_can_class_resume(ptr noundef %dev) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cclk = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cclk, align 4
  tail call void @clk_disable(ptr noundef %3) #4
  tail call void @clk_unprepare(ptr noundef %3) #4
  %hclk = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m_can_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hclk = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %cclk = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cclk, align 4
  %call.i14 = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end.i18, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end.i18:                                       ; preds = %if.end
  %call1.i16 = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool2.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool2.not.i17, label %if.end.i18.cleanup_crit_edge, label %if.then3.i19

if.end.i18.cleanup_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i19, %if.end.if.then4_crit_edge
  %retval.0.i20.ph = phi i32 [ %call1.i16, %if.then3.i19 ], [ %call.i14, %if.end.if.then4_crit_edge ]
  %6 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk, align 8
  tail call void @clk_disable(ptr noundef %7) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then4 ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i20.ph, %if.then4 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i18.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_m_can_platform__462_233_m_can_plat_driver_init6, !1, !"__initcall__kmod_m_can_platform__462_233_m_can_plat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 233, i32 1}
!2 = !{ptr @__exitcall_m_can_plat_driver_exit, !1, !"__exitcall_m_can_plat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author463, !4, !"__UNIQUE_ID_author463", i1 false, i1 false}
!4 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 235, i32 1}
!5 = !{ptr @__UNIQUE_ID_author464, !6, !"__UNIQUE_ID_author464", i1 false, i1 false}
!6 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 236, i32 1}
!7 = !{ptr @__UNIQUE_ID_file465, !8, !"__UNIQUE_ID_file465", i1 false, i1 false}
!8 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 237, i32 1}
!9 = !{ptr @__UNIQUE_ID_license466, !8, !"__UNIQUE_ID_license466", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description467, !11, !"__UNIQUE_ID_description467", i1 false, i1 false}
!11 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 238, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 225, i32 11}
!14 = !{ptr @m_can_plat_driver, !15, !"m_can_plat_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 223, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 98, i32 53}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 99, i32 38}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 106, i32 59}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 121, i32 34}
!24 = !{ptr @m_can_plat_ops, !25, !"m_can_plat_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 70, i32 25}
!26 = !{ptr @m_can_of_table, !27, !"m_can_of_table", i1 false, i1 false}
!27 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 217, i32 34}
!28 = !{ptr @m_can_pmops, !29, !"m_can_pmops", i1 false, i1 false}
!29 = !{!"../drivers/net/can/m_can/m_can_platform.c", i32 211, i32 32}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 5945830}
!40 = !{i64 2157317850}
!41 = !{i64 2157318072}
!42 = !{i64 5945412}
!43 = !{i64 2153478689}
!44 = !{i64 2153480044}
