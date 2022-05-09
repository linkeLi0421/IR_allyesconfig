; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.134, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_pm = type { ptr, %struct.nvkm_engine, %struct.anon.136, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.136 = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_perfdom = type { %struct.nvkm_object, ptr, %struct.list_head, %struct.list_head, ptr, [4 x ptr], [32 x i8], i32, i8, i32, i16, [0 x %struct.nvkm_perfsig] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_perfsig = type { ptr, [8 x i8] }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specmux = type { i32, i8, ptr, i8 }
%struct.nvkm_perfsrc = type { %struct.list_head, ptr, i32, i32, i8, i8 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_perfmon = type { %struct.nvkm_object, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvif_perfmon_query_domain_v0 = type { i8, i8, i8, i8, i16, [2 x i8], [64 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_perfmon_query_signal_v0 = type { i8, i8, i16, i8, i8, [2 x i8], [64 x i8] }
%struct.nvif_perfmon_query_source_v0 = type { i8, i8, i8, i8, [4 x i8], i32, i32, [64 x i8] }
%struct.nvif_perfdom_v0 = type { i8, i8, i8, [1 x i8], [4 x %struct.anon.147] }
%struct.anon.147 = type { [4 x i8], [4 x [8 x i64]], i16 }
%struct.nvkm_perfctr = type { %struct.list_head, i8, [4 x i8], [4 x [8 x i64]], i32, i32, i32 }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvif_perfdom_read_v0 = type { i8, [7 x i8], [4 x i32], i32, [4 x i8] }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s/%02x/%02x\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s/%02x\00", [24 x i8] zeroinitializer }, align 32
@nvkm_pm_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pm->client.lock\00", [47 x i8] zeroinitializer }, align 32
@nvkm_pm = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_pm_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_pm_fini, ptr null, ptr null, ptr null, %struct.anon { ptr @nvkm_pm_oclass_get }, %struct.anon.134 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@nvkm_pm_oclass = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_pm_oclass_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@nvkm_perfmon = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_perfmon_dtor, ptr null, ptr null, ptr @nvkm_perfmon_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_perfmon_child_get }, [36 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query domain size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvkm_perfmon_mthd_query_domain\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c\00", [50 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_domain._entry_ptr = internal global ptr @nvkm_perfmon_mthd_query_domain._entry, section ".printk_index", align 4
@nvkm_perfmon_mthd_query_domain._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon domain vers %d iter %02x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_domain._entry_ptr.9 = internal global ptr @nvkm_perfmon_mthd_query_domain._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvPmShowAll\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NvPmUnnamed\00", [20 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query signal size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvkm_perfmon_mthd_query_signal\00", [33 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_signal._entry_ptr = internal global ptr @nvkm_perfmon_mthd_query_signal._entry, section ".printk_index", align 4
@nvkm_perfmon_mthd_query_signal._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.6, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query signal vers %d dom %d iter %04x\0A\00", [49 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_signal._entry_ptr.16 = internal global ptr @nvkm_perfmon_mthd_query_signal._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/%s/%02x\00", [23 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon query source size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvkm_perfmon_mthd_query_source\00", [33 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_source._entry_ptr = internal global ptr @nvkm_perfmon_mthd_query_source._entry, section ".printk_index", align 4
@nvkm_perfmon_mthd_query_source._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfmon source vers %d dom %d sig %02x iter %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@nvkm_perfmon_mthd_query_source._entry_ptr.22 = internal global ptr @nvkm_perfmon_mthd_query_source._entry.20, section ".printk_index", align 4
@nvkm_perfdom_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create perfdom size %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_perfdom_new_\00", [46 x i8] zeroinitializer }, align 32
@nvkm_perfdom_new_._entry_ptr = internal global ptr @nvkm_perfdom_new_._entry, section ".printk_index", align 4
@nvkm_perfdom_new_._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.6, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create perfdom vers %d dom %d mode %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_perfdom_new_._entry_ptr.27 = internal global ptr @nvkm_perfdom_new_._entry.25, section ".printk_index", align 4
@nvkm_perfdom = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_perfdom_dtor, ptr null, ptr null, ptr @nvkm_perfdom_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_perfsrc_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 198, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: disabled source %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvkm_perfsrc_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_perfsrc_disable._entry_ptr = internal global ptr @nvkm_perfsrc_disable._entry, section ".printk_index", align 4
@nvkm_perfdom_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom init size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_perfdom_init\00", [46 x i8] zeroinitializer }, align 32
@nvkm_perfdom_init._entry_ptr = internal global ptr @nvkm_perfdom_init._entry, section ".printk_index", align 4
@nvkm_perfdom_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.6, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom init\0A\00", [50 x i8] zeroinitializer }, align 32
@nvkm_perfdom_init._entry_ptr.36 = internal global ptr @nvkm_perfdom_init._entry.34, section ".printk_index", align 4
@nvkm_perfsrc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 161, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: enabled source %08x %08x %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_perfsrc_enable\00", [44 x i8] zeroinitializer }, align 32
@nvkm_perfsrc_enable._entry_ptr = internal global ptr @nvkm_perfsrc_enable._entry, section ".printk_index", align 4
@nvkm_perfdom_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom sample size %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_perfdom_sample\00", [44 x i8] zeroinitializer }, align 32
@nvkm_perfdom_sample._entry_ptr = internal global ptr @nvkm_perfdom_sample._entry, section ".printk_index", align 4
@nvkm_perfdom_sample._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.6, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom sample\0A\00", [48 x i8] zeroinitializer }, align 32
@nvkm_perfdom_sample._entry_ptr.43 = internal global ptr @nvkm_perfdom_sample._entry.41, section ".printk_index", align 4
@nvkm_perfdom_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom read size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_perfdom_read\00", [46 x i8] zeroinitializer }, align 32
@nvkm_perfdom_read._entry_ptr = internal global ptr @nvkm_perfdom_read._entry, section ".printk_index", align 4
@nvkm_perfdom_read._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: perfdom read vers %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_perfdom_read._entry_ptr.48 = internal global ptr @nvkm_perfdom_read._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 789, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 793, i32 7 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 866, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"nvkm_pm\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 853, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 750, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"nvkm_pm_oclass\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 683, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"nvkm_perfmon\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 639, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 446, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 448, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 493, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 494, i32 48 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 497, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 499, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 514, i32 6 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 550, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 552, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 381, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 383, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"nvkm_perfdom\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 360, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 197, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 217, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 219, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 159, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 247, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 249, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 271, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 273, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @nvkm_perfdom_init._entry, ptr @nvkm_perfdom_init._entry.34, ptr @nvkm_perfdom_init._entry_ptr, ptr @nvkm_perfdom_init._entry_ptr.36, ptr @nvkm_perfdom_new_._entry, ptr @nvkm_perfdom_new_._entry.25, ptr @nvkm_perfdom_new_._entry_ptr, ptr @nvkm_perfdom_new_._entry_ptr.27, ptr @nvkm_perfdom_read._entry, ptr @nvkm_perfdom_read._entry.46, ptr @nvkm_perfdom_read._entry_ptr, ptr @nvkm_perfdom_read._entry_ptr.48, ptr @nvkm_perfdom_sample._entry, ptr @nvkm_perfdom_sample._entry.41, ptr @nvkm_perfdom_sample._entry_ptr, ptr @nvkm_perfdom_sample._entry_ptr.43, ptr @nvkm_perfmon_mthd_query_domain._entry, ptr @nvkm_perfmon_mthd_query_domain._entry.7, ptr @nvkm_perfmon_mthd_query_domain._entry_ptr, ptr @nvkm_perfmon_mthd_query_domain._entry_ptr.9, ptr @nvkm_perfmon_mthd_query_signal._entry, ptr @nvkm_perfmon_mthd_query_signal._entry.14, ptr @nvkm_perfmon_mthd_query_signal._entry_ptr, ptr @nvkm_perfmon_mthd_query_signal._entry_ptr.16, ptr @nvkm_perfmon_mthd_query_source._entry, ptr @nvkm_perfmon_mthd_query_source._entry.20, ptr @nvkm_perfmon_mthd_query_source._entry_ptr, ptr @nvkm_perfmon_mthd_query_source._entry_ptr.22, ptr @nvkm_perfsrc_disable._entry, ptr @nvkm_perfsrc_disable._entry_ptr, ptr @nvkm_perfsrc_enable._entry, ptr @nvkm_perfsrc_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @nvkm_pm_ctor.__key, ptr @.str.2, ptr @nvkm_pm, ptr @.str.3, ptr @nvkm_pm_oclass, ptr @nvkm_perfmon, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @nvkm_perfdom, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pm_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pm to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pm_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_domain._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_signal._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfmon_mthd_query_source._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_new_._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfsrc_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfsrc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_sample._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_perfdom_read._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_perfdom_new(ptr noundef %pm, ptr noundef %name, i32 noundef %mask, i32 noundef %base, i32 noundef %size_unit, i32 noundef %size_domain, ptr noundef %spec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not108 = icmp eq i32 %mask, 0
  %sub.ptr.rhs.cast = ptrtoint ptr %spec to i32
  %domains = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 3, i32 1
  %sources.i = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %tobool.not114 = phi i1 [ %tobool.not108, %entry ], [ %tobool.not, %for.inc.for.body_crit_edge ]
  %i.0111 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask.addr.0109 = phi i32 [ %mask, %entry ], [ %mask.addr.1, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %i.0111, %size_unit
  %add = add i32 %mul, %base
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0111)
  %tobool1.not = icmp eq i32 %i.0111, 0
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %shl = shl nuw i32 1, %i.0111
  %and = and i32 %shl, %mask.addr.0109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %spec, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool3.not105 = icmp eq i16 %1, 0
  br i1 %tobool3.not105, label %if.end.while.end39_crit_edge, label %if.end.if.end8.i.i_crit_edge

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  br label %if.end8.i.i

if.end.while.end39_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39

if.end8.i.i:                                      ; preds = %while.end.if.end8.i.i_crit_edge, %if.end.if.end8.i.i_crit_edge
  %2 = phi i16 [ %81, %while.end.if.end8.i.i_crit_edge ], [ %1, %if.end.if.end8.i.i_crit_edge ]
  %addr.0107 = phi i32 [ %add38, %while.end.if.end8.i.i_crit_edge ], [ %add, %if.end.if.end8.i.i_crit_edge ]
  %sdom.0106 = phi ptr [ %incdec.ptr, %while.end.if.end8.i.i_crit_edge ], [ %spec, %if.end.if.end8.i.i_crit_edge ]
  %conv = zext i16 %2 to i32
  %3 = mul nuw nsw i32 %conv, 12
  %spec.select.i97 = add nuw nsw i32 %3, 160
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i97, i32 noundef 3520) #15
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup45_crit_edge, label %if.end8

if.end8.i.i.cleanup45_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end8:                                          ; preds = %if.end8.i.i
  %name13 = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 6
  %sub.ptr.lhs.cast15 = ptrtoint ptr %sdom.0106 to i32
  %sub.ptr.sub17 = sub i32 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast
  %sub.ptr.div18 = sdiv exact i32 %sub.ptr.sub17, 12
  br i1 %tobool.not114, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name13, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %i.0111, i32 noundef %sub.ptr.div18)
  br label %if.end20

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name13, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %sub.ptr.div18)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then10
  %head = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %5, ptr noundef %domains) #12
  br i1 %call.i.i, label %if.end.i.i86, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i86:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %prev.i, align 4
  %7 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %domains, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 16
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %head, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i86, %if.end20.list_add_tail.exit_crit_edge
  %list = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i87 = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i87, align 8
  %func = getelementptr inbounds %struct.nvkm_specdom, ptr %sdom.0106, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func, align 4
  %func21 = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %func21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %func21, align 4
  %addr22 = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %addr22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %addr.0107, ptr %addr22, align 16
  %16 = ptrtoint ptr %sdom.0106 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sdom.0106, align 4
  %signal_nr24 = getelementptr inbounds %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %signal_nr24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %signal_nr24, align 4
  %incdec.ptr = getelementptr %struct.nvkm_specdom, ptr %sdom.0106, i32 1
  %signal = getelementptr inbounds %struct.nvkm_specdom, ptr %sdom.0106, i32 0, i32 1
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal, align 4
  %name26102 = getelementptr inbounds %struct.nvkm_specsig, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %name26102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name26102, align 4
  %tobool27.not103 = icmp eq ptr %22, null
  br i1 %tobool27.not103, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body28_crit_edge

list_add_tail.exit.while.body28_crit_edge:        ; preds = %list_add_tail.exit
  br label %while.body28

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body28:                                     ; preds = %nvkm_perfsrc_new.exit.while.body28_crit_edge, %list_add_tail.exit.while.body28_crit_edge
  %23 = phi ptr [ %79, %nvkm_perfsrc_new.exit.while.body28_crit_edge ], [ %22, %list_add_tail.exit.while.body28_crit_edge ]
  %ssig.0104 = phi ptr [ %incdec.ptr37, %nvkm_perfsrc_new.exit.while.body28_crit_edge ], [ %20, %list_add_tail.exit.while.body28_crit_edge ]
  %24 = ptrtoint ptr %ssig.0104 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ssig.0104, align 4
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 11, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %arrayidx, align 4
  %source = getelementptr inbounds %struct.nvkm_specsig, ptr %ssig.0104, i32 0, i32 2
  %27 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %source, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %while.body28.nvkm_perfsrc_new.exit_crit_edge, label %while.cond.preheader.i

while.body28.nvkm_perfsrc_new.exit_crit_edge:     ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_new.exit

while.cond.preheader.i:                           ; preds = %while.body28
  %name120.i = getelementptr inbounds %struct.nvkm_specsrc, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %name120.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name120.i, align 4
  %tobool1.not121.i = icmp eq ptr %30, null
  br i1 %tobool1.not121.i, label %while.cond.preheader.i.nvkm_perfsrc_new.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.nvkm_perfsrc_new.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_new.exit

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %name125.i = phi ptr [ %name.i, %while.end.i.while.body.i_crit_edge ], [ %name120.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %ssrc.0123.i = phi ptr [ %incdec.ptr56.i, %while.end.i.while.body.i_crit_edge ], [ %28, %while.cond.preheader.i.while.body.i_crit_edge ]
  %source_nr.0122.i = phi i8 [ %source_nr.1.lcssa.i, %while.end.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %mux.i = getelementptr inbounds %struct.nvkm_specsrc, ptr %ssrc.0123.i, i32 0, i32 1
  %31 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mux.i, align 4
  %name3113.i = getelementptr inbounds %struct.nvkm_specmux, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %name3113.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name3113.i, align 4
  %tobool4.not114.i = icmp eq ptr %34, null
  br i1 %tobool4.not114.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body5.i_crit_edge

while.body.i.while.body5.i_crit_edge:             ; preds = %while.body.i
  br label %while.body5.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body5.i:                                    ; preds = %cleanup.i.while.body5.i_crit_edge, %while.body.i.while.body5.i_crit_edge
  %name3118.i = phi ptr [ %name3.i, %cleanup.i.while.body5.i_crit_edge ], [ %name3113.i, %while.body.i.while.body5.i_crit_edge ]
  %smux.0116.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body5.i_crit_edge ], [ %32, %while.body.i.while.body5.i_crit_edge ]
  %source_nr.1115.i = phi i8 [ %inc53.i, %cleanup.i.while.body5.i_crit_edge ], [ %source_nr.0122.i, %while.body.i.while.body5.i_crit_edge ]
  %35 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %src.0108.i = load ptr, ptr %sources.i, align 4
  %cmp.not109.i = icmp eq ptr %src.0108.i, %sources.i
  br i1 %cmp.not109.i, label %while.body5.i.if.then21.critedge.i_crit_edge, label %for.body.lr.ph.i

while.body5.i.if.then21.critedge.i_crit_edge:     ; preds = %while.body5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.critedge.i

for.body.lr.ph.i:                                 ; preds = %while.body5.i
  %36 = ptrtoint ptr %ssrc.0123.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ssrc.0123.i, align 4
  %shift9.i = getelementptr inbounds %struct.nvkm_specmux, ptr %smux.0116.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %src.0112.i = phi ptr [ %src.0108.i, %for.body.lr.ph.i ], [ %src.0.i, %if.end14.i.for.body.i_crit_edge ]
  %source_id.0110.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end14.i.for.body.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.0112.i, i32 0, i32 2
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp8.i = icmp eq i32 %39, %37
  br i1 %cmp8.i, label %land.lhs.true.i, label %for.body.i.if.end14.i_crit_edge

for.body.i.if.end14.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %shift.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.0112.i, i32 0, i32 4
  %40 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %shift.i, align 4
  %42 = ptrtoint ptr %shift9.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %shift9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp11.i = icmp eq i8 %41, %43
  br i1 %cmp11.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %for.body.i.if.end14.i_crit_edge
  %inc.i = add i8 %source_id.0110.i, 1
  %44 = ptrtoint ptr %src.0112.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %src.0.i = load ptr, ptr %src.0112.i, align 4
  %cmp.not.i = icmp eq ptr %src.0.i, %sources.i
  br i1 %cmp.not.i, label %if.end14.i.if.then21.critedge.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end14.i.if.then21.critedge.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.critedge.i

if.then21.critedge.i:                             ; preds = %if.end14.i.if.then21.critedge.i_crit_edge, %while.body5.i.if.then21.critedge.i_crit_edge
  %source_id.0.lcssa.i = phi i8 [ 0, %while.body5.i.if.then21.critedge.i_crit_edge ], [ %inc.i, %if.end14.i.if.then21.critedge.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 24) #16
  %tobool22.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool22.not.i, label %if.then21.critedge.i.cleanup45_crit_edge, label %if.end24.i

if.then21.critedge.i.cleanup45_crit_edge:         ; preds = %if.then21.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end24.i:                                       ; preds = %if.then21.critedge.i
  %46 = ptrtoint ptr %ssrc.0123.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ssrc.0123.i, align 4
  %addr26.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %call7.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %addr26.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %addr26.i, align 4
  %49 = ptrtoint ptr %smux.0116.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %smux.0116.i, align 4
  %mask27.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %call7.i.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %mask27.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mask27.i, align 8
  %shift28.i = getelementptr inbounds %struct.nvkm_specmux, ptr %smux.0116.i, i32 0, i32 1
  %52 = ptrtoint ptr %shift28.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shift28.i, align 4
  %shift29.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %call7.i.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %shift29.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %shift29.i, align 4
  %enable.i = getelementptr inbounds %struct.nvkm_specmux, ptr %smux.0116.i, i32 0, i32 3
  %55 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enable.i, align 4, !range !108
  %enable31.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %call7.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %enable31.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %enable31.i, align 1
  %58 = ptrtoint ptr %name125.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name125.i, align 4
  %call33.i = tail call i32 @strlen(ptr noundef %59) #17
  %60 = ptrtoint ptr %name3118.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name3118.i, align 4
  %call35.i = tail call i32 @strlen(ptr noundef %61) #17
  %add.i = add i32 %call35.i, %call33.i
  %add36.i = add i32 %add.i, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add36.i, i32 noundef 3520) #15
  %name38.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %call7.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %name38.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call9.i.i.i, ptr %name38.i, align 8
  %tobool40.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end42.i

if.then41.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup45

if.end42.i:                                       ; preds = %if.end24.i
  %63 = ptrtoint ptr %name125.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name125.i, align 4
  %65 = ptrtoint ptr %name3118.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name3118.i, align 4
  %call46.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i.i.i, i32 noundef %add36.i, ptr noundef nonnull @.str.3, ptr noundef %64, ptr noundef %66) #12
  %67 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %68, ptr noundef %sources.i) #12
  br i1 %call.i.i.i, label %if.end.i.i94.i, label %if.end42.i.cleanup.i_crit_edge

if.end42.i.cleanup.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i.i94.i:                                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %sources.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %call7.i.i.i, ptr %68, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i94.i, %if.end42.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %source_id.0104.i = phi i8 [ %source_id.0.lcssa.i, %if.end42.i.cleanup.i_crit_edge ], [ %source_id.0.lcssa.i, %if.end.i.i94.i ], [ %source_id.0110.i, %land.lhs.true.i.cleanup.i_crit_edge ]
  %add51.i = add i8 %source_id.0104.i, 1
  %inc53.i = add i8 %source_nr.1115.i, 1
  %idxprom.i = zext i8 %source_nr.1115.i to i32
  %arrayidx.i = getelementptr %struct.nvkm_perfdom, ptr %call9.i.i, i32 0, i32 11, i32 %idxprom, i32 1, i32 %idxprom.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %add51.i, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr %struct.nvkm_specmux, ptr %smux.0116.i, i32 1
  %name3.i = getelementptr %struct.nvkm_specmux, ptr %smux.0116.i, i32 1, i32 2
  %74 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name3.i, align 4
  %tobool4.not.i = icmp eq ptr %75, null
  br i1 %tobool4.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body5.i_crit_edge

cleanup.i.while.body5.i_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body5.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %source_nr.1.lcssa.i = phi i8 [ %source_nr.0122.i, %while.body.i.while.end.i_crit_edge ], [ %inc53.i, %cleanup.i.while.end.i_crit_edge ]
  %incdec.ptr56.i = getelementptr %struct.nvkm_specsrc, ptr %ssrc.0123.i, i32 1
  %name.i = getelementptr %struct.nvkm_specsrc, ptr %ssrc.0123.i, i32 1, i32 2
  %76 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name.i, align 4
  %tobool1.not.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i, label %while.end.i.nvkm_perfsrc_new.exit_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i.nvkm_perfsrc_new.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_new.exit

nvkm_perfsrc_new.exit:                            ; preds = %while.end.i.nvkm_perfsrc_new.exit_crit_edge, %while.cond.preheader.i.nvkm_perfsrc_new.exit_crit_edge, %while.body28.nvkm_perfsrc_new.exit_crit_edge
  %incdec.ptr37 = getelementptr %struct.nvkm_specsig, ptr %ssig.0104, i32 1
  %name26 = getelementptr %struct.nvkm_specsig, ptr %ssig.0104, i32 1, i32 1
  %78 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name26, align 4
  %tobool27.not = icmp eq ptr %79, null
  br i1 %tobool27.not, label %nvkm_perfsrc_new.exit.while.end_crit_edge, label %nvkm_perfsrc_new.exit.while.body28_crit_edge

nvkm_perfsrc_new.exit.while.body28_crit_edge:     ; preds = %nvkm_perfsrc_new.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body28

nvkm_perfsrc_new.exit.while.end_crit_edge:        ; preds = %nvkm_perfsrc_new.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %nvkm_perfsrc_new.exit.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  %add38 = add i32 %addr.0107, %size_domain
  %80 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %incdec.ptr, align 4
  %tobool3.not = icmp eq i16 %81, 0
  br i1 %tobool3.not, label %while.end.while.end39_crit_edge, label %while.end.if.end8.i.i_crit_edge

while.end.if.end8.i.i_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

while.end.while.end39_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end39

while.end39:                                      ; preds = %while.end.while.end39_crit_edge, %if.end.while.end39_crit_edge
  %shl40 = shl nuw i32 1, %i.0111
  %neg = xor i32 %shl40, -1
  %and41 = and i32 %mask.addr.0109, %neg
  br label %for.inc

for.inc:                                          ; preds = %while.end39, %land.lhs.true.for.inc_crit_edge
  %mask.addr.1 = phi i32 [ %and41, %while.end39 ], [ %mask.addr.0109, %land.lhs.true.for.inc_crit_edge ]
  %inc = add i32 %i.0111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp = icmp ne i32 %inc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.addr.1)
  %tobool.not = icmp eq i32 %mask.addr.1, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.inc.cleanup45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc.cleanup45_crit_edge, %if.then41.i, %if.then21.critedge.i.cleanup45_crit_edge, %if.end8.i.i.cleanup45_crit_edge
  %retval.5 = phi i32 [ -12, %if.then41.i ], [ -12, %if.then21.critedge.i.cleanup45_crit_edge ], [ -12, %if.end8.i.i.cleanup45_crit_edge ], [ 0, %for.inc.cleanup45_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pm_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %pm, align 4
  %domains = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 3
  %1 = ptrtoint ptr %domains to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %domains, ptr %domains, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %domains, ptr %prev.i, align 4
  %sources = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 4
  %3 = ptrtoint ptr %sources to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %sources, ptr %sources, align 4
  %prev.i7 = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sources, ptr %prev.i7, align 4
  %client = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %client, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvkm_pm_ctor.__key, i16 noundef signext 3) #12
  %engine = getelementptr inbounds %struct.nvkm_pm, ptr %pm, i32 0, i32 1
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_pm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_pm_dtor(ptr noundef readonly %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %domains = getelementptr i8, ptr %engine, i32 248
  %0 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domains, align 4
  %cmp.not59 = icmp eq ptr %1, %domains
  br i1 %cmp.not59, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in60 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dom.0 = getelementptr i8, ptr %.pn.in60, i32 -76
  %2 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in60, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in60, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %dom.0) #12
  %cmp.not = icmp eq ptr %.pn, %domains
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %sources = getelementptr i8, ptr %engine, i32 256
  %11 = ptrtoint ptr %sources to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sources, align 4
  %cmp28.not62 = icmp eq ptr %12, %sources
  br i1 %cmp28.not62, label %for.end.for.end38_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.body30:                                       ; preds = %list_del.exit58.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %src.063 = phi ptr [ %next_src.0, %list_del.exit58.for.body30_crit_edge ], [ %12, %for.end.for.body30_crit_edge ]
  %13 = ptrtoint ptr %src.063 to i32
  call void @__asan_load4_noabort(i32 %13)
  %next_src.0 = load ptr, ptr %src.063, align 4
  %call.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %src.063) #12
  br i1 %call.i.i53, label %if.end.i.i56, label %for.body30.list_del.exit58_crit_edge

for.body30.list_del.exit58_crit_edge:             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit58

if.end.i.i56:                                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i54 = getelementptr inbounds %struct.list_head, ptr %src.063, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i54, align 4
  %16 = ptrtoint ptr %src.063 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src.063, align 4
  %prev1.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i55, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit58

list_del.exit58:                                  ; preds = %if.end.i.i56, %for.body30.list_del.exit58_crit_edge
  %20 = ptrtoint ptr %src.063 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %src.063, align 4
  %prev.i57 = getelementptr inbounds %struct.list_head, ptr %src.063, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i57, align 4
  %name = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.063, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %23) #12
  tail call void @kfree(ptr noundef %src.063) #12
  %cmp28.not = icmp eq ptr %next_src.0, %sources
  br i1 %cmp28.not, label %list_del.exit58.for.end38_crit_edge, label %list_del.exit58.for.body30_crit_edge

