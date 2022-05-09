; ModuleID = '/llk/IR_all_yes/drivers/vdpa/vdpa_sim/vdpa_sim.c_pt.bc'
source_filename = "../drivers/vdpa/vdpa_sim/vdpa_sim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vdpasim_create\22, \22a\22\09"
module asm "\09.weak\09__crc_vdpasim_create\09\09\09\09"
module asm "\09.long\09__crc_vdpasim_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdpasim_create:\09\09\09\09\09"
module asm "\09.asciz \09\22vdpasim_create\22\09\09\09\09\09"
module asm "__kstrtabns_vdpasim_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.vdpa_iova_range = type { i64, i64 }
%struct.vdpasim_dev_attr = type { ptr, ptr, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.vdpasim = type { %struct.vdpa_device, ptr, %struct.work_struct, %struct.vdpasim_dev_attr, %struct.spinlock, ptr, ptr, %struct.iova_domain, ptr, i32, i32, i64, %struct.spinlock }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vdpasim_virtqueue = type { %struct.vringh, %struct.vringh_kiov, %struct.vringh_kiov, i16, i8, i64, i64, i64, i32, ptr, ptr }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vhost_iotlb_map = type { %struct.rb_node, %struct.list_head, i64, i64, i64, i64, i32, i32, i64, ptr }

@__param_str_batch_mapping = internal constant [23 x i8] c"vdpa_sim.batch_mapping\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@batch_mapping = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_batch_mapping = internal constant %struct.kernel_param { ptr @__param_str_batch_mapping, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @batch_mapping } }, section "__param", align 4
@__UNIQUE_ID_batch_mappingtype361 = internal constant [36 x i8] c"vdpa_sim.parmtype=batch_mapping:int\00", section ".modinfo", align 1
@__UNIQUE_ID_batch_mapping362 = internal constant [67 x i8] c"vdpa_sim.parm=batch_mapping:Batched mapping 1 -Enable; 0 - Disable\00", section ".modinfo", align 1
@__param_str_max_iotlb_entries = internal constant [27 x i8] c"vdpa_sim.max_iotlb_entries\00", align 1
@max_iotlb_entries = internal global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_max_iotlb_entries = internal constant %struct.kernel_param { ptr @__param_str_max_iotlb_entries, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @max_iotlb_entries } }, section "__param", align 4
@__UNIQUE_ID_max_iotlb_entriestype363 = internal constant [40 x i8] c"vdpa_sim.parmtype=max_iotlb_entries:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_iotlb_entries364 = internal constant [100 x i8] c"vdpa_sim.parm=max_iotlb_entries:Maximum number of iotlb entries. 0 means unlimited. (default: 2048)\00", section ".modinfo", align 1
@vdpasim_batch_config_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @vdpasim_set_vq_address, ptr @vdpasim_set_vq_num, ptr @vdpasim_kick_vq, ptr @vdpasim_set_vq_cb, ptr @vdpasim_set_vq_ready, ptr @vdpasim_get_vq_ready, ptr @vdpasim_set_vq_state, ptr @vdpasim_get_vq_state, ptr null, ptr null, ptr @vdpasim_get_vq_align, ptr @vdpasim_get_device_features, ptr @vdpasim_set_driver_features, ptr @vdpasim_get_driver_features, ptr @vdpasim_set_config_cb, ptr @vdpasim_get_vq_num_max, ptr null, ptr @vdpasim_get_device_id, ptr @vdpasim_get_vendor_id, ptr @vdpasim_get_status, ptr @vdpasim_set_status, ptr @vdpasim_reset, ptr @vdpasim_get_config_size, ptr @vdpasim_get_config, ptr @vdpasim_set_config, ptr @vdpasim_get_generation, ptr @vdpasim_get_iova_range, ptr @vdpasim_set_map, ptr null, ptr null, ptr @vdpasim_free }, [36 x i8] zeroinitializer }, align 32
@vdpasim_config_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @vdpasim_set_vq_address, ptr @vdpasim_set_vq_num, ptr @vdpasim_kick_vq, ptr @vdpasim_set_vq_cb, ptr @vdpasim_set_vq_ready, ptr @vdpasim_get_vq_ready, ptr @vdpasim_set_vq_state, ptr @vdpasim_get_vq_state, ptr null, ptr null, ptr @vdpasim_get_vq_align, ptr @vdpasim_get_device_features, ptr @vdpasim_set_driver_features, ptr @vdpasim_get_driver_features, ptr @vdpasim_set_config_cb, ptr @vdpasim_get_vq_num_max, ptr null, ptr @vdpasim_get_device_id, ptr @vdpasim_get_vendor_id, ptr @vdpasim_get_status, ptr @vdpasim_set_status, ptr @vdpasim_reset, ptr @vdpasim_get_config_size, ptr @vdpasim_get_config, ptr @vdpasim_set_config, ptr @vdpasim_get_generation, ptr @vdpasim_get_iova_range, ptr null, ptr @vdpasim_dma_map, ptr @vdpasim_dma_unmap, ptr @vdpasim_free }, [36 x i8] zeroinitializer }, align 32
@vdpasim_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&vdpasim->work)\00", [62 x i8] zeroinitializer }, align 32
@vdpasim_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vdpasim->lock\00", [17 x i8] zeroinitializer }, align 32
@vdpasim_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vdpasim->iommu_lock\00", [43 x i8] zeroinitializer }, align 32
@vdpasim_dma_ops = internal constant { %struct.dma_map_ops, [36 x i8] } { %struct.dma_map_ops { ptr @vdpasim_alloc_coherent, ptr @vdpasim_free_coherent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vdpasim_map_page, ptr @vdpasim_unmap_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vdpasim_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdpasim_create = external dso_local constant [0 x i8], align 1
@__ksymtab_vdpasim_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdpasim_create to i32), ptr @__kstrtab_vdpasim_create, ptr @__kstrtabns_vdpasim_create }, section "___ksymtab_gpl+vdpasim_create", align 4
@__UNIQUE_ID_version365 = internal constant [21 x i8] c"vdpa_sim.version=0.1\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdpa_sim\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_file366 = internal constant [45 x i8] c"vdpa_sim.file=drivers/vdpa/vdpa_sim/vdpa_sim\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [24 x i8] c"vdpa_sim.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author368 = internal constant [49 x i8] c"vdpa_sim.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description369 = internal constant [48 x i8] c"vdpa_sim.description=vDPA Device Simulator core\00", section ".modinfo", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.vdpasim_get_iova_range.range = private unnamed_addr constant %struct.vdpa_iova_range { i64 0, i64 -1 }, align 8
@switch.table.vdpasim_map_page = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"batch_mapping\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 29, i32 12 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"max_iotlb_entries\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 33, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"vdpasim_batch_config_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 643, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"vdpasim_config_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 613, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 261, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 262, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 263, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"vdpasim_dma_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 231, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [36 x i8] c"../drivers/vdpa/vdpa_sim/vdpa_sim.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 672, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [30 x i8] c"switch.table.vdpasim_map_page\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_batch_mapping362, ptr @__UNIQUE_ID_batch_mappingtype361, ptr @__UNIQUE_ID_description369, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__UNIQUE_ID_max_iotlb_entries364, ptr @__UNIQUE_ID_max_iotlb_entriestype363, ptr @__UNIQUE_ID_version365, ptr @__ksymtab_vdpasim_create, ptr @__modver_attr, ptr @__param_batch_mapping, ptr @__param_max_iotlb_entries, ptr @batch_mapping, ptr @max_iotlb_entries, ptr @vdpasim_batch_config_ops, ptr @vdpasim_config_ops, ptr @vdpasim_create.__key, ptr @.str, ptr @vdpasim_create.__key.1, ptr @.str.2, ptr @vdpasim_create.__key.3, ptr @.str.4, ptr @vdpasim_dma_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.vdpasim_map_page], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batch_mapping to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_iotlb_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_batch_config_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_config_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_dma_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vdpasim_map_page to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vdpasim_create(ptr nocapture noundef readonly %dev_attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @batch_mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %vdpasim_config_ops.vdpasim_batch_config_ops = select i1 %tobool.not, ptr @vdpasim_config_ops, ptr @vdpasim_batch_config_ops
  %name = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call = tail call ptr @__vdpa_alloc_device(ptr noundef null, ptr noundef nonnull %vdpasim_config_ops.vdpasim_batch_config_ops, i32 noundef 2448, ptr noundef %2, i1 noundef zeroext false) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call to i32
  br label %err_alloc

