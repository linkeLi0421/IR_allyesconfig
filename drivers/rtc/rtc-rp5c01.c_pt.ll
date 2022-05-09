; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rp5c01.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rp5c01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rp5c01_priv = type { ptr, ptr, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_rp5c01__227_271_rp5c01_rtc_driver_init6 = internal global ptr @rp5c01_rtc_driver_init, section ".initcall6.init", align 4
@rp5c01_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rp5c01_rtc_driver_exit = internal global ptr @rp5c01_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [60 x i8] c"rtc_rp5c01.author=Geert Uytterhoeven <geert@linux-m68k.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"rtc_rp5c01.file=drivers/rtc/rtc-rp5c01\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [23 x i8] c"rtc_rp5c01.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [47 x i8] c"rtc_rp5c01.description=Ricoh RP5C01 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [37 x i8] c"rtc_rp5c01.alias=platform:rtc-rp5c01\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rp5c01_nvram\00", [19 x i8] zeroinitializer }, align 32
@__const.rp5c01_rtc_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @rp5c01_nvram_read, ptr @rp5c01_nvram_write, ptr null, i32 13, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@rp5c01_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rp5c01_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rp5c01_read_time, ptr @rp5c01_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rp5c01\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"rp5c01_rtc_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 265, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 225, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 245, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"rp5c01_rtc_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 151, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [28 x i8] c"../drivers/rtc/rtc-rp5c01.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 267, i32 11 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_rp5c01_rtc_driver_exit, ptr @__initcall__kmod_rtc_rp5c01__227_271_rp5c01_rtc_driver_init6, ptr @rp5c01_rtc_driver_exit, ptr @rp5c01_rtc_driver, ptr @.str, ptr @rp5c01_rtc_probe.__key, ptr @.str.1, ptr @rp5c01_rtc_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp5c01_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp5c01_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp5c01_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @rp5c01_rtc_driver, ptr noundef nonnull @rp5c01_rtc_probe, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rp5c01_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rp5c01_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_rtc_probe(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #4
  %0 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.rp5c01_rtc_probe.nvmem_cfg, i32 88)
  %call = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call8 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %2, i32 noundef %add.i) #4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %call.i, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %lock = getelementptr inbounds %struct.rp5c01_priv, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rp5c01_rtc_probe.__key, i16 noundef signext 3) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %do.body
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call15, i32 0, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rp5c01_rtc_ops, ptr %ops, align 8
  %rtc20 = getelementptr inbounds %struct.rp5c01_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rtc20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %rtc20, align 4
  %priv21 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %10 = ptrtoint ptr %priv21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %priv21, align 4
  %call22 = call i32 @devm_rtc_nvmem_register(ptr noundef %call15, ptr noundef nonnull %nvmem_cfg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end19.cleanup_crit_edge, %if.then17, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then17 ], [ %call26, %if.end25 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_nvram_read(ptr noundef %_priv, i32 noundef %pos, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rp5c01_priv, ptr %_priv, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not19 = icmp eq i32 %bytes, 0
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.addr.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %pos, %entry.for.body_crit_edge ]
  %buf.021 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %val, %entry.for.body_crit_edge ]
  %bytes.addr.020 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %bytes, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_priv, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 10) #4, !srcloc !32
  %2 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_priv, align 4
  %arrayidx.i14 = getelementptr i32, ptr %3, i32 %pos.addr.022
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i14) #4, !srcloc !33
  %and.i = shl i32 %4, 4
  %5 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_priv, align 4
  %arrayidx.i15 = getelementptr i32, ptr %6, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i15, i32 11) #4, !srcloc !32
  %inc = add i32 %pos.addr.022, 1
  %7 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_priv, align 4
  %arrayidx.i16 = getelementptr i32, ptr %8, i32 %pos.addr.022
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i16) #4, !srcloc !33
  %and.i17 = and i32 %9, 15
  %or = or i32 %and.i17, %and.i
  %conv3 = trunc i32 %or to i8
  %10 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_priv, align 4
  %arrayidx.i18 = getelementptr i32, ptr %11, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i18, i32 9) #4, !srcloc !32
  %incdec.ptr = getelementptr i8, ptr %buf.021, i32 1
  %12 = ptrtoint ptr %buf.021 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %buf.021, align 1
  %dec = add i32 %bytes.addr.020, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_nvram_write(ptr noundef %_priv, i32 noundef %pos, ptr nocapture noundef readonly %val, i32 noundef %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rp5c01_priv, ptr %_priv, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not16 = icmp eq i32 %bytes, 0
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.addr.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %pos, %entry.for.body_crit_edge ]
  %buf.018 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %val, %entry.for.body_crit_edge ]
  %bytes.addr.017 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %bytes, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.018, i32 1
  %0 = ptrtoint ptr %buf.018 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf.018, align 1
  %2 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_priv, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 10) #4, !srcloc !32
  %conv = zext i8 %1 to i32
  %4 = lshr i32 %conv, 4
  %5 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_priv, align 4
  %arrayidx.i12 = getelementptr i32, ptr %6, i32 %pos.addr.019
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12, i32 %4) #4, !srcloc !32
  %7 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_priv, align 4
  %arrayidx.i13 = getelementptr i32, ptr %8, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13, i32 11) #4, !srcloc !32
  %and = and i32 %conv, 15
  %inc = add i32 %pos.addr.019, 1
  %9 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_priv, align 4
  %arrayidx.i14 = getelementptr i32, ptr %10, i32 %pos.addr.019
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i14, i32 %and) #4, !srcloc !32
  %11 = ptrtoint ptr %_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_priv, align 4
  %arrayidx.i15 = getelementptr i32, ptr %12, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i15, i32 9) #4, !srcloc !32
  %dec = add i32 %bytes.addr.017, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rp5c01_priv, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 0) #4, !srcloc !32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !33
  %and.i = and i32 %6, 15
  %mul = mul nuw nsw i32 %and.i, 10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #4, !srcloc !33
  %and.i52 = and i32 %9, 15
  %add = add nuw nsw i32 %and.i52, %mul
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %tm, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx.i53 = getelementptr i32, ptr %12, i32 3
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i53) #4, !srcloc !33
  %and.i54 = and i32 %13, 15
  %mul4 = mul nuw nsw i32 %and.i54, 10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx.i55 = getelementptr i32, ptr %15, i32 2
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i55) #4, !srcloc !33
  %and.i56 = and i32 %16, 15
  %add6 = add nuw nsw i32 %and.i56, %mul4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %17 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add6, ptr %tm_min, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx.i57 = getelementptr i32, ptr %19, i32 5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i57) #4, !srcloc !33
  %and.i58 = and i32 %20, 15
  %mul8 = mul nuw nsw i32 %and.i58, 10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %arrayidx.i59 = getelementptr i32, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i59) #4, !srcloc !33
  %and.i60 = and i32 %23, 15
  %add10 = add nuw nsw i32 %and.i60, %mul8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add10, ptr %tm_hour, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %arrayidx.i61 = getelementptr i32, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i61) #4, !srcloc !33
  %and.i62 = and i32 %27, 15
  %mul12 = mul nuw nsw i32 %and.i62, 10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx.i63 = getelementptr i32, ptr %29, i32 7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i63) #4, !srcloc !33
  %and.i64 = and i32 %30, 15
  %add14 = add nuw nsw i32 %and.i64, %mul12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %31 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add14, ptr %tm_mday, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %arrayidx.i65 = getelementptr i32, ptr %33, i32 6
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i65) #4, !srcloc !33
  %and.i66 = and i32 %34, 15
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %35 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i66, ptr %tm_wday, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx.i67 = getelementptr i32, ptr %37, i32 10
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i67) #4, !srcloc !33
  %and.i68 = and i32 %38, 15
  %mul17 = mul nuw nsw i32 %and.i68, 10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx.i69 = getelementptr i32, ptr %40, i32 9
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i69) #4, !srcloc !33
  %and.i70 = and i32 %41, 15
  %add19 = add nsw i32 %mul17, -1
  %sub = add nsw i32 %add19, %and.i70
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %42 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub, ptr %tm_mon, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %arrayidx.i71 = getelementptr i32, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i71) #4, !srcloc !33
  %and.i72 = and i32 %45, 15
  %mul21 = mul nuw nsw i32 %and.i72, 10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx.i73 = getelementptr i32, ptr %47, i32 11
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i73) #4, !srcloc !33
  %and.i74 = and i32 %48, 15
  %add23 = add nuw nsw i32 %and.i74, %mul21
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add23)
  %cmp = icmp ult i32 %add23, 70
  %add26 = add nuw nsw i32 %add23, 100
  %spec.select = select i1 %cmp, i32 %add26, i32 %add23
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %49 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select, ptr %tm_year, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %arrayidx.i.i75 = getelementptr i32, ptr %51, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i75, i32 9) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rp5c01_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.rp5c01_priv, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 0) #4, !srcloc !32
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm, align 4
  %div = sdiv i32 %5, 10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %div) #4, !srcloc !32
  %8 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm, align 4
  %rem = srem i32 %9, 10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %rem) #4, !srcloc !32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %div2 = sdiv i32 %13, 10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx.i57 = getelementptr i32, ptr %15, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i57, i32 %div2) #4, !srcloc !32
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min, align 4
  %rem4 = srem i32 %17, 10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx.i58 = getelementptr i32, ptr %19, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i58, i32 %rem4) #4, !srcloc !32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_hour, align 4
  %div5 = sdiv i32 %21, 10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx.i59 = getelementptr i32, ptr %23, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i59, i32 %div5) #4, !srcloc !32
  %24 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_hour, align 4
  %rem7 = srem i32 %25, 10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx.i60 = getelementptr i32, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i60, i32 %rem7) #4, !srcloc !32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mday, align 4
  %div8 = sdiv i32 %29, 10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx.i61 = getelementptr i32, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i61, i32 %div8) #4, !srcloc !32
  %32 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_mday, align 4
  %rem10 = srem i32 %33, 10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx.i62 = getelementptr i32, ptr %35, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i62, i32 %rem10) #4, !srcloc !32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %36 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.not = icmp eq i32 %37, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %arrayidx.i63 = getelementptr i32, ptr %39, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i63, i32 %37) #4, !srcloc !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %40 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mon, align 4
  %add = add i32 %41, 1
  %div12 = sdiv i32 %add, 10
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx.i64 = getelementptr i32, ptr %43, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i64, i32 %div12) #4, !srcloc !32
  %44 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon, align 4
  %add14 = add i32 %45, 1
  %rem15 = srem i32 %add14, 10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx.i65 = getelementptr i32, ptr %47, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i65, i32 %rem15) #4, !srcloc !32
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %48 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %49)
  %cmp16 = icmp sgt i32 %49, 99
  br i1 %cmp16, label %if.then17, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %49, -100
  %50 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub, ptr %tm_year, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %51 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tm_year, align 4
  %div21 = sdiv i32 %52, 10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %arrayidx.i66 = getelementptr i32, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i66, i32 %div21) #4, !srcloc !32
  %55 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tm_year, align 4
  %rem23 = srem i32 %56, 10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %arrayidx.i67 = getelementptr i32, ptr %58, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i67, i32 %rem23) #4, !srcloc !32
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %arrayidx.i.i68 = getelementptr i32, ptr %60, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i68, i32 9) #4, !srcloc !32
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_rtc_rp5c01__227_271_rp5c01_rtc_driver_init6, !1, !"__initcall__kmod_rtc_rp5c01__227_271_rp5c01_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 271, i32 1}
!2 = !{ptr @__exitcall_rp5c01_rtc_driver_exit, !1, !"__exitcall_rp5c01_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 273, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 274, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 275, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 276, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 225, i32 11}
!14 = !{ptr @rp5c01_rtc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 245, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rp5c01_rtc_ops, !18, !"rp5c01_rtc_ops", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 151, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 267, i32 11}
!21 = !{ptr @rp5c01_rtc_driver, !22, !"rp5c01_rtc_driver", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-rp5c01.c", i32 265, i32 31}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 690691}
!33 = !{i64 691109}
