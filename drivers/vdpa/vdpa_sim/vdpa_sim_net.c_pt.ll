; ModuleID = '/llk/IR_all_yes/drivers/vdpa/vdpa_sim/vdpa_sim_net.c_pt.bc'
source_filename = "../drivers/vdpa/vdpa_sim/vdpa_sim_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdpa_mgmt_dev = type { ptr, ptr, ptr, i64, %struct.list_head, i64, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vdpa_mgmtdev_ops = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.vdpasim_dev_attr = type { ptr, ptr, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.vdpasim = type { %struct.vdpa_device, ptr, %struct.work_struct, %struct.vdpasim_dev_attr, %struct.spinlock, ptr, ptr, %struct.iova_domain, ptr, i32, i32, i64, %struct.spinlock }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.vdpa_dev_set_config = type { %struct.anon.99, i64 }
%struct.anon.99 = type { [6 x i8], i16, i16 }
%struct.virtio_net_config = type { [6 x i8], i16, i16, i16, i32, i8, i8, i16, i32 }
%struct.vdpasim_virtqueue = type { %struct.vringh, %struct.vringh_kiov, %struct.vringh_kiov, i16, i8, i64, i64, i64, i32, ptr, ptr }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }

@mgmt_dev = internal global { %struct.vdpa_mgmt_dev, [48 x i8] } { %struct.vdpa_mgmt_dev { ptr @vdpasim_net_mgmtdev, ptr @vdpasim_net_mgmtdev_ops, ptr @id_table, i64 9216, %struct.list_head zeroinitializer, i64 13019119648, i32 2 }, [48 x i8] zeroinitializer }, align 32
@vdpasim_net_mgmtdev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vdpasim_net_mgmtdev_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vdpa_sim_net__361_222_vdpasim_net_init6 = internal global ptr @vdpasim_net_init, section ".initcall6.init", align 4
@__exitcall_vdpasim_net_exit = internal global ptr @vdpasim_net_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version362 = internal constant [25 x i8] c"vdpa_sim_net.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdpa_sim_net\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file363 = internal constant [53 x i8] c"vdpa_sim_net.file=drivers/vdpa/vdpa_sim/vdpa_sim_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license364 = internal constant [28 x i8] c"vdpa_sim_net.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author365 = internal constant [53 x i8] c"vdpa_sim_net.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [69 x i8] c"vdpa_sim_net.description=vDPA Device Simulator for networking device\00", section ".modinfo", align 1
@vdpasim_net_mgmtdev_ops = internal constant { %struct.vdpa_mgmtdev_ops, [24 x i8] } { %struct.vdpa_mgmtdev_ops { ptr @vdpasim_net_dev_add, ptr @vdpasim_net_dev_del }, [24 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 1, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdpasim_net\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"mgmt_dev\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 188, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"vdpasim_net_mgmtdev\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 131, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 225, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"vdpasim_net_mgmtdev_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 178, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 183, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [40 x i8] c"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 132, i32 15 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__UNIQUE_ID_version362, ptr @__exitcall_vdpasim_net_exit, ptr @__initcall__kmod_vdpa_sim_net__361_222_vdpasim_net_init6, ptr @__modver_attr, ptr @vdpasim_net_exit, ptr @mgmt_dev, ptr @vdpasim_net_mgmtdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vdpasim_net_mgmtdev_ops, ptr @id_table, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_dev to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_net_mgmtdev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_net_mgmtdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_net_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vdpa_mgmtdev_unregister(ptr noundef nonnull @mgmt_dev) #8
  tail call void @device_unregister(ptr noundef nonnull @vdpasim_net_mgmtdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_mgmtdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_net_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_register(ptr noundef nonnull @vdpasim_net_mgmtdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vdpa_mgmtdev_register(ptr noundef nonnull @mgmt_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %parent_err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

parent_err:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_unregister(ptr noundef nonnull @vdpasim_net_mgmtdev) #8
  br label %cleanup

cleanup:                                          ; preds = %parent_err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %parent_err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_net_dev_add(ptr noundef %mdev, ptr noundef %name, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  %dev_attr = alloca %struct.vdpasim_dev_attr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dev_attr) #8
  %0 = getelementptr inbounds i8, ptr %dev_attr, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdev, ptr %dev_attr, align 8
  %name1 = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name1, align 4
  %id = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %id, align 4
  %supported_features = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 2
  %5 = ptrtoint ptr %supported_features to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 13019119648, ptr %supported_features, align 8
  %nvqs = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 5
  %6 = ptrtoint ptr %nvqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %nvqs, align 8
  %config_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 3
  %7 = ptrtoint ptr %config_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %config_size, align 8
  %get_config = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 8
  %8 = ptrtoint ptr %get_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vdpasim_net_get_config, ptr %get_config, align 4
  %work_fn = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 7
  %9 = ptrtoint ptr %work_fn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vdpasim_net_work, ptr %work_fn, align 8
  %buffer_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 4
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %buffer_size, align 4
  %call = call ptr @vdpasim_create(ptr noundef nonnull %dev_attr) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %config1.i = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config1.i, align 4
  %mask.i = getelementptr inbounds %struct.vdpa_dev_set_config, ptr %config, i32 0, i32 1
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mask.i, align 8
  %and.i = and i64 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call ptr @memcpy(ptr %13, ptr %config, i32 6)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mask.i, align 8
  %and5.i = and i64 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mtu.i = getelementptr inbounds %struct.anon.99, ptr %config, i32 0, i32 1
  %19 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mtu.i, align 2
  %features.i.i.i = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 11
  %21 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %22, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %23 = call i16 @llvm.bswap.i16(i16 %20) #8
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i, i16 %20, i16 %23
  br label %vdpasim_net_setup_config.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %features.i.i20.i = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 11
  %24 = ptrtoint ptr %features.i.i20.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features.i.i20.i, align 8
  %and.i.i21.i = and i64 %25, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i21.i)
  %tobool.i.not.i22.i = icmp eq i64 %and.i.i21.i, 0
  %retval.0.i.i23.i = select i1 %tobool.i.not.i22.i, i16 1500, i16 -9211
  br label %vdpasim_net_setup_config.exit

vdpasim_net_setup_config.exit:                    ; preds = %if.else.i, %if.then7.i
  %retval.0.i.i.sink.i = phi i16 [ %retval.0.i.i23.i, %if.else.i ], [ %retval.0.i.i.i, %if.then7.i ]
  %26 = getelementptr inbounds %struct.virtio_net_config, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %retval.0.i.i.sink.i, ptr %26, align 1
  %call4 = call i32 @_vdpa_register_device(ptr noundef %call, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %vdpasim_net_setup_config.exit.cleanup_crit_edge, label %reg_err

vdpasim_net_setup_config.exit.cleanup_crit_edge:  ; preds = %vdpasim_net_setup_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

reg_err:                                          ; preds = %vdpasim_net_setup_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @put_device(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %reg_err, %vdpasim_net_setup_config.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %call4, %reg_err ], [ 0, %vdpasim_net_setup_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dev_attr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_net_dev_del(ptr nocapture noundef readnone %mdev, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_vdpa_unregister_device(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_net_get_config(ptr nocapture noundef readonly %vdpasim, ptr nocapture noundef writeonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i.i = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %1, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %retval.0.i.i = select i1 %tobool.i.not.i, i16 1, i16 256
  %status = getelementptr inbounds %struct.virtio_net_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %retval.0.i.i, ptr %status, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_net_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %arrayidx = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 1
  %lock = getelementptr i8, ptr %work, i32 92
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %status = getelementptr i8, ptr %work, i32 1328
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %ready = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 1, i32 4
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %lor.lhs.false

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %ready4 = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ready4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ready4, align 2, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false.out_crit_edge, label %while.cond.preheader

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.preheader:                             ; preds = %lor.lhs.false
  %out_iov = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 1, i32 2
  %head = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 1, i32 3
  %in_iov = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %1, i32 0, i32 1
  %head11 = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %1, i32 0, i32 3
  %buffer = getelementptr i8, ptr %work, i32 1324
  %notify.i = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 1, i32 0, i32 9
  %notify.i99 = getelementptr inbounds %struct.vringh, ptr %1, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %if.end60.while.cond_crit_edge, %while.cond.preheader
  %pkts.0 = phi i32 [ %inc, %if.end60.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %call = tail call i32 @vringh_getdesc_iotlb(ptr noundef %arrayidx, ptr noundef %out_iov, ptr noundef null, ptr noundef %head, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %while.cond.out_crit_edge, label %if.end9

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %while.cond
  %call12 = tail call i32 @vringh_getdesc_iotlb(ptr noundef %1, ptr noundef null, ptr noundef %in_iov, ptr noundef %head11, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.then14, label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end9
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 8
  %call23105 = tail call i32 @vringh_iov_pull_iotlb(ptr noundef %arrayidx, ptr noundef %out_iov, ptr noundef %9, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23105)
  %cmp24106 = icmp slt i32 %call23105, 1
  br i1 %cmp24106, label %while.cond19.preheader.do.end_crit_edge, label %while.cond19.preheader.if.end26_crit_edge

while.cond19.preheader.if.end26_crit_edge:        ; preds = %while.cond19.preheader
  br label %if.end26

while.cond19.preheader.do.end_crit_edge:          ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %head, align 8
  %call17 = tail call i32 @vringh_complete_iotlb(ptr noundef %arrayidx, i16 noundef zeroext %11, i32 noundef 0) #8
  br label %out

while.cond19:                                     ; preds = %if.end26
  %add = add i32 %call30, %total_write.0107
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 8
  %call23 = tail call i32 @vringh_iov_pull_iotlb(ptr noundef %arrayidx, ptr noundef %out_iov, ptr noundef %13, i32 noundef 4096) #8
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %while.cond19.do.end_crit_edge, label %while.cond19.if.end26_crit_edge

while.cond19.if.end26_crit_edge:                  ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

while.cond19.do.end_crit_edge:                    ; preds = %while.cond19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end26:                                         ; preds = %while.cond19.if.end26_crit_edge, %while.cond19.preheader.if.end26_crit_edge
  %call23108 = phi i32 [ %call23, %while.cond19.if.end26_crit_edge ], [ %call23105, %while.cond19.preheader.if.end26_crit_edge ]
  %total_write.0107 = phi i32 [ %add, %while.cond19.if.end26_crit_edge ], [ 0, %while.cond19.preheader.if.end26_crit_edge ]
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 8
  %call30 = tail call i32 @vringh_iov_push_iotlb(ptr noundef %1, ptr noundef %in_iov, ptr noundef %15, i32 noundef %call23108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.end26.do.end_crit_edge, label %while.cond19

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %while.cond19.do.end_crit_edge, %while.cond19.preheader.do.end_crit_edge
  %total_write.0.lcssa = phi i32 [ 0, %while.cond19.preheader.do.end_crit_edge ], [ %total_write.0107, %if.end26.do.end_crit_edge ], [ %add, %while.cond19.do.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head, align 8
  %call39 = tail call i32 @vringh_complete_iotlb(ptr noundef %arrayidx, i16 noundef zeroext %17, i32 noundef 0) #8
  %18 = ptrtoint ptr %head11 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %head11, align 8
  %call42 = tail call i32 @vringh_complete_iotlb(ptr noundef %1, i16 noundef zeroext %19, i32 noundef %total_write.0.lcssa) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call fastcc void @local_bh_disable()
  %call50 = tail call i32 @vringh_need_notify_iotlb(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp sgt i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %do.end
  %20 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then52.if.end54_crit_edge, label %if.then.i

if.then52.if.end54_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %21(ptr noundef %arrayidx) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then.i, %if.then52.if.end54_crit_edge, %do.end.if.end54_crit_edge
  %call56 = tail call i32 @vringh_need_notify_iotlb(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end54.if.end60_crit_edge

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %if.end54
  %22 = ptrtoint ptr %notify.i99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %notify.i99, align 4
  %tobool.not.i100 = icmp eq ptr %23, null
  br i1 %tobool.not.i100, label %if.then58.if.end60_crit_edge, label %if.then.i101

if.then58.if.end60_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then.i101:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %1) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then.i101, %if.then58.if.end60_crit_edge, %if.end54.if.end60_crit_edge
  tail call fastcc void @local_bh_enable()
  %inc = add nuw nsw i32 %pkts.0, 1
  %exitcond = icmp eq i32 %inc, 5
  br i1 %exitcond, label %if.then62, label %if.end60.while.cond_crit_edge

if.end60.while.cond_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work) #8
  br label %out

out:                                              ; preds = %if.then62, %if.then14, %while.cond.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vdpasim_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_getdesc_iotlb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_complete_iotlb(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_pull_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_push_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_need_notify_iotlb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_vdpa_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_net_mgmtdev_release(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_mgmtdev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_vdpa_sim_net__361_222_vdpasim_net_init6, !1, !"__initcall__kmod_vdpa_sim_net__361_222_vdpasim_net_init6", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_vdpasim_net_exit, !3, !"__exitcall_vdpasim_net_exit", i1 false, i1 false}
!3 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 223, i32 1}
!4 = !{ptr @__UNIQUE_ID_version362, !5, !"__UNIQUE_ID_version362", i1 false, i1 false}
!5 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 225, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file363, !11, !"__UNIQUE_ID_file363", i1 false, i1 false}
!11 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 226, i32 1}
!12 = !{ptr @__UNIQUE_ID_license364, !11, !"__UNIQUE_ID_license364", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author365, !14, !"__UNIQUE_ID_author365", i1 false, i1 false}
!14 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 227, i32 1}
!15 = !{ptr @__UNIQUE_ID_description366, !16, !"__UNIQUE_ID_description366", i1 false, i1 false}
!16 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 228, i32 1}
!17 = !{ptr @mgmt_dev, !18, !"mgmt_dev", i1 false, i1 false}
!18 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 188, i32 29}
!19 = !{ptr @vdpasim_net_mgmtdev_ops, !20, !"vdpasim_net_mgmtdev_ops", i1 false, i1 false}
!20 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 178, i32 38}
!21 = !{ptr @id_table, !22, !"id_table", i1 false, i1 false}
!22 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 183, i32 32}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 132, i32 15}
!25 = !{ptr @vdpasim_net_mgmtdev, !26, !"vdpasim_net_mgmtdev", i1 false, i1 false}
!26 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_net.c", i32 131, i32 22}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{i64 2156261093}
!38 = !{i64 2156261249}
