; ModuleID = '/llk/IR_all_yes/drivers/firmware/google/vpd.c_pt.bc'
source_filename = "../drivers/firmware/google/vpd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coreboot_driver = type { ptr, ptr, %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vpd_section = type { i8, ptr, ptr, ptr, ptr, %struct.bin_attribute, %struct.list_head }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.coreboot_device = type { %struct.device, %union.anon.43 }
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
%union.anon.43 = type { %struct.lb_framebuffer }
%struct.lb_framebuffer = type { i32, i32, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vpd_attrib_info = type { ptr, ptr, %struct.bin_attribute, %struct.list_head }

@__initcall__kmod_vpd_sysfs__183_317_vpd_driver_init6 = internal global ptr @vpd_driver_init, section ".initcall6.init", align 4
@vpd_driver = internal global { %struct.coreboot_driver, [40 x i8] } { %struct.coreboot_driver { ptr @vpd_probe, ptr @vpd_remove, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 44 }, [40 x i8] zeroinitializer }, align 32
@__exitcall_vpd_driver_exit = internal global ptr @vpd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [30 x i8] c"vpd_sysfs.author=Google, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [49 x i8] c"vpd_sysfs.file=drivers/firmware/google/vpd-sysfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [22 x i8] c"vpd_sysfs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vpd\00", [28 x i8] zeroinitializer }, align 32
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@vpd_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@ro_vpd = internal global { %struct.vpd_section, [56 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@rw_vpd = internal global { %struct.vpd_section, [56 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_raw\00", [25 x i8] zeroinitializer }, align 32
@vpd_section_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vpd_section_attrib_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"vpd_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 309, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 313, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"vpd_kobj\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 28, i32 24 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 264, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"ro_vpd\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 55, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 272, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"rw_vpd\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 56, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 194, i32 40 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 200, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private constant [33 x i8] c"../drivers/firmware/google/vpd.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 120, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_vpd_driver_exit, ptr @__initcall__kmod_vpd_sysfs__183_317_vpd_driver_init6, ptr @vpd_driver_exit, ptr @vpd_driver, ptr @.str, ptr @vpd_kobj, ptr @.str.1, ptr @ro_vpd, ptr @.str.2, ptr @rw_vpd, ptr @.str.3, ptr @vpd_section_init.__key, ptr @vpd_section_attrib_add.__key], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpd_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpd_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ro_vpd to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_vpd to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpd_section_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpd_section_attrib_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vpd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coreboot_driver_register(ptr noundef nonnull @vpd_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vpd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @coreboot_driver_unregister(ptr noundef nonnull @vpd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @coreboot_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coreboot_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpd_probe(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_kobj to i32))
  %0 = load ptr, ptr @firmware_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %0) #5
  store ptr %call, ptr @vpd_kobj, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cbmem_addr = getelementptr inbounds %struct.coreboot_device, ptr %dev, i32 0, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %cbmem_addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %cbmem_addr, align 8
  %conv = trunc i64 %2 to i32
  %call.i = tail call ptr @memremap(i32 noundef %conv, i32 noundef 16, i32 noundef 1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %if.end.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %header.sroa.0.0.copyload.i = load i32, ptr %call.i, align 4
  %header.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 8
  %4 = ptrtoint ptr %header.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %header.sroa.6.0.copyload.i = load i32, ptr %header.sroa.6.0..sroa_idx.i, align 4
  %header.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i, i32 12
  %5 = ptrtoint ptr %header.sroa.10.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %header.sroa.10.0.copyload.i = load i32, ptr %header.sroa.10.0..sroa_idx.i, align 4
  tail call void @memunmap(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129467731, i32 %header.sroa.0.0.copyload.i)
  %cmp.not.i = icmp eq i32 %header.sroa.0.0.copyload.i, 1129467731
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %header.sroa.6.0.copyload.i)
  %tobool3.not.i = icmp eq i32 %header.sroa.6.0.copyload.i, 0
  br i1 %tobool3.not.i, label %if.end2.i.if.end10.i_crit_edge, label %if.then4.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end2.i
  %add.i = add i32 %conv, 16
  %call6.i = tail call fastcc i32 @vpd_section_init(ptr noundef nonnull @.str.1, ptr noundef nonnull @ro_vpd, i32 noundef %add.i, i32 noundef %header.sroa.6.0.copyload.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.if.end10.i_crit_edge, label %if.then4.i.if.then3_crit_edge

if.then4.i.if.then3_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then4.i.if.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i.if.end10.i_crit_edge, %if.end2.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %header.sroa.10.0.copyload.i)
  %tobool11.not.i = icmp eq i32 %header.sroa.10.0.copyload.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.cleanup_crit_edge, label %if.then12.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12.i:                                      ; preds = %if.end10.i
  %add13.i = add i32 %conv, 16
  %add15.i = add i32 %add13.i, %header.sroa.6.0.copyload.i
  %call17.i = tail call fastcc i32 @vpd_section_init(ptr noundef nonnull @.str.2, ptr noundef nonnull @rw_vpd, i32 noundef %add15.i, i32 noundef %header.sroa.10.0.copyload.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then12.i.cleanup_crit_edge, label %if.then19.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vpd_section_destroy(ptr noundef nonnull @ro_vpd) #5
  br label %if.then3

if.then3:                                         ; preds = %if.then19.i, %if.then4.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %if.then4.i.if.then3_crit_edge ], [ -19, %if.end.i.if.then3_crit_edge ], [ -12, %if.end.if.then3_crit_edge ], [ %call17.i, %if.then19.i ]
  %6 = load ptr, ptr @vpd_kobj, align 4
  tail call void @kobject_put(ptr noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then12.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ], [ 0, %if.then12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vpd_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @vpd_section_destroy(ptr noundef nonnull @ro_vpd)
  tail call fastcc void @vpd_section_destroy(ptr noundef nonnull @rw_vpd)
  %0 = load ptr, ptr @vpd_kobj, align 4
  tail call void @kobject_put(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vpd_section_init(ptr noundef %name, ptr noundef %sec, i32 noundef %physaddr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %consumed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memremap(i32 noundef %physaddr, i32 noundef %size, i32 noundef 1) #5
  %baseaddr = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 4
  %0 = ptrtoint ptr %baseaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %baseaddr, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 1
  %1 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name2, align 4
  %call3 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %name) #5
  %raw_name = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 2
  %2 = ptrtoint ptr %raw_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %raw_name, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err_memunmap_crit_edge, label %do.body

if.end.err_memunmap_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_memunmap

do.body:                                          ; preds = %if.end
  %bin_attr = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5
  %key = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5, i32 0, i32 3
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vpd_section_init.__key, ptr %key, align 4
  %4 = ptrtoint ptr %bin_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %bin_attr, align 4
  %mode = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 292, ptr %mode, align 4
  %size15 = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %size15, align 4
  %read = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vpd_section_read, ptr %read, align 4
  %private = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sec, ptr %private, align 4
  %9 = load ptr, ptr @vpd_kobj, align 4
  %call19 = tail call i32 @sysfs_create_bin_file(ptr noundef %9, ptr noundef %bin_attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.body.err_free_raw_name_crit_edge

do.body.err_free_raw_name_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_raw_name

if.end22:                                         ; preds = %do.body
  %10 = load ptr, ptr @vpd_kobj, align 4
  %call23 = tail call ptr @kobject_create_and_add(ptr noundef %name, ptr noundef %10) #5
  %kobj = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 3
  %11 = ptrtoint ptr %kobj to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %kobj, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %12 = load ptr, ptr @vpd_kobj, align 4
  tail call void @sysfs_remove_bin_file(ptr noundef %12, ptr noundef %bin_attr) #5
  br label %err_free_raw_name

if.end27:                                         ; preds = %if.end22
  %attribs = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 6
  %13 = ptrtoint ptr %attribs to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %attribs, ptr %attribs, align 4
  %prev.i = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %attribs, ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed.i) #5
  %15 = ptrtoint ptr %consumed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %consumed.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end27
  %16 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size15, align 4
  %18 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %baseaddr, align 4
  %call.i = call i32 @vpd_decode_string(i32 noundef %17, ptr noundef %19, ptr noundef nonnull %consumed.i, ptr noundef nonnull @vpd_section_attrib_add, ptr noundef %sec) #5
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %vpd_section_create_attribs.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

vpd_section_create_attribs.exit:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed.i) #5
  %20 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %sec, align 4
  br label %cleanup

err_free_raw_name:                                ; preds = %if.then26, %do.body.err_free_raw_name_crit_edge
  %err.0 = phi i32 [ %call19, %do.body.err_free_raw_name_crit_edge ], [ -22, %if.then26 ]
  %21 = ptrtoint ptr %raw_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %raw_name, align 4
  tail call void @kfree(ptr noundef %22) #5
  br label %err_memunmap

err_memunmap:                                     ; preds = %err_free_raw_name, %if.end.err_memunmap_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_raw_name ], [ -12, %if.end.err_memunmap_crit_edge ]
  %23 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %baseaddr, align 4
  tail call void @memunmap(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %err_memunmap, %vpd_section_create_attribs.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_memunmap ], [ 0, %vpd_section_create_attribs.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vpd_section_destroy(ptr noundef %sec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sec, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %attribs.i = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 6
  %2 = ptrtoint ptr %attribs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attribs.i, align 4
  %cmp.not20.i = icmp eq ptr %3, %attribs.i
  br i1 %cmp.not20.i, label %if.then.vpd_section_attrib_destroy.exit_crit_edge, label %for.body.lr.ph.i

if.then.vpd_section_attrib_destroy.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %vpd_section_attrib_destroy.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %kobj.i = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in21.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %.pn.i, %for.body.i.for.body.i_crit_edge ]
  %info.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -52
  %4 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %5 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kobj.i, align 4
  %bin_attr.i = getelementptr i8, ptr %.pn.in21.i, i32 -44
  tail call void @sysfs_remove_bin_file(ptr noundef %6, ptr noundef %bin_attr.i) #5
  %7 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.0.i, align 4
  tail call void @kfree(ptr noundef %8) #5
  tail call void @kfree(ptr noundef %info.0.i) #5
  %cmp.not.i = icmp eq ptr %.pn.i, %attribs.i
  br i1 %cmp.not.i, label %for.body.i.vpd_section_attrib_destroy.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.vpd_section_attrib_destroy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vpd_section_attrib_destroy.exit

vpd_section_attrib_destroy.exit:                  ; preds = %for.body.i.vpd_section_attrib_destroy.exit_crit_edge, %if.then.vpd_section_attrib_destroy.exit_crit_edge
  %kobj = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 3
  %9 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kobj, align 4
  tail call void @kobject_put(ptr noundef %10) #5
  %11 = load ptr, ptr @vpd_kobj, align 4
  %bin_attr = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %11, ptr noundef %bin_attr) #5
  %raw_name = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 2
  %12 = ptrtoint ptr %raw_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %raw_name, align 4
  tail call void @kfree(ptr noundef %13) #5
  %baseaddr = getelementptr inbounds %struct.vpd_section, ptr %sec, i32 0, i32 4
  %14 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %baseaddr, align 4
  tail call void @memunmap(ptr noundef %15) #5
  %16 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sec, align 4
  br label %if.end

if.end:                                           ; preds = %vpd_section_attrib_destroy.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpd_section_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobp, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %private = getelementptr inbounds %struct.bin_attribute, ptr %bin_attr, i32 0, i32 2
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %baseaddr = getelementptr inbounds %struct.vpd_section, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %baseaddr, align 4
  %size = getelementptr inbounds %struct.vpd_section, ptr %2, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %call = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr, ptr noundef %4, i32 noundef %6) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpd_decode_string(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpd_section_attrib_add(ptr noundef %key, i32 noundef %key_len, ptr noundef %value, i32 noundef %value_len, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %key.addr.0.i = phi ptr [ %key, %entry ], [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ]
  %key_len.addr.0.i = phi i32 [ %key_len, %entry ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len.addr.0.i)
  %cmp.i = icmp sgt i32 %key_len.addr.0.i, 0
  br i1 %cmp.i, label %while.body.i, label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %key_len.addr.0.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %key.addr.0.i, i32 1
  %0 = ptrtoint ptr %key.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key.addr.0.i, align 1
  %conv.i = zext i8 %1 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = and i8 %3, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.not.i = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %1)
  %cmp6.not.i = icmp eq i8 %1, 95
  %or.cond.i = select i1 %cmp4.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.end:                                           ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 60) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @kstrndup(ptr noundef %key, i32 noundef %key_len, i32 noundef 3264) #5
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %call7.i.i, align 8
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.end3.free_info_crit_edge, label %do.body

if.end3.free_info_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_info

do.body:                                          ; preds = %if.end3
  %bin_attr = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2
  %key10 = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %7 = ptrtoint ptr %key10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vpd_section_attrib_add.__key, ptr %key10, align 8
  %8 = ptrtoint ptr %bin_attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %bin_attr, align 8
  %mode = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 292, ptr %mode, align 4
  %size = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %value_len, ptr %size, align 4
  %read = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vpd_attrib_read, ptr %read, align 8
  %private = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private, align 8
  %value19 = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %value, ptr %value19, align 4
  %list = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.vpd_attrib_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 8
  %kobj = getelementptr inbounds %struct.vpd_section, ptr %arg, i32 0, i32 3
  %16 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kobj, align 4
  %call21 = tail call i32 @sysfs_create_bin_file(ptr noundef %17, ptr noundef %bin_attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %free_info_key

if.end24:                                         ; preds = %do.body
  %attribs = getelementptr inbounds %struct.vpd_section, ptr %arg, i32 0, i32 6
  %prev.i49 = getelementptr inbounds %struct.vpd_section, ptr %arg, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i49, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %19, ptr noundef %attribs) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev.i49, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %attribs, ptr %list, align 4
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev.i, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %19, align 4
  br label %cleanup

free_info_key:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %25) #5
  br label %free_info

free_info:                                        ; preds = %free_info_key, %if.end3.free_info_crit_edge
  %ret.0 = phi i32 [ %call21, %free_info_key ], [ -12, %if.end3.free_info_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %free_info, %if.end.i.i, %if.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_info ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vpd_attrib_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobp, ptr nocapture noundef readonly %bin_attr, ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %private = getelementptr inbounds %struct.bin_attribute, ptr %bin_attr, i32 0, i32 2
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %value = getelementptr inbounds %struct.vpd_attrib_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %value, align 4
  %size = getelementptr inbounds %struct.vpd_attrib_info, ptr %2, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %call = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr, ptr noundef %4, i32 noundef %6) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_vpd_sysfs__183_317_vpd_driver_init6, !1, !"__initcall__kmod_vpd_sysfs__183_317_vpd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/google/vpd.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_vpd_driver_exit, !1, !"__exitcall_vpd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/firmware/google/vpd.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_file185, !6, !"__UNIQUE_ID_file185", i1 false, i1 false}