list_del.exit58.for.body30_crit_edge:             ; preds = %list_del.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

list_del.exit58.for.end38_crit_edge:              ; preds = %list_del.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.end38:                                        ; preds = %list_del.exit58.for.end38_crit_edge, %for.end.for.end38_crit_edge
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_pm_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %add.ptr) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_pm_oclass_get(ptr nocapture noundef writeonly %oclass, i32 noundef %index, ptr nocapture noundef writeonly %class) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %base, ptr getelementptr inbounds (%struct.nvkm_device_oclass, ptr @nvkm_pm_oclass, i32 0, i32 1), i32 20)
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nvkm_pm_oclass, ptr %class, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_pm_oclass_new(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_perfmon, ptr noundef %oclass, ptr noundef nonnull %call7.i.i.i) #12
  %pm1.i = getelementptr inbounds %struct.nvkm_perfmon, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %pm1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %pm1.i, align 8
  %4 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %pobject, align 4
  %client = getelementptr i8, ptr %1, i32 200
  tail call void @_raw_spin_lock(ptr noundef %client) #12
  %object = getelementptr i8, ptr %1, i32 244
  %5 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %object, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %pobject to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pobject, align 4
  %9 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %object, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object, align 4
  %12 = ptrtoint ptr %pobject to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pobject, align 4
  %cmp8 = icmp eq ptr %11, %13
  %cond = select i1 %cmp8, i32 0, i32 -16
  tail call void @_raw_spin_unlock(ptr noundef %client) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_perfmon_dtor(ptr noundef readonly returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pm1 = getelementptr inbounds %struct.nvkm_perfmon, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %pm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm1, align 8
  %client = getelementptr inbounds %struct.nvkm_pm, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %client) #12
  %object3 = getelementptr inbounds %struct.nvkm_pm, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %object3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object3, align 4
  %cmp = icmp eq ptr %3, %object
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %object3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %object3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client) #12
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_perfmon_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %pm2.i = getelementptr inbounds %struct.nvkm_perfmon, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pm2.i, align 8
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i = icmp ugt i32 %6, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %9 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oclass.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name.i, i32 noundef %8, i32 noundef %10, i32 noundef %size) #18
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %sw.bb.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %size)
  %cmp7.i = icmp ugt i32 %size, 71
  br i1 %cmp7.i, label %land.lhs.true11.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp14.i = icmp eq i8 %12, 0
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 72
  br i1 %tobool.not.i, label %do.body23.i, label %if.then16.i.cleanup_crit_edge

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body23.i:                                      ; preds = %if.then16.i
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp28.i = icmp ugt i32 %16, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body23.i.if.end43.i_crit_edge

do.body23.i.if.end43.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

do.end33.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %17 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %19 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oclass38.i, align 4
  %iter.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %iter.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iter.i, align 1
  %conv41.i = zext i8 %22 to i32
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name35.i, i32 noundef %18, i32 noundef %20, i32 noundef 0, i32 noundef %conv41.i) #18
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end33.i, %do.body23.i.if.end43.i_crit_edge
  %iter46.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %iter46.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iter46.i, align 1
  %domains.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %2, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end43.i
  %domain_nr.0.i.i = phi i8 [ 0, %if.end43.i ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %.pn.in.i.i = phi ptr [ %domains.i.i, %if.end43.i ], [ %.pn.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %25 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %domains.i.i
  %inc.i.i = add i8 %domain_nr.0.i.i, 1
  br i1 %cmp.not.i.i, label %nvkm_pm_count_perfdom.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

nvkm_pm_count_perfdom.exit.i:                     ; preds = %for.cond.i.i
  %conv47.i = zext i8 %24 to i32
  %sub48.i = add nsw i32 %conv47.i, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %domain_nr.0.i.i)
  %cmp52.not.not.i = icmp ugt i8 %24, %domain_nr.0.i.i
  br i1 %cmp52.not.not.i, label %nvkm_pm_count_perfdom.exit.i.cleanup_crit_edge, label %if.end55.i

nvkm_pm_count_perfdom.exit.i.cleanup_crit_edge:   ; preds = %nvkm_pm_count_perfdom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55.i:                                       ; preds = %nvkm_pm_count_perfdom.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp56.not.i = icmp eq i8 %24, 0
  br i1 %cmp56.not.i, label %if.end55.i.if.end71.i_crit_edge, label %if.then58.i

if.end55.i.if.end71.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then58.i:                                      ; preds = %if.end55.i
  %26 = ptrtoint ptr %domains.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn15.i.i = load ptr, ptr %domains.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %.pn15.i.i, %domains.i.i
  br i1 %cmp.not16.i.i, label %if.then58.i.cleanup_crit_edge, label %if.then58.i.for.body.i.i_crit_edge

if.then58.i.for.body.i.i_crit_edge:               ; preds = %if.then58.i
  br label %for.body.i.i

if.then58.i.cleanup_crit_edge:                    ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i130.i:                                  ; preds = %for.body.i.i
  %inc.i127.i = add nuw nsw i32 %tmp.017.i.i, 1
  %27 = ptrtoint ptr %.pn18.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i128.i = load ptr, ptr %.pn18.i.i, align 4
  %cmp.not.i129.i = icmp eq ptr %.pn.i128.i, %domains.i.i
  br i1 %cmp.not.i129.i, label %for.cond.i130.i.cleanup_crit_edge, label %for.cond.i130.i.for.body.i.i_crit_edge

for.cond.i130.i.for.body.i.i_crit_edge:           ; preds = %for.cond.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.i130.i.cleanup_crit_edge:                ; preds = %for.cond.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i130.i.for.body.i.i_crit_edge, %if.then58.i.for.body.i.i_crit_edge
  %.pn18.i.i = phi ptr [ %.pn.i128.i, %for.cond.i130.i.for.body.i.i_crit_edge ], [ %.pn15.i.i, %if.then58.i.for.body.i.i_crit_edge ]
  %tmp.017.i.i = phi i32 [ %inc.i127.i, %for.cond.i130.i.for.body.i.i_crit_edge ], [ 0, %if.then58.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i, i32 %sub48.i)
  %cmp3.i.i = icmp eq i32 %tmp.017.i.i, %sub48.i
  br i1 %cmp3.i.i, label %nvkm_perfdom_find.exit.i, label %for.cond.i130.i

nvkm_perfdom_find.exit.i:                         ; preds = %for.body.i.i
  %dom.0.le.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -76
  %cmp60.i = icmp eq ptr %dom.0.le.i.i, null
  br i1 %cmp60.i, label %nvkm_perfdom_find.exit.i.cleanup_crit_edge, label %for.cond.preheader.i.i

nvkm_perfdom_find.exit.i.cleanup_crit_edge:       ; preds = %nvkm_perfdom_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i.i:                           ; preds = %nvkm_perfdom_find.exit.i
  %conv64.i = trunc i32 %sub48.i to i8
  %id.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv64.i, ptr %id.i, align 1
  %signal_nr1.i.i = getelementptr i8, ptr %.pn18.i.i, i32 80
  %29 = ptrtoint ptr %signal_nr1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %signal_nr1.i.i, align 4
  %conv.i.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp12.not.i.i = icmp eq i16 %30, 0
  br i1 %cmp12.not.i.i, label %for.cond.preheader.i.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i132.i_crit_edge

for.cond.preheader.i.i.for.body.i132.i_crit_edge: ; preds = %for.cond.preheader.i.i
  br label %for.body.i132.i

for.cond.preheader.i.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_count_perfsig.exit.i

for.body.i132.i:                                  ; preds = %for.body.i132.i.for.body.i132.i_crit_edge, %for.cond.preheader.i.i.for.body.i132.i_crit_edge
  %i.014.i.i = phi i32 [ %inc5.i.i, %for.body.i132.i.for.body.i132.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i132.i_crit_edge ]
  %signal_nr.013.i.i = phi i16 [ %spec.select.i.i, %for.body.i132.i.for.body.i132.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i132.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.0.le.i.i, i32 0, i32 11, i32 %i.014.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool3.not.i.i = icmp ne ptr %32, null
  %inc.i131.i = zext i1 %tobool3.not.i.i to i16
  %spec.select.i.i = add i16 %signal_nr.013.i.i, %inc.i131.i
  %inc5.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc5.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.body.i132.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge, label %for.body.i132.i.for.body.i132.i_crit_edge

for.body.i132.i.for.body.i132.i_crit_edge:        ; preds = %for.body.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i132.i

for.body.i132.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge: ; preds = %for.body.i132.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_count_perfsig.exit.i

nvkm_perfdom_count_perfsig.exit.i:                ; preds = %for.body.i132.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge, %for.cond.preheader.i.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge
  %signal_nr.2.i.i = phi i16 [ 0, %for.cond.preheader.i.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge ], [ %spec.select.i.i, %for.body.i132.i.nvkm_perfdom_count_perfsig.exit.i_crit_edge ]
  %signal_nr.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %signal_nr.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %signal_nr.2.i.i, ptr %signal_nr.i, align 2
  %name66.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 6
  %name68.i = getelementptr i8, ptr %.pn18.i.i, i32 36
  %call70.i = tail call ptr @strncpy(ptr noundef %name66.i, ptr noundef %name68.i, i32 noundef 63) #12
  %counter_nr.i = getelementptr inbounds %struct.nvif_perfmon_query_domain_v0, ptr %data, i32 0, i32 2
  %34 = ptrtoint ptr %counter_nr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %counter_nr.i, align 2
  br label %if.end71.i

if.end71.i:                                       ; preds = %nvkm_perfdom_count_perfsig.exit.i, %if.end55.i.if.end71.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %domain_nr.0.i.i)
  %cmp73.i = icmp ult i8 %24, %domain_nr.0.i.i
  %inc76.i = add nuw i8 %24, 1
  %.sink.i = select i1 %cmp73.i, i8 %inc76.i, i8 -1
  %35 = ptrtoint ptr %iter46.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %iter46.i, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %pm2.i11 = getelementptr inbounds %struct.nvkm_perfmon, ptr %object, i32 0, i32 1
  %36 = ptrtoint ptr %pm2.i11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pm2.i11, align 8
  %device3.i = getelementptr inbounds %struct.nvkm_pm, ptr %37, i32 0, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device3.i, align 4
  %cfgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfgopt.i, align 4
  %call.i12 = tail call zeroext i1 @nvkm_boolopt(ptr noundef %41, ptr noundef nonnull @.str.10, i1 noundef zeroext false) #12
  %42 = ptrtoint ptr %cfgopt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfgopt.i, align 4
  %call5.i = tail call zeroext i1 @nvkm_boolopt(ptr noundef %43, ptr noundef nonnull @.str.11, i1 noundef zeroext %call.i12) #12
  %client.i13 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %44 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client.i13, align 4
  %debug.i14 = getelementptr inbounds %struct.nvkm_client, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %debug.i14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp.i15 = icmp ugt i32 %47, 4
  br i1 %cmp.i15, label %do.end.i19, label %sw.bb1.land.lhs.true.i20_crit_edge

sw.bb1.land.lhs.true.i20_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i20

do.end.i19:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %name.i16 = getelementptr inbounds %struct.nvkm_client, ptr %45, i32 0, i32 1
  %handle.i17 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %48 = ptrtoint ptr %handle.i17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %handle.i17, align 8
  %oclass.i18 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %50 = ptrtoint ptr %oclass.i18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %oclass.i18, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i16, i32 noundef %49, i32 noundef %51, i32 noundef %size) #18
  br label %land.lhs.true.i20

