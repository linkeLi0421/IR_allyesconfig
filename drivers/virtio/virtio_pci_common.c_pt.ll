; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_pci_common.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %struct.virtio_pci_legacy_device, %struct.virtio_pci_modern_device, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, i8, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_pci_legacy_device = type { ptr, ptr, ptr, %struct.virtio_device_id }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.virtio_device_id }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_legacy = internal constant [24 x i8] c"virtio_pci.force_legacy\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_legacy = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_legacy = internal constant %struct.kernel_param { ptr @__param_str_force_legacy, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @force_legacy } }, section "__param", align 4
@__UNIQUE_ID_force_legacytype251 = internal constant [38 x i8] c"virtio_pci.parmtype=force_legacy:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_legacy252 = internal constant [81 x i8] c"virtio_pci.parm=force_legacy:Force legacy mode for transitional virtio 1 devices\00", section ".modinfo", align 1
@__initcall__kmod_virtio_pci__256_673_virtio_pci_driver_init6 = internal global ptr @virtio_pci_driver_init, section ".initcall6.init", align 4
@virtio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @virtio_pci_id_table, ptr @virtio_pci_probe, ptr @virtio_pci_remove, ptr null, ptr null, ptr null, ptr @virtio_pci_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_pci_driver_exit = internal global ptr @virtio_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author257 = internal constant [56 x i8] c"virtio_pci.author=Anthony Liguori <aliguori@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [34 x i8] c"virtio_pci.description=virtio-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [42 x i8] c"virtio_pci.file=drivers/virtio/virtio_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [23 x i8] c"virtio_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version261 = internal constant [21 x i8] c"virtio_pci.version=1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s-config\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s-virtqueues\00", [18 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virtio-pci\00", [21 x i8] zeroinitializer }, align 32
@virtio_pci_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6900, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@virtio_pci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr @virtio_pci_freeze, ptr @virtio_pci_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vp_dev->lock\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967277, i64 4294967284]
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"force_legacy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 19, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"virtio_pci_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 662, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 678, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 371, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 174, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 194, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 663, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"virtio_pci_id_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 528, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"virtio_pci_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 521, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [38 x i8] c"../drivers/virtio/virtio_pci_common.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 562, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_force_legacy252, ptr @__UNIQUE_ID_force_legacytype251, ptr @__UNIQUE_ID_license260, ptr @__UNIQUE_ID_version261, ptr @__exitcall_virtio_pci_driver_exit, ptr @__initcall__kmod_virtio_pci__256_673_virtio_pci_driver_init6, ptr @__modver_attr, ptr @__param_force_legacy, ptr @virtio_pci_driver_exit, ptr @force_legacy, ptr @virtio_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @virtio_pci_id_table, ptr @virtio_pci_pm_ops, ptr @virtio_pci_probe.__key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_legacy to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vp_disable_cbs(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %intx_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intx_soft_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %intx_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store volatile i8 0, ptr %intx_soft_enabled, align 4
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 14
  %7 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msix_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp15.not = icmp eq i32 %8, 0
  br i1 %cmp15.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pci_dev7 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %pci_dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev7, align 8
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %10, i32 noundef %i.016) #8
  tail call void @disable_irq(i32 noundef %call8) #8
  %inc = add nuw i32 %i.016, 1
  %11 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msix_vectors, align 8
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vp_enable_cbs(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %intx_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 14
  %2 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19.not = icmp eq i32 %3, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pci_dev9 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  %intx_soft_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 11
  %8 = ptrtoint ptr %intx_soft_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 1, ptr %intx_soft_enabled, align 4
  %9 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev, align 8
  %irq8 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq8, align 4
  tail call void @enable_irq(i32 noundef %12) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %pci_dev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev9, align 8
  %call10 = tail call i32 @pci_irq_vector(ptr noundef %14, i32 noundef %i.020) #8
  tail call void @enable_irq(i32 noundef %call10) #8
  %inc = add nuw i32 %i.020, 1
  %15 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msix_vectors, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vp_notify(ptr nocapture noundef readonly %vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %conv = trunc i32 %1 to i16
  %priv = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %4) #8, !srcloc !51
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vp_del_vqs(ptr noundef %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %cmp.not108 = icmp eq ptr %1, %vqs
  br i1 %cmp.not108, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 16
  %vqs7 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %vp_del_vq.exit.for.body_crit_edge, %for.body.lr.ph
  %vq.0109 = phi ptr [ %1, %for.body.lr.ph ], [ %n.0110, %vp_del_vq.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %vq.0109 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0110 = load ptr, ptr %vq.0109, align 4
  %3 = ptrtoint ptr %per_vq_vectors to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %per_vq_vectors, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end13_crit_edge, label %if.then

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %vqs7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqs7, align 8
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq.0109, i32 0, i32 4
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %msix_vector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msix_vector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp8.not = icmp eq i32 %12, 65535
  br i1 %cmp8.not, label %if.then.if.end13_crit_edge, label %if.then9

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 8
  %call10 = tail call i32 @pci_irq_vector(ptr noundef %14, i32 noundef %12) #8
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call10, ptr noundef null, i1 noundef zeroext true) #8
  %call12 = tail call ptr @free_irq(i32 noundef %call10, ptr noundef %vq.0109) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %vdev.i = getelementptr inbounds %struct.virtqueue, ptr %vq.0109, i32 0, i32 3
  %15 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vdev.i, align 4
  %vqs.i = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vqs.i, align 8
  %index.i = getelementptr inbounds %struct.virtqueue, ptr %vq.0109, i32 0, i32 4
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 6
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %22, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.vp_del_vq.exit_crit_edge

if.end13.vp_del_vq.exit_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %vp_del_vq.exit

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %vp_del_vq.exit

vp_del_vq.exit:                                   ; preds = %if.end.i.i.i, %if.end13.vp_del_vq.exit_crit_edge
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %22, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %del_vq.i = getelementptr inbounds %struct.virtio_pci_device, ptr %16, i32 0, i32 18
  %31 = ptrtoint ptr %del_vq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %del_vq.i, align 8
  tail call void %32(ptr noundef %22) #8
  tail call void @kfree(ptr noundef %22) #8
  %cmp.not = icmp eq ptr %n.0110, %vqs
  br i1 %cmp.not, label %vp_del_vq.exit.for.end_crit_edge, label %vp_del_vq.exit.for.body_crit_edge

vp_del_vq.exit.for.body_crit_edge:                ; preds = %vp_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

vp_del_vq.exit.for.end_crit_edge:                 ; preds = %vp_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %vp_del_vq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %per_vq_vectors19 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 16
  %33 = ptrtoint ptr %per_vq_vectors19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %per_vq_vectors19, align 8
  %intx_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 10
  %34 = ptrtoint ptr %intx_enabled to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %intx_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool20.not = icmp eq i32 %35, 0
  br i1 %tobool20.not, label %for.end.if.end26_crit_edge, label %if.then21

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev22 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %36 = ptrtoint ptr %pci_dev22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev22, align 8
  %irq23 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq23, align 4
  %call24 = tail call ptr @free_irq(i32 noundef %39, ptr noundef %vdev) #8
  %40 = ptrtoint ptr %intx_enabled to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %intx_enabled, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %for.end.if.end26_crit_edge
  %msix_used_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 15
  %41 = ptrtoint ptr %msix_used_vectors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msix_used_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp28111.not = icmp eq i32 %42, 0
  br i1 %cmp28111.not, label %if.end26.for.end34_crit_edge, label %for.body29.lr.ph

if.end26.for.end34_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body29.lr.ph:                                 ; preds = %if.end26
  %pci_dev30 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %i.0112 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc, %for.body29.for.body29_crit_edge ]
  %43 = ptrtoint ptr %pci_dev30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_dev30, align 8
  %call31 = tail call i32 @pci_irq_vector(ptr noundef %44, i32 noundef %i.0112) #8
  %call32 = tail call ptr @free_irq(i32 noundef %call31, ptr noundef %vdev) #8
  %inc = add nuw i32 %i.0112, 1
  %45 = ptrtoint ptr %msix_used_vectors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msix_used_vectors, align 4
  %cmp28 = icmp ult i32 %inc, %46
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.end34_crit_edge

for.body29.for.end34_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end34

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.end34:                                        ; preds = %for.body29.for.end34_crit_edge, %if.end26.for.end34_crit_edge
  %msix_affinity_masks = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 12
  %47 = ptrtoint ptr %msix_affinity_masks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msix_affinity_masks, align 8
  %tobool35.not = icmp eq ptr %48, null
  br i1 %tobool35.not, label %for.end34.if.end50_crit_edge, label %for.cond37.preheader

for.end34.if.end50_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.cond37.preheader:                             ; preds = %for.end34
  %msix_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 14
  %49 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msix_vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp38113.not = icmp eq i32 %50, 0
  br i1 %cmp38113.not, label %for.cond37.preheader.if.end50_crit_edge, label %for.cond37.preheader.for.body39_crit_edge

for.cond37.preheader.for.body39_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body39

for.cond37.preheader.if.end50_crit_edge:          ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.body39:                                       ; preds = %for.inc47.for.body39_crit_edge, %for.cond37.preheader.for.body39_crit_edge
  %i.1114 = phi i32 [ %inc48, %for.inc47.for.body39_crit_edge ], [ 0, %for.cond37.preheader.for.body39_crit_edge ]
  %51 = ptrtoint ptr %msix_affinity_masks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msix_affinity_masks, align 8
  %arrayidx41 = getelementptr ptr, ptr %52, i32 %i.1114
  %53 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %54, null
  br i1 %tobool42.not, label %for.body39.for.inc47_crit_edge, label %if.then43

for.body39.for.inc47_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

if.then43:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @free_cpumask_var(ptr noundef nonnull %54) #8
  br label %for.inc47

for.inc47:                                        ; preds = %if.then43, %for.body39.for.inc47_crit_edge
  %inc48 = add nuw i32 %i.1114, 1
  %55 = ptrtoint ptr %msix_vectors to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msix_vectors, align 8
  %cmp38 = icmp ult i32 %inc48, %56
  br i1 %cmp38, label %for.inc47.for.body39_crit_edge, label %for.inc47.if.end50_crit_edge

for.inc47.if.end50_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.inc47.for.body39_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

if.end50:                                         ; preds = %for.inc47.if.end50_crit_edge, %for.cond37.preheader.if.end50_crit_edge, %for.end34.if.end50_crit_edge
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 9
  %57 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool51.not = icmp eq i32 %58, 0
  br i1 %tobool51.not, label %if.end50.if.end56_crit_edge, label %if.then52

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 19
  %59 = ptrtoint ptr %config_vector to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config_vector, align 4
  %call53 = tail call zeroext i16 %60(ptr noundef %vdev, i16 noundef zeroext -1) #8
  %pci_dev54 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %61 = ptrtoint ptr %pci_dev54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci_dev54, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %62) #8
  %63 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %msix_enabled, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end50.if.end56_crit_edge
  %msix_vectors57 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 14
  %64 = ptrtoint ptr %msix_vectors57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %msix_vectors57, align 8
  %65 = ptrtoint ptr %msix_used_vectors to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %msix_used_vectors, align 4
  %msix_names = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 13
  %66 = ptrtoint ptr %msix_names to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %msix_names, align 4
  tail call void @kfree(ptr noundef %67) #8
  %68 = ptrtoint ptr %msix_names to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %msix_names, align 4
  %69 = ptrtoint ptr %msix_affinity_masks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %msix_affinity_masks, align 8
  tail call void @kfree(ptr noundef %70) #8
  %71 = ptrtoint ptr %msix_affinity_masks to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %msix_affinity_masks, align 8
  %vqs62 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %72 = ptrtoint ptr %vqs62 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vqs62, align 8
  tail call void @kfree(ptr noundef %73) #8
  %74 = ptrtoint ptr %vqs62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %vqs62, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr nocapture noundef %vqs, ptr nocapture noundef readonly %callbacks, ptr nocapture noundef readonly %names, ptr noundef %ctx, ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @vp_find_vqs_msix(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, i1 noundef zeroext true, ptr noundef %ctx, ptr noundef %desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @vp_find_vqs_msix(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, i1 noundef zeroext false, ptr noundef %ctx, ptr noundef %desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nvqs, i32 4) #8
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !53

kcalloc.exit.thread.i:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %vqs256.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %vqs256.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vqs256.i, align 8
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end4
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %vqs2.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %vqs2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i.i, ptr %vqs2.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7.i.i.i
  %pci_dev.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %5 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.end.i.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @vp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.i, ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %dev_name.exit.i.out_del_vqs.i_crit_edge

dev_name.exit.i.out_del_vqs.i_crit_edge:          ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_del_vqs.i

if.end8.i:                                        ; preds = %dev_name.exit.i
  %intx_enabled.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 10
  %13 = ptrtoint ptr %intx_enabled.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %intx_enabled.i, align 8
  %per_vq_vectors.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 16
  %14 = ptrtoint ptr %per_vq_vectors.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %per_vq_vectors.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp62.not.i = icmp eq i32 %nvqs, 0
  br i1 %cmp62.not.i, label %if.end8.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %tobool15.not.i = icmp eq ptr %ctx, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %queue_idx.066.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %queue_idx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %names, i32 %i.063.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool9.not.i = icmp eq ptr %16, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr ptr, ptr %vqs, i32 %i.063.i
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx11.i, align 4
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  %inc.i = add i32 %queue_idx.066.i, 1
  %arrayidx13.i = getelementptr ptr, ptr %callbacks, i32 %i.063.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13.i, align 4
  br i1 %tobool15.not.i, label %if.end12.i.cond.end.i_crit_edge, label %cond.true.i

if.end12.i.cond.end.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr i8, ptr %ctx, i32 %i.063.i
  %20 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.i, align 1, !range !52
  %22 = zext i8 %21 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end12.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %22, %cond.true.i ], [ 0, %if.end12.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool18.i = icmp ne i32 %cond.i, 0
  %call19.i = tail call fastcc ptr @vp_setup_vq(ptr noundef %vdev, i32 noundef %queue_idx.066.i, ptr noundef %19, ptr noundef nonnull %16, i1 noundef zeroext %tobool18.i, i16 noundef zeroext -1) #8
  %arrayidx20.i = getelementptr ptr, ptr %vqs, i32 %i.063.i
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call19.i, ptr %arrayidx20.i, align 4
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then23.i, label %cond.end.i.for.inc.i_crit_edge

cond.end.i.for.inc.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then23.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call19.i to i32
  br label %out_del_vqs.i

for.inc.i:                                        ; preds = %cond.end.i.for.inc.i_crit_edge, %if.then10.i
  %queue_idx.1.i = phi i32 [ %inc.i, %cond.end.i.for.inc.i_crit_edge ], [ %queue_idx.066.i, %if.then10.i ]
  %inc27.i = add nuw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, %nvqs
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_del_vqs.i:                                    ; preds = %if.then23.i, %dev_name.exit.i.out_del_vqs.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %dev_name.exit.i.out_del_vqs.i_crit_edge ], [ %24, %if.then23.i ]
  tail call void @vp_del_vqs(ptr noundef %vdev) #8
  br label %cleanup