if.end4:                                          ; preds = %entry
  %dev_attr5 = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %dev_attr5, ptr %dev_attr, i32 48)
  %work = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @vdpasim_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry9, ptr %prev.i, align 4
  %work_fn = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 7
  %8 = ptrtoint ptr %work_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %work_fn, align 8
  %func = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %func, align 4
  %lock = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vdpasim_create.__key.1, i16 noundef signext 3) #10
  %iommu_lock = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %iommu_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @vdpasim_create.__key.3, i16 noundef signext 3) #10
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 19
  %dma_mask = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  %call.i = tail call i32 @dma_set_mask(ptr noundef %call, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i99 = icmp eq i32 %call.i, 0
  br i1 %cmp.i99, label %if.end23, label %if.end4.err_iommu_crit_edge

if.end4.err_iommu_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

if.end23:                                         ; preds = %if.end4
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %call, i64 noundef -1) #10
  %dma_ops1.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 17
  %12 = ptrtoint ptr %dma_ops1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vdpasim_dma_ops, ptr %dma_ops1.i, align 4
  %13 = ptrtoint ptr %dev_attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_attr, align 8
  %mdev = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 9
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mdev, align 4
  %config_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 3
  %16 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %config_size, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  %config = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %config, align 4
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end23.err_iommu_crit_edge, label %if.end29