land.lhs.true.i20:                                ; preds = %do.end.i19, %sw.bb1.land.lhs.true.i20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %size)
  %cmp12.i = icmp ugt i32 %size, 71
  br i1 %cmp12.i, label %land.lhs.true16.i, label %land.lhs.true.i20.cleanup_crit_edge

land.lhs.true.i20.cleanup_crit_edge:              ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true16.i:                                ; preds = %land.lhs.true.i20
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp19.i = icmp eq i8 %53, 0
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true16.i.cleanup_crit_edge

land.lhs.true16.i.cleanup_crit_edge:              ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %size)
  %tobool23.not.i = icmp eq i32 %size, 72
  br i1 %tobool23.not.i, label %do.body29.i, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body29.i:                                      ; preds = %if.then21.i
  %54 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client.i13, align 4
  %debug33.i = getelementptr inbounds %struct.nvkm_client, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %debug33.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp34.i = icmp ugt i32 %57, 4
  br i1 %cmp34.i, label %do.end39.i, label %do.body29.i.if.end50.i_crit_edge

do.body29.i.if.end50.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.end39.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #14
  %name41.i = getelementptr inbounds %struct.nvkm_client, ptr %55, i32 0, i32 1
  %handle43.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %58 = ptrtoint ptr %handle43.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle43.i, align 8
  %oclass44.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %60 = ptrtoint ptr %oclass44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %oclass44.i, align 4
  %domain.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 1
  %62 = ptrtoint ptr %domain.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %domain.i, align 1
  %conv47.i21 = zext i8 %63 to i32
  %iter.i22 = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 2
  %64 = ptrtoint ptr %iter.i22 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %iter.i22, align 2
  %conv48.i = zext i16 %65 to i32
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name41.i, i32 noundef %59, i32 noundef %61, i32 noundef 0, i32 noundef %conv47.i21, i32 noundef %conv48.i) #18
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end39.i, %do.body29.i.if.end50.i_crit_edge
  %iter53.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 2
  %66 = ptrtoint ptr %iter53.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %iter53.i, align 2
  %conv54.i = zext i16 %67 to i32
  %sub55.i = add nsw i32 %conv54.i, -1
  %domain57.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 1
  %68 = ptrtoint ptr %domain57.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %domain57.i, align 1
  %conv58.i = zext i8 %69 to i32
  %domains.i.i23 = getelementptr inbounds %struct.nvkm_pm, ptr %37, i32 0, i32 3
  %70 = ptrtoint ptr %domains.i.i23 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn15.i.i24 = load ptr, ptr %domains.i.i23, align 4
  %cmp.not16.i.i25 = icmp eq ptr %.pn15.i.i24, %domains.i.i23
  br i1 %cmp.not16.i.i25, label %if.end50.i.cleanup_crit_edge, label %if.end50.i.for.body.i.i33_crit_edge

if.end50.i.for.body.i.i33_crit_edge:              ; preds = %if.end50.i
  br label %for.body.i.i33

if.end50.i.cleanup_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.i29:                                   ; preds = %for.body.i.i33
  %inc.i.i26 = add nuw nsw i32 %tmp.017.i.i31, 1
  %71 = ptrtoint ptr %.pn18.i.i30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i.i27 = load ptr, ptr %.pn18.i.i30, align 4
  %cmp.not.i.i28 = icmp eq ptr %.pn.i.i27, %domains.i.i23
  br i1 %cmp.not.i.i28, label %for.cond.i.i29.cleanup_crit_edge, label %for.cond.i.i29.for.body.i.i33_crit_edge

for.cond.i.i29.for.body.i.i33_crit_edge:          ; preds = %for.cond.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i33

for.cond.i.i29.cleanup_crit_edge:                 ; preds = %for.cond.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i33:                                   ; preds = %for.cond.i.i29.for.body.i.i33_crit_edge, %if.end50.i.for.body.i.i33_crit_edge
  %.pn18.i.i30 = phi ptr [ %.pn.i.i27, %for.cond.i.i29.for.body.i.i33_crit_edge ], [ %.pn15.i.i24, %if.end50.i.for.body.i.i33_crit_edge ]
  %tmp.017.i.i31 = phi i32 [ %inc.i.i26, %for.cond.i.i29.for.body.i.i33_crit_edge ], [ 0, %if.end50.i.for.body.i.i33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i31, i32 %conv58.i)
  %cmp3.i.i32 = icmp eq i32 %tmp.017.i.i31, %conv58.i
  br i1 %cmp3.i.i32, label %nvkm_perfdom_find.exit.i36, label %for.cond.i.i29

nvkm_perfdom_find.exit.i36:                       ; preds = %for.body.i.i33
  %dom.0.le.i.i34 = getelementptr i8, ptr %.pn18.i.i30, i32 -76
  %cmp60.i35 = icmp eq ptr %dom.0.le.i.i34, null
  br i1 %cmp60.i35, label %nvkm_perfdom_find.exit.i36.cleanup_crit_edge, label %lor.lhs.false.i

nvkm_perfdom_find.exit.i36.cleanup_crit_edge:     ; preds = %nvkm_perfdom_find.exit.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %nvkm_perfdom_find.exit.i36
  %signal_nr.i37 = getelementptr i8, ptr %.pn18.i.i30, i32 80
  %72 = ptrtoint ptr %signal_nr.i37 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %signal_nr.i37, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %73)
  %cmp63.not.not.i = icmp ugt i16 %67, %73
  br i1 %cmp63.not.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end66.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp67.not.i = icmp eq i16 %67, 0
  br i1 %cmp67.not.i, label %if.end66.i.if.end90.i_crit_edge, label %if.then69.i

if.end66.i.if.end90.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.i

if.then69.i:                                      ; preds = %if.end66.i
  %arrayidx.i = getelementptr %struct.nvkm_perfdom, ptr %dom.0.le.i.i34, i32 0, i32 11, i32 %sub55.i
  br i1 %call5.i, label %if.then69.i.if.then75.i_crit_edge, label %lor.lhs.false72.i

if.then69.i.if.then75.i_crit_edge:                ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

lor.lhs.false72.i:                                ; preds = %if.then69.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  %tobool74.not.i = icmp eq ptr %75, null
  br i1 %tobool74.not.i, label %lor.lhs.false72.i.if.then75.i_crit_edge, label %if.else81.i

lor.lhs.false72.i.if.then75.i_crit_edge:          ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then75.i

if.then75.i:                                      ; preds = %lor.lhs.false72.i.if.then75.i_crit_edge, %if.then69.i.if.then75.i_crit_edge
  %name76.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 6
  %name78.i = getelementptr i8, ptr %.pn18.i.i30, i32 36
  %call80.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name76.i, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef %name78.i, i32 noundef %sub55.i) #12
  br label %if.end86.i

if.else81.i:                                      ; preds = %lor.lhs.false72.i
  call void @__sanitizer_cov_trace_pc() #14
  %name82.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 6
  %call85.i = tail call ptr @strncpy(ptr noundef %name82.i, ptr noundef nonnull %75, i32 noundef 63) #12
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.else81.i, %if.then75.i
  %conv87.i = trunc i32 %sub55.i to i8
  %signal88.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 3
  %76 = ptrtoint ptr %signal88.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv87.i, ptr %signal88.i, align 2
  %arrayidx.i.i38 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 0
  %77 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i = icmp ne i8 %78, 0
  %inc.i166.i = zext i1 %tobool.not.i.i to i8
  %arrayidx.1.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.1.i.i = icmp ne i8 %80, 0
  %inc.1.i.i = zext i1 %tobool.not.1.i.i to i8
  %spec.select.1.i.i = add nuw nsw i8 %inc.1.i.i, %inc.i166.i
  %arrayidx.2.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.2.i.i = icmp ne i8 %82, 0
  %inc.2.i.i = zext i1 %tobool.not.2.i.i to i8
  %spec.select.2.i.i = add nuw nsw i8 %spec.select.1.i.i, %inc.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.3.i.i = icmp ne i8 %84, 0
  %inc.3.i.i = zext i1 %tobool.not.3.i.i to i8
  %spec.select.3.i.i = add nuw nsw i8 %spec.select.2.i.i, %inc.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 4
  %85 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.4.i.i = icmp ne i8 %86, 0
  %inc.4.i.i = zext i1 %tobool.not.4.i.i to i8
  %spec.select.4.i.i = add nuw nsw i8 %spec.select.3.i.i, %inc.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 5
  %87 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.5.i.i = icmp ne i8 %88, 0
  %inc.5.i.i = zext i1 %tobool.not.5.i.i to i8
  %spec.select.5.i.i = add nuw nsw i8 %spec.select.4.i.i, %inc.5.i.i
  %arrayidx.6.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 6
  %89 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.6.i.i = icmp ne i8 %90, 0
  %inc.6.i.i = zext i1 %tobool.not.6.i.i to i8
  %spec.select.6.i.i = add nuw nsw i8 %spec.select.5.i.i, %inc.6.i.i
  %arrayidx.7.i.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i, i32 0, i32 1, i32 7
  %91 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.7.i.i = icmp ne i8 %92, 0
  %inc.7.i.i = zext i1 %tobool.not.7.i.i to i8
  %spec.select.7.i.i = add nuw nsw i8 %spec.select.6.i.i, %inc.7.i.i
  %source_nr.i = getelementptr inbounds %struct.nvif_perfmon_query_signal_v0, ptr %data, i32 0, i32 4
  %93 = ptrtoint ptr %source_nr.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select.7.i.i, ptr %source_nr.i, align 1
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end86.i, %if.end66.i.if.end90.i_crit_edge
  %94 = ptrtoint ptr %signal_nr.i37 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %signal_nr.i37, align 4
  %conv92.i = zext i16 %95 to i32
  %smax.i = tail call i32 @llvm.smax.i32(i32 %conv54.i, i32 %conv92.i) #12
  %96 = add nsw i32 %smax.i, -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false97.i.while.cond.i_crit_edge, %if.end90.i
  %si.0.i = phi i32 [ %sub55.i, %if.end90.i ], [ %inc.i, %lor.lhs.false97.i.while.cond.i_crit_edge ]
  %inc.i = add nsw i32 %si.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %si.0.i, i32 %96)
  %exitcond.not.i = icmp eq i32 %si.0.i, %96
  br i1 %exitcond.not.i, label %while.cond.i.cleanup.sink.split.i_crit_edge, label %while.body.i

while.cond.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %call.i12, label %while.body.i.if.then102.i_crit_edge, label %lor.lhs.false97.i

while.body.i.if.then102.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102.i

lor.lhs.false97.i:                                ; preds = %while.body.i
  %arrayidx99.i = getelementptr %struct.nvkm_perfdom, ptr %dom.0.le.i.i34, i32 0, i32 11, i32 %inc.i
  %97 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx99.i, align 4
  %tobool101.not.i = icmp eq ptr %98, null
  br i1 %tobool101.not.i, label %lor.lhs.false97.i.while.cond.i_crit_edge, label %lor.lhs.false97.i.if.then102.i_crit_edge

lor.lhs.false97.i.if.then102.i_crit_edge:         ; preds = %lor.lhs.false97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102.i

lor.lhs.false97.i.while.cond.i_crit_edge:         ; preds = %lor.lhs.false97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then102.i:                                     ; preds = %lor.lhs.false97.i.if.then102.i_crit_edge, %while.body.i.if.then102.i_crit_edge
  %si.0.lcssa174.i = phi i32 [ %si.0.i, %lor.lhs.false97.i.if.then102.i_crit_edge ], [ %sub55.i, %while.body.i.if.then102.i_crit_edge ]
  %99 = trunc i32 %si.0.lcssa174.i to i16
  %conv104.i = add i16 %99, 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then102.i, %while.cond.i.cleanup.sink.split.i_crit_edge
  %.sink.i39 = phi i16 [ %conv104.i, %if.then102.i ], [ -1, %while.cond.i.cleanup.sink.split.i_crit_edge ]
  %100 = ptrtoint ptr %iter53.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %.sink.i39, ptr %iter53.i, align 2
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %pm2.i41 = getelementptr inbounds %struct.nvkm_perfmon, ptr %object, i32 0, i32 1
  %101 = ptrtoint ptr %pm2.i41 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pm2.i41, align 8
  %client.i42 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %103 = ptrtoint ptr %client.i42 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %client.i42, align 4
  %debug.i43 = getelementptr inbounds %struct.nvkm_client, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %debug.i43 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %debug.i43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.i44 = icmp ugt i32 %106, 4
  br i1 %cmp.i44, label %do.end.i49, label %sw.bb3.land.lhs.true.i51_crit_edge

sw.bb3.land.lhs.true.i51_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i51

do.end.i49:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %name.i45 = getelementptr inbounds %struct.nvkm_client, ptr %104, i32 0, i32 1
  %handle.i46 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %107 = ptrtoint ptr %handle.i46 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %handle.i46, align 8
  %oclass.i47 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %109 = ptrtoint ptr %oclass.i47 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %oclass.i47, align 4
  %call.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name.i45, i32 noundef %108, i32 noundef %110, i32 noundef %size) #18
  br label %land.lhs.true.i51

land.lhs.true.i51:                                ; preds = %do.end.i49, %sw.bb3.land.lhs.true.i51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %size)
  %cmp7.i50 = icmp ugt i32 %size, 79
  br i1 %cmp7.i50, label %land.lhs.true11.i53, label %land.lhs.true.i51.cleanup_crit_edge

land.lhs.true.i51.cleanup_crit_edge:              ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true11.i53:                              ; preds = %land.lhs.true.i51
  %111 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp14.i52 = icmp eq i8 %112, 0
  br i1 %cmp14.i52, label %if.then16.i55, label %land.lhs.true11.i53.cleanup_crit_edge

land.lhs.true11.i53.cleanup_crit_edge:            ; preds = %land.lhs.true11.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.i55:                                    ; preds = %land.lhs.true11.i53
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %size)
  %tobool.not.i54 = icmp eq i32 %size, 80
  br i1 %tobool.not.i54, label %do.body23.i58, label %if.then16.i55.cleanup_crit_edge

if.then16.i55.cleanup_crit_edge:                  ; preds = %if.then16.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body23.i58:                                    ; preds = %if.then16.i55
  %113 = ptrtoint ptr %client.i42 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %client.i42, align 4
  %debug27.i56 = getelementptr inbounds %struct.nvkm_client, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %debug27.i56 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %debug27.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp28.i57 = icmp ugt i32 %116, 4
  br i1 %cmp28.i57, label %do.end33.i66, label %do.body23.i58.if.then.i.i_crit_edge

do.body23.i58.if.then.i.i_crit_edge:              ; preds = %do.body23.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

do.end33.i66:                                     ; preds = %do.body23.i58
  call void @__sanitizer_cov_trace_pc() #14
  %name35.i59 = getelementptr inbounds %struct.nvkm_client, ptr %114, i32 0, i32 1
  %handle37.i60 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %117 = ptrtoint ptr %handle37.i60 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %handle37.i60, align 8
  %oclass38.i61 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %119 = ptrtoint ptr %oclass38.i61 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %oclass38.i61, align 4
  %domain.i63 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 1
  %121 = ptrtoint ptr %domain.i63 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %domain.i63, align 1
  %conv41.i64 = zext i8 %122 to i32
  %signal.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 2
  %123 = ptrtoint ptr %signal.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %signal.i, align 2
  %conv42.i = zext i8 %124 to i32
  %iter.i65 = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 3
  %125 = ptrtoint ptr %iter.i65 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %iter.i65, align 1
  %conv43.i = zext i8 %126 to i32
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name35.i59, i32 noundef %118, i32 noundef %120, i32 noundef 0, i32 noundef %conv41.i64, i32 noundef %conv42.i, i32 noundef %conv43.i) #18
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end33.i66, %do.body23.i58.if.then.i.i_crit_edge
  %iter48.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 3
  %127 = ptrtoint ptr %iter48.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %iter48.i, align 1
  %conv49.i = zext i8 %128 to i32
  %sub50.i = add nsw i32 %conv49.i, -1
  %domain52.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 1
  %129 = ptrtoint ptr %domain52.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %domain52.i, align 1
  %signal53.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 2
  %131 = ptrtoint ptr %signal53.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %signal53.i, align 2
  %conv.i.i67 = zext i8 %130 to i32
  %domains.i.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %102, i32 0, i32 3
  %133 = ptrtoint ptr %domains.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn15.i.i.i = load ptr, ptr %domains.i.i.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %.pn15.i.i.i, %domains.i.i.i
  br i1 %cmp.not16.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %tmp.017.i.i.i, 1
  %134 = ptrtoint ptr %.pn18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pn.i.i.i = load ptr, ptr %.pn18.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %domains.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.cleanup_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.cleanup_crit_edge:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %.pn18.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn15.i.i.i, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %tmp.017.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i.i, i32 %conv.i.i67)
  %cmp3.i.i.i = icmp eq i32 %tmp.017.i.i.i, %conv.i.i67
  br i1 %cmp3.i.i.i, label %nvkm_perfdom_find.exit.i.i, label %for.cond.i.i.i

nvkm_perfdom_find.exit.i.i:                       ; preds = %for.body.i.i.i
  %dom.0.le.i.i.i = getelementptr i8, ptr %.pn18.i.i.i, i32 -76
  %cmp1.i.i = icmp eq ptr %dom.0.le.i.i.i, null
  br i1 %cmp1.i.i, label %nvkm_perfdom_find.exit.i.i.cleanup_crit_edge, label %if.end4.i.i