cleanup:                                          ; preds = %out_del_vqs.i, %for.inc.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0.i, %out_del_vqs.i ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vp_find_vqs_msix(ptr noundef %vdev, i32 noundef %nvqs, ptr nocapture noundef %vqs, ptr nocapture noundef readonly %callbacks, ptr nocapture noundef readonly %names, i1 noundef zeroext %per_vq_vectors, ptr noundef readonly %ctx, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %per_vq_vectors to i8
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nvqs, i32 4) #8
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !53

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vqs2177 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %vqs2177 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vqs2177, align 8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %3 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %vqs2 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %vqs2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %vqs2, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  br i1 %per_vq_vectors, label %for.cond.preheader, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp190.not = icmp eq i32 %nvqs, 0
  br i1 %cmp190.not, label %for.cond.preheader.if.end12_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %nvectors.0193 = phi i32 [ %nvectors.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %i.0191 = phi i32 [ %inc11, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %names, i32 %i.0191
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr ptr, ptr %callbacks, i32 %i.0191
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp ne ptr %8, null
  %inc = zext i1 %tobool8.not to i32
  %spec.select = add i32 %nvectors.0193, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %nvectors.1 = phi i32 [ %nvectors.0193, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc11 = add nuw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc11, %nvqs
  br i1 %exitcond.not, label %for.inc.if.end12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %spec.select143 = phi ptr [ null, %if.end.if.end12_crit_edge ], [ %desc, %for.cond.preheader.if.end12_crit_edge ], [ %desc, %for.inc.if.end12_crit_edge ]
  %nvectors.2 = phi i32 [ 2, %if.end.if.end12_crit_edge ], [ 1, %for.cond.preheader.if.end12_crit_edge ], [ %nvectors.1, %for.inc.if.end12_crit_edge ]
  %init_name.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i144, label %if.end12.dev_name.exit.i_crit_edge

if.end12.dev_name.exit.i_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i144:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i144, %if.end12.dev_name.exit.i_crit_edge
  %retval.0.i.i145 = phi ptr [ %12, %if.end.i.i144 ], [ %10, %if.end12.dev_name.exit.i_crit_edge ]
  %msix_vectors.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 14
  %13 = ptrtoint ptr %msix_vectors.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nvectors.2, ptr %msix_vectors.i, align 8
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nvectors.2, i32 256) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kmalloc_array.exit.thread.i, label %kmalloc_array.exit.thread132.i, !prof !53

kmalloc_array.exit.thread.i:                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %msix_names117.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 13
  %16 = ptrtoint ptr %msix_names117.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %msix_names117.i, align 4
  br label %error_find

kmalloc_array.exit.thread132.i:                   ; preds = %dev_name.exit.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i172 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #11
  %msix_names134.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 13
  %18 = ptrtoint ptr %msix_names134.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i172, ptr %msix_names134.i, align 4
  %tobool.not135.i = icmp eq ptr %call8.i.i172, null
  br i1 %tobool.not135.i, label %kmalloc_array.exit.thread132.i.error_find_crit_edge, label %if.end7.i.i.i

kmalloc_array.exit.thread132.i.error_find_crit_edge: ; preds = %kmalloc_array.exit.thread132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

if.end7.i.i.i:                                    ; preds = %kmalloc_array.exit.thread132.i
  %19 = shl nuw nsw i32 %nvectors.2, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #11
  %msix_affinity_masks.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 12
  %20 = ptrtoint ptr %msix_affinity_masks.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %msix_affinity_masks.i, align 8
  %tobool7.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool7.not.i, label %if.end7.i.i.i.error_find_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.error_find_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvectors.2)
  %cmp127.not.i = icmp eq i32 %nvectors.2, 0
  br i1 %cmp127.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nvectors.2
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0128.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %msix_affinity_masks.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msix_affinity_masks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %i.0128.i
  %call11.i = tail call zeroext i1 @alloc_cpumask_var(ptr noundef %arrayidx.i, i32 noundef 3264) #8
  br i1 %call11.i, label %for.cond.i, label %for.body.i.error_find_crit_edge

for.body.i.error_find_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %tobool14.not.i = icmp eq ptr %spec.select143, null
  br i1 %tobool14.not.i, label %for.end.i.if.end17.i_crit_edge, label %if.then15.i

for.end.i.if.end17.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %spec.select143 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spec.select143, align 4
  %inc16.i = add i32 %24, 1
  store i32 %inc16.i, ptr %spec.select143, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %for.end.i.if.end17.i_crit_edge
  %flags.0.i = phi i32 [ 12, %if.then15.i ], [ 4, %for.end.i.if.end17.i_crit_edge ]
  %pci_dev.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 8
  %call18.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %26, i32 noundef %nvectors.2, i32 noundef %nvectors.2, i32 noundef %flags.0.i, ptr noundef %spec.select143) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end17.i.error_find_crit_edge, label %if.end21.i