!6 = !{!"../drivers/firmware/google/vpd.c", i32 320, i32 1}
!7 = !{ptr @__UNIQUE_ID_license186, !6, !"__UNIQUE_ID_license186", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firmware/google/vpd.c", i32 313, i32 11}
!10 = !{ptr @vpd_driver, !11, !"vpd_driver", i1 false, i1 false}
!11 = !{!"../drivers/firmware/google/vpd.c", i32 309, i32 31}
!12 = !{ptr @vpd_kobj, !13, !"vpd_kobj", i1 false, i1 false}
!13 = !{!"../drivers/firmware/google/vpd.c", i32 28, i32 24}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/google/vpd.c", i32 264, i32 26}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/firmware/google/vpd.c", i32 272, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firmware/google/vpd.c", i32 194, i32 40}
!20 = !{ptr @vpd_section_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/firmware/google/vpd.c", i32 200, i32 2}
!22 = !{ptr @vpd_section_attrib_add.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/firmware/google/vpd.c", i32 120, i32 2}
!24 = !{ptr @ro_vpd, !25, !"ro_vpd", i1 false, i1 false}
!25 = !{!"../drivers/firmware/google/vpd.c", i32 55, i32 27}
!26 = !{ptr @rw_vpd, !27, !"rw_vpd", i1 false, i1 false}
!27 = !{!"../drivers/firmware/google/vpd.c", i32 56, i32 27}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