nvkm_perfdom_find.exit.i.i.cleanup_crit_edge:     ; preds = %nvkm_perfdom_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i.i:                                      ; preds = %nvkm_perfdom_find.exit.i.i
  %idxprom.i.i = zext i8 %132 to i32
  %arrayidx.i.i68 = getelementptr %struct.nvkm_perfdom, ptr %dom.0.le.i.i.i, i32 0, i32 11, i32 %idxprom.i.i
  %135 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i68, align 4
  %tobool.not.i.i69 = icmp eq ptr %136, null
  %tobool55.not.i = icmp eq ptr %arrayidx.i.i68, null
  %or.cond.i = or i1 %tobool55.not.i, %tobool.not.i.i69
  br i1 %or.cond.i, label %if.end4.i.i.cleanup_crit_edge, label %if.end57.i

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57.i:                                       ; preds = %if.end4.i.i
  %arrayidx.i145.i = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 0
  %137 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i145.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i146.i = icmp ne i8 %138, 0
  %inc.i.i70 = zext i1 %tobool.not.i146.i to i8
  %arrayidx.1.i.i71 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %arrayidx.1.i.i71 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.1.i.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.1.i.i72 = icmp ne i8 %140, 0
  %inc.1.i.i73 = zext i1 %tobool.not.1.i.i72 to i8
  %spec.select.1.i.i74 = add nuw nsw i8 %inc.1.i.i73, %inc.i.i70
  %arrayidx.2.i.i75 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 2
  %141 = ptrtoint ptr %arrayidx.2.i.i75 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.2.i.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.2.i.i76 = icmp ne i8 %142, 0
  %inc.2.i.i77 = zext i1 %tobool.not.2.i.i76 to i8
  %spec.select.2.i.i78 = add nuw nsw i8 %spec.select.1.i.i74, %inc.2.i.i77
  %arrayidx.3.i.i79 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx.3.i.i79 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.3.i.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.3.i.i80 = icmp ne i8 %144, 0
  %inc.3.i.i81 = zext i1 %tobool.not.3.i.i80 to i8
  %spec.select.3.i.i82 = add nuw nsw i8 %spec.select.2.i.i78, %inc.3.i.i81
  %arrayidx.4.i.i83 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 4
  %145 = ptrtoint ptr %arrayidx.4.i.i83 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.4.i.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.4.i.i84 = icmp ne i8 %146, 0
  %inc.4.i.i85 = zext i1 %tobool.not.4.i.i84 to i8
  %spec.select.4.i.i86 = add nuw nsw i8 %spec.select.3.i.i82, %inc.4.i.i85
  %arrayidx.5.i.i87 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 5
  %147 = ptrtoint ptr %arrayidx.5.i.i87 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.5.i.i87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.5.i.i88 = icmp ne i8 %148, 0
  %inc.5.i.i89 = zext i1 %tobool.not.5.i.i88 to i8
  %spec.select.5.i.i90 = add nuw nsw i8 %spec.select.4.i.i86, %inc.5.i.i89
  %arrayidx.6.i.i91 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 6
  %149 = ptrtoint ptr %arrayidx.6.i.i91 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.6.i.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.6.i.i92 = icmp ne i8 %150, 0
  %inc.6.i.i93 = zext i1 %tobool.not.6.i.i92 to i8
  %spec.select.6.i.i94 = add nuw nsw i8 %spec.select.5.i.i90, %inc.6.i.i93
  %arrayidx.7.i.i95 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 7
  %151 = ptrtoint ptr %arrayidx.7.i.i95 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.7.i.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.7.i.i96 = icmp ne i8 %152, 0
  %inc.7.i.i97 = zext i1 %tobool.not.7.i.i96 to i8
  %spec.select.7.i.i98 = add nuw nsw i8 %spec.select.6.i.i94, %inc.7.i.i97
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %spec.select.7.i.i98)
  %cmp60.not.not.i = icmp ugt i8 %128, %spec.select.7.i.i98
  br i1 %cmp60.not.not.i, label %if.end57.i.cleanup_crit_edge, label %if.end63.i

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp64.not.i = icmp eq i8 %128, 0
  br i1 %cmp64.not.i, label %if.end63.i.if.end81.i_crit_edge, label %if.then66.i

if.end63.i.if.end81.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

if.then66.i:                                      ; preds = %if.end63.i
  %arrayidx.i99 = getelementptr %struct.nvkm_perfsig, ptr %arrayidx.i.i68, i32 0, i32 1, i32 %sub50.i
  %153 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i99, align 1
  %conv67.i = zext i8 %154 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i148.i = icmp eq i8 %138, 0
  br i1 %tobool.not.i148.i, label %if.then66.i.cleanup_crit_edge, label %for.body.i.i101

if.then66.i.cleanup_crit_edge:                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.i.i100:                                  ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.1.i150.i = icmp eq i8 %140, 0
  br i1 %tobool.not.1.i150.i, label %for.cond.i.i100.cleanup_crit_edge, label %for.body.1.i.i

for.cond.i.i100.cleanup_crit_edge:                ; preds = %for.cond.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.1.i.i:                                   ; preds = %for.cond.i.i100
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %154)
  %cmp7.1.i.i = icmp eq i8 %140, %154
  br i1 %cmp7.1.i.i, label %for.body.1.i.i.if.then10.i.i_crit_edge, label %for.cond.1.i.i

for.body.1.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.1.i.i:                                   ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.2.i152.i = icmp eq i8 %142, 0
  br i1 %tobool.not.2.i152.i, label %for.cond.1.i.i.cleanup_crit_edge, label %for.body.2.i.i

for.cond.1.i.i.cleanup_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %154)
  %cmp7.2.i.i = icmp eq i8 %142, %154
  br i1 %cmp7.2.i.i, label %for.body.2.i.i.if.then10.i.i_crit_edge, label %for.cond.2.i.i

for.body.2.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.2.i.i:                                   ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.3.i154.i = icmp eq i8 %144, 0
  br i1 %tobool.not.3.i154.i, label %for.cond.2.i.i.cleanup_crit_edge, label %for.body.3.i.i

for.cond.2.i.i.cleanup_crit_edge:                 ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %144, i8 %154)
  %cmp7.3.i.i = icmp eq i8 %144, %154
  br i1 %cmp7.3.i.i, label %for.body.3.i.i.if.then10.i.i_crit_edge, label %for.cond.3.i.i

for.body.3.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.3.i.i:                                   ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.4.i156.i = icmp eq i8 %146, 0
  br i1 %tobool.not.4.i156.i, label %for.cond.3.i.i.cleanup_crit_edge, label %for.body.4.i.i

for.cond.3.i.i.cleanup_crit_edge:                 ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.4.i.i:                                   ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %154)
  %cmp7.4.i.i = icmp eq i8 %146, %154
  br i1 %cmp7.4.i.i, label %for.body.4.i.i.if.then10.i.i_crit_edge, label %for.cond.4.i.i

for.body.4.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.4.i.i:                                   ; preds = %for.body.4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.5.i158.i = icmp eq i8 %148, 0
  br i1 %tobool.not.5.i158.i, label %for.cond.4.i.i.cleanup_crit_edge, label %for.body.5.i.i

for.cond.4.i.i.cleanup_crit_edge:                 ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.5.i.i:                                   ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %154)
  %cmp7.5.i.i = icmp eq i8 %148, %154
  br i1 %cmp7.5.i.i, label %for.body.5.i.i.if.then10.i.i_crit_edge, label %for.cond.5.i.i

for.body.5.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.5.i.i:                                   ; preds = %for.body.5.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.6.i160.i = icmp eq i8 %150, 0
  br i1 %tobool.not.6.i160.i, label %for.cond.5.i.i.cleanup_crit_edge, label %for.body.6.i.i

for.cond.5.i.i.cleanup_crit_edge:                 ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.6.i.i:                                   ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %154)
  %cmp7.6.i.i = icmp eq i8 %150, %154
  call void @__sanitizer_cov_trace_cmp1(i8 %152, i8 %154)
  %cmp7.7.i.i = icmp eq i8 %152, %154
  %or.cond.i.i = and i1 %tobool.not.7.i.i96, %cmp7.7.i.i
  %or.cond171.i = select i1 %cmp7.6.i.i, i1 true, i1 %or.cond.i.i
  br i1 %or.cond171.i, label %for.body.6.i.i.if.then10.i.i_crit_edge, label %for.body.6.i.i.cleanup_crit_edge

for.body.6.i.i.cleanup_crit_edge:                 ; preds = %for.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.6.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.body.i.i101:                                  ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %154)
  %cmp7.i.i = icmp eq i8 %138, %154
  br i1 %cmp7.i.i, label %for.body.i.i101.if.then10.i.i_crit_edge, label %for.cond.i.i100

for.body.i.i101.if.then10.i.i_crit_edge:          ; preds = %for.body.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i101.if.then10.i.i_crit_edge, %for.body.6.i.i.if.then10.i.i_crit_edge, %for.body.5.i.i.if.then10.i.i_crit_edge, %for.body.4.i.i.if.then10.i.i_crit_edge, %for.body.3.i.i.if.then10.i.i_crit_edge, %for.body.2.i.i.if.then10.i.i_crit_edge, %for.body.1.i.i.if.then10.i.i_crit_edge
  %sources.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %102, i32 0, i32 4
  %155 = ptrtoint ptr %sources.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %src.044.i.i = load ptr, ptr %sources.i.i, align 4
  %cmp14.not45.i.i = icmp eq ptr %src.044.i.i, %sources.i.i
  br i1 %cmp14.not45.i.i, label %if.then10.i.i.cleanup_crit_edge, label %if.then10.i.i.for.body16.i.i_crit_edge

if.then10.i.i.for.body16.i.i_crit_edge:           ; preds = %if.then10.i.i
  br label %for.body16.i.i

if.then10.i.i.cleanup_crit_edge:                  ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond12.i.i:                                   ; preds = %for.body16.i.i
  %inc17.i.i = add i32 %tmp.046.i.i, 1
  %156 = ptrtoint ptr %src.047.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %src.0.i.i = load ptr, ptr %src.047.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %src.0.i.i, %sources.i.i
  br i1 %cmp14.not.i.i, label %for.cond12.i.i.cleanup_crit_edge, label %for.cond12.i.i.for.body16.i.i_crit_edge

for.cond12.i.i.for.body16.i.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i.i

for.cond12.i.i.cleanup_crit_edge:                 ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body16.i.i:                                   ; preds = %for.cond12.i.i.for.body16.i.i_crit_edge, %if.then10.i.i.for.body16.i.i_crit_edge
  %src.047.i.i = phi ptr [ %src.0.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ %src.044.i.i, %if.then10.i.i.for.body16.i.i_crit_edge ]
  %tmp.046.i.i = phi i32 [ %inc17.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ 1, %if.then10.i.i.for.body16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.046.i.i, i32 %conv67.i)
  %cmp18.i.i = icmp eq i32 %tmp.046.i.i, %conv67.i
  br i1 %cmp18.i.i, label %nvkm_perfsrc_find.exit.i, label %for.cond12.i.i

nvkm_perfsrc_find.exit.i:                         ; preds = %for.body16.i.i
  %tobool69.not.i = icmp eq ptr %src.047.i.i, null
  br i1 %tobool69.not.i, label %nvkm_perfsrc_find.exit.i.cleanup_crit_edge, label %if.end71.i103

nvkm_perfsrc_find.exit.i.cleanup_crit_edge:       ; preds = %nvkm_perfsrc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end71.i103:                                    ; preds = %nvkm_perfsrc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %source75.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 5
  %157 = ptrtoint ptr %source75.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv67.i, ptr %source75.i, align 4
  %mask.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mask.i, align 4
  %mask76.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 6
  %160 = ptrtoint ptr %mask76.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %mask76.i, align 4
  %name77.i = getelementptr inbounds %struct.nvif_perfmon_query_source_v0, ptr %data, i32 0, i32 7
  %name79.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 1
  %161 = ptrtoint ptr %name79.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %name79.i, align 4
  %call80.i102 = tail call ptr @strncpy(ptr noundef %name77.i, ptr noundef %162, i32 noundef 63) #12
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end71.i103, %if.end63.i.if.end81.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %128, i8 %spec.select.7.i.i98)
  %cmp83.i = icmp ult i8 %128, %spec.select.7.i.i98
  %inc86.i = add nuw i8 %128, 1
  %.sink.i104 = select i1 %cmp83.i, i8 %inc86.i, i8 -1
  %163 = ptrtoint ptr %iter48.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %.sink.i104, ptr %iter48.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end81.i, %nvkm_perfsrc_find.exit.i.cleanup_crit_edge, %for.cond12.i.i.cleanup_crit_edge, %if.then10.i.i.cleanup_crit_edge, %for.body.6.i.i.cleanup_crit_edge, %for.cond.5.i.i.cleanup_crit_edge, %for.cond.4.i.i.cleanup_crit_edge, %for.cond.3.i.i.cleanup_crit_edge, %for.cond.2.i.i.cleanup_crit_edge, %for.cond.1.i.i.cleanup_crit_edge, %for.cond.i.i100.cleanup_crit_edge, %if.then66.i.cleanup_crit_edge, %if.end57.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %nvkm_perfdom_find.exit.i.i.cleanup_crit_edge, %for.cond.i.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.then16.i55.cleanup_crit_edge, %land.lhs.true11.i53.cleanup_crit_edge, %land.lhs.true.i51.cleanup_crit_edge, %cleanup.sink.split.i, %lor.lhs.false.i.cleanup_crit_edge, %nvkm_perfdom_find.exit.i36.cleanup_crit_edge, %for.cond.i.i29.cleanup_crit_edge, %if.end50.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %land.lhs.true16.i.cleanup_crit_edge, %land.lhs.true.i20.cleanup_crit_edge, %if.end71.i, %nvkm_perfdom_find.exit.i.cleanup_crit_edge, %for.cond.i130.i.cleanup_crit_edge, %if.then58.i.cleanup_crit_edge, %nvkm_pm_count_perfdom.exit.i.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %nvkm_pm_count_perfdom.exit.i.cleanup_crit_edge ], [ -22, %nvkm_perfdom_find.exit.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i.cleanup_crit_edge ], [ -38, %land.lhs.true11.i.cleanup_crit_edge ], [ -7, %if.then16.i.cleanup_crit_edge ], [ -22, %if.then58.i.cleanup_crit_edge ], [ 0, %if.end71.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %nvkm_perfdom_find.exit.i36.cleanup_crit_edge ], [ -38, %land.lhs.true.i20.cleanup_crit_edge ], [ -38, %land.lhs.true16.i.cleanup_crit_edge ], [ -7, %if.then21.i.cleanup_crit_edge ], [ -22, %if.end50.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -22, %if.end57.i.cleanup_crit_edge ], [ -22, %nvkm_perfsrc_find.exit.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i51.cleanup_crit_edge ], [ -38, %land.lhs.true11.i53.cleanup_crit_edge ], [ -7, %if.then16.i55.cleanup_crit_edge ], [ -22, %nvkm_perfdom_find.exit.i.i.cleanup_crit_edge ], [ -22, %if.then.i.i.cleanup_crit_edge ], [ -22, %if.end4.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.cleanup_crit_edge ], [ -22, %for.cond.5.i.i.cleanup_crit_edge ], [ -22, %for.cond.4.i.i.cleanup_crit_edge ], [ -22, %for.cond.3.i.i.cleanup_crit_edge ], [ -22, %for.cond.2.i.i.cleanup_crit_edge ], [ -22, %for.cond.1.i.i.cleanup_crit_edge ], [ -22, %for.cond.i.i100.cleanup_crit_edge ], [ -22, %if.then66.i.cleanup_crit_edge ], [ -22, %for.body.6.i.i.cleanup_crit_edge ], [ 0, %if.end81.i ], [ -22, %for.cond.i130.i.cleanup_crit_edge ], [ -22, %for.cond.i.i29.cleanup_crit_edge ], [ -22, %for.cond12.i.i.cleanup_crit_edge ], [ -22, %for.cond.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_perfmon_child_get(ptr nocapture noundef readnone %object, i32 noundef %index, ptr nocapture noundef writeonly %oclass) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %oclass1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %oclass1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -3, ptr %oclass1, align 4
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %base, align 4
  %maxver = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %maxver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %maxver, align 4
  %3 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvkm_perfmon_child_new, ptr %oclass, align 8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_perfmon_child_new(ptr noundef %oclass, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %ctr.i = alloca [4 x ptr], align 4
  %sig.i = alloca [4 x ptr], align 4
  %src.i = alloca [4 x [8 x i64]], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %pm1.i = getelementptr inbounds %struct.nvkm_perfmon, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr.i) #12
  %4 = call ptr @memset(ptr %ctr.i, i32 0, i32 16)
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp ugt i32 %8, 4
  br i1 %cmp.i, label %do.end.i, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 8
  %oclass4.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %oclass4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass4.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i, i32 noundef %10, i32 noundef %12, i32 noundef %size) #18
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %entry.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1095, i32 %size)
  %cmp8.i = icmp ugt i32 %size, 1095
  br i1 %cmp8.i, label %land.lhs.true12.i, label %land.lhs.true.i.nvkm_perfdom_new_.exit_crit_edge

land.lhs.true.i.nvkm_perfdom_new_.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_new_.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp15.i = icmp eq i8 %14, 0
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true12.i.nvkm_perfdom_new_.exit_crit_edge

land.lhs.true12.i.nvkm_perfdom_new_.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_new_.exit

if.then17.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1096, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 1096
  br i1 %tobool.not.i, label %do.body24.i, label %if.then17.i.nvkm_perfdom_new_.exit_crit_edge

if.then17.i.nvkm_perfdom_new_.exit_crit_edge:     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_new_.exit

do.body24.i:                                      ; preds = %if.then17.i
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %debug28.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %debug28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp29.i = icmp ugt i32 %18, 4
  br i1 %cmp29.i, label %do.end34.i, label %do.body24.i.if.end45.i_crit_edge

do.body24.i.if.end45.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

do.end34.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  %name36.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 1
  %handle38.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %handle38.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle38.i, align 8
  %oclass39.i = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %oclass39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oclass39.i, align 4
  %domain.i = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %domain.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %domain.i, align 1
  %conv42.i = zext i8 %24 to i32
  %mode.i = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mode.i, align 2
  %conv43.i = zext i8 %26 to i32
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name36.i, i32 noundef %20, i32 noundef %22, i32 noundef 0, i32 noundef %conv42.i, i32 noundef %conv43.i) #18
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end34.i, %do.body24.i.if.end45.i_crit_edge
  %domain55.i = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 1
  %domains.i.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 3
  %sources.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 4
  %arrayidx.1.i217.i = getelementptr inbounds ptr, ptr %sig.i, i32 1
  %uglygep51.1.i.i = getelementptr inbounds i8, ptr %src.i, i32 64
  %arrayidx.2.i218.i = getelementptr inbounds ptr, ptr %sig.i, i32 2
  %uglygep51.2.i.i = getelementptr inbounds i8, ptr %src.i, i32 128
  %arrayidx.3.i219.i = getelementptr inbounds ptr, ptr %sig.i, i32 3
  %uglygep51.3.i.i = getelementptr inbounds i8, ptr %src.i, i32 192
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc107.i.for.body.i_crit_edge, %if.end45.i
  %c.0253.i = phi i32 [ 0, %if.end45.i ], [ %inc108.i, %for.inc107.i.for.body.i_crit_edge ]
  %sdom.0252.i = phi ptr [ null, %if.end45.i ], [ %sdom.3.i, %for.inc107.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sig.i) #12
  %27 = call ptr @memset(ptr %sig.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %src.i) #12
  %28 = call ptr @memset(ptr %src.i, i32 0, i32 256)
  %arrayidx.i = getelementptr %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 4, i32 %c.0253.i
  br label %for.body54.i