if.end17.i.error_find_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

if.end21.i:                                       ; preds = %if.end17.i
  %msix_enabled.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 9
  %27 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %msix_enabled.i, align 4
  %msix_used_vectors.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 15
  %28 = ptrtoint ptr %msix_used_vectors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msix_used_vectors.i, align 4
  %30 = ptrtoint ptr %msix_names134.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msix_names134.i, align 4
  %arrayidx23.i = getelementptr [256 x i8], ptr %31, i32 %29
  %call24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx23.i, i32 noundef 256, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i145) #8
  %32 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev.i, align 8
  %call26.i = tail call i32 @pci_irq_vector(ptr noundef %33, i32 noundef %29) #8
  %34 = ptrtoint ptr %msix_names134.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msix_names134.i, align 4
  %arrayidx28.i = getelementptr [256 x i8], ptr %35, i32 %29
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call26.i, ptr noundef nonnull @vp_config_changed, ptr noundef null, i32 noundef 524288, ptr noundef %arrayidx28.i, ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end21.i.error_find_crit_edge

if.end21.i.error_find_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

if.end33.i:                                       ; preds = %if.end21.i
  %36 = ptrtoint ptr %msix_used_vectors.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msix_used_vectors.i, align 4
  %inc35.i = add i32 %37, 1
  store i32 %inc35.i, ptr %msix_used_vectors.i, align 4
  %config_vector.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 19
  %38 = ptrtoint ptr %config_vector.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config_vector.i, align 4
  %conv.i = trunc i32 %29 to i16
  %call36.i = tail call zeroext i16 %39(ptr noundef %vdev, i16 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call36.i)
  %cmp38.i = icmp eq i16 %call36.i, -1
  %brmerge.i = or i1 %cmp38.i, %per_vq_vectors
  br i1 %brmerge.i, label %vp_request_msix_vectors.exit, label %if.then43.i