if.end23.err_iommu_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

if.end29:                                         ; preds = %if.end23
  %nvqs = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 5
  %19 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nvqs, align 8
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 128) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !55

kcalloc.exit.thread:                              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %vqs109 = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %vqs109 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %vqs109, align 8
  br label %err_iommu

if.end7.i.i:                                      ; preds = %if.end29
  %24 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #13
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %vqs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i, ptr %vqs, align 8
  %tobool32.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool32.not, label %if.end7.i.i.err_iommu_crit_edge, label %if.end34

if.end7.i.i.err_iommu_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

if.end34:                                         ; preds = %if.end7.i.i
  %26 = load i32, ptr @max_iotlb_entries, align 4
  %call35 = tail call ptr @vhost_iotlb_alloc(i32 noundef %26, i32 noundef 0) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %iommu to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35, ptr %iommu, align 8
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.end34.err_iommu_crit_edge, label %if.end39

if.end34.err_iommu_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

if.end39:                                         ; preds = %if.end34
  %buffer_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 4
  %28 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_size, align 4
  %call.i104 = tail call noalias ptr @kvmalloc_node(i32 noundef %29, i32 noundef 3264, i32 noundef -1) #13
  %buffer = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 8
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i104, ptr %buffer, align 8
  %tobool42.not = icmp eq ptr %call.i104, null
  br i1 %tobool42.not, label %if.end39.err_iommu_crit_edge, label %for.cond.preheader

if.end39.err_iommu_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

for.cond.preheader:                               ; preds = %if.end39
  %31 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nvqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp116 = icmp sgt i32 %32, 0
  br i1 %cmp116, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %33 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vqs, align 8
  %arrayidx = getelementptr %struct.vdpasim_virtqueue, ptr %34, i32 %i.0117
  %35 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iommu, align 8
  tail call void @vringh_set_iotlb(ptr noundef %arrayidx, ptr noundef %36, ptr noundef %iommu_lock) #10
  %inc = add nuw nsw i32 %i.0117, 1
  %37 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nvqs, align 8
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call49 = tail call i32 @iova_cache_get() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %for.end.err_iommu_crit_edge

for.end.err_iommu_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_iommu

if.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %iova = getelementptr inbounds %struct.vdpasim, ptr %call, i32 0, i32 7
  tail call void @init_iova_domain(ptr noundef %iova, i32 noundef 1, i32 noundef 0) #10
  %dma_dev = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 1
  %39 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %dma_dev, align 8
  br label %cleanup