for.body54.i:                                     ; preds = %for.inc93.i.for.body54.i_crit_edge, %for.body.i
  %s.0251.i = phi i32 [ 0, %for.body.i ], [ %inc94.i, %for.inc93.i.for.body54.i_crit_edge ]
  %sdom.1250.i = phi ptr [ %sdom.0252.i, %for.body.i ], [ %sdom.3.i, %for.inc93.i.for.body54.i_crit_edge ]
  %arrayidx57.i = getelementptr [4 x i8], ptr %arrayidx.i, i32 0, i32 %s.0251.i
  %29 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx57.i, align 1
  %cmp.i.i = icmp eq ptr %sdom.1250.i, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body54.i.if.end4.i.i_crit_edge

for.body54.i.if.end4.i.i_crit_edge:               ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %for.body54.i
  %31 = ptrtoint ptr %domain55.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %domain55.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %domains.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn15.i.i.i = load ptr, ptr %domains.i.i.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %.pn15.i.i.i, %domains.i.i.i
  br i1 %cmp.not16.i.i.i, label %if.then.i.i.nvkm_perfsig_find.exit.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.nvkm_perfsig_find.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsig_find.exit.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %tmp.017.i.i.i, 1
  %34 = ptrtoint ptr %.pn18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i.i.i = load ptr, ptr %.pn18.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %domains.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.nvkm_perfsig_find.exit.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.nvkm_perfsig_find.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsig_find.exit.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %.pn18.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn15.i.i.i, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %tmp.017.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i.i, i32 %conv.i.i)
  %cmp3.i.i.i = icmp eq i32 %tmp.017.i.i.i, %conv.i.i
  br i1 %cmp3.i.i.i, label %nvkm_perfdom_find.exit.i.i, label %for.cond.i.i.i

nvkm_perfdom_find.exit.i.i:                       ; preds = %for.body.i.i.i
  %dom.0.le.i.i.i = getelementptr i8, ptr %.pn18.i.i.i, i32 -76
  %cmp1.i.i = icmp eq ptr %dom.0.le.i.i.i, null
  br i1 %cmp1.i.i, label %nvkm_perfdom_find.exit.i.i.nvkm_perfsig_find.exit.i_crit_edge, label %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge

nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

nvkm_perfdom_find.exit.i.i.nvkm_perfsig_find.exit.i_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsig_find.exit.i

if.end4.i.i:                                      ; preds = %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge, %for.body54.i.if.end4.i.i_crit_edge
  %sdom.2.i = phi ptr [ %sdom.1250.i, %for.body54.i.if.end4.i.i_crit_edge ], [ %dom.0.le.i.i.i, %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge ]
  %idxprom.i.i = zext i8 %30 to i32
  %arrayidx.i.i = getelementptr %struct.nvkm_perfdom, ptr %sdom.2.i, i32 0, i32 11, i32 %idxprom.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  %.arrayidx.i.i = select i1 %tobool.not.i.i, ptr null, ptr %arrayidx.i.i
  br label %nvkm_perfsig_find.exit.i

nvkm_perfsig_find.exit.i:                         ; preds = %if.end4.i.i, %nvkm_perfdom_find.exit.i.i.nvkm_perfsig_find.exit.i_crit_edge, %for.cond.i.i.i.nvkm_perfsig_find.exit.i_crit_edge, %if.then.i.i.nvkm_perfsig_find.exit.i_crit_edge
  %sdom.3.i = phi ptr [ null, %if.then.i.i.nvkm_perfsig_find.exit.i_crit_edge ], [ null, %nvkm_perfdom_find.exit.i.i.nvkm_perfsig_find.exit.i_crit_edge ], [ %sdom.2.i, %if.end4.i.i ], [ null, %for.cond.i.i.i.nvkm_perfsig_find.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ null, %if.then.i.i.nvkm_perfsig_find.exit.i_crit_edge ], [ null, %nvkm_perfdom_find.exit.i.i.nvkm_perfsig_find.exit.i_crit_edge ], [ %.arrayidx.i.i, %if.end4.i.i ], [ null, %for.cond.i.i.i.nvkm_perfsig_find.exit.i_crit_edge ]
  %arrayidx59.i = getelementptr [4 x ptr], ptr %sig.i, i32 0, i32 %s.0251.i
  %37 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i.i, ptr %arrayidx59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool65.not.i = icmp ne i8 %30, 0
  %tobool68.not.i = icmp eq ptr %retval.0.i.i, null
  %or.cond.i = select i1 %tobool65.not.i, i1 %tobool68.not.i, i1 false
  br i1 %or.cond.i, label %nvkm_perfsig_find.exit.i.cleanup.thread.i_crit_edge, label %for.cond71.preheader.i

nvkm_perfsig_find.exit.i.cleanup.thread.i_crit_edge: ; preds = %nvkm_perfsig_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.cond71.preheader.i:                           ; preds = %nvkm_perfsig_find.exit.i
  %arrayidx.i211.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 0
  %arrayidx.1.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 1
  %arrayidx.2.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 2
  %arrayidx.3.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 3
  %arrayidx.4.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 4
  %arrayidx.5.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 5
  %arrayidx.6.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 6
  %arrayidx.7.i.i = getelementptr %struct.nvkm_perfsig, ptr %retval.0.i.i, i32 0, i32 1, i32 7
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.inc.i.for.body74.i_crit_edge, %for.cond71.preheader.i
  %m.0249.i = phi i32 [ 0, %for.cond71.preheader.i ], [ %inc.i, %for.inc.i.for.body74.i_crit_edge ]
  %arrayidx78.i = getelementptr %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 4, i32 %c.0253.i, i32 1, i32 %s.0251.i, i32 %m.0249.i
  %38 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx78.i, align 8
  %arrayidx80.i = getelementptr [4 x [8 x i64]], ptr %src.i, i32 0, i32 %s.0251.i, i32 %m.0249.i
  %40 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx80.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool83.not.i = icmp eq i64 %39, 0
  br i1 %tobool83.not.i, label %for.body74.i.for.inc.i_crit_edge, label %land.lhs.true84.i

for.body74.i.for.inc.i_crit_edge:                 ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true84.i:                                ; preds = %for.body74.i
  %conv88.i = trunc i64 %39 to i32
  %41 = ptrtoint ptr %arrayidx.i211.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i211.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i212.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i212.i, label %land.lhs.true84.i.cleanup.thread.i_crit_edge, label %for.body.i.i

land.lhs.true84.i.cleanup.thread.i_crit_edge:     ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %43 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.1.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.cleanup.thread.i_crit_edge, label %for.body.1.i.i

for.cond.i.i.cleanup.thread.i_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.1.i.i:                                   ; preds = %for.cond.i.i
  %conv2.1.i.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.1.i.i, i32 %conv88.i)
  %cmp7.1.i.i = icmp eq i32 %conv2.1.i.i, %conv88.i
  br i1 %cmp7.1.i.i, label %for.body.1.i.i.if.then10.i.i_crit_edge, label %for.cond.1.i.i

for.body.1.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.1.i.i:                                   ; preds = %for.body.1.i.i
  %45 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.2.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.2.i.i, label %for.cond.1.i.i.cleanup.thread.i_crit_edge, label %for.body.2.i.i

for.cond.1.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.2.i.i:                                   ; preds = %for.cond.1.i.i
  %conv2.2.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.2.i.i, i32 %conv88.i)
  %cmp7.2.i.i = icmp eq i32 %conv2.2.i.i, %conv88.i
  br i1 %cmp7.2.i.i, label %for.body.2.i.i.if.then10.i.i_crit_edge, label %for.cond.2.i.i

for.body.2.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.2.i.i:                                   ; preds = %for.body.2.i.i
  %47 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.3.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.3.i.i, label %for.cond.2.i.i.cleanup.thread.i_crit_edge, label %for.body.3.i.i

for.cond.2.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.3.i.i:                                   ; preds = %for.cond.2.i.i
  %conv2.3.i.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.3.i.i, i32 %conv88.i)
  %cmp7.3.i.i = icmp eq i32 %conv2.3.i.i, %conv88.i
  br i1 %cmp7.3.i.i, label %for.body.3.i.i.if.then10.i.i_crit_edge, label %for.cond.3.i.i

for.body.3.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.3.i.i:                                   ; preds = %for.body.3.i.i
  %49 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.4.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i.i.cleanup.thread.i_crit_edge, label %for.body.4.i.i

for.cond.3.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.4.i.i:                                   ; preds = %for.cond.3.i.i
  %conv2.4.i.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.4.i.i, i32 %conv88.i)
  %cmp7.4.i.i = icmp eq i32 %conv2.4.i.i, %conv88.i
  br i1 %cmp7.4.i.i, label %for.body.4.i.i.if.then10.i.i_crit_edge, label %for.cond.4.i.i

for.body.4.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.4.i.i:                                   ; preds = %for.body.4.i.i
  %51 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.5.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.5.i.i, label %for.cond.4.i.i.cleanup.thread.i_crit_edge, label %for.body.5.i.i

for.cond.4.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.5.i.i:                                   ; preds = %for.cond.4.i.i
  %conv2.5.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.5.i.i, i32 %conv88.i)
  %cmp7.5.i.i = icmp eq i32 %conv2.5.i.i, %conv88.i
  br i1 %cmp7.5.i.i, label %for.body.5.i.i.if.then10.i.i_crit_edge, label %for.cond.5.i.i

for.body.5.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.5.i.i:                                   ; preds = %for.body.5.i.i
  %53 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.6.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.6.i.i, label %for.cond.5.i.i.cleanup.thread.i_crit_edge, label %for.body.6.i.i

for.cond.5.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body.6.i.i:                                   ; preds = %for.cond.5.i.i
  %conv2.6.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.6.i.i, i32 %conv88.i)
  %cmp7.6.i.i = icmp eq i32 %conv2.6.i.i, %conv88.i
  br i1 %cmp7.6.i.i, label %for.body.6.i.i.if.then10.i.i_crit_edge, label %for.cond.6.i.i

for.body.6.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.6.i.i:                                   ; preds = %for.body.6.i.i
  %55 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.7.i.i = icmp ne i8 %56, 0
  %conv2.7.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.7.i.i, i32 %conv88.i)
  %cmp7.7.i.i = icmp eq i32 %conv2.7.i.i, %conv88.i
  %or.cond.i.i = and i1 %tobool.not.7.i.i, %cmp7.7.i.i
  br i1 %or.cond.i.i, label %for.cond.6.i.i.if.then10.i.i_crit_edge, label %for.cond.6.i.i.cleanup.thread.i_crit_edge

for.cond.6.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.cond.6.i.i.if.then10.i.i_crit_edge:           ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.body.i.i:                                     ; preds = %land.lhs.true84.i
  %conv2.i.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %conv88.i)
  %cmp7.i.i = icmp eq i32 %conv2.i.i, %conv88.i
  br i1 %cmp7.i.i, label %for.body.i.i.if.then10.i.i_crit_edge, label %for.cond.i.i

for.body.i.i.if.then10.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i.if.then10.i.i_crit_edge, %for.cond.6.i.i.if.then10.i.i_crit_edge, %for.body.6.i.i.if.then10.i.i_crit_edge, %for.body.5.i.i.if.then10.i.i_crit_edge, %for.body.4.i.i.if.then10.i.i_crit_edge, %for.body.3.i.i.if.then10.i.i_crit_edge, %for.body.2.i.i.if.then10.i.i_crit_edge, %for.body.1.i.i.if.then10.i.i_crit_edge
  %57 = ptrtoint ptr %sources.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %src.044.i.i = load ptr, ptr %sources.i.i, align 4
  %cmp14.not45.i.i = icmp eq ptr %src.044.i.i, %sources.i.i
  br i1 %cmp14.not45.i.i, label %if.then10.i.i.cleanup.thread.i_crit_edge, label %if.then10.i.i.for.body16.i.i_crit_edge

if.then10.i.i.for.body16.i.i_crit_edge:           ; preds = %if.then10.i.i
  br label %for.body16.i.i

if.then10.i.i.cleanup.thread.i_crit_edge:         ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.cond12.i.i:                                   ; preds = %for.body16.i.i
  %inc17.i.i = add i32 %tmp.046.i.i, 1
  %58 = ptrtoint ptr %src.047.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %src.0.i.i = load ptr, ptr %src.047.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %src.0.i.i, %sources.i.i
  br i1 %cmp14.not.i.i, label %for.cond12.i.i.cleanup.thread.i_crit_edge, label %for.cond12.i.i.for.body16.i.i_crit_edge

for.cond12.i.i.for.body16.i.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i.i

for.cond12.i.i.cleanup.thread.i_crit_edge:        ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.body16.i.i:                                   ; preds = %for.cond12.i.i.for.body16.i.i_crit_edge, %if.then10.i.i.for.body16.i.i_crit_edge
  %src.047.i.i = phi ptr [ %src.0.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ %src.044.i.i, %if.then10.i.i.for.body16.i.i_crit_edge ]
  %tmp.046.i.i = phi i32 [ %inc17.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ 1, %if.then10.i.i.for.body16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.046.i.i, i32 %conv88.i)
  %cmp18.i.i = icmp eq i32 %tmp.046.i.i, %conv88.i
  br i1 %cmp18.i.i, label %nvkm_perfsrc_find.exit.i, label %for.cond12.i.i

nvkm_perfsrc_find.exit.i:                         ; preds = %for.body16.i.i
  %tobool90.not.i = icmp eq ptr %src.047.i.i, null
  br i1 %tobool90.not.i, label %nvkm_perfsrc_find.exit.i.cleanup.thread.i_crit_edge, label %nvkm_perfsrc_find.exit.i.for.inc.i_crit_edge

nvkm_perfsrc_find.exit.i.for.inc.i_crit_edge:     ; preds = %nvkm_perfsrc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

nvkm_perfsrc_find.exit.i.cleanup.thread.i_crit_edge: ; preds = %nvkm_perfsrc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

for.inc.i:                                        ; preds = %nvkm_perfsrc_find.exit.i.for.inc.i_crit_edge, %for.body74.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %m.0249.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc93.i, label %for.inc.i.for.body74.i_crit_edge

for.inc.i.for.body74.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body74.i

for.inc93.i:                                      ; preds = %for.inc.i
  %inc94.i = add nuw nsw i32 %s.0251.i, 1
  %exitcond263.not.i = icmp eq i32 %inc94.i, 4
  br i1 %exitcond263.not.i, label %for.end95.i, label %for.inc93.i.for.body54.i_crit_edge

for.inc93.i.for.body54.i_crit_edge:               ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body54.i

for.end95.i:                                      ; preds = %for.inc93.i
  %59 = ptrtoint ptr %domain55.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %domain55.i, align 1
  %logic_op.i = getelementptr %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 4, i32 %c.0253.i, i32 2
  %61 = ptrtoint ptr %logic_op.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %logic_op.i, align 8
  %tobool.not.i214.i = icmp eq ptr %sdom.3.i, null
  br i1 %tobool.not.i214.i, label %for.end95.i.cleanup.i_crit_edge, label %if.end.i215.i

for.end95.i.cleanup.i_crit_edge:                  ; preds = %for.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i215.i:                                    ; preds = %for.end95.i
  %arrayidx101.i = getelementptr [4 x ptr], ptr %ctr.i, i32 0, i32 %c.0253.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 288) #16
  %64 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i.i, ptr %arrayidx101.i, align 4
  %tobool1.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i215.i.cleanup.i_crit_edge, label %if.end3.i.i

if.end.i215.i.cleanup.i_crit_edge:                ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end3.i.i:                                      ; preds = %if.end.i215.i
  %domain4.i.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %domain4.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %60, ptr %domain4.i.i, align 8
  %conv.i216.i = zext i16 %62 to i32
  %logic_op5.i.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %logic_op5.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i216.i, ptr %logic_op5.i.i, align 4
  %slot6.i.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %slot6.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %c.0253.i, ptr %slot6.i.i, align 8
  %signal11.i.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %sdom.3.i, i32 0, i32 11
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %signal11.i.i to i32
  %68 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sig.i, align 4
  %tobool8.not.i.i = icmp eq ptr %69, null
  br i1 %tobool8.not.i.i, label %if.end3.i.i.for.inc25.i.i_crit_edge, label %if.then9.i.i

if.end3.i.i.for.inc25.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.i.i

if.then9.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 16
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 12
  %conv12.i.i = trunc i32 %sub.ptr.div.i.i to i8
  %arrayidx14.i.i = getelementptr %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 2, i32 0
  %70 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv12.i.i, ptr %arrayidx14.i.i, align 1
  %71 = call ptr @memcpy(ptr %uglygep.i.i, ptr %src.i, i32 64)
  br label %for.inc25.i.i

for.inc25.i.i:                                    ; preds = %if.then9.i.i, %if.end3.i.i.for.inc25.i.i_crit_edge
  %72 = ptrtoint ptr %arrayidx.1.i217.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.1.i217.i, align 4
  %tobool8.not.1.i.i = icmp eq ptr %73, null
  br i1 %tobool8.not.1.i.i, label %for.inc25.i.i.for.inc25.1.i.i_crit_edge, label %if.then9.1.i.i

for.inc25.i.i.for.inc25.1.i.i_crit_edge:          ; preds = %for.inc25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.1.i.i

if.then9.1.i.i:                                   ; preds = %for.inc25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep.1.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 80
  %sub.ptr.lhs.cast.1.i.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.1.i.i = sub i32 %sub.ptr.lhs.cast.1.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.1.i.i = sdiv exact i32 %sub.ptr.sub.1.i.i, 12
  %conv12.1.i.i = trunc i32 %sub.ptr.div.1.i.i to i8
  %arrayidx14.1.i.i = getelementptr %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv12.1.i.i, ptr %arrayidx14.1.i.i, align 2
  %75 = call ptr @memcpy(ptr %uglygep.1.i.i, ptr %uglygep51.1.i.i, i32 64)
  br label %for.inc25.1.i.i

for.inc25.1.i.i:                                  ; preds = %if.then9.1.i.i, %for.inc25.i.i.for.inc25.1.i.i_crit_edge
  %76 = ptrtoint ptr %arrayidx.2.i218.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.2.i218.i, align 4
  %tobool8.not.2.i.i = icmp eq ptr %77, null
  br i1 %tobool8.not.2.i.i, label %for.inc25.1.i.i.for.inc25.2.i.i_crit_edge, label %if.then9.2.i.i