if.then43.i:                                      ; preds = %if.end33.i
  %40 = ptrtoint ptr %msix_used_vectors.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msix_used_vectors.i, align 4
  %42 = ptrtoint ptr %msix_names134.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msix_names134.i, align 4
  %arrayidx46.i = getelementptr [256 x i8], ptr %43, i32 %41
  %call48.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx46.i, i32 noundef 256, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i145) #8
  %44 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_dev.i, align 8
  %call50.i = tail call i32 @pci_irq_vector(ptr noundef %45, i32 noundef %41) #8
  %46 = ptrtoint ptr %msix_names134.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msix_names134.i, align 4
  %arrayidx52.i = getelementptr [256 x i8], ptr %47, i32 %41
  %call.i115.i = tail call i32 @request_threaded_irq(i32 noundef %call50.i, ptr noundef nonnull @vp_vring_interrupt, ptr noundef null, i32 noundef 524288, ptr noundef %arrayidx52.i, ptr noundef %vdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %tobool55.not.i = icmp eq i32 %call.i115.i, 0
  br i1 %tobool55.not.i, label %vp_request_msix_vectors.exit.thread185, label %if.then43.i.error_find_crit_edge

if.then43.i.error_find_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

vp_request_msix_vectors.exit.thread185:           ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %msix_used_vectors.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msix_used_vectors.i, align 4
  %inc59.i = add i32 %49, 1
  store i32 %inc59.i, ptr %msix_used_vectors.i, align 4
  br label %if.end18

vp_request_msix_vectors.exit:                     ; preds = %if.end33.i
  br i1 %cmp38.i, label %vp_request_msix_vectors.exit.error_find_crit_edge, label %vp_request_msix_vectors.exit.if.end18_crit_edge

vp_request_msix_vectors.exit.if.end18_crit_edge:  ; preds = %vp_request_msix_vectors.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

vp_request_msix_vectors.exit.error_find_crit_edge: ; preds = %vp_request_msix_vectors.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

if.end18:                                         ; preds = %vp_request_msix_vectors.exit.if.end18_crit_edge, %vp_request_msix_vectors.exit.thread185
  %per_vq_vectors20 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 16
  %50 = ptrtoint ptr %per_vq_vectors20 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %per_vq_vectors20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp23194.not = icmp eq i32 %nvqs, 0
  br i1 %cmp23194.not, label %if.end18.cleanup_crit_edge, label %for.body24.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body24.lr.ph:                                 ; preds = %if.end18
  %51 = ptrtoint ptr %msix_used_vectors.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msix_used_vectors.i, align 4
  %tobool44.not = icmp eq ptr %ctx, null
  %msix_names = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 13
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  br label %for.body24

for.body24:                                       ; preds = %for.inc84.for.body24_crit_edge, %for.body24.lr.ph
  %queue_idx.0199 = phi i32 [ 0, %for.body24.lr.ph ], [ %queue_idx.1, %for.inc84.for.body24_crit_edge ]
  %allocated_vectors.0198 = phi i32 [ %52, %for.body24.lr.ph ], [ %allocated_vectors.2, %for.inc84.for.body24_crit_edge ]
  %i.1195 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc85, %for.inc84.for.body24_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %names, i32 %i.1195
  %53 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %54, null
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr ptr, ptr %vqs, i32 %i.1195
  %55 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx28, align 4
  br label %for.inc84

if.end29:                                         ; preds = %for.body24
  %arrayidx30 = getelementptr ptr, ptr %callbacks, i32 %i.1195
  %56 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %57, null
  br i1 %tobool31.not, label %if.end29.if.end40_crit_edge, label %if.else33

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else33:                                        ; preds = %if.end29
  %58 = ptrtoint ptr %per_vq_vectors20 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %per_vq_vectors20, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool35.not = icmp eq i8 %59, 0
  br i1 %tobool35.not, label %if.else33.if.end40_crit_edge, label %if.then36

if.else33.if.end40_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  %inc37 = add i32 %allocated_vectors.0198, 1
  %conv = trunc i32 %allocated_vectors.0198 to i16
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.else33.if.end40_crit_edge, %if.end29.if.end40_crit_edge
  %msix_vec.0 = phi i16 [ %conv, %if.then36 ], [ -1, %if.end29.if.end40_crit_edge ], [ 1, %if.else33.if.end40_crit_edge ]
  %allocated_vectors.1 = phi i32 [ %inc37, %if.then36 ], [ %allocated_vectors.0198, %if.end29.if.end40_crit_edge ], [ %allocated_vectors.0198, %if.else33.if.end40_crit_edge ]
  %inc41 = add i32 %queue_idx.0199, 1
  br i1 %tobool44.not, label %if.end40.cond.end50_crit_edge, label %cond.true45

if.end40.cond.end50_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end50

cond.true45:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr i8, ptr %ctx, i32 %i.1195
  %60 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx46, align 1, !range !52
  %62 = zext i8 %61 to i32
  br label %cond.end50

cond.end50:                                       ; preds = %cond.true45, %if.end40.cond.end50_crit_edge
  %cond51 = phi i32 [ %62, %cond.true45 ], [ 0, %if.end40.cond.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond51)
  %tobool52 = icmp ne i32 %cond51, 0
  %call53 = tail call fastcc ptr @vp_setup_vq(ptr noundef %vdev, i32 noundef %queue_idx.0199, ptr noundef %57, ptr noundef nonnull %54, i1 noundef zeroext %tobool52, i16 noundef zeroext %msix_vec.0)
  %arrayidx54 = getelementptr ptr, ptr %vqs, i32 %i.1195
  %63 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call53, ptr %arrayidx54, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end60

if.then57:                                        ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %call53 to i32
  br label %error_find

if.end60:                                         ; preds = %cond.end50
  %65 = ptrtoint ptr %per_vq_vectors20 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %per_vq_vectors20, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool62.not = icmp eq i8 %66, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %msix_vec.0)
  %cmp64 = icmp eq i16 %msix_vec.0, -1
  %or.cond = select i1 %tobool62.not, i1 true, i1 %cmp64
  br i1 %or.cond, label %if.end60.for.inc84_crit_edge, label %if.end67

