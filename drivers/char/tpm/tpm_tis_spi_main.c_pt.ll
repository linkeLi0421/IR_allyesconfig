; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_tis_spi_main.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_tis_spi_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_tis_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.tpm_tis_spi_phy = type { %struct.tpm_tis_data, ptr, ptr, %struct.completion, i32, ptr }
%struct.tpm_tis_data = type { i16, i32, i32, i8, i32, ptr, i16, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i16, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_tpm_tis_spi__250_303_tpm_tis_spi_driver_init6 = internal global ptr @tpm_tis_spi_driver_init, section ".initcall6.init", align 4
@tpm_tis_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @tpm_tis_spi_id, ptr @tpm_tis_spi_driver_probe, ptr @tpm_tis_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @of_tis_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tpm_tis_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tpm_tis_spi_driver_exit = internal global ptr @tpm_tis_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [57 x i8] c"tpm_tis_spi.description=TPM Driver for native SPI access\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [46 x i8] c"tpm_tis_spi.file=drivers/char/tpm/tpm_tis_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"tpm_tis_spi.license=GPL\00", section ".modinfo", align 1
@tpm_tis_spi_id = internal constant { [6 x %struct.spi_device_id], [40 x i8] } { [6 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"st33htpm-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tpm_tis_spi_probe to i32) }, %struct.spi_device_id { [32 x i8] c"slb9670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tpm_tis_spi_probe to i32) }, %struct.spi_device_id { [32 x i8] c"tpm_tis_spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tpm_tis_spi_probe to i32) }, %struct.spi_device_id { [32 x i8] c"tpm_tis-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tpm_tis_spi_probe to i32) }, %struct.spi_device_id { [32 x i8] c"cr50\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @cr50_spi_probe to i32) }, %struct.spi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tpm_tis_spi\00", [20 x i8] zeroinitializer }, align 32
@of_tis_spi_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st33htpm-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpm_tis_spi_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"infineon,slb9670\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpm_tis_spi_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tcg,tpm_tis-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpm_tis_spi_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cr50\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cr50_spi_probe }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tpm_tis_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_tis_spi_resume, ptr @tpm_pm_suspend, ptr @tpm_tis_spi_resume, ptr @tpm_pm_suspend, ptr @tpm_tis_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tpm_spi_phy_ops = internal constant { %struct.tpm_tis_phy_ops, [44 x i8] } { %struct.tpm_tis_phy_ops { ptr @tpm_tis_spi_read_bytes, ptr @tpm_tis_spi_write_bytes, ptr @tpm_tis_spi_read16, ptr @tpm_tis_spi_read32, ptr @tpm_tis_spi_write32 }, [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"tpm_tis_spi_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 291, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"tpm_tis_spi_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 266, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 293, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"of_tis_spi_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 276, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"tpm_tis_pm\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 255, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"tpm_spi_phy_ops\00", align 1
@___asan_gen_.18 = private constant [39 x i8] c"../drivers/char/tpm/tpm_tis_spi_main.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 205, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 87, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_tpm_tis_spi_driver_exit, ptr @__initcall__kmod_tpm_tis_spi__250_303_tpm_tis_spi_driver_init6, ptr @tpm_tis_spi_driver_exit, ptr @tpm_tis_spi_driver, ptr @tpm_tis_spi_id, ptr @.str, ptr @of_tis_spi_match, ptr @tpm_tis_pm, ptr @tpm_spi_phy_ops, ptr @init_completion.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_spi_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_tis_spi_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_spi_phy_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef writeonly %in, ptr noundef readonly %out) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %spi_xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %0 = call ptr @memset(ptr %m, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer) #5
  %1 = call ptr @memset(ptr %spi_xfer, i32 255, i32 96)
  %spi_device = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_device, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call1 = tail call i32 @spi_bus_lock(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %tobool.not111 = icmp eq i16 %len, 0
  br i1 %tobool.not111, label %entry.exit_crit_edge, label %while.body.lr.ph

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

while.body.lr.ph:                                 ; preds = %entry
  %iobuf = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 5
  %shr = lshr i32 %addr, 8
  %conv13 = trunc i32 %shr to i8
  %conv16 = trunc i32 %addr to i8
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 1
  %len21 = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 2
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 7
  %6 = getelementptr inbounds i8, ptr %m, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18, i32 1
  %flow_control = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 2
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 9
  %unit = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 9, i32 1
  %ready = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %spi_xfer, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %while.body.lr.ph
  %len.addr.0114 = phi i16 [ %len, %while.body.lr.ph ], [ %conv64, %if.end60.while.body_crit_edge ]
  %out.addr.0113 = phi ptr [ %out, %while.body.lr.ph ], [ %out.addr.1, %if.end60.while.body_crit_edge ]
  %in.addr.0112 = phi ptr [ %in, %while.body.lr.ph ], [ %in.addr.1, %if.end60.while.body_crit_edge ]
  %8 = call i16 @llvm.umin.i16(i16 %len.addr.0114, i16 64)
  %cond.off0 = zext i16 %8 to i32
  %tobool7.not = icmp eq ptr %in.addr.0112, null
  %cond8 = select i1 %tobool7.not, i16 0, i16 128
  %sub = add nuw nsw i16 %8, 255
  %or = or i16 %sub, %cond8
  %conv10 = trunc i16 %or to i8
  %9 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iobuf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %10, align 1
  %12 = load ptr, ptr %iobuf, align 4
  %arrayidx12 = getelementptr i8, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -44, ptr %arrayidx12, align 1
  %14 = load ptr, ptr %iobuf, align 4
  %arrayidx15 = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %arrayidx15, align 1
  %16 = load ptr, ptr %iobuf, align 4
  %arrayidx18 = getelementptr i8, ptr %16, i32 3
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv16, ptr %arrayidx18, align 1
  %18 = call ptr @memset(ptr %7, i32 0, i32 84)
  %19 = load ptr, ptr %iobuf, align 4
  %20 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %spi_xfer, align 4
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %rx_buf, align 4
  %22 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len21, align 4
  %23 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %cs_change, align 4
  %24 = call ptr @memset(ptr %6, i32 0, i32 40)
  %25 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %m, ptr %m, align 4
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %28 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.spi_message_add_tail.exit_crit_edge

while.body.spi_message_add_tail.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %transfer_list.i, align 4
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %while.body.spi_message_add_tail.exit_crit_edge
  %33 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi_device, align 4
  %call23 = call i32 @spi_sync_locked(ptr noundef %34, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %spi_message_add_tail.exit.exit_crit_edge, label %if.end

spi_message_add_tail.exit.exit_crit_edge:         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %spi_message_add_tail.exit
  %35 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %spi_xfer, align 4
  %36 = ptrtoint ptr %flow_control to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flow_control, align 4
  %call27 = call i32 %37(ptr noundef %data, ptr noundef nonnull %spi_xfer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end.exit_crit_edge, label %if.end31

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end31:                                         ; preds = %if.end
  %38 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load33 = load i8, ptr %cs_change, align 4
  %bf.clear34 = and i8 %bf.load33, -65
  store i8 %bf.clear34, ptr %cs_change, align 4
  %39 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.off0, ptr %len21, align 4
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 5, ptr %delay, align 2
  %41 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %unit, align 4
  %tobool39.not = icmp eq ptr %out.addr.0113, null
  br i1 %tobool39.not, label %if.end31.if.end47_crit_edge, label %if.then40

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobuf, align 4
  %44 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %spi_xfer, align 4
  %45 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rx_buf, align 4
  %46 = call ptr @memcpy(ptr %43, ptr %out.addr.0113, i32 %cond.off0)
  %add.ptr = getelementptr i8, ptr %out.addr.0113, i32 %cond.off0
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end31.if.end47_crit_edge
  %out.addr.1 = phi ptr [ %add.ptr, %if.then40 ], [ null, %if.end31.if.end47_crit_edge ]
  %47 = call ptr @memset(ptr %6, i32 0, i32 40)
  %48 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %m, ptr %m, align 4
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %m, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %51 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %call.i.i.i107 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i107, label %if.end.i.i.i109, label %if.end47.spi_message_add_tail.exit110_crit_edge

if.end47.spi_message_add_tail.exit110_crit_edge:  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit110

if.end.i.i.i109:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %53 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %m, ptr %transfer_list.i, align 4
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %55 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit110

spi_message_add_tail.exit110:                     ; preds = %if.end.i.i.i109, %if.end47.spi_message_add_tail.exit110_crit_edge
  %56 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %ready, align 4
  %57 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spi_device, align 4
  %call49 = call i32 @spi_sync_locked(ptr noundef %58, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %spi_message_add_tail.exit110.exit_crit_edge, label %if.end53

spi_message_add_tail.exit110.exit_crit_edge:      ; preds = %spi_message_add_tail.exit110
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end53:                                         ; preds = %spi_message_add_tail.exit110
  br i1 %tobool7.not, label %if.end53.if.end60_crit_edge, label %if.then55

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobuf, align 4
  %61 = call ptr @memcpy(ptr %in.addr.0112, ptr %60, i32 %cond.off0)
  %add.ptr59 = getelementptr i8, ptr %in.addr.0112, i32 %cond.off0
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end53.if.end60_crit_edge
  %in.addr.1 = phi ptr [ %add.ptr59, %if.then55 ], [ null, %if.end53.if.end60_crit_edge ]
  %conv64 = sub i16 %len.addr.0114, %8
  %tobool.not = icmp eq i16 %conv64, 0
  br i1 %tobool.not, label %if.end60.exit_crit_edge, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end60.exit_crit_edge:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

exit:                                             ; preds = %if.end60.exit_crit_edge, %spi_message_add_tail.exit110.exit_crit_edge, %if.end.exit_crit_edge, %spi_message_add_tail.exit.exit_crit_edge, %entry.exit_crit_edge
  %ret.1 = phi i32 [ 0, %entry.exit_crit_edge ], [ %call49, %if.end60.exit_crit_edge ], [ %call49, %spi_message_add_tail.exit110.exit_crit_edge ], [ %call27, %if.end.exit_crit_edge ], [ %call23, %spi_message_add_tail.exit.exit_crit_edge ]
  %62 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spi_device, align 4
  %master66 = getelementptr inbounds %struct.spi_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %master66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master66, align 4
  %call67 = call i32 @spi_bus_unlock(ptr noundef %65) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  ret i32 %ret.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_read16(ptr noundef %data, i32 noundef %addr, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %result_le = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result_le) #5
  %0 = ptrtoint ptr %result_le to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %result_le, align 2, !annotation !32
  %phy_ops = getelementptr inbounds %struct.tpm_tis_data, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext 2, ptr noundef nonnull %result_le) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %result_le to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %result_le, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %result, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result_le) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_read32(ptr noundef %data, i32 noundef %addr, ptr nocapture noundef writeonly %result) #0 align 64 {
entry:
  %result_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result_le) #5
  %0 = ptrtoint ptr %result_le to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result_le, align 4, !annotation !32
  %phy_ops = getelementptr inbounds %struct.tpm_tis_data, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 %4(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext 4, ptr noundef nonnull %result_le) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %result_le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result_le, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result_le) #5
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_write32(ptr noundef %data, i32 noundef %addr, i32 noundef %value) #0 align 64 {
entry:
  %value_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value_le) #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %value)
  %1 = ptrtoint ptr %value_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value_le, align 4
  %phy_ops = getelementptr inbounds %struct.tpm_tis_data, ptr %data, i32 0, i32 9
  %2 = ptrtoint ptr %phy_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops, align 4
  %write_bytes = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_bytes, align 4
  %call = call i32 %5(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext 4, ptr noundef nonnull %value_le) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value_le) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_spi_init(ptr noundef %spi, ptr noundef %phy, i32 noundef %irq, ptr noundef %phy_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 64, i32 noundef 3264) #5
  %iobuf = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 5
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %iobuf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spi_device = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 1
  %1 = ptrtoint ptr %spi_device to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi_device, align 4
  %call3 = tail call i32 @tpm_tis_core_init(ptr noundef %spi, ptr noundef %phy, i32 noundef %irq, ptr noundef %phy_ops, ptr noundef null) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_core_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tpm_tis_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_spi_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tpm_tis_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_driver_probe(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %spi) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.then
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end7_crit_edge

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %probe_func.0 = phi ptr [ %call1, %entry.if.end7_crit_edge ], [ %2, %if.then3.if.end7_crit_edge ], [ @tpm_tis_spi_probe, %if.then.if.end7_crit_edge ]
  %call8 = tail call i32 %probe_func.0(ptr noundef %spi) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -19, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @tpm_chip_unregister(ptr noundef %1) #5
  tail call void @tpm_tis_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 220, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flow_control = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %flow_control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tpm_tis_spi_flow_control, ptr %flow_control, align 4
  %irq2 = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq2, align 4
  %ready = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ready, align 4
  %wait.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #5
  %call.i14 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3264) #5
  %iobuf.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %iobuf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i14, ptr %iobuf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i14, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  %. = select i1 %cmp, i32 %2, i32 -1
  %spi_device.i = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %spi_device.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %spi_device.i, align 4
  %call3.i = tail call i32 @tpm_tis_core_init(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef %., ptr noundef nonnull @tpm_spi_phy_ops, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3.i, %if.end.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cr50_spi_probe(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_flow_control(ptr nocapture noundef readonly %phy, ptr noundef %spi_xfer) #0 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %iobuf = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 5
  %0 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobuf, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %m, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18, i32 1
  %spi_device = getelementptr inbounds %struct.tpm_tis_spi_phy, ptr %phy, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len, align 4
  %7 = call ptr @memset(ptr %5, i32 0, i32 40)
  %8 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %m, ptr %m, align 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %11 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.spi_message_add_tail.exit_crit_edge

for.body.spi_message_add_tail.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %transfer_list.i, align 4
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.body.spi_message_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %spi_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi_device, align 4
  %call = call i32 @spi_sync_locked(ptr noundef %17, ptr noundef nonnull %m) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %spi_message_add_tail.exit.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit
  %18 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobuf, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %spi_message_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %spi_message_add_tail.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -110, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_read_bytes(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm_tis_spi_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %result, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_spi_write_bytes(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm_tis_spi_transfer(ptr noundef %data, i32 noundef %addr, i16 noundef zeroext %len, ptr noundef null, ptr noundef %value)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_tis_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_tis_spi_resume(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_tpm_tis_spi__250_303_tpm_tis_spi_driver_init6, !1, !"__initcall__kmod_tpm_tis_spi__250_303_tpm_tis_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 303, i32 1}
!2 = !{ptr @__exitcall_tpm_tis_spi_driver_exit, !1, !"__exitcall_tpm_tis_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 305, i32 1}
!5 = !{ptr @__UNIQUE_ID_file252, !6, !"__UNIQUE_ID_file252", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 306, i32 1}
!7 = !{ptr @__UNIQUE_ID_license253, !6, !"__UNIQUE_ID_license253", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 293, i32 11}
!10 = !{ptr @tpm_tis_spi_driver, !11, !"tpm_tis_spi_driver", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 291, i32 26}
!12 = !{ptr @tpm_tis_spi_id, !13, !"tpm_tis_spi_id", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 266, i32 35}
!14 = !{ptr @init_completion.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/completion.h", i32 87, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tpm_spi_phy_ops, !18, !"tpm_spi_phy_ops", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 205, i32 37}
!19 = !{ptr @of_tis_spi_match, !20, !"of_tis_spi_match", i1 false, i1 false}
!20 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 276, i32 34}
!21 = !{ptr @tpm_tis_pm, !22, !"tpm_tis_pm", i1 false, i1 false}
!22 = !{!"../drivers/char/tpm/tpm_tis_spi_main.c", i32 255, i32 8}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