for.inc25.1.i.i.for.inc25.2.i.i_crit_edge:        ; preds = %for.inc25.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.2.i.i

if.then9.2.i.i:                                   ; preds = %for.inc25.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep.2.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 144
  %sub.ptr.lhs.cast.2.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.2.i.i = sub i32 %sub.ptr.lhs.cast.2.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.2.i.i = sdiv exact i32 %sub.ptr.sub.2.i.i, 12
  %conv12.2.i.i = trunc i32 %sub.ptr.div.2.i.i to i8
  %arrayidx14.2.i.i = getelementptr %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv12.2.i.i, ptr %arrayidx14.2.i.i, align 1
  %79 = call ptr @memcpy(ptr %uglygep.2.i.i, ptr %uglygep51.2.i.i, i32 64)
  br label %for.inc25.2.i.i

for.inc25.2.i.i:                                  ; preds = %if.then9.2.i.i, %for.inc25.1.i.i.for.inc25.2.i.i_crit_edge
  %80 = ptrtoint ptr %arrayidx.3.i219.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.3.i219.i, align 4
  %tobool8.not.3.i.i = icmp eq ptr %81, null
  br i1 %tobool8.not.3.i.i, label %for.inc25.2.i.i.for.inc25.3.i.i_crit_edge, label %if.then9.3.i.i

for.inc25.2.i.i.for.inc25.3.i.i_crit_edge:        ; preds = %for.inc25.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.3.i.i

if.then9.3.i.i:                                   ; preds = %for.inc25.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %uglygep.3.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 208
  %sub.ptr.lhs.cast.3.i.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.3.i.i = sub i32 %sub.ptr.lhs.cast.3.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.3.i.i = sdiv exact i32 %sub.ptr.sub.3.i.i, 12
  %conv12.3.i.i = trunc i32 %sub.ptr.div.3.i.i to i8
  %arrayidx14.3.i.i = getelementptr %struct.nvkm_perfctr, ptr %call7.i.i.i.i, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %arrayidx14.3.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv12.3.i.i, ptr %arrayidx14.3.i.i, align 4
  %83 = call ptr @memcpy(ptr %uglygep.3.i.i, ptr %uglygep51.3.i.i, i32 64)
  br label %for.inc25.3.i.i

for.inc25.3.i.i:                                  ; preds = %if.then9.3.i.i, %for.inc25.2.i.i.for.inc25.3.i.i_crit_edge
  %list.i.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %sdom.3.i, i32 0, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %sdom.3.i, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %85, ptr noundef %list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.inc25.3.i.i.for.inc107.i_crit_edge

for.inc25.3.i.i.for.inc107.i_crit_edge:           ; preds = %for.inc25.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc107.i

if.end.i.i.i.i:                                   ; preds = %for.inc25.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %list.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i.i.i.i, ptr %85, align 4
  br label %for.inc107.i

cleanup.thread.i:                                 ; preds = %nvkm_perfsrc_find.exit.i.cleanup.thread.i_crit_edge, %for.cond12.i.i.cleanup.thread.i_crit_edge, %if.then10.i.i.cleanup.thread.i_crit_edge, %for.cond.6.i.i.cleanup.thread.i_crit_edge, %for.cond.5.i.i.cleanup.thread.i_crit_edge, %for.cond.4.i.i.cleanup.thread.i_crit_edge, %for.cond.3.i.i.cleanup.thread.i_crit_edge, %for.cond.2.i.i.cleanup.thread.i_crit_edge, %for.cond.1.i.i.cleanup.thread.i_crit_edge, %for.cond.i.i.cleanup.thread.i_crit_edge, %land.lhs.true84.i.cleanup.thread.i_crit_edge, %nvkm_perfsig_find.exit.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %src.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sig.i) #12
  br label %nvkm_perfdom_new_.exit

cleanup.i:                                        ; preds = %if.end.i215.i.cleanup.i_crit_edge, %for.end95.i.cleanup.i_crit_edge
  %retval.0.i220.i = phi i32 [ -22, %for.end95.i.cleanup.i_crit_edge ], [ -12, %if.end.i215.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %src.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sig.i) #12
  br label %nvkm_perfdom_new_.exit

for.inc107.i:                                     ; preds = %if.end.i.i.i.i, %for.inc25.3.i.i.for.inc107.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %src.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sig.i) #12
  %inc108.i = add nuw nsw i32 %c.0253.i, 1
  %exitcond264.not.i = icmp eq i32 %inc108.i, 4
  br i1 %exitcond264.not.i, label %if.end112.i, label %for.inc107.i.for.body.i_crit_edge

for.inc107.i.for.body.i_crit_edge:                ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end112.i:                                      ; preds = %for.inc107.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3520, i32 noundef 160) #16
  %tobool114.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool114.not.i, label %if.end112.i.nvkm_perfdom_new_.exit_crit_edge, label %if.end116.i

if.end112.i.nvkm_perfdom_new_.exit_crit_edge:     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfdom_new_.exit

if.end116.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_perfdom, ptr noundef %oclass, ptr noundef nonnull %call7.i.i.i) #12
  %perfmon117.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %call7.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %perfmon117.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %1, ptr %perfmon117.i, align 8
  %92 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call7.i.i.i, ptr %pobject, align 4
  %func.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %sdom.3.i, i32 0, i32 4
  %93 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %func.i, align 4
  %func119.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %call7.i.i.i, i32 0, i32 4
  %95 = ptrtoint ptr %func119.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %func119.i, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %sdom.3.i, i32 0, i32 7
  %96 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr.i, align 8
  %addr120.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %call7.i.i.i, i32 0, i32 7
  %98 = ptrtoint ptr %addr120.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %addr120.i, align 8
  %mode121.i = getelementptr inbounds %struct.nvif_perfdom_v0, ptr %data, i32 0, i32 2
  %99 = ptrtoint ptr %mode121.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %mode121.i, align 2
  %mode122.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %call7.i.i.i, i32 0, i32 8
  %101 = ptrtoint ptr %mode122.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %mode122.i, align 4
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 96
  %102 = call ptr @memcpy(ptr %uglygep.i, ptr %ctr.i, i32 16)
  br label %nvkm_perfdom_new_.exit

nvkm_perfdom_new_.exit:                           ; preds = %if.end116.i, %if.end112.i.nvkm_perfdom_new_.exit_crit_edge, %cleanup.i, %cleanup.thread.i, %if.then17.i.nvkm_perfdom_new_.exit_crit_edge, %land.lhs.true12.i.nvkm_perfdom_new_.exit_crit_edge, %land.lhs.true.i.nvkm_perfdom_new_.exit_crit_edge
  %retval.2.i = phi i32 [ %retval.0.i220.i, %cleanup.i ], [ -12, %if.end112.i.nvkm_perfdom_new_.exit_crit_edge ], [ -22, %cleanup.thread.i ], [ -38, %land.lhs.true.i.nvkm_perfdom_new_.exit_crit_edge ], [ -38, %land.lhs.true12.i.nvkm_perfdom_new_.exit_crit_edge ], [ -7, %if.then17.i.nvkm_perfdom_new_.exit_crit_edge ], [ 0, %if.end116.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr.i) #12
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_perfdom_dtor(ptr noundef readonly returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %perfmon = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perfmon, align 8
  %pm1 = getelementptr inbounds %struct.nvkm_perfmon, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1, align 8
  %device2.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 1, i32 1, i32 1
  %domains.i.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 3
  %sources.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 4
  %debug.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 1, i32 1, i32 5
  %name.i = getelementptr inbounds %struct.nvkm_pm, ptr %3, i32 0, i32 1, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 %i.020
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end6_crit_edge, label %if.then

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2.i, align 4
  %domain.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %5, i32 0, i32 1
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc38.i.for.cond3.preheader.i_crit_edge, %if.then
  %i.020.i = phi i32 [ 0, %if.then ], [ %inc39.i, %for.inc38.i.for.cond3.preheader.i_crit_edge ]
  %dom.019.i = phi ptr [ null, %if.then ], [ %dom.1.lcssa.i, %for.inc38.i.for.cond3.preheader.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.nvkm_perfctr, ptr %5, i32 0, i32 2, i32 %i.020.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end35.i.land.rhs.i_crit_edge, %for.cond3.preheader.i
  %j.018.i = phi i32 [ 0, %for.cond3.preheader.i ], [ %inc.i, %if.end35.i.land.rhs.i_crit_edge ]
  %dom.117.i = phi ptr [ %dom.019.i, %for.cond3.preheader.i ], [ %dom.2.i, %if.end35.i.land.rhs.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.nvkm_perfctr, ptr %5, i32 0, i32 3, i32 %i.020.i, i32 %j.018.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %land.rhs.i.for.inc38.i_crit_edge, label %for.body6.i

land.rhs.i.for.inc38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38.i

for.body6.i:                                      ; preds = %land.rhs.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i, align 1
  %cmp.i.i = icmp eq ptr %dom.117.i, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body6.i.if.end4.i.i_crit_edge

for.body6.i.if.end4.i.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %for.body6.i
  %12 = ptrtoint ptr %domain.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %domain.i, align 8
  %conv.i.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %domains.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn15.i.i.i = load ptr, ptr %domains.i.i.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %.pn15.i.i.i, %domains.i.i.i
  br i1 %cmp.not16.i.i.i, label %if.then.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.nvkm_perfsrc_disable.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %tmp.017.i.i.i, 1
  %15 = ptrtoint ptr %.pn18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i.i.i = load ptr, ptr %.pn18.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pn.i.i.i, %domains.i.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.i.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.i.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %.pn18.i.i.i = phi ptr [ %.pn.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn15.i.i.i, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %tmp.017.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i.i, i32 %conv.i.i)
  %cmp3.i.i.i = icmp eq i32 %tmp.017.i.i.i, %conv.i.i
  br i1 %cmp3.i.i.i, label %nvkm_perfdom_find.exit.i.i, label %for.cond.i.i.i

nvkm_perfdom_find.exit.i.i:                       ; preds = %for.body.i.i.i
  %dom.0.le.i.i.i = getelementptr i8, ptr %.pn18.i.i.i, i32 -76
  %cmp1.i.i = icmp eq ptr %dom.0.le.i.i.i, null
  br i1 %cmp1.i.i, label %nvkm_perfdom_find.exit.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge

nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i

nvkm_perfdom_find.exit.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

if.end4.i.i:                                      ; preds = %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge, %for.body6.i.if.end4.i.i_crit_edge
  %dom.2.i = phi ptr [ %dom.117.i, %for.body6.i.if.end4.i.i_crit_edge ], [ %dom.0.le.i.i.i, %nvkm_perfdom_find.exit.i.i.if.end4.i.i_crit_edge ]
  %idxprom.i.i = zext i8 %11 to i32
  %arrayidx.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  %tobool8.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool8.not.i
  br i1 %or.cond.i, label %if.end4.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %if.end.i

if.end4.i.i.nvkm_perfsrc_disable.exit_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

if.end.i:                                         ; preds = %if.end4.i.i
  %conv.i = trunc i64 %9 to i32
  %arrayidx.i1.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i2.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i2.i, label %if.end.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.i.i

if.end.i.nvkm_perfsrc_disable.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.cond.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.1.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.1.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.1.i.i

for.cond.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.1.i.i:                                   ; preds = %for.cond.i.i
  %conv2.1.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.1.i.i, i32 %conv.i)
  %cmp7.1.i.i = icmp eq i32 %conv2.1.i.i, %conv.i
  br i1 %cmp7.1.i.i, label %for.body.1.i.i.if.then10.i.i_crit_edge, label %for.cond.1.i.i

for.body.1.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.1.i.i:                                   ; preds = %for.body.1.i.i
  %arrayidx.2.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.2.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.2.i.i, label %for.cond.1.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.2.i.i

for.cond.1.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.2.i.i:                                   ; preds = %for.cond.1.i.i
  %conv2.2.i.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.2.i.i, i32 %conv.i)
  %cmp7.2.i.i = icmp eq i32 %conv2.2.i.i, %conv.i
  br i1 %cmp7.2.i.i, label %for.body.2.i.i.if.then10.i.i_crit_edge, label %for.cond.2.i.i

for.body.2.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.2.i.i:                                   ; preds = %for.body.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.3.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.3.i.i, label %for.cond.2.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.3.i.i

for.cond.2.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.3.i.i:                                   ; preds = %for.cond.2.i.i
  %conv2.3.i.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.3.i.i, i32 %conv.i)
  %cmp7.3.i.i = icmp eq i32 %conv2.3.i.i, %conv.i
  br i1 %cmp7.3.i.i, label %for.body.3.i.i.if.then10.i.i_crit_edge, label %for.cond.3.i.i

for.body.3.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.3.i.i:                                   ; preds = %for.body.3.i.i
  %arrayidx.4.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.4.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.4.i.i

for.cond.3.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.4.i.i:                                   ; preds = %for.cond.3.i.i
  %conv2.4.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.4.i.i, i32 %conv.i)
  %cmp7.4.i.i = icmp eq i32 %conv2.4.i.i, %conv.i
  br i1 %cmp7.4.i.i, label %for.body.4.i.i.if.then10.i.i_crit_edge, label %for.cond.4.i.i

for.body.4.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.4.i.i:                                   ; preds = %for.body.4.i.i
  %arrayidx.5.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.5.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.5.i.i, label %for.cond.4.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.5.i.i

for.cond.4.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.5.i.i:                                   ; preds = %for.cond.4.i.i
  %conv2.5.i.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.5.i.i, i32 %conv.i)
  %cmp7.5.i.i = icmp eq i32 %conv2.5.i.i, %conv.i
  br i1 %cmp7.5.i.i, label %for.body.5.i.i.if.then10.i.i_crit_edge, label %for.cond.5.i.i

for.body.5.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.5.i.i:                                   ; preds = %for.body.5.i.i
  %arrayidx.6.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.6.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.6.i.i, label %for.cond.5.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.body.6.i.i

for.cond.5.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body.6.i.i:                                   ; preds = %for.cond.5.i.i
  %conv2.6.i.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.6.i.i, i32 %conv.i)
  %cmp7.6.i.i = icmp eq i32 %conv2.6.i.i, %conv.i
  br i1 %cmp7.6.i.i, label %for.body.6.i.i.if.then10.i.i_crit_edge, label %for.cond.6.i.i

for.body.6.i.i.if.then10.i.i_crit_edge:           ; preds = %for.body.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.cond.6.i.i:                                   ; preds = %for.body.6.i.i
  %arrayidx.7.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i, i32 0, i32 11, i32 %idxprom.i.i, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.7.i.i = icmp ne i8 %33, 0
  %conv2.7.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.7.i.i, i32 %conv.i)
  %cmp7.7.i.i = icmp eq i32 %conv2.7.i.i, %conv.i
  %or.cond.i.i = and i1 %tobool.not.7.i.i, %cmp7.7.i.i
  br i1 %or.cond.i.i, label %for.cond.6.i.i.if.then10.i.i_crit_edge, label %for.cond.6.i.i.nvkm_perfsrc_disable.exit_crit_edge

for.cond.6.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.cond.6.i.i.if.then10.i.i_crit_edge:           ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

for.body.i.i:                                     ; preds = %if.end.i
  %conv2.i.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i, i32 %conv.i)
  %cmp7.i.i = icmp eq i32 %conv2.i.i, %conv.i
  br i1 %cmp7.i.i, label %for.body.i.i.if.then10.i.i_crit_edge, label %for.cond.i.i

for.body.i.i.if.then10.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i.if.then10.i.i_crit_edge, %for.cond.6.i.i.if.then10.i.i_crit_edge, %for.body.6.i.i.if.then10.i.i_crit_edge, %for.body.5.i.i.if.then10.i.i_crit_edge, %for.body.4.i.i.if.then10.i.i_crit_edge, %for.body.3.i.i.if.then10.i.i_crit_edge, %for.body.2.i.i.if.then10.i.i_crit_edge, %for.body.1.i.i.if.then10.i.i_crit_edge
  %34 = ptrtoint ptr %sources.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %src.044.i.i = load ptr, ptr %sources.i.i, align 4
  %cmp14.not45.i.i = icmp eq ptr %src.044.i.i, %sources.i.i
  br i1 %cmp14.not45.i.i, label %if.then10.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %if.then10.i.i.for.body16.i.i_crit_edge

if.then10.i.i.for.body16.i.i_crit_edge:           ; preds = %if.then10.i.i
  br label %for.body16.i.i

if.then10.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.cond12.i.i:                                   ; preds = %for.body16.i.i
  %inc17.i.i = add i32 %tmp.046.i.i, 1
  %35 = ptrtoint ptr %src.047.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %src.0.i.i = load ptr, ptr %src.047.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %src.0.i.i, %sources.i.i
  br i1 %cmp14.not.i.i, label %for.cond12.i.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.cond12.i.i.for.body16.i.i_crit_edge

for.cond12.i.i.for.body16.i.i_crit_edge:          ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i.i

for.cond12.i.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %for.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

for.body16.i.i:                                   ; preds = %for.cond12.i.i.for.body16.i.i_crit_edge, %if.then10.i.i.for.body16.i.i_crit_edge
  %src.047.i.i = phi ptr [ %src.0.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ %src.044.i.i, %if.then10.i.i.for.body16.i.i_crit_edge ]
  %tmp.046.i.i = phi i32 [ %inc17.i.i, %for.cond12.i.i.for.body16.i.i_crit_edge ], [ 1, %if.then10.i.i.for.body16.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.046.i.i, i32 %conv.i)
  %cmp18.i.i = icmp eq i32 %tmp.046.i.i, %conv.i
  br i1 %cmp18.i.i, label %nvkm_perfsrc_find.exit.i, label %for.cond12.i.i

nvkm_perfsrc_find.exit.i:                         ; preds = %for.body16.i.i
  %tobool13.not.i = icmp eq ptr %src.047.i.i, null
  br i1 %tobool13.not.i, label %nvkm_perfsrc_find.exit.i.nvkm_perfsrc_disable.exit_crit_edge, label %if.end15.i

nvkm_perfsrc_find.exit.i.nvkm_perfsrc_disable.exit_crit_edge: ; preds = %nvkm_perfsrc_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

if.end15.i:                                       ; preds = %nvkm_perfsrc_find.exit.i
  %enable.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enable.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not.i = icmp eq i8 %37, 0
  %spec.store.select.i = select i1 %tobool16.not.i, i32 0, i32 -2147483648
  %mask19.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %mask19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask19.i, align 4
  %shift.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %shift.i, align 4
  %conv20.i = zext i8 %41 to i32
  %shl.i = shl i32 %39, %conv20.i
  %or.i = or i32 %shl.i, %spec.store.select.i
  %addr.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 4
  %44 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !111
  tail call void @arm_heavy_mb() #12
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %46, %neg.i
  %47 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pri.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %48, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %and.i) #12, !srcloc !112
  %49 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp27.i = icmp ugt i32 %50, 3
  br i1 %cmp27.i, label %do.end32.i, label %if.end15.i.if.end35.i_crit_edge