if.end60.for.inc84_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

if.end67:                                         ; preds = %if.end60
  %conv63 = zext i16 %msix_vec.0 to i32
  %67 = ptrtoint ptr %msix_names to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msix_names, align 4
  %arrayidx68 = getelementptr [256 x i8], ptr %68, i32 %conv63
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i173 = icmp eq ptr %70, null
  br i1 %tobool.not.i173, label %if.end.i174, label %if.end67.dev_name.exit_crit_edge

if.end67.dev_name.exit_crit_edge:                 ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i174:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i174, %if.end67.dev_name.exit_crit_edge
  %retval.0.i175 = phi ptr [ %72, %if.end.i174 ], [ %70, %if.end67.dev_name.exit_crit_edge ]
  %73 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx25, align 4
  %call72 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx68, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i175, ptr noundef %74)
  %75 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci_dev.i, align 8
  %call74 = tail call i32 @pci_irq_vector(ptr noundef %76, i32 noundef %conv63) #8
  %77 = ptrtoint ptr %msix_names to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %msix_names, align 4
  %arrayidx77 = getelementptr [256 x i8], ptr %78, i32 %conv63
  %79 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx54, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call74, ptr noundef nonnull @vring_interrupt, ptr noundef null, i32 noundef 524288, ptr noundef %arrayidx77, ptr noundef %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool81.not = icmp eq i32 %call.i, 0
  br i1 %tobool81.not, label %dev_name.exit.for.inc84_crit_edge, label %dev_name.exit.error_find_crit_edge