err_iommu:                                        ; preds = %for.end.err_iommu_crit_edge, %if.end39.err_iommu_crit_edge, %if.end34.err_iommu_crit_edge, %if.end7.i.i.err_iommu_crit_edge, %kcalloc.exit.thread, %if.end23.err_iommu_crit_edge, %if.end4.err_iommu_crit_edge
  %ret.0 = phi i32 [ %call49, %for.end.err_iommu_crit_edge ], [ -12, %if.end39.err_iommu_crit_edge ], [ -12, %if.end34.err_iommu_crit_edge ], [ -12, %if.end7.i.i.err_iommu_crit_edge ], [ -12, %if.end23.err_iommu_crit_edge ], [ -12, %if.end4.err_iommu_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @put_device(ptr noundef %call) #10
  br label %err_alloc

err_alloc:                                        ; preds = %err_iommu, %if.then2
  %ret.1 = phi i32 [ %3, %if.then2 ], [ %ret.0, %err_iommu ]
  %40 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end52
  %retval.0 = phi ptr [ %40, %err_alloc ], [ %call, %if.end52 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vdpa_alloc_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vringh_set_iotlb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vdpasim_alloc_coherent(ptr noundef %dev, i32 noundef %size, ptr nocapture noundef writeonly %dma_addr, i32 noundef %flag, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef %flag) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_addr, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call9.i to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %1) #10
  %call3 = tail call fastcc i32 @vdpasim_map_range(ptr noundef %dev, i32 noundef %call.i, i32 noundef %size, i32 noundef 3)
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %if.then ], [ %call9.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_free_coherent(ptr noundef %dev, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma_addr, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock.i) #10
  %iommu.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 8
  %conv.i = zext i32 %dma_addr to i64
  %conv2.i = zext i32 %size to i64
  %add.i = add nsw i64 %conv2.i, -1
  %sub.i = add nsw i64 %add.i, %conv.i
  tail call void @vhost_iotlb_del_range(ptr noundef %1, i64 noundef %conv.i, i64 noundef %sub.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock.i) #10
  %iova.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 7
  %granule.i.i.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %granule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granule.i.i.i, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #10, !range !56
  %shr.i.i = lshr i32 %dma_addr, %4
  tail call void @free_iova(ptr noundef %iova.i, i32 noundef %shr.i.i) #10
  tail call void @kfree(ptr noundef %vaddr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_map_page(ptr noundef %dev, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dir)
  %0 = icmp ult i32 %dir, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vdpasim_map_page, i32 0, i32 %dir
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %add = add i32 %sub.ptr.div, %1
  %shl = shl i32 %add, 12
  %add1 = add i32 %shl, %offset
  %call3 = tail call fastcc i32 @vdpasim_map_range(ptr noundef %dev, i32 noundef %add1, i32 noundef %size, i32 noundef %switch.load)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %switch.lookup ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_unmap_page(ptr noundef %dev, i32 noundef %dma_addr, i32 noundef %size, i32 noundef %dir, i32 noundef %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock.i) #10
  %iommu.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 8
  %conv.i = zext i32 %dma_addr to i64
  %conv2.i = zext i32 %size to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add nsw i64 %add.i, %conv2.i
  tail call void @vhost_iotlb_del_range(ptr noundef %1, i64 noundef %conv.i, i64 noundef %sub.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock.i) #10
  %iova.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 7
  %granule.i.i.i = getelementptr inbounds %struct.vdpasim, ptr %dev, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %granule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %granule.i.i.i, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 false) #10, !range !56
  %shr.i.i = lshr i32 %dma_addr, %4
  tail call void @free_iova(ptr noundef %iova.i, i32 noundef %shr.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vdpasim_map_range(ptr noundef %vdpasim, i32 noundef %paddr, i32 noundef %size, i32 noundef %perm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iova1 = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 7
  %granule.i = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granule.i, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #10, !range !56
  %shr = lshr i32 %size, %2
  %call3 = tail call ptr @alloc_iova(ptr noundef %iova1, i32 noundef %shr, i32 noundef -2, i1 noundef zeroext true) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %call3, i32 0, i32 2
  %3 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pfn_lo.i, align 4
  %5 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %granule.i, align 4
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 false) #10, !range !56
  %shl.i = shl i32 %4, %7
  %iommu_lock = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 6
  %8 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iommu, align 8
  %conv = zext i32 %shl.i to i64
  %conv7 = zext i32 %size to i64
  %add = add nsw i64 %conv7, -1
  %sub = add nsw i64 %add, %conv
  %conv8 = zext i32 %paddr to i64
  %call9 = tail call i32 @vhost_iotlb_add_range(ptr noundef %9, i64 noundef %conv, i64 noundef %sub, i64 noundef %conv8, i32 noundef %perm) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__free_iova(ptr noundef %iova1, ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then12 ], [ -1, %entry.cleanup_crit_edge ], [ %shl.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_iotlb_add_range(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_del_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_set_vq_address(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %desc_addr = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 5
  %2 = ptrtoint ptr %desc_addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %desc_area, ptr %desc_addr, align 8
  %driver_addr = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 7
  %3 = ptrtoint ptr %driver_addr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %driver_area, ptr %driver_addr, align 8
  %device_addr = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 6
  %4 = ptrtoint ptr %device_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %device_area, ptr %device_addr, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_set_vq_num(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, i32 noundef %num) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %num1 = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 8
  %2 = ptrtoint ptr %num1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num, ptr %num1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_kick_vq(ptr noundef %vdpa, i16 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %ready = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_set_vq_cb(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef readonly %cb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb, align 4
  %cb1 = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 10
  %4 = ptrtoint ptr %cb1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %cb1, align 8
  %private = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 4
  %private2 = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 9
  %7 = ptrtoint ptr %private2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %private2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_set_vq_ready(ptr noundef %vdpa, i16 noundef zeroext %idx, i1 noundef zeroext %ready) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ready to i8
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %ready1 = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %ready1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %ready1, align 2
  br i1 %ready, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vqs, align 8
  %arrayidx.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %idxprom
  %supported_features.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %supported_features.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %supported_features.i, align 8
  %desc_addr.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %idxprom, i32 5
  %7 = ptrtoint ptr %desc_addr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %desc_addr.i, align 8
  %conv.i = trunc i64 %8 to i32
  %9 = inttoptr i32 %conv.i to ptr
  %driver_addr.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %idxprom, i32 7
  %10 = ptrtoint ptr %driver_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %driver_addr.i, align 8
  %conv1.i = trunc i64 %11 to i32
  %12 = inttoptr i32 %conv1.i to ptr
  %device_addr.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %idxprom, i32 6
  %13 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %device_addr.i, align 8
  %conv2.i = trunc i64 %14 to i32
  %15 = inttoptr i32 %conv2.i to ptr
  %call.i = tail call i32 @vringh_init_iotlb(ptr noundef %arrayidx.i, i64 noundef %6, i32 noundef 256, i1 noundef zeroext false, ptr noundef %9, ptr noundef %12, ptr noundef %15) #10
  %notify.i = getelementptr inbounds %struct.vringh, ptr %arrayidx.i, i32 0, i32 9
  %16 = ptrtoint ptr %notify.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vdpasim_vq_notify, ptr %notify.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vdpasim_get_vq_ready(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %ready = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ready, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_set_vq_state(ptr noundef %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 2
  %last_avail_idx = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 0, i32 3
  %4 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %last_avail_idx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_vq_state(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx, ptr nocapture noundef writeonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %idxprom = zext i16 %idx to i32
  %last_avail_idx = getelementptr %struct.vdpasim_virtqueue, ptr %1, i32 %idxprom, i32 0, i32 3
  %2 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %last_avail_idx, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %state, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_vq_align(ptr nocapture noundef readnone %vdpa) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vdpasim_get_device_features(ptr nocapture noundef readonly %vdpa) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %supported_features = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %supported_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %supported_features, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_set_driver_features(ptr nocapture noundef %vdpa, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %supported_features = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %supported_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %supported_features, align 8
  %and1 = and i64 %1, %features
  %features2 = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 11
  %2 = ptrtoint ptr %features2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %and1, ptr %features2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @vdpasim_get_driver_features(ptr nocapture noundef readonly %vdpa) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 11
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_set_config_cb(ptr nocapture noundef %vdpa, ptr nocapture noundef %cb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vdpasim_get_vq_num_max(ptr nocapture noundef readnone %vdpa) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 256
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_device_id(ptr nocapture noundef readonly %vdpa) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_vendor_id(ptr nocapture noundef readnone %vdpa) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vdpasim_get_status(ptr noundef %vdpa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %status1 = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 9
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %conv = trunc i32 %1 to i8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_set_status(ptr noundef %vdpa, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %conv = zext i8 %status to i32
  %status1 = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 9
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %status1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_reset(ptr noundef %vdpa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %status = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %nvqs.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nvqs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp13.i = icmp sgt i32 %2, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.vdpasim_do_reset.exit_crit_edge

entry.vdpasim_do_reset.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdpasim_do_reset.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vqs.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %supported_features.i.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vqs.i, align 8
  %arrayidx.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %i.014.i
  %ready.i.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %i.014.i, i32 4
  %5 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ready.i.i, align 2
  %desc_addr.i.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %i.014.i, i32 5
  %cb.i.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %i.014.i, i32 10
  %6 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cb.i.i, align 8
  %private.i.i = getelementptr %struct.vdpasim_virtqueue, ptr %4, i32 %i.014.i, i32 9
  %7 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %private.i.i, align 4
  %8 = call ptr @memset(ptr %desc_addr.i.i, i32 0, i32 24)
  %9 = ptrtoint ptr %supported_features.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %supported_features.i.i, align 8
  %call.i.i = tail call i32 @vringh_init_iotlb(ptr noundef %arrayidx.i, i64 noundef %10, i32 noundef 256, i1 noundef zeroext false, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %notify.i.i = getelementptr inbounds %struct.vringh, ptr %arrayidx.i, i32 0, i32 9
  %11 = ptrtoint ptr %notify.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %notify.i.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %12 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nvqs.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vdpasim_do_reset.exit_crit_edge

for.body.i.vdpasim_do_reset.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vdpasim_do_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

vdpasim_do_reset.exit:                            ; preds = %for.body.i.vdpasim_do_reset.exit_crit_edge, %entry.vdpasim_do_reset.exit_crit_edge
  %iommu_lock.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock.i) #10
  %iommu.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 6
  %14 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iommu.i, align 8
  tail call void @vhost_iotlb_reset(ptr noundef %15) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock.i) #10
  %features.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 11
  %16 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %features.i, align 8
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %status, align 4
  %generation.i = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 10
  %18 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation.i, align 8
  %inc2.i = add i32 %19, 1
  store i32 %inc2.i, ptr %generation.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_config_size(ptr nocapture noundef readonly %vdpa) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config_size = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_get_config(ptr noundef %vdpa, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  %config_size = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_config = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %get_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %config = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 5
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  tail call void %3(ptr noundef %vdpa, ptr noundef %5) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %config6 = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 5
  %6 = ptrtoint ptr %config6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config6, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %offset
  %8 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_set_config(ptr noundef %vdpa, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %offset
  %config_size = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 5
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  %set_config = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 9
  %5 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_config, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  tail call void %6(ptr noundef %vdpa, ptr noundef %8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdpasim_get_generation(ptr nocapture noundef readonly %vdpa) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %generation = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 10
  %0 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_get_iova_range(ptr noalias nocapture writeonly sret(%struct.vdpa_iova_range) align 8 %agg.result, ptr nocapture noundef readnone %vdpa) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %agg.result, ptr @__const.vdpasim_get_iova_range.range, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_dma_map(ptr noundef %vdpa, i64 noundef %iova, i64 noundef %size, i64 noundef %pa, i32 noundef %perm, ptr noundef %opaque) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 6
  %0 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu, align 8
  %add = add i64 %iova, -1
  %sub = add i64 %add, %size
  %call1 = tail call i32 @vhost_iotlb_add_range_ctx(ptr noundef %1, i64 noundef %iova, i64 noundef %sub, i64 noundef %pa, i32 noundef %perm, ptr noundef %opaque) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_dma_unmap(ptr noundef %vdpa, i64 noundef %iova, i64 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 6
  %0 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu, align 8
  %add = add i64 %iova, -1
  %sub = add i64 %add, %size
  tail call void @vhost_iotlb_del_range(ptr noundef %1, i64 noundef %iova, i64 noundef %sub) #10
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_free(ptr noundef %vdpa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #10
  %nvqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vqs = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %vringh_kiov_cleanup.exit27.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vringh_kiov_cleanup.exit27.for.body_crit_edge ]
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %out_iov = getelementptr %struct.vdpasim_virtqueue, ptr %3, i32 %i.029, i32 2
  %max_num.i = getelementptr %struct.vdpasim_virtqueue, ptr %3, i32 %i.029, i32 2, i32 4
  %4 = ptrtoint ptr %max_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_num.i, align 4
  %and.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.vringh_kiov_cleanup.exit_crit_edge, label %if.then.i

for.body.vringh_kiov_cleanup.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %vringh_kiov_cleanup.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %out_iov to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_iov, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %vringh_kiov_cleanup.exit

vringh_kiov_cleanup.exit:                         ; preds = %if.then.i, %for.body.vringh_kiov_cleanup.exit_crit_edge
  %8 = call ptr @memset(ptr %out_iov, i32 0, i32 20)
  %9 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vqs, align 8
  %in_iov = getelementptr %struct.vdpasim_virtqueue, ptr %10, i32 %i.029, i32 1
  %max_num.i23 = getelementptr %struct.vdpasim_virtqueue, ptr %10, i32 %i.029, i32 1, i32 4
  %11 = ptrtoint ptr %max_num.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_num.i23, align 4
  %and.i24 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit27_crit_edge, label %if.then.i26

vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit27_crit_edge: ; preds = %vringh_kiov_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vringh_kiov_cleanup.exit27

if.then.i26:                                      ; preds = %vringh_kiov_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %in_iov to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %in_iov, align 4
  tail call void @kfree(ptr noundef %14) #10
  br label %vringh_kiov_cleanup.exit27

vringh_kiov_cleanup.exit27:                       ; preds = %if.then.i26, %vringh_kiov_cleanup.exit.vringh_kiov_cleanup.exit27_crit_edge
  %15 = call ptr @memset(ptr %in_iov, i32 0, i32 20)
  %inc = add nuw nsw i32 %i.029, 1
  %16 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvqs, align 8
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %vringh_kiov_cleanup.exit27.for.body_crit_edge, label %vringh_kiov_cleanup.exit27.for.end_crit_edge

vringh_kiov_cleanup.exit27.for.end_crit_edge:     ; preds = %vringh_kiov_cleanup.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

vringh_kiov_cleanup.exit27.for.body_crit_edge:    ; preds = %vringh_kiov_cleanup.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %vringh_kiov_cleanup.exit27.for.end_crit_edge, %entry.for.end_crit_edge
  %dma_dev.i = getelementptr inbounds %struct.vdpa_device, ptr %vdpa, i32 0, i32 1
  %18 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_dev.i, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %iova = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 7
  tail call void @put_iova_domain(ptr noundef %iova) #10
  tail call void @iova_cache_put() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %buffer = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 8
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 8
  tail call void @kvfree(ptr noundef %21) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 6
  %22 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iommu, align 8
  %tobool5.not = icmp eq ptr %23, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vhost_iotlb_free(ptr noundef nonnull %23) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %vqs9 = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 1
  %24 = ptrtoint ptr %vqs9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vqs9, align 8
  tail call void @kfree(ptr noundef %25) #10
  %config = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 5
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config, align 4
  tail call void @kfree(ptr noundef %27) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_init_iotlb(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_vq_notify(ptr nocapture noundef readonly %vring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %vring, i32 0, i32 10
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %vring, i32 0, i32 9
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 %1(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_iotlb_add_range_ctx(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_set_map(ptr noundef %vdpa, ptr noundef %iotlb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_lock = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %iommu_lock) #10
  %iommu = getelementptr inbounds %struct.vdpasim, ptr %vdpa, i32 0, i32 6
  %0 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu, align 8
  tail call void @vhost_iotlb_reset(ptr noundef %1) #10
  %call1 = tail call ptr @vhost_iotlb_itree_first(ptr noundef %iotlb, i64 noundef 0, i64 noundef -1) #10
  %tobool.not28 = icmp eq ptr %call1, null
  br i1 %tobool.not28, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %map.029 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iommu, align 8
  %start3 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.029, i32 0, i32 2
  %4 = ptrtoint ptr %start3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start3, align 8
  %last4 = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.029, i32 0, i32 3
  %6 = ptrtoint ptr %last4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last4, align 8
  %addr = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.029, i32 0, i32 5
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %addr, align 8
  %perm = getelementptr inbounds %struct.vhost_iotlb_map, ptr %map.029, i32 0, i32 6
  %10 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %perm, align 8
  %call5 = tail call i32 @vhost_iotlb_add_range(ptr noundef %3, i64 noundef %5, i64 noundef %7, i64 noundef %9, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc, label %err

for.inc:                                          ; preds = %for.body
  %call7 = tail call ptr @vhost_iotlb_itree_next(ptr noundef nonnull %map.029, i64 noundef 0, i64 noundef -1) #10
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err:                                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iommu, align 8
  tail call void @vhost_iotlb_reset(ptr noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %err ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %iommu_lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_first(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_itree_next(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !37, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__param_batch_mapping, !1, !"__param_batch_mapping", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_batch_mappingtype361, !1, !"__UNIQUE_ID_batch_mappingtype361", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_batch_mapping362, !4, !"__UNIQUE_ID_batch_mapping362", i1 false, i1 false}
!4 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 31, i32 1}
!5 = !{ptr @__param_max_iotlb_entries, !6, !"__param_max_iotlb_entries", i1 false, i1 false}
!6 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_iotlb_entriestype363, !6, !"__UNIQUE_ID_max_iotlb_entriestype363", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_iotlb_entries364, !9, !"__UNIQUE_ID_max_iotlb_entries364", i1 false, i1 false}
!9 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 35, i32 1}
!10 = !{ptr @vdpasim_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 261, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vdpasim_create.__key.1, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 262, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vdpasim_create.__key.3, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 263, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__ksymtab_vdpasim_create, !20, !"__ksymtab_vdpasim_create", i1 false, i1 false}
!20 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 309, i32 1}
!21 = !{ptr @__UNIQUE_ID_version365, !22, !"__UNIQUE_ID_version365", i1 false, i1 false}
!22 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 672, i32 1}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__modver_attr, !22, !"__modver_attr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file366, !28, !"__UNIQUE_ID_file366", i1 false, i1 false}
!28 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 673, i32 1}
!29 = !{ptr @__UNIQUE_ID_license367, !28, !"__UNIQUE_ID_license367", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_author368, !31, !"__UNIQUE_ID_author368", i1 false, i1 false}
!31 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 674, i32 1}
!32 = !{ptr @__UNIQUE_ID_description369, !33, !"__UNIQUE_ID_description369", i1 false, i1 false}
!33 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 675, i32 1}
!34 = !{ptr @__param_str_batch_mapping, !1, !"__param_str_batch_mapping", i1 false, i1 false}
!35 = !{ptr @batch_mapping, !36, !"batch_mapping", i1 false, i1 false}
!36 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 29, i32 12}
!37 = !{ptr @__param_str_max_iotlb_entries, !6, !"__param_str_max_iotlb_entries", i1 false, i1 false}
!38 = !{ptr @max_iotlb_entries, !39, !"max_iotlb_entries", i1 false, i1 false}
!39 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 33, i32 12}
!40 = !{ptr @vdpasim_dma_ops, !41, !"vdpasim_dma_ops", i1 false, i1 false}
!41 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 231, i32 33}
!42 = !{ptr @vdpasim_config_ops, !43, !"vdpasim_config_ops", i1 false, i1 false}
!43 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 613, i32 37}
!44 = !{ptr @vdpasim_batch_config_ops, !45, !"vdpasim_batch_config_ops", i1 false, i1 false}
!45 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim.c", i32 643, i32 37}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i32 0, i32 33}
!57 = !{i8 0, i8 2}