if.end15.i.if.end35.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device2.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 8
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.28, ptr noundef %name.i, i32 noundef %56, i32 noundef %or.i) #18
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %if.end15.i.if.end35.i_crit_edge
  %inc.i = add nuw nsw i32 %j.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end35.i.for.inc38.i_crit_edge, label %if.end35.i.land.rhs.i_crit_edge

if.end35.i.land.rhs.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end35.i.for.inc38.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.end35.i.for.inc38.i_crit_edge, %land.rhs.i.for.inc38.i_crit_edge
  %dom.1.lcssa.i = phi ptr [ %dom.117.i, %land.rhs.i.for.inc38.i_crit_edge ], [ %dom.2.i, %if.end35.i.for.inc38.i_crit_edge ]
  %inc39.i = add nuw nsw i32 %i.020.i, 1
  %exitcond27.not.i = icmp eq i32 %inc39.i, 4
  br i1 %exitcond27.not.i, label %for.inc38.i.nvkm_perfsrc_disable.exit_crit_edge, label %for.inc38.i.for.cond3.preheader.i_crit_edge

for.inc38.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader.i

for.inc38.i.nvkm_perfsrc_disable.exit_crit_edge:  ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvkm_perfsrc_disable.exit

nvkm_perfsrc_disable.exit:                        ; preds = %for.inc38.i.nvkm_perfsrc_disable.exit_crit_edge, %nvkm_perfsrc_find.exit.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond12.i.i.nvkm_perfsrc_disable.exit_crit_edge, %if.then10.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.6.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.5.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.4.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.3.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.2.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.1.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.i.i.nvkm_perfsrc_disable.exit_crit_edge, %if.end.i.nvkm_perfsrc_disable.exit_crit_edge, %if.end4.i.i.nvkm_perfsrc_disable.exit_crit_edge, %nvkm_perfdom_find.exit.i.i.nvkm_perfsrc_disable.exit_crit_edge, %for.cond.i.i.i.nvkm_perfsrc_disable.exit_crit_edge, %if.then.i.i.nvkm_perfsrc_disable.exit_crit_edge
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 8
  %tobool3.not = icmp eq ptr %58, null
  br i1 %tobool3.not, label %nvkm_perfsrc_disable.exit.if.end6_crit_edge, label %if.then4

nvkm_perfsrc_disable.exit.if.end6_crit_edge:      ; preds = %nvkm_perfsrc_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %nvkm_perfsrc_disable.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %list_del.exit, %nvkm_perfsrc_disable.exit.if.end6_crit_edge, %for.body.if.end6_crit_edge
  tail call void @kfree(ptr noundef %5) #12
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_perfdom_mthd(ptr noundef %object, i32 noundef %mthd, ptr nocapture noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %perfmon.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %perfmon.i, align 8
  %pm2.i = getelementptr inbounds %struct.nvkm_perfmon, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pm2.i, align 8
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp ugt i32 %8, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %11 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name.i, i32 noundef %10, i32 noundef %12, i32 noundef %size) #18
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %sw.bb.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp7.i = icmp eq i32 %size, 0
  br i1 %cmp7.i, label %do.body12.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body12.i:                                      ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %debug16.i = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %debug16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp17.i = icmp ugt i32 %16, 4
  br i1 %cmp17.i, label %do.end21.i, label %do.body12.i.if.end28.i_crit_edge

do.body12.i.if.end28.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

do.end21.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  %name23.i = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 1
  %handle25.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %17 = ptrtoint ptr %handle25.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle25.i, align 8
  %oclass26.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %19 = ptrtoint ptr %oclass26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oclass26.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name23.i, i32 noundef %18, i32 noundef %20) #18
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end21.i, %do.body12.i.if.end28.i_crit_edge
  %func.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 4
  %device2.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 1, i32 1, i32 1
  %domains.i.i.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 3
  %sources.i.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 4
  %debug.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 1, i32 1, i32 5
  %name.i.i = getelementptr inbounds %struct.nvkm_pm, ptr %4, i32 0, i32 1, i32 1, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end28.i
  %i.06.i = phi i32 [ 0, %if.end28.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 %i.06.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool33.not.i = icmp eq ptr %22, null
  br i1 %tobool33.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then34.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then34.i:                                      ; preds = %for.body.i
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void %26(ptr noundef %4, ptr noundef %object, ptr noundef nonnull %22) #12
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device2.i.i, align 4
  %domain.i.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %28, i32 0, i32 1
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 11
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.inc47.i.i.for.cond3.preheader.i.i_crit_edge, %if.then34.i
  %i.020.i.i = phi i32 [ 0, %if.then34.i ], [ %inc48.i.i, %for.inc47.i.i.for.cond3.preheader.i.i_crit_edge ]
  %dom.019.i.i = phi ptr [ null, %if.then34.i ], [ %dom.1.lcssa.i.i, %for.inc47.i.i.for.cond3.preheader.i.i_crit_edge ]
  %arrayidx7.i.i = getelementptr %struct.nvkm_perfctr, ptr %28, i32 0, i32 2, i32 %i.020.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end44.i.i.land.rhs.i.i_crit_edge, %for.cond3.preheader.i.i
  %j.018.i.i = phi i32 [ 0, %for.cond3.preheader.i.i ], [ %inc.i.i, %if.end44.i.i.land.rhs.i.i_crit_edge ]
  %dom.117.i.i = phi ptr [ %dom.019.i.i, %for.cond3.preheader.i.i ], [ %dom.2.i.i, %if.end44.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.nvkm_perfctr, ptr %28, i32 0, i32 3, i32 %i.020.i.i, i32 %j.018.i.i
  %31 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx5.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool.not.i.i = icmp eq i64 %32, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.for.inc47.i.i_crit_edge, label %for.body6.i.i

land.rhs.i.i.for.inc47.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47.i.i

for.body6.i.i:                                    ; preds = %land.rhs.i.i
  %33 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx7.i.i, align 1
  %cmp.i.i.i = icmp eq ptr %dom.117.i.i, null
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.body6.i.i.if.end4.i.i.i_crit_edge

for.body6.i.i.if.end4.i.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.then.i.i.i:                                    ; preds = %for.body6.i.i
  %35 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %domain.i.i, align 8
  %conv.i.i.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %domains.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn15.i.i.i.i = load ptr, ptr %domains.i.i.i.i, align 4
  %cmp.not16.i.i.i.i = icmp eq ptr %.pn15.i.i.i.i, %domains.i.i.i.i
  br i1 %cmp.not16.i.i.i.i, label %if.then.i.i.i.for.inc.i_crit_edge, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

if.then.i.i.i.for.inc.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %tmp.017.i.i.i.i, 1
  %38 = ptrtoint ptr %.pn18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i.i.i.i = load ptr, ptr %.pn18.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %domains.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.i.for.inc.i_crit_edge, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.cond.i.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %.pn18.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn15.i.i.i.i, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %tmp.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.017.i.i.i.i, i32 %conv.i.i.i)
  %cmp3.i.i.i.i = icmp eq i32 %tmp.017.i.i.i.i, %conv.i.i.i
  br i1 %cmp3.i.i.i.i, label %nvkm_perfdom_find.exit.i.i.i, label %for.cond.i.i.i.i

nvkm_perfdom_find.exit.i.i.i:                     ; preds = %for.body.i.i.i.i
  %dom.0.le.i.i.i.i = getelementptr i8, ptr %.pn18.i.i.i.i, i32 -76
  %cmp1.i.i.i = icmp eq ptr %dom.0.le.i.i.i.i, null
  br i1 %cmp1.i.i.i, label %nvkm_perfdom_find.exit.i.i.i.for.inc.i_crit_edge, label %nvkm_perfdom_find.exit.i.i.i.if.end4.i.i.i_crit_edge

nvkm_perfdom_find.exit.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

nvkm_perfdom_find.exit.i.i.i.for.inc.i_crit_edge: ; preds = %nvkm_perfdom_find.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end4.i.i.i:                                    ; preds = %nvkm_perfdom_find.exit.i.i.i.if.end4.i.i.i_crit_edge, %for.body6.i.i.if.end4.i.i.i_crit_edge
  %dom.2.i.i = phi ptr [ %dom.117.i.i, %for.body6.i.i.if.end4.i.i.i_crit_edge ], [ %dom.0.le.i.i.i.i, %nvkm_perfdom_find.exit.i.i.i.if.end4.i.i.i_crit_edge ]
  %idxprom.i.i.i = zext i8 %34 to i32
  %arrayidx.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %40, null
  %tobool8.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %tobool8.not.i.i
  br i1 %or.cond.i.i, label %if.end4.i.i.i.for.inc.i_crit_edge, label %if.end.i.i

if.end4.i.i.i.for.inc.i_crit_edge:                ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end4.i.i.i
  %conv.i.i = trunc i64 %32 to i32
  %arrayidx.i1.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx.i1.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i2.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i2.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %for.body.i.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %arrayidx.1.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.1.i.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.1.i.i.i, label %for.cond.i.i.i.for.inc.i_crit_edge, label %for.body.1.i.i.i

for.cond.i.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %conv2.1.i.i.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.1.i.i.i, i32 %conv.i.i)
  %cmp7.1.i.i.i = icmp eq i32 %conv2.1.i.i.i, %conv.i.i
  br i1 %cmp7.1.i.i.i, label %for.body.1.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.1.i.i.i

for.body.1.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.1.i.i.i:                                 ; preds = %for.body.1.i.i.i
  %arrayidx.2.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.2.i.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.2.i.i.i, label %for.cond.1.i.i.i.for.inc.i_crit_edge, label %for.body.2.i.i.i

for.cond.1.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %conv2.2.i.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.2.i.i.i, i32 %conv.i.i)
  %cmp7.2.i.i.i = icmp eq i32 %conv2.2.i.i.i, %conv.i.i
  br i1 %cmp7.2.i.i.i, label %for.body.2.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.2.i.i.i

for.body.2.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.2.i.i.i:                                 ; preds = %for.body.2.i.i.i
  %arrayidx.3.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 3
  %47 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.3.i.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.3.i.i.i, label %for.cond.2.i.i.i.for.inc.i_crit_edge, label %for.body.3.i.i.i

for.cond.2.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.3.i.i.i:                                 ; preds = %for.cond.2.i.i.i
  %conv2.3.i.i.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.3.i.i.i, i32 %conv.i.i)
  %cmp7.3.i.i.i = icmp eq i32 %conv2.3.i.i.i, %conv.i.i
  br i1 %cmp7.3.i.i.i, label %for.body.3.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.3.i.i.i

for.body.3.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.3.i.i.i:                                 ; preds = %for.body.3.i.i.i
  %arrayidx.4.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 4
  %49 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.4.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.4.i.i.i, label %for.cond.3.i.i.i.for.inc.i_crit_edge, label %for.body.4.i.i.i

for.cond.3.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.4.i.i.i:                                 ; preds = %for.cond.3.i.i.i
  %conv2.4.i.i.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.4.i.i.i, i32 %conv.i.i)
  %cmp7.4.i.i.i = icmp eq i32 %conv2.4.i.i.i, %conv.i.i
  br i1 %cmp7.4.i.i.i, label %for.body.4.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.4.i.i.i

for.body.4.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.4.i.i.i:                                 ; preds = %for.body.4.i.i.i
  %arrayidx.5.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 5
  %51 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.5.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.5.i.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.5.i.i.i, label %for.cond.4.i.i.i.for.inc.i_crit_edge, label %for.body.5.i.i.i

for.cond.4.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.5.i.i.i:                                 ; preds = %for.cond.4.i.i.i
  %conv2.5.i.i.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.5.i.i.i, i32 %conv.i.i)
  %cmp7.5.i.i.i = icmp eq i32 %conv2.5.i.i.i, %conv.i.i
  br i1 %cmp7.5.i.i.i, label %for.body.5.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.5.i.i.i

for.body.5.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.5.i.i.i:                                 ; preds = %for.body.5.i.i.i
  %arrayidx.6.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 6
  %53 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.6.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.6.i.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.6.i.i.i, label %for.cond.5.i.i.i.for.inc.i_crit_edge, label %for.body.6.i.i.i

for.cond.5.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body.6.i.i.i:                                 ; preds = %for.cond.5.i.i.i
  %conv2.6.i.i.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.6.i.i.i, i32 %conv.i.i)
  %cmp7.6.i.i.i = icmp eq i32 %conv2.6.i.i.i, %conv.i.i
  br i1 %cmp7.6.i.i.i, label %for.body.6.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.6.i.i.i

for.body.6.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.body.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.cond.6.i.i.i:                                 ; preds = %for.body.6.i.i.i
  %arrayidx.7.i.i.i = getelementptr %struct.nvkm_perfdom, ptr %dom.2.i.i, i32 0, i32 11, i32 %idxprom.i.i.i, i32 1, i32 7
  %55 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.7.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.7.i.i.i = icmp ne i8 %56, 0
  %conv2.7.i.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.7.i.i.i, i32 %conv.i.i)
  %cmp7.7.i.i.i = icmp eq i32 %conv2.7.i.i.i, %conv.i.i
  %or.cond.i.i.i = and i1 %tobool.not.7.i.i.i, %cmp7.7.i.i.i
  br i1 %or.cond.i.i.i, label %for.cond.6.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.6.i.i.i.for.inc.i_crit_edge

for.cond.6.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond.6.i.i.i.if.then10.i.i.i_crit_edge:       ; preds = %for.cond.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i
  %conv2.i.i.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i.i.i, i32 %conv.i.i)
  %cmp7.i.i.i = icmp eq i32 %conv2.i.i.i, %conv.i.i
  br i1 %cmp7.i.i.i, label %for.body.i.i.i.if.then10.i.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.if.then10.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %for.body.i.i.i.if.then10.i.i.i_crit_edge, %for.cond.6.i.i.i.if.then10.i.i.i_crit_edge, %for.body.6.i.i.i.if.then10.i.i.i_crit_edge, %for.body.5.i.i.i.if.then10.i.i.i_crit_edge, %for.body.4.i.i.i.if.then10.i.i.i_crit_edge, %for.body.3.i.i.i.if.then10.i.i.i_crit_edge, %for.body.2.i.i.i.if.then10.i.i.i_crit_edge, %for.body.1.i.i.i.if.then10.i.i.i_crit_edge
  %57 = ptrtoint ptr %sources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %src.044.i.i.i = load ptr, ptr %sources.i.i.i, align 4
  %cmp14.not45.i.i.i = icmp eq ptr %src.044.i.i.i, %sources.i.i.i
  br i1 %cmp14.not45.i.i.i, label %if.then10.i.i.i.for.inc.i_crit_edge, label %if.then10.i.i.i.for.body16.i.i.i_crit_edge

if.then10.i.i.i.for.body16.i.i.i_crit_edge:       ; preds = %if.then10.i.i.i
  br label %for.body16.i.i.i

if.then10.i.i.i.for.inc.i_crit_edge:              ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.cond12.i.i.i:                                 ; preds = %for.body16.i.i.i
  %inc17.i.i.i = add i32 %tmp.046.i.i.i, 1
  %58 = ptrtoint ptr %src.047.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %src.0.i.i.i = load ptr, ptr %src.047.i.i.i, align 4
  %cmp14.not.i.i.i = icmp eq ptr %src.0.i.i.i, %sources.i.i.i
  br i1 %cmp14.not.i.i.i, label %for.cond12.i.i.i.for.inc.i_crit_edge, label %for.cond12.i.i.i.for.body16.i.i.i_crit_edge

for.cond12.i.i.i.for.body16.i.i.i_crit_edge:      ; preds = %for.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i.i.i

for.cond12.i.i.i.for.inc.i_crit_edge:             ; preds = %for.cond12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.body16.i.i.i:                                 ; preds = %for.cond12.i.i.i.for.body16.i.i.i_crit_edge, %if.then10.i.i.i.for.body16.i.i.i_crit_edge
  %src.047.i.i.i = phi ptr [ %src.0.i.i.i, %for.cond12.i.i.i.for.body16.i.i.i_crit_edge ], [ %src.044.i.i.i, %if.then10.i.i.i.for.body16.i.i.i_crit_edge ]
  %tmp.046.i.i.i = phi i32 [ %inc17.i.i.i, %for.cond12.i.i.i.for.body16.i.i.i_crit_edge ], [ 1, %if.then10.i.i.i.for.body16.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.046.i.i.i, i32 %conv.i.i)
  %cmp18.i.i.i = icmp eq i32 %tmp.046.i.i.i, %conv.i.i
  br i1 %cmp18.i.i.i, label %nvkm_perfsrc_find.exit.i.i, label %for.cond12.i.i.i

nvkm_perfsrc_find.exit.i.i:                       ; preds = %for.body16.i.i.i
  %tobool13.not.i.i = icmp eq ptr %src.047.i.i.i, null
  br i1 %tobool13.not.i.i, label %nvkm_perfsrc_find.exit.i.i.for.inc.i_crit_edge, label %if.end15.i.i

nvkm_perfsrc_find.exit.i.i.for.inc.i_crit_edge:   ; preds = %nvkm_perfsrc_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end15.i.i:                                     ; preds = %nvkm_perfsrc_find.exit.i.i
  %enable.i.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %enable.i.i, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool16.not.i.i = icmp eq i8 %60, 0
  %spec.select.i.i = select i1 %tobool16.not.i.i, i32 0, i32 -2147483648
  %mask19.i.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %mask19.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask19.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %shift.i.i, align 4
  %conv20.i.i = zext i8 %64 to i32
  %shl.i.i = shl i32 %62, %conv20.i.i
  %or.i.i = or i32 %shl.i.i, %spec.select.i.i
  %shr.i.i = lshr i64 %32, 32
  %sh_prom.i.i = zext i8 %64 to i64
  %shl26.i.i = shl i64 %shr.i.i, %sh_prom.i.i
  %65 = trunc i64 %shl26.i.i to i32
  %conv29.i.i = or i32 %spec.select.i.i, %65
  %addr.i.i = getelementptr inbounds %struct.nvkm_perfsrc, ptr %src.047.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 4
  %68 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pri.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %neg.i.i = xor i32 %or.i.i, -1
  %and.i.i = and i32 %70, %neg.i.i
  %or31.i.i = or i32 %and.i.i, %conv29.i.i
  %71 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pri.i.i, align 4
  %add.ptr33.i.i = getelementptr i8, ptr %72, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i.i, i32 %or31.i.i) #12, !srcloc !112
  %73 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp36.i.i = icmp ugt i32 %74, 3
  br i1 %cmp36.i.i, label %do.end41.i.i, label %if.end15.i.i.if.end44.i.i_crit_edge