dev_name.exit.error_find_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_find

dev_name.exit.for.inc84_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84

for.inc84:                                        ; preds = %dev_name.exit.for.inc84_crit_edge, %if.end60.for.inc84_crit_edge, %if.then27
  %allocated_vectors.2 = phi i32 [ %allocated_vectors.1, %dev_name.exit.for.inc84_crit_edge ], [ %allocated_vectors.1, %if.end60.for.inc84_crit_edge ], [ %allocated_vectors.0198, %if.then27 ]
  %queue_idx.1 = phi i32 [ %inc41, %dev_name.exit.for.inc84_crit_edge ], [ %inc41, %if.end60.for.inc84_crit_edge ], [ %queue_idx.0199, %if.then27 ]
  %inc85 = add nuw i32 %i.1195, 1
  %exitcond202.not = icmp eq i32 %inc85, %nvqs
  br i1 %exitcond202.not, label %for.inc84.cleanup_crit_edge, label %for.inc84.for.body24_crit_edge

for.inc84.for.body24_crit_edge:                   ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.inc84.cleanup_crit_edge:                      ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_find:                                       ; preds = %dev_name.exit.error_find_crit_edge, %if.then57, %vp_request_msix_vectors.exit.error_find_crit_edge, %if.then43.i.error_find_crit_edge, %if.end21.i.error_find_crit_edge, %if.end17.i.error_find_crit_edge, %for.body.i.error_find_crit_edge, %if.end7.i.i.i.error_find_crit_edge, %kmalloc_array.exit.thread132.i.error_find_crit_edge, %kmalloc_array.exit.thread.i
  %err.0 = phi i32 [ -16, %vp_request_msix_vectors.exit.error_find_crit_edge ], [ %64, %if.then57 ], [ -12, %kmalloc_array.exit.thread132.i.error_find_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ], [ -12, %if.end7.i.i.i.error_find_crit_edge ], [ %call.i115.i, %if.then43.i.error_find_crit_edge ], [ %call.i.i, %if.end21.i.error_find_crit_edge ], [ %call18.i, %if.end17.i.error_find_crit_edge ], [ %call.i, %dev_name.exit.error_find_crit_edge ], [ -12, %for.body.i.error_find_crit_edge ]
  tail call void @vp_del_vqs(ptr noundef %vdev)
  br label %cleanup