if.end15.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

do.end41.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %device2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device2.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i, align 8
  %79 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.37, ptr noundef %name.i.i, i32 noundef %80, i32 noundef %or.i.i, i32 noundef %conv29.i.i) #18
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end41.i.i, %if.end15.i.i.if.end44.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %if.end44.i.i.for.inc47.i.i_crit_edge, label %if.end44.i.i.land.rhs.i.i_crit_edge

if.end44.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end44.i.i.for.inc47.i.i_crit_edge:             ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc47.i.i

for.inc47.i.i:                                    ; preds = %if.end44.i.i.for.inc47.i.i_crit_edge, %land.rhs.i.i.for.inc47.i.i_crit_edge
  %dom.1.lcssa.i.i = phi ptr [ %dom.117.i.i, %land.rhs.i.i.for.inc47.i.i_crit_edge ], [ %dom.2.i.i, %if.end44.i.i.for.inc47.i.i_crit_edge ]
  %inc48.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond27.not.i.i = icmp eq i32 %inc48.i.i, 4
  br i1 %exitcond27.not.i.i, label %for.inc47.i.i.for.inc.i_crit_edge, label %for.inc47.i.i.for.cond3.preheader.i.i_crit_edge

for.inc47.i.i.for.cond3.preheader.i.i_crit_edge:  ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond3.preheader.i.i

for.inc47.i.i.for.inc.i_crit_edge:                ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc47.i.i.for.inc.i_crit_edge, %nvkm_perfsrc_find.exit.i.i.for.inc.i_crit_edge, %for.cond12.i.i.i.for.inc.i_crit_edge, %if.then10.i.i.i.for.inc.i_crit_edge, %for.cond.6.i.i.i.for.inc.i_crit_edge, %for.cond.5.i.i.i.for.inc.i_crit_edge, %for.cond.4.i.i.i.for.inc.i_crit_edge, %for.cond.3.i.i.i.for.inc.i_crit_edge, %for.cond.2.i.i.i.for.inc.i_crit_edge, %for.cond.1.i.i.i.for.inc.i_crit_edge, %for.cond.i.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %if.end4.i.i.i.for.inc.i_crit_edge, %nvkm_perfdom_find.exit.i.i.i.for.inc.i_crit_edge, %for.cond.i.i.i.i.for.inc.i_crit_edge, %if.then.i.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %func.i, align 4
  %next.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next.i, align 4
  tail call void %84(ptr noundef %4, ptr noundef %object) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %perfmon.i11 = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 1
  %85 = ptrtoint ptr %perfmon.i11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %perfmon.i11, align 8
  %pm2.i12 = getelementptr inbounds %struct.nvkm_perfmon, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %pm2.i12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pm2.i12, align 8
  %client.i13 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %89 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client.i13, align 4
  %debug.i14 = getelementptr inbounds %struct.nvkm_client, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %debug.i14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp.i15 = icmp ugt i32 %92, 4
  br i1 %cmp.i15, label %do.end.i20, label %sw.bb1.land.lhs.true.i22_crit_edge

sw.bb1.land.lhs.true.i22_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i22

do.end.i20:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %name.i16 = getelementptr inbounds %struct.nvkm_client, ptr %90, i32 0, i32 1
  %handle.i17 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %93 = ptrtoint ptr %handle.i17 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %handle.i17, align 8
  %oclass.i18 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %95 = ptrtoint ptr %oclass.i18 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %oclass.i18, align 4
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i16, i32 noundef %94, i32 noundef %96, i32 noundef %size) #18
  br label %land.lhs.true.i22

land.lhs.true.i22:                                ; preds = %do.end.i20, %sw.bb1.land.lhs.true.i22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp7.i21 = icmp eq i32 %size, 0
  br i1 %cmp7.i21, label %do.body12.i25, label %land.lhs.true.i22.cleanup_crit_edge

land.lhs.true.i22.cleanup_crit_edge:              ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body12.i25:                                    ; preds = %land.lhs.true.i22
  %97 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %client.i13, align 4
  %debug16.i23 = getelementptr inbounds %struct.nvkm_client, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %debug16.i23 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug16.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %cmp17.i24 = icmp ugt i32 %100, 4
  br i1 %cmp17.i24, label %do.end21.i30, label %do.body12.i25.if.end28.i32_crit_edge

do.body12.i25.if.end28.i32_crit_edge:             ; preds = %do.body12.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i32

do.end21.i30:                                     ; preds = %do.body12.i25
  call void @__sanitizer_cov_trace_pc() #14
  %name23.i26 = getelementptr inbounds %struct.nvkm_client, ptr %98, i32 0, i32 1
  %handle25.i27 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %101 = ptrtoint ptr %handle25.i27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %handle25.i27, align 8
  %oclass26.i28 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %103 = ptrtoint ptr %oclass26.i28 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %oclass26.i28, align 4
  %call27.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name23.i26, i32 noundef %102, i32 noundef %104) #18
  br label %if.end28.i32

if.end28.i32:                                     ; preds = %do.end21.i30, %do.body12.i25.if.end28.i32_crit_edge
  %sequence.i = getelementptr inbounds %struct.nvkm_pm, ptr %88, i32 0, i32 5
  %105 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sequence.i, align 4
  %inc.i31 = add i32 %106, 1
  store i32 %inc.i31, ptr %sequence.i, align 4
  %domains.i = getelementptr inbounds %struct.nvkm_pm, ptr %88, i32 0, i32 3
  %107 = ptrtoint ptr %domains.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn1.i = load ptr, ptr %domains.i, align 4
  %cmp34.not2.i = icmp eq ptr %.pn1.i, %domains.i
  br i1 %cmp34.not2.i, label %if.end28.i32.cleanup_crit_edge, label %if.end28.i32.for.body.i34_crit_edge

if.end28.i32.for.body.i34_crit_edge:              ; preds = %if.end28.i32
  br label %for.body.i34

if.end28.i32.cleanup_crit_edge:                   ; preds = %if.end28.i32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %if.end28.i32.for.body.i34_crit_edge
  %.pn3.i = phi ptr [ %.pn.i, %for.body.i34.for.body.i34_crit_edge ], [ %.pn1.i, %if.end28.i32.for.body.i34_crit_edge ]
  %dom.addr.0.i = getelementptr i8, ptr %.pn3.i, i32 -76
  %func.i33 = getelementptr i8, ptr %.pn3.i, i32 16
  %108 = ptrtoint ptr %func.i33 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %func.i33, align 4
  %next35.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %next35.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %next35.i, align 4
  tail call void %111(ptr noundef %88, ptr noundef %dom.addr.0.i) #12
  %112 = ptrtoint ptr %.pn3.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pn.i = load ptr, ptr %.pn3.i, align 4
  %cmp34.not.i = icmp eq ptr %.pn.i, %domains.i
  br i1 %cmp34.not.i, label %for.body.i34.cleanup_crit_edge, label %for.body.i34.for.body.i34_crit_edge

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i34

for.body.i34.cleanup_crit_edge:                   ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %perfmon.i36 = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 1
  %113 = ptrtoint ptr %perfmon.i36 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %perfmon.i36, align 8
  %pm2.i37 = getelementptr inbounds %struct.nvkm_perfmon, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %pm2.i37 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pm2.i37, align 8
  %client.i38 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %117 = ptrtoint ptr %client.i38 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %client.i38, align 4
  %debug.i39 = getelementptr inbounds %struct.nvkm_client, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %debug.i39 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %debug.i39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp.i40 = icmp ugt i32 %120, 4
  br i1 %cmp.i40, label %do.end.i45, label %sw.bb3.land.lhs.true.i47_crit_edge

sw.bb3.land.lhs.true.i47_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i47

do.end.i45:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %name.i41 = getelementptr inbounds %struct.nvkm_client, ptr %118, i32 0, i32 1
  %handle.i42 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %121 = ptrtoint ptr %handle.i42 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %handle.i42, align 8
  %oclass.i43 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %123 = ptrtoint ptr %oclass.i43 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %oclass.i43, align 4
  %call.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name.i41, i32 noundef %122, i32 noundef %124, i32 noundef %size) #18
  br label %land.lhs.true.i47

land.lhs.true.i47:                                ; preds = %do.end.i45, %sw.bb3.land.lhs.true.i47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp7.i46 = icmp ugt i32 %size, 31
  br i1 %cmp7.i46, label %land.lhs.true11.i, label %land.lhs.true.i47.cleanup_crit_edge

land.lhs.true.i47.cleanup_crit_edge:              ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true11.i:                                ; preds = %land.lhs.true.i47
  %125 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp14.i = icmp eq i8 %126, 0
  br i1 %cmp14.i, label %if.then16.i, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 32
  br i1 %tobool.not.i, label %do.body23.i, label %if.then16.i.cleanup_crit_edge

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body23.i:                                      ; preds = %if.then16.i
  %127 = ptrtoint ptr %client.i38 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %client.i38, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %130)
  %cmp28.i = icmp ugt i32 %130, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body23.i.if.end42.i_crit_edge

do.body23.i.if.end42.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

do.end33.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %128, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %131 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %133 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %oclass38.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name35.i, i32 noundef %132, i32 noundef %134, i32 noundef 0) #18
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end33.i, %do.body23.i.if.end42.i_crit_edge
  %func.i48 = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 4
  %arrayidx.i49 = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 0
  %135 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i49, align 4
  %tobool48.not.i = icmp eq ptr %136, null
  br i1 %tobool48.not.i, label %if.end42.i.for.inc.i50_crit_edge, label %if.then49.i

if.end42.i.for.inc.i50_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i50

if.then49.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %func.i48 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %func.i48, align 4
  %read.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read.i, align 4
  tail call void %140(ptr noundef %116, ptr noundef %object, ptr noundef nonnull %136) #12
  br label %for.inc.i50

for.inc.i50:                                      ; preds = %if.then49.i, %if.end42.i.for.inc.i50_crit_edge
  %arrayidx.1.i = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 1
  %141 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool48.not.1.i = icmp eq ptr %142, null
  br i1 %tobool48.not.1.i, label %for.inc.i50.for.inc.1.i_crit_edge, label %if.then49.1.i

for.inc.i50.for.inc.1.i_crit_edge:                ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.then49.1.i:                                    ; preds = %for.inc.i50
  call void @__sanitizer_cov_trace_pc() #14
  %143 = ptrtoint ptr %func.i48 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %func.i48, align 4
  %read.1.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %read.1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read.1.i, align 4
  tail call void %146(ptr noundef %116, ptr noundef %object, ptr noundef nonnull %142) #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then49.1.i, %for.inc.i50.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 2
  %147 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool48.not.2.i = icmp eq ptr %148, null
  br i1 %tobool48.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then49.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.then49.2.i:                                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %func.i48 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %func.i48, align 4
  %read.2.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %read.2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read.2.i, align 4
  tail call void %152(ptr noundef %116, ptr noundef %object, ptr noundef nonnull %148) #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then49.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.nvkm_perfdom, ptr %object, i32 0, i32 5, i32 3
  %153 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool48.not.3.i = icmp eq ptr %154, null
  br i1 %tobool48.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then49.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then49.3.i:                                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = ptrtoint ptr %func.i48 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %func.i48, align 4
  %read.3.i = getelementptr inbounds %struct.nvkm_funcdom, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %read.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %read.3.i, align 4
  tail call void %158(ptr noundef %116, ptr noundef %object, ptr noundef nonnull %154) #12
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then49.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %clk.i = getelementptr inbounds %struct.nvkm_perfdom, ptr %object, i32 0, i32 9
  %159 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %clk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool53.not.i = icmp eq i32 %160, 0
  br i1 %tobool53.not.i, label %for.inc.3.i.cleanup_crit_edge, label %for.body59.preheader.i

for.inc.3.i.cleanup_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body59.preheader.i:                           ; preds = %for.inc.3.i
  %161 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx.i49, align 4
  %tobool62.not.i = icmp eq ptr %162, null
  br i1 %tobool62.not.i, label %for.body59.preheader.i.for.inc70.i_crit_edge, label %if.then63.i

for.body59.preheader.i.for.inc70.i_crit_edge:     ; preds = %for.body59.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.i

if.then63.i:                                      ; preds = %for.body59.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctr66.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %162, i32 0, i32 6
  %163 = ptrtoint ptr %ctr66.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ctr66.i, align 8
  %arrayidx68.i = getelementptr %struct.nvif_perfdom_read_v0, ptr %data, i32 0, i32 2, i32 0
  %165 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx68.i, align 4
  br label %for.inc70.i

for.inc70.i:                                      ; preds = %if.then63.i, %for.body59.preheader.i.for.inc70.i_crit_edge
  %166 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool62.not.1.i = icmp eq ptr %167, null
  br i1 %tobool62.not.1.i, label %for.inc70.i.for.inc70.1.i_crit_edge, label %if.then63.1.i

for.inc70.i.for.inc70.1.i_crit_edge:              ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.1.i

if.then63.1.i:                                    ; preds = %for.inc70.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctr66.1.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %167, i32 0, i32 6
  %168 = ptrtoint ptr %ctr66.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ctr66.1.i, align 8
  %arrayidx68.1.i = getelementptr %struct.nvif_perfdom_read_v0, ptr %data, i32 0, i32 2, i32 1
  %170 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx68.1.i, align 4
  br label %for.inc70.1.i

for.inc70.1.i:                                    ; preds = %if.then63.1.i, %for.inc70.i.for.inc70.1.i_crit_edge
  %171 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool62.not.2.i = icmp eq ptr %172, null
  br i1 %tobool62.not.2.i, label %for.inc70.1.i.for.inc70.2.i_crit_edge, label %if.then63.2.i

for.inc70.1.i.for.inc70.2.i_crit_edge:            ; preds = %for.inc70.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.2.i

if.then63.2.i:                                    ; preds = %for.inc70.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctr66.2.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %ctr66.2.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ctr66.2.i, align 8
  %arrayidx68.2.i = getelementptr %struct.nvif_perfdom_read_v0, ptr %data, i32 0, i32 2, i32 2
  %175 = ptrtoint ptr %arrayidx68.2.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx68.2.i, align 4
  br label %for.inc70.2.i

for.inc70.2.i:                                    ; preds = %if.then63.2.i, %for.inc70.1.i.for.inc70.2.i_crit_edge
  %176 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool62.not.3.i = icmp eq ptr %177, null
  br i1 %tobool62.not.3.i, label %for.inc70.2.i.for.inc70.3.i_crit_edge, label %if.then63.3.i

for.inc70.2.i.for.inc70.3.i_crit_edge:            ; preds = %for.inc70.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc70.3.i

if.then63.3.i:                                    ; preds = %for.inc70.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %ctr66.3.i = getelementptr inbounds %struct.nvkm_perfctr, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %ctr66.3.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ctr66.3.i, align 8
  %arrayidx68.3.i = getelementptr %struct.nvif_perfdom_read_v0, ptr %data, i32 0, i32 2, i32 3
  %180 = ptrtoint ptr %arrayidx68.3.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx68.3.i, align 4
  br label %for.inc70.3.i

for.inc70.3.i:                                    ; preds = %if.then63.3.i, %for.inc70.2.i.for.inc70.3.i_crit_edge
  %181 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %clk.i, align 8
  %clk74.i = getelementptr inbounds %struct.nvif_perfdom_read_v0, ptr %data, i32 0, i32 3
  %183 = ptrtoint ptr %clk74.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %clk74.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc70.3.i, %for.inc.3.i.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i47.cleanup_crit_edge, %for.body.i34.cleanup_crit_edge, %if.end28.i32.cleanup_crit_edge, %land.lhs.true.i22.cleanup_crit_edge, %for.end.i, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.i ], [ -38, %land.lhs.true.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i22.cleanup_crit_edge ], [ 0, %if.end28.i32.cleanup_crit_edge ], [ 0, %for.inc70.3.i ], [ -11, %for.inc.3.i.cleanup_crit_edge ], [ -38, %land.lhs.true.i47.cleanup_crit_edge ], [ -38, %land.lhs.true11.i.cleanup_crit_edge ], [ -7, %if.then16.i.cleanup_crit_edge ], [ 0, %for.body.i34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 789, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 793, i32 7}
!4 = !{ptr @nvkm_pm_ctor.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 866, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 750, i32 30}
!9 = !{ptr @nvkm_pm, !10, !"nvkm_pm", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 853, i32 1}
!11 = !{ptr @nvkm_pm_oclass, !12, !"nvkm_pm_oclass", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 683, i32 1}
!13 = !{ptr @nvkm_perfmon, !14, !"nvkm_perfmon", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 639, i32 1}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 446, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvkm_perfmon_mthd_query_domain._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvkm_perfmon_mthd_query_domain._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 448, i32 3}
!23 = !{ptr @nvkm_perfmon_mthd_query_domain._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvkm_perfmon_mthd_query_domain._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 493, i32 48}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 494, i32 48}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 497, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nvkm_perfmon_mthd_query_signal._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_perfmon_mthd_query_signal._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 499, i32 3}
!36 = !{ptr @nvkm_perfmon_mthd_query_signal._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nvkm_perfmon_mthd_query_signal._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 514, i32 6}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 550, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nvkm_perfmon_mthd_query_source._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvkm_perfmon_mthd_query_source._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 552, i32 3}
!47 = !{ptr @nvkm_perfmon_mthd_query_source._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvkm_perfmon_mthd_query_source._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 381, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nvkm_perfdom_new_._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvkm_perfdom_new_._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 383, i32 3}
!56 = !{ptr @nvkm_perfdom_new_._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvkm_perfdom_new_._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @nvkm_perfdom, !59, !"nvkm_perfdom", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 360, i32 1}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 197, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nvkm_perfsrc_disable._entry, !61, !"_entry", i1 false, i1 false}
!66 = !{ptr @nvkm_perfsrc_disable._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 217, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvkm_perfdom_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nvkm_perfdom_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 219, i32 3}
!74 = !{ptr @nvkm_perfdom_init._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nvkm_perfdom_init._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 159, i32 4}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @nvkm_perfsrc_enable._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @nvkm_perfsrc_enable._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 247, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @nvkm_perfdom_sample._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @nvkm_perfdom_sample._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 249, i32 3}
!88 = !{ptr @nvkm_perfdom_sample._entry.41, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nvkm_perfdom_sample._entry_ptr.43, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 271, i32 2}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nvkm_perfdom_read._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @nvkm_perfdom_read._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/base.c", i32 273, i32 3}
!97 = !{ptr @nvkm_perfdom_read._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @nvkm_perfdom_read._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i8 0, i8 2}
!109 = !{i64 5405929}
!110 = !{i64 2156282044}
!111 = !{i64 2156282416}
!112 = !{i64 5405511}
!113 = !{i64 2156278357}
!114 = !{i64 2156278737}