cleanup:                                          ; preds = %error_find, %for.inc84.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %err.0, %error_find ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.inc84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vp_bus_name(ptr nocapture noundef readonly %vdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  ret ptr %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp_set_vq_affinity(ptr nocapture noundef readonly %vq, ptr noundef readonly %cpu_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %callback = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 1
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %msix_affinity_masks = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %msix_affinity_masks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msix_affinity_masks, align 8
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %msix_vector to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msix_vector, align 4
  %arrayidx4 = getelementptr ptr, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 8
  %call6 = tail call i32 @pci_irq_vector(ptr noundef %19, i32 noundef %15) #8
  %tobool7.not = icmp eq ptr %cpu_mask, null
  br i1 %tobool7.not, label %if.then3.cleanup.sink.split_crit_edge, label %if.else

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %20, 31
  %21 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %21, 536870908
  %22 = call ptr @memcpy(ptr %17, ptr %cpu_mask, i32 %mul.i.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then3.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %17, %if.else ], [ null, %if.then3.cleanup.sink.split_crit_edge ]
  %call.i.i26 = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call6, ptr noundef %.sink, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vp_get_vq_affinity(ptr nocapture noundef readonly %vdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %per_vq_vectors = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 16
  %0 = ptrtoint ptr %per_vq_vectors to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %per_vq_vectors, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %msix_vector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msix_vector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp = icmp eq i32 %7, 65535
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 8
  %call4 = tail call ptr @pci_irq_get_affinity(ptr noundef %9, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_irq_get_affinity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_pci_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @virtio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_pci_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @virtio_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vp_setup_vq(ptr noundef %vdev, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %setup_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 17
  %1 = ptrtoint ptr %setup_vq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %setup_vq, align 4
  %call4 = tail call ptr %2(ptr noundef %vdev, ptr noundef nonnull %call7.i, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) #8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out_info, label %if.end7

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %call7.i, align 8
  %tobool9.not = icmp eq ptr %callback, null
  br i1 %tobool9.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.end7
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 6
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %node = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %call7.i, i32 0, i32 1
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 7
  %4 = ptrtoint ptr %virtqueues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virtqueues, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %virtqueues, ptr noundef %5) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body11.list_add.exit_crit_edge

do.body11.list_add.exit_crit_edge:                ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %call7.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %virtqueues, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %virtqueues to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node, ptr %virtqueues, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body11.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #8
  br label %if.end18

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %node17 = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %node17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node17, ptr %node17, align 4
  %prev.i = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %call7.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node17, ptr %prev.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %list_add.exit
  %vqs = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 8
  %12 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqs, align 8
  %arrayidx = getelementptr ptr, ptr %13, i32 %index
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %arrayidx, align 4
  br label %cleanup

out_info:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_info, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %out_info ], [ %call4, %if.end18 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_config_changed(i32 noundef %irq, ptr noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_config_changed(ptr noundef %opaque) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vring_interrupt(i32 noundef %irq, ptr noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 7
  %0 = ptrtoint ptr %virtqueues to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn23 = load ptr, ptr %virtqueues, align 4
  %cmp7.not24 = icmp eq ptr %.pn23, %virtqueues
  br i1 %cmp7.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn23, %entry.for.body_crit_edge ]
  %ret.025 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %info.0 = getelementptr i8, ptr %.pn26, i32 -4
  %1 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info.0, align 4
  %call9 = tail call i32 @vring_interrupt(i32 noundef %irq, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 1
  %spec.select = select i1 %cmp10, i32 1, i32 %ret.025
  %3 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp7.not = icmp eq ptr %.pn, %virtqueues
  br i1 %cmp7.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_config_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_interrupt(i32 noundef %irq, ptr noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intx_soft_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 11
  %0 = ptrtoint ptr %intx_soft_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %intx_soft_enabled, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %isr2 = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 5
  %2 = ptrtoint ptr %isr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isr2, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_config_changed(ptr noundef %opaque) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %lock.i = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %virtqueues.i = getelementptr inbounds %struct.virtio_pci_device, ptr %opaque, i32 0, i32 7
  %6 = ptrtoint ptr %virtqueues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn23.i = load ptr, ptr %virtqueues.i, align 4
  %cmp7.not24.i = icmp eq ptr %.pn23.i, %virtqueues.i
  br i1 %cmp7.not24.i, label %if.end9.vp_vring_interrupt.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.vp_vring_interrupt.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %vp_vring_interrupt.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %.pn26.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn23.i, %if.end9.for.body.i_crit_edge ]
  %ret.025.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %info.0.i = getelementptr i8, ptr %.pn26.i, i32 -4
  %7 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.0.i, align 4
  %call9.i = tail call i32 @vring_interrupt(i32 noundef %irq, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 1
  %spec.select.i = select i1 %cmp10.i, i32 1, i32 %ret.025.i
  %9 = ptrtoint ptr %.pn26.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn26.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %virtqueues.i
  br i1 %cmp7.not.i, label %for.body.i.vp_vring_interrupt.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vp_vring_interrupt.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vp_vring_interrupt.exit

vp_vring_interrupt.exit:                          ; preds = %for.body.i.vp_vring_interrupt.exit_crit_edge, %if.end9.vp_vring_interrupt.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end9.vp_vring_interrupt.exit_crit_edge ], [ %spec.select.i, %for.body.i.vp_vring_interrupt.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vp_vring_interrupt.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa.i, %vp_vring_interrupt.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_pci_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6
  %parent = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.virtio_device, ptr %call7.i.i, i32 0, i32 6, i32 35
  %3 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @virtio_pci_release_dev, ptr %release, align 4
  %pci_dev4 = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pci_dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pci_dev, ptr %pci_dev4, align 8
  %virtqueues = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %virtqueues to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %virtqueues, ptr %virtqueues, align 8
  %prev.i = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %virtqueues, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @virtio_pci_probe.__key, i16 noundef signext 3) #8
  %call6 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.if.else45_crit_edge

if.end.if.else45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else45

if.end9:                                          ; preds = %if.end
  %7 = load i8, ptr @force_legacy, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @virtio_pci_legacy_probe(ptr noundef nonnull %call7.i.i) #8
  %8 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %if.then11.if.end16_crit_edge [
    i32 -19, label %if.then11.if.then14_crit_edge
    i32 -12, label %if.then11.if.then14_crit_edge88
  ]

if.then11.if.then14_crit_edge88:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then11.if.then14_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.then11.if.then14_crit_edge, %if.then11.if.then14_crit_edge88
  %call15 = tail call i32 @virtio_pci_modern_probe(ptr noundef nonnull %call7.i.i) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11.if.end16_crit_edge
  %rc.0 = phi i32 [ %call15, %if.then14 ], [ %call12, %if.then11.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool17.not = icmp eq i32 %rc.0, 0
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %if.end16.err_enable_device.thread84_crit_edge

if.end16.err_enable_device.thread84_crit_edge:    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable_device.thread84

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.else:                                          ; preds = %if.end9
  %call20 = tail call i32 @virtio_pci_modern_probe(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -19
  br i1 %cmp21, label %if.then22, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @virtio_pci_legacy_probe(ptr noundef nonnull %call7.i.i) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else.if.end24_crit_edge
  %rc.1 = phi i32 [ %call23, %if.then22 ], [ %call20, %if.else.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool25.not = icmp eq i32 %rc.1, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.end24.err_enable_device.thread84_crit_edge

if.end24.err_enable_device.thread84_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_enable_device.thread84

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  tail call void @pci_set_master(ptr noundef %pci_dev) #8
  %ioaddr = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 4
  %tobool29 = icmp ne ptr %10, null
  %is_legacy = getelementptr inbounds %struct.virtio_pci_device, ptr %call7.i.i, i32 0, i32 4
  %frombool = zext i1 %tobool29 to i8
  %11 = ptrtoint ptr %is_legacy to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_legacy, align 4
  %call32 = tail call i32 @register_virtio_device(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %err_register

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_register:                                     ; preds = %if.end28
  %12 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_legacy, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %err_register
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_pci_legacy_remove(ptr noundef nonnull %call7.i.i) #8
  br label %if.then42

if.else39:                                        ; preds = %err_register
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_pci_modern_remove(ptr noundef nonnull %call7.i.i) #8
  br label %if.then42

err_enable_device.thread84:                       ; preds = %if.end24.err_enable_device.thread84_crit_edge, %if.end16.err_enable_device.thread84_crit_edge
  %rc.2.ph = phi i32 [ %rc.1, %if.end24.err_enable_device.thread84_crit_edge ], [ %rc.0, %if.end16.err_enable_device.thread84_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pci_dev) #8
  br label %if.else45

if.then42:                                        ; preds = %if.else39, %if.then38
  tail call void @pci_disable_device(ptr noundef %pci_dev) #8
  tail call void @put_device(ptr noundef %dev1) #8
  br label %cleanup

if.else45:                                        ; preds = %err_enable_device.thread84, %if.end.if.else45_crit_edge
  %rc.383 = phi i32 [ %rc.2.ph, %err_enable_device.thread84 ], [ %call6, %if.end.if.else45_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %if.then42, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ %rc.383, %if.else45 ], [ %call32, %if.then42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_pci_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %call2 = tail call ptr @get_device(ptr noundef %dev1) #8
  %call3 = tail call zeroext i1 @pci_device_is_present(ptr noundef %pci_dev) #8
  br i1 %call3, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_break_device(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_disable_sriov(ptr noundef %pci_dev) #8
  tail call void @unregister_virtio_device(ptr noundef %1) #8
  %is_legacy = getelementptr inbounds %struct.virtio_pci_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_legacy, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_pci_legacy_remove(ptr noundef %1) #8
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @virtio_pci_modern_remove(ptr noundef %1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  tail call void @pci_disable_device(ptr noundef %pci_dev) #8
  tail call void @put_device(ptr noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_pci_sriov_configure(ptr noundef %pci_dev, i32 noundef %num_vfs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_status, align 4
  %call2 = tail call zeroext i8 %5(ptr noundef %1) #8
  %6 = and i8 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %features.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i, align 8
  %and.i = and i64 %8, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool13.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool13.i.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_vfs_assigned(ptr noundef %pci_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp = icmp eq i32 %num_vfs, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_disable_sriov(ptr noundef %pci_dev) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @pci_enable_sriov(ptr noundef %pci_dev, i32 noundef %num_vfs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  %call13.num_vfs = select i1 %cmp14, i32 %call13, i32 %num_vfs
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ %call13.num_vfs, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_pci_release_dev(ptr noundef %_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %_d, i32 -96
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_pci_legacy_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_pci_modern_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_pci_legacy_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_pci_modern_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_break_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_vfs_assigned(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_pci_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @virtio_device_freeze(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_disable_device(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_pci_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_set_master(ptr noundef %add.ptr) #8
  %call2 = tail call i32 @virtio_device_restore(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_device_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_device_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__param_force_legacy, !1, !"__param_force_legacy", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_pci_common.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_legacytype251, !1, !"__UNIQUE_ID_force_legacytype251", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_legacy252, !4, !"__UNIQUE_ID_force_legacy252", i1 false, i1 false}
!4 = !{!"../drivers/virtio/virtio_pci_common.c", i32 23, i32 1}
!5 = !{ptr @__initcall__kmod_virtio_pci__256_673_virtio_pci_driver_init6, !6, !"__initcall__kmod_virtio_pci__256_673_virtio_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/virtio/virtio_pci_common.c", i32 673, i32 1}
!7 = !{ptr @__exitcall_virtio_pci_driver_exit, !6, !"__exitcall_virtio_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author257, !9, !"__UNIQUE_ID_author257", i1 false, i1 false}
!9 = !{!"../drivers/virtio/virtio_pci_common.c", i32 675, i32 1}
!10 = !{ptr @__UNIQUE_ID_description258, !11, !"__UNIQUE_ID_description258", i1 false, i1 false}
!11 = !{!"../drivers/virtio/virtio_pci_common.c", i32 676, i32 1}
!12 = !{ptr @__UNIQUE_ID_file259, !13, !"__UNIQUE_ID_file259", i1 false, i1 false}
!13 = !{!"../drivers/virtio/virtio_pci_common.c", i32 677, i32 1}
!14 = !{ptr @__UNIQUE_ID_license260, !13, !"__UNIQUE_ID_license260", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version261, !16, !"__UNIQUE_ID_version261", i1 false, i1 false}
!16 = !{!"../drivers/virtio/virtio_pci_common.c", i32 678, i32 1}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @__param_str_force_legacy, !1, !"__param_str_force_legacy", i1 false, i1 false}
!22 = !{ptr @force_legacy, !23, !"force_legacy", i1 false, i1 false}
!23 = !{!"../drivers/virtio/virtio_pci_common.c", i32 19, i32 13}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/virtio/virtio_pci_common.c", i32 371, i32 5}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/virtio/virtio_pci_common.c", i32 174, i32 4}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/virtio/virtio_pci_common.c", i32 194, i32 5}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/virtio/virtio_pci_common.c", i32 663, i32 11}
!32 = !{ptr @virtio_pci_driver, !33, !"virtio_pci_driver", i1 false, i1 false}
!33 = !{!"../drivers/virtio/virtio_pci_common.c", i32 662, i32 26}
!34 = !{ptr @virtio_pci_id_table, !35, !"virtio_pci_id_table", i1 false, i1 false}
!35 = !{!"../drivers/virtio/virtio_pci_common.c", i32 528, i32 35}
!36 = !{ptr @virtio_pci_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/virtio/virtio_pci_common.c", i32 562, i32 2}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @virtio_pci_pm_ops, !40, !"virtio_pci_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/virtio/virtio_pci_common.c", i32 521, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2152541188}
!51 = !{i64 4998996}
!52 = !{i8 0, i8 2}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 4999814}
!55 = !{i64 2152539159}
