; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.2, %struct.anon.135, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.2 = type { ptr }
%struct.anon.135 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nvif_notify_head_rep_v0 = type { i8, [7 x i8] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.150, i8 }
%union.anon.150 = type { %struct.anon.154 }
%struct.anon.154 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_disp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.144, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.144 = type { ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvif_notify_conn_req_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }

@nvkm_disp_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&disp->client.lock\00", [45 x i8] zeroinitializer }, align 32
@nvkm_disp = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_disp_dtor, ptr null, ptr @nvkm_disp_oneinit, ptr null, ptr @nvkm_disp_init, ptr @nvkm_disp_fini, ptr @nvkm_disp_intr, ptr null, ptr null, %struct.anon.2 { ptr @nvkm_disp_class_get }, %struct.anon.135 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: dcb %d type %d unknown\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_disp_oneinit\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry_ptr = internal global ptr @nvkm_disp_oneinit._entry, section ".printk_index", align 4
@nvkm_disp_oneinit._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: outp %02x:%04x:%04x: ctor failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry_ptr.9 = internal global ptr @nvkm_disp_oneinit._entry.6, section ".printk_index", align 4
@nvkm_disp_oneinit._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 321, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: outp %02x:%04x:%04x: not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry_ptr.13 = internal global ptr @nvkm_disp_oneinit._entry.10, section ".printk_index", align 4
@nvkm_disp_oneinit._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: failed to create outp %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry_ptr.16 = internal global ptr @nvkm_disp_oneinit._entry.14, section ".printk_index", align 4
@nvkm_disp_oneinit._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 383, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to create outp %d conn: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_disp_oneinit._entry_ptr.19 = internal global ptr @nvkm_disp_oneinit._entry.17, section ".printk_index", align 4
@nvkm_disp_hpd_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_disp_hpd_ctor, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@nvkm_disp_vblank_func = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_disp_vblank_ctor, ptr null, ptr @nvkm_disp_vblank_init, ptr @nvkm_disp_vblank_fini }, [16 x i8] zeroinitializer }, align 32
@nvkm_disp_sclass = internal constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_disp_class_new, %struct.nvkm_sclass zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@nvkm_disp_class = internal constant { %struct.nvkm_oproxy_func, [40 x i8] } { %struct.nvkm_oproxy_func { [2 x ptr] [ptr null, ptr @nvkm_disp_class_del], [2 x ptr] zeroinitializer, [2 x ptr] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 71]
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 483, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"nvkm_disp\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 465, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 311, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 319, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 321, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 325, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 381, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"nvkm_disp_hpd_func\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"nvkm_disp_vblank_func\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 84, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"nvkm_disp_sclass\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 190, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"nvkm_disp_class\00", align 1
@___asan_gen_.90 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 159, i32 1 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @nvkm_disp_oneinit._entry, ptr @nvkm_disp_oneinit._entry.10, ptr @nvkm_disp_oneinit._entry.14, ptr @nvkm_disp_oneinit._entry.17, ptr @nvkm_disp_oneinit._entry.6, ptr @nvkm_disp_oneinit._entry_ptr, ptr @nvkm_disp_oneinit._entry_ptr.13, ptr @nvkm_disp_oneinit._entry_ptr.16, ptr @nvkm_disp_oneinit._entry_ptr.19, ptr @nvkm_disp_oneinit._entry_ptr.9, ptr @nvkm_disp_ctor.__key, ptr @.str, ptr @nvkm_disp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @nvkm_disp_hpd_func, ptr @nvkm_disp_vblank_func, ptr @nvkm_disp_sclass, ptr @nvkm_disp_class], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_oneinit._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_oneinit._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_oneinit._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_oneinit._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_hpd_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_vblank_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_sclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_disp_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_disp_vblank(ptr noundef %disp, i32 noundef %head) local_unnamed_addr #0 align 64 {
entry:
  %rep = alloca %struct.nvif_notify_head_rep_v0, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rep) #9
  %0 = ptrtoint ptr %rep to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rep, align 8
  %vblank = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 7
  call void @nvkm_event_send(ptr noundef %vblank, i32 noundef 1, i32 noundef %head, ptr noundef nonnull %rep, i32 noundef 8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rep) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nvkm_disp_ntfy(ptr nocapture noundef readonly %object, i32 noundef %type, ptr nocapture noundef writeonly %event) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 232, %sw.bb1 ], [ 344, %entry.cleanup.sink.split_crit_edge ]
  %hpd = getelementptr i8, ptr %1, i32 %.sink
  %3 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hpd, ptr %event, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_disp_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %disp, align 4
  %head = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 2
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %prev.i, align 4
  %ior = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 3
  %3 = ptrtoint ptr %ior to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ior, ptr %ior, align 4
  %prev.i9 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ior, ptr %prev.i9, align 4
  %outp = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 4
  %5 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %outp, ptr %outp, align 4
  %prev.i10 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %outp, ptr %prev.i10, align 4
  %conn = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 5
  %7 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %conn, ptr %conn, align 4
  %prev.i11 = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %conn, ptr %prev.i11, align 4
  %client = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %client, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_disp_ctor.__key, i16 noundef signext 3) #9
  %engine = getelementptr inbounds %struct.nvkm_disp, ptr %disp, i32 0, i32 1
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_disp_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 508) #12
  %1 = ptrtoint ptr %pdisp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pdisp, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %head.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head.i, ptr %prev.i.i, align 8
  %ior.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %ior.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ior.i, ptr %ior.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ior.i, ptr %prev.i9.i, align 8
  %outp.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %outp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %outp.i, ptr %outp.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %outp.i, ptr %prev.i10.i, align 8
  %conn.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %conn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %conn.i, ptr %conn.i, align 4
  %prev.i11.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %conn.i, ptr %prev.i11.i, align 8
  %client.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %client.i, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_disp_ctor.__key, i16 noundef signext 3) #9
  %engine.i = getelementptr inbounds %struct.nvkm_disp, ptr %call7.i.i, i32 0, i32 1
  %call2.i = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_disp, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine.i) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_disp_dtor(ptr noundef %engine) #0 align 64 {
entry:
  %conn = alloca ptr, align 4
  %outp = alloca ptr, align 4
  %ior28 = alloca ptr, align 4
  %head41 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conn) #9
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outp) #9
  %1 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %outp, align 4, !annotation !48
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr %5(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %vblank = getelementptr i8, ptr %engine, i32 344
  tail call void @nvkm_event_fini(ptr noundef %vblank) #9
  %hpd = getelementptr i8, ptr %engine, i32 232
  tail call void @nvkm_event_fini(ptr noundef %hpd) #9
  %conn3 = getelementptr i8, ptr %engine, i32 224
  %6 = ptrtoint ptr %conn3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %conn3, align 4
  %cmp.i.not73 = icmp eq ptr %7, %conn3
  br i1 %cmp.i.not73, label %if.end.while.cond10.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.cond10.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond10.preheader

while.cond10.preheader:                           ; preds = %list_del.exit.while.cond10.preheader_crit_edge, %if.end.while.cond10.preheader_crit_edge
  %outp11 = getelementptr i8, ptr %engine, i32 216
  %8 = ptrtoint ptr %outp11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %outp11, align 4
  %cmp.i61.not74 = icmp eq ptr %9, %outp11
  br i1 %cmp.i61.not74, label %while.cond10.preheader.while.cond23.preheader_crit_edge, label %while.cond10.preheader.while.body15_crit_edge

while.cond10.preheader.while.body15_crit_edge:    ; preds = %while.cond10.preheader
  br label %while.body15

while.cond10.preheader.while.cond23.preheader_crit_edge: ; preds = %while.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond23.preheader

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %10 = phi ptr [ %21, %list_del.exit.while.body_crit_edge ], [ %7, %if.end.while.body_crit_edge ]
  %add.ptr9 = getelementptr i8, ptr %10, i32 -100
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr9, ptr %conn, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @nvkm_conn_del(ptr noundef nonnull %conn) #9
  %20 = ptrtoint ptr %conn3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %conn3, align 4
  %cmp.i.not = icmp eq ptr %21, %conn3
  br i1 %cmp.i.not, label %list_del.exit.while.cond10.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.cond10.preheader_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond10.preheader

while.cond23.preheader:                           ; preds = %list_del.exit68.while.cond23.preheader_crit_edge, %while.cond10.preheader.while.cond23.preheader_crit_edge
  %ior = getelementptr i8, ptr %engine, i32 208
  %22 = ptrtoint ptr %ior to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ior, align 4
  %cmp.i69.not75 = icmp eq ptr %23, %ior
  br i1 %cmp.i69.not75, label %while.cond23.preheader.while.cond35.preheader_crit_edge, label %while.cond23.preheader.while.body27_crit_edge

while.cond23.preheader.while.body27_crit_edge:    ; preds = %while.cond23.preheader
  br label %while.body27

while.cond23.preheader.while.cond35.preheader_crit_edge: ; preds = %while.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond35.preheader

while.body15:                                     ; preds = %list_del.exit68.while.body15_crit_edge, %while.cond10.preheader.while.body15_crit_edge
  %24 = phi ptr [ %35, %list_del.exit68.while.body15_crit_edge ], [ %9, %while.cond10.preheader.while.body15_crit_edge ]
  %add.ptr20 = getelementptr i8, ptr %24, i32 -56
  %25 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr20, ptr %outp, align 4
  %call.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #9
  br i1 %call.i.i63, label %if.end.i.i66, label %while.body15.list_del.exit68_crit_edge

while.body15.list_del.exit68_crit_edge:           ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit68

if.end.i.i66:                                     ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i64 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i64, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 4
  %prev1.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i65, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit68

list_del.exit68:                                  ; preds = %if.end.i.i66, %while.body15.list_del.exit68_crit_edge
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i67 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i67, align 4
  call void @nvkm_outp_del(ptr noundef nonnull %outp) #9
  %34 = ptrtoint ptr %outp11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %outp11, align 4
  %cmp.i61.not = icmp eq ptr %35, %outp11
  br i1 %cmp.i61.not, label %list_del.exit68.while.cond23.preheader_crit_edge, label %list_del.exit68.while.body15_crit_edge

list_del.exit68.while.body15_crit_edge:           ; preds = %list_del.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body15

list_del.exit68.while.cond23.preheader_crit_edge: ; preds = %list_del.exit68
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond23.preheader

while.cond35.preheader:                           ; preds = %while.body27.while.cond35.preheader_crit_edge, %while.cond23.preheader.while.cond35.preheader_crit_edge
  %head36 = getelementptr i8, ptr %engine, i32 200
  %36 = ptrtoint ptr %head36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %head36, align 4
  %cmp.i71.not76 = icmp eq ptr %37, %head36
  br i1 %cmp.i71.not76, label %while.cond35.preheader.while.end47_crit_edge, label %while.cond35.preheader.while.body40_crit_edge

while.cond35.preheader.while.body40_crit_edge:    ; preds = %while.cond35.preheader
  br label %while.body40

while.cond35.preheader.while.end47_crit_edge:     ; preds = %while.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end47

while.body27:                                     ; preds = %while.body27.while.body27_crit_edge, %while.cond23.preheader.while.body27_crit_edge
  %38 = phi ptr [ %41, %while.body27.while.body27_crit_edge ], [ %23, %while.cond23.preheader.while.body27_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ior28) #9
  %add.ptr33 = getelementptr i8, ptr %38, i32 -24
  %39 = ptrtoint ptr %ior28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr33, ptr %ior28, align 4
  call void @nvkm_ior_del(ptr noundef nonnull %ior28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ior28) #9
  %40 = ptrtoint ptr %ior to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %ior, align 4
  %cmp.i69.not = icmp eq ptr %41, %ior
  br i1 %cmp.i69.not, label %while.body27.while.cond35.preheader_crit_edge, label %while.body27.while.body27_crit_edge

while.body27.while.body27_crit_edge:              ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body27

while.body27.while.cond35.preheader_crit_edge:    ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond35.preheader

while.body40:                                     ; preds = %while.body40.while.body40_crit_edge, %while.cond35.preheader.while.body40_crit_edge
  %42 = phi ptr [ %45, %while.body40.while.body40_crit_edge ], [ %37, %while.cond35.preheader.while.body40_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head41) #9
  %add.ptr46 = getelementptr i8, ptr %42, i32 -12
  %43 = ptrtoint ptr %head41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr46, ptr %head41, align 4
  call void @nvkm_head_del(ptr noundef nonnull %head41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head41) #9
  %44 = ptrtoint ptr %head36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %head36, align 4
  %cmp.i71.not = icmp eq ptr %45, %head36
  br i1 %cmp.i71.not, label %while.body40.while.end47_crit_edge, label %while.body40.while.body40_crit_edge

while.body40.while.body40_crit_edge:              ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body40

while.body40.while.end47_crit_edge:               ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end47

while.end47:                                      ; preds = %while.body40.while.end47_crit_edge, %while.cond35.preheader.while.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conn) #9
  ret ptr %data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_oneinit(ptr noundef %engine) #0 align 64 {
entry:
  %outp = alloca ptr, align 4
  %connE = alloca %struct.nvbios_connE, align 1
  %dcbE = alloca %struct.dcb_output, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %device = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %bios3 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outp) #9
  %4 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %outp, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %connE) #9
  %5 = call ptr @memset(ptr %connE, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %dcbE) #9
  %6 = call ptr @memset(ptr %dcbE, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #9
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ver, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #9
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %hdr, align 1, !annotation !48
  %call476482 = call zeroext i16 @dcb_outp_parse(ptr noundef %3, i8 noundef zeroext 0, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %dcbE) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call476482)
  %tobool.not477483 = icmp eq i16 %call476482, 0
  br i1 %tobool.not477483, label %entry.while.end_crit_edge, label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %type = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 3
  %debug96 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %name105 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %outp112 = getelementptr i8, ptr %engine, i32 216
  %prev.i = getelementptr i8, ptr %engine, i32 220
  %connector = getelementptr inbounds %struct.dcb_output, ptr %dcbE, i32 0, i32 6
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %list_add_tail.exit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %inc474485 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc474, %list_add_tail.exit.while.body.lr.ph_crit_edge ]
  %hpd.0.ph484 = phi i8 [ 0, %while.body.lr.ph.lr.ph ], [ %62, %list_add_tail.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %inc478 = phi i32 [ %inc474485, %while.body.lr.ph ], [ %inc, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %10)
  %cmp = icmp ult i8 %10, 64
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %12, label %if.end15 [
    i32 15, label %if.end.while.cond.backedge_crit_edge
    i32 14, label %if.end.while.end_crit_edge
  ]

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end15:                                         ; preds = %if.end
  %14 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %outp, align 4
  %15 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %12, label %do.body [
    i32 0, label %if.end15.sw.bb_crit_edge
    i32 1, label %if.end15.sw.bb_crit_edge537
    i32 2, label %if.end15.sw.bb_crit_edge538
    i32 3, label %if.end15.sw.bb_crit_edge539
    i32 6, label %sw.bb18
    i32 8, label %if.end15.while.cond.backedge_crit_edge
  ]

if.end15.while.cond.backedge_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end15.sw.bb_crit_edge539:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end15.sw.bb_crit_edge538:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end15.sw.bb_crit_edge537:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge537, %if.end15.sw.bb_crit_edge538, %if.end15.sw.bb_crit_edge539
  %call17 = call i32 @nvkm_outp_new(ptr noundef %add.ptr, i32 noundef %inc478, ptr noundef nonnull %dcbE, ptr noundef nonnull %outp) #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call i32 @nvkm_dp_new(ptr noundef %add.ptr, i32 noundef %inc478, ptr noundef nonnull %dcbE, ptr noundef nonnull %outp) #9
  br label %sw.epilog

do.body:                                          ; preds = %if.end15
  %16 = ptrtoint ptr %debug96 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp21 = icmp ugt i32 %17, 1
  br i1 %cmp21, label %do.end, label %do.body.while.cond.backedge_crit_edge

do.body.while.cond.backedge_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef %name105, i32 noundef %inc478, i32 noundef %12) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end102, %do.body94.while.cond.backedge_crit_edge, %if.end92, %do.end, %do.body.while.cond.backedge_crit_edge, %if.end15.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge
  %inc = add i32 %inc478, 1
  %conv = trunc i32 %inc to i8
  %call = call zeroext i16 @dcb_outp_parse(ptr noundef %3, i8 noundef zeroext %conv, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %dcbE) #9
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb
  %ret.0 = phi i32 [ %call19, %sw.bb18 ], [ %call17, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool30.not = icmp eq i32 %ret.0, 0
  %22 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outp, align 4
  br i1 %tobool30.not, label %if.end110, label %if.then31

if.then31:                                        ; preds = %sw.epilog
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %do.body94, label %if.then33

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.0)
  %cmp34.not = icmp eq i32 %ret.0, -19
  %disp66 = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %disp66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %disp66, align 4
  %debug69 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 5
  %26 = ptrtoint ptr %debug69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug69, align 4
  br i1 %cmp34.not, label %do.body62, label %do.body37

do.body37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp44.not = icmp eq i32 %27, 0
  br i1 %cmp44.not, label %do.body37.if.end92_crit_edge, label %do.end49

do.body37.if.end92_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end49:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %device50 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device50, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 8
  %name52 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 4
  %index = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %hasht = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hasht, align 4
  %conv54 = zext i16 %35 to i32
  %hashm = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hashm, align 2
  %conv56 = zext i16 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.7, ptr noundef %name52, i32 noundef %33, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %ret.0) #13
  br label %if.end92

do.body62:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp70 = icmp ugt i32 %27, 3
  br i1 %cmp70, label %do.end75, label %do.body62.if.end92_crit_edge

do.body62.if.end92_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end75:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %device76 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 1
  %38 = ptrtoint ptr %device76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device76, align 4
  %dev77 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev77, align 8
  %name78 = getelementptr inbounds %struct.nvkm_disp, ptr %25, i32 0, i32 1, i32 1, i32 4
  %index80 = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 2
  %42 = ptrtoint ptr %index80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index80, align 4
  %hasht82 = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %hasht82 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hasht82, align 4
  %conv83 = zext i16 %45 to i32
  %hashm85 = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %hashm85 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hashm85, align 2
  %conv86 = zext i16 %47 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.11, ptr noundef %name78, i32 noundef %43, i32 noundef %conv83, i32 noundef %conv86) #13
  br label %if.end92

if.end92:                                         ; preds = %do.end75, %do.body62.if.end92_crit_edge, %do.end49, %do.body37.if.end92_crit_edge
  call void @nvkm_outp_del(ptr noundef nonnull %outp) #9
  br label %while.cond.backedge

do.body94:                                        ; preds = %if.then31
  %48 = ptrtoint ptr %debug96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp97.not = icmp eq i32 %49, 0
  br i1 %cmp97.not, label %do.body94.while.cond.backedge_crit_edge, label %do.end102

do.body94.while.cond.backedge_crit_edge:          ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

do.end102:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 4
  %dev104 = getelementptr inbounds %struct.nvkm_device, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev104, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.15, ptr noundef %name105, i32 noundef %inc478) #13
  br label %while.cond.backedge

if.end110:                                        ; preds = %sw.epilog
  %head111 = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 5
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %head111, ptr noundef %55, ptr noundef %outp112) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end110.list_add_tail.exit_crit_edge

if.end110.list_add_tail.exit_crit_edge:           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head111, ptr %prev.i, align 4
  %57 = ptrtoint ptr %head111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %outp112, ptr %head111, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %23, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %head111, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end110.list_add_tail.exit_crit_edge
  %60 = ptrtoint ptr %connector to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %connector, align 2
  %add = add i8 %61, 1
  %62 = call i8 @llvm.umax.i8(i8 %hpd.0.ph484, i8 %add)
  %inc474 = add i32 %inc478, 1
  %conv475 = trunc i32 %inc474 to i8
  %call476 = call zeroext i16 @dcb_outp_parse(ptr noundef %3, i8 noundef zeroext %conv475, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %dcbE) #9
  %tobool.not477 = icmp eq i16 %call476, 0
  br i1 %tobool.not477, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body.lr.ph_crit_edge

list_add_tail.exit.while.body.lr.ph_crit_edge:    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %hpd.0.ph.lcssa = phi i8 [ 0, %entry.while.end_crit_edge ], [ %hpd.0.ph484, %if.end.while.end_crit_edge ], [ %hpd.0.ph484, %while.body.while.end_crit_edge ], [ %hpd.0.ph484, %while.cond.backedge.while.end_crit_edge ], [ %62, %list_add_tail.exit.while.end_crit_edge ]
  %outp124 = getelementptr i8, ptr %engine, i32 216
  %63 = ptrtoint ptr %outp124 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %outp124, align 4
  %storemerge457487 = getelementptr i8, ptr %64, i32 -56
  %65 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %storemerge457487, ptr %outp, align 4
  %cmp134.not489 = icmp eq ptr %64, %outp124
  br i1 %cmp134.not489, label %while.end.for.end250_crit_edge, label %for.body.lr.ph

while.end.for.end250_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end250

for.body.lr.ph:                                   ; preds = %while.end
  %conn184 = getelementptr i8, ptr %engine, i32 224
  %debug223 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 5
  %name232 = getelementptr inbounds %struct.nvkm_engine, ptr %engine, i32 0, i32 1, i32 4
  %prev.i463 = getelementptr i8, ptr %engine, i32 228
  %66 = getelementptr inbounds i8, ptr %connE, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc244.for.body_crit_edge, %for.body.lr.ph
  %.pn.pn490 = phi ptr [ %64, %for.body.lr.ph ], [ %.pn491, %for.inc244.for.body_crit_edge ]
  %67 = ptrtoint ptr %.pn.pn490 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn491 = load ptr, ptr %.pn.pn490, align 4
  %connector137 = getelementptr i8, ptr %.pn.pn490, i32 -30
  %68 = ptrtoint ptr %connector137 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %connector137, align 2
  %call138 = call i32 @nvbios_connEp(ptr noundef %3, i8 noundef zeroext %69, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %connE) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  %70 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %outp, align 4
  br i1 %tobool139.not, label %if.then140, label %if.else178

if.then140:                                       ; preds = %for.body
  %i2c_index = getelementptr inbounds %struct.nvkm_outp, ptr %71, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %i2c_index to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i2c_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %73)
  %cmp143.not = icmp eq i8 %73, 15
  br i1 %cmp143.not, label %if.then140.if.end172_crit_edge, label %if.then140.for.cond151_crit_edge

if.then140.for.cond151_crit_edge:                 ; preds = %if.then140
  br label %for.cond151

if.then140.if.end172_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

for.cond151:                                      ; preds = %for.body157.for.cond151_crit_edge, %if.then140.for.cond151_crit_edge
  %.pn459.in = phi ptr [ %.pn459, %for.body157.for.cond151_crit_edge ], [ %outp124, %if.then140.for.cond151_crit_edge ]
  %74 = ptrtoint ptr %.pn459.in to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn459 = load ptr, ptr %.pn459.in, align 4
  %cmp154.not = icmp eq ptr %.pn459, %outp124
  br i1 %cmp154.not, label %for.cond151.if.end172_crit_edge, label %for.body157

for.cond151.if.end172_crit_edge:                  ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

for.body157:                                      ; preds = %for.cond151
  %i2c_index159 = getelementptr i8, ptr %.pn459, i32 -32
  %75 = ptrtoint ptr %i2c_index159 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i2c_index159, align 4
  %cmp161 = icmp eq i8 %76, %73
  br i1 %cmp161, label %if.then163, label %for.body157.for.cond151_crit_edge

for.body157.for.cond151_crit_edge:                ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond151

if.then163:                                       ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #11
  %conn164 = getelementptr i8, ptr %.pn459, i32 8
  %77 = ptrtoint ptr %conn164 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %conn164, align 4
  %conn165 = getelementptr inbounds %struct.nvkm_outp, ptr %71, i32 0, i32 6
  %79 = ptrtoint ptr %conn165 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %conn165, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then163, %for.cond151.if.end172_crit_edge, %if.then140.if.end172_crit_edge
  %conn173 = getelementptr inbounds %struct.nvkm_outp, ptr %71, i32 0, i32 6
  %80 = ptrtoint ptr %conn173 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %conn173, align 4
  %tobool174.not = icmp eq ptr %81, null
  br i1 %tobool174.not, label %cleanup.thread, label %if.end172.for.inc244_crit_edge

if.end172.for.inc244_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc244

cleanup.thread:                                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  %82 = call ptr @memset(ptr %66, i32 0, i32 6)
  %83 = ptrtoint ptr %connE to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %connE, align 1
  br label %if.end182

if.else178:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %connector180 = getelementptr inbounds %struct.nvkm_outp, ptr %71, i32 0, i32 3, i32 6
  %84 = ptrtoint ptr %connector180 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %connector180, align 2
  %conv181 = zext i8 %85 to i32
  br label %if.end182

if.end182:                                        ; preds = %if.else178, %cleanup.thread
  %i.3 = phi i32 [ %conv181, %if.else178 ], [ -1, %cleanup.thread ]
  br label %for.cond188

for.cond188:                                      ; preds = %for.body194.for.cond188_crit_edge, %if.end182
  %.pn458.in = phi ptr [ %conn184, %if.end182 ], [ %.pn458, %for.body194.for.cond188_crit_edge ]
  %86 = ptrtoint ptr %.pn458.in to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn458 = load ptr, ptr %.pn458.in, align 4
  %cmp191.not = icmp eq ptr %.pn458, %conn184
  br i1 %cmp191.not, label %for.cond188.for.end210_crit_edge, label %for.body194

for.cond188.for.end210_crit_edge:                 ; preds = %for.cond188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end210

for.body194:                                      ; preds = %for.cond188
  %index195 = getelementptr i8, ptr %.pn458, i32 -96
  %87 = ptrtoint ptr %index195 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index195, align 4
  %89 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %outp, align 4
  %connector197 = getelementptr inbounds %struct.nvkm_outp, ptr %90, i32 0, i32 3, i32 6
  %91 = ptrtoint ptr %connector197 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %connector197, align 2
  %conv198 = zext i8 %92 to i32
  %cmp199 = icmp eq i32 %88, %conv198
  br i1 %cmp199, label %if.then201, label %for.body194.for.cond188_crit_edge

for.body194.for.cond188_crit_edge:                ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond188

if.then201:                                       ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #11
  %conn.0.le = getelementptr i8, ptr %.pn458, i32 -100
  %conn202 = getelementptr inbounds %struct.nvkm_outp, ptr %90, i32 0, i32 6
  %93 = ptrtoint ptr %conn202 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %conn.0.le, ptr %conn202, align 4
  br label %for.end210

for.end210:                                       ; preds = %if.then201, %for.cond188.for.end210_crit_edge
  %94 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %outp, align 4
  %conn211 = getelementptr inbounds %struct.nvkm_outp, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %conn211 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %conn211, align 4
  %tobool212.not = icmp eq ptr %97, null
  br i1 %tobool212.not, label %if.end214, label %for.end210.for.inc244_crit_edge

for.end210.for.inc244_crit_edge:                  ; preds = %for.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc244

if.end214:                                        ; preds = %for.end210
  %call216 = call i32 @nvkm_conn_new(ptr noundef %add.ptr, i32 noundef %i.3, ptr noundef nonnull %connE, ptr noundef %conn211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end240, label %do.body219

do.body219:                                       ; preds = %if.end214
  %98 = ptrtoint ptr %debug223 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %debug223, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp224.not = icmp eq i32 %99, 0
  br i1 %cmp224.not, label %do.body219.if.end235_crit_edge, label %do.end229

do.body219.if.end235_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

do.end229:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device, align 4
  %dev231 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %dev231 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev231, align 8
  %104 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %outp, align 4
  %index234 = getelementptr inbounds %struct.nvkm_outp, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %index234 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index234, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.18, ptr noundef %name232, i32 noundef %107, i32 noundef %call216) #13
  br label %if.end235

if.end235:                                        ; preds = %do.end229, %do.body219.if.end235_crit_edge
  %108 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %outp, align 4
  %conn238 = getelementptr inbounds %struct.nvkm_outp, ptr %109, i32 0, i32 6
  call void @nvkm_conn_del(ptr noundef %conn238) #9
  %110 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %outp, align 4
  %head239 = getelementptr inbounds %struct.nvkm_outp, ptr %111, i32 0, i32 5
  %call.i.i460 = call zeroext i1 @__list_del_entry_valid(ptr noundef %head239) #9
  br i1 %call.i.i460, label %if.end.i.i461, label %if.end235.list_del.exit_crit_edge

if.end235.list_del.exit_crit_edge:                ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i461:                                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.nvkm_outp, ptr %111, i32 0, i32 5, i32 1
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i, align 4
  %114 = ptrtoint ptr %head239 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %head239, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i461, %if.end235.list_del.exit_crit_edge
  %118 = ptrtoint ptr %head239 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %head239, align 4
  %prev.i462 = getelementptr inbounds %struct.nvkm_outp, ptr %111, i32 0, i32 5, i32 1
  %119 = ptrtoint ptr %prev.i462 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i462, align 4
  call void @nvkm_outp_del(ptr noundef nonnull %outp) #9
  br label %for.inc244

if.end240:                                        ; preds = %if.end214
  %120 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %outp, align 4
  %conn241 = getelementptr inbounds %struct.nvkm_outp, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %conn241 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %conn241, align 4
  %head242 = getelementptr inbounds %struct.nvkm_conn, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %prev.i463 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i463, align 4
  %call.i.i464 = call zeroext i1 @__list_add_valid(ptr noundef %head242, ptr noundef %125, ptr noundef %conn184) #9
  br i1 %call.i.i464, label %if.end.i.i466, label %if.end240.for.inc244_crit_edge

if.end240.for.inc244_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc244

if.end.i.i466:                                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %prev.i463 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %head242, ptr %prev.i463, align 4
  %127 = ptrtoint ptr %head242 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %conn184, ptr %head242, align 4
  %prev3.i.i465 = getelementptr inbounds %struct.nvkm_conn, ptr %123, i32 0, i32 4, i32 1
  %128 = ptrtoint ptr %prev3.i.i465 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i465, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %head242, ptr %125, align 4
  br label %for.inc244

for.inc244:                                       ; preds = %if.end.i.i466, %if.end240.for.inc244_crit_edge, %list_del.exit, %for.end210.for.inc244_crit_edge, %if.end172.for.inc244_crit_edge
  %storemerge457 = getelementptr i8, ptr %.pn491, i32 -56
  %130 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %storemerge457, ptr %outp, align 4
  %cmp134.not = icmp eq ptr %.pn491, %outp124
  br i1 %cmp134.not, label %for.inc244.for.end250_crit_edge, label %for.inc244.for.body_crit_edge

for.inc244.for.body_crit_edge:                    ; preds = %for.inc244
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc244.for.end250_crit_edge:                  ; preds = %for.inc244
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end250

for.end250:                                       ; preds = %for.inc244.for.end250_crit_edge, %while.end.for.end250_crit_edge
  %conv251 = zext i8 %hpd.0.ph.lcssa to i32
  %hpd252 = getelementptr i8, ptr %engine, i32 232
  %call253 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_disp_hpd_func, i32 noundef 3, i32 noundef %conv251, ptr noundef %hpd252) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %for.end250.cleanup363_crit_edge

for.end250.cleanup363_crit_edge:                  ; preds = %for.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup363

if.end256:                                        ; preds = %for.end250
  %131 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_disp_func, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %oneinit, align 4
  %tobool257.not = icmp eq ptr %134, null
  br i1 %tobool257.not, label %if.end256.if.end265_crit_edge, label %if.then258

if.end256.if.end265_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.then258:                                       ; preds = %if.end256
  %call261 = call i32 %134(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.then258.if.end265_crit_edge, label %if.then258.cleanup363_crit_edge

if.then258.cleanup363_crit_edge:                  ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup363

if.then258.if.end265_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end265

if.end265:                                        ; preds = %if.then258.if.end265_crit_edge, %if.end256.if.end265_crit_edge
  %135 = ptrtoint ptr %outp124 to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pn455492 = load ptr, ptr %outp124, align 4
  %storemerge493 = getelementptr i8, ptr %.pn455492, i32 -56
  %136 = ptrtoint ptr %outp to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %storemerge493, ptr %outp, align 4
  %cmp274.not494 = icmp eq ptr %.pn455492, %outp124
  br i1 %cmp274.not494, label %if.end265.for.end333_crit_edge, label %if.end265.for.body277_crit_edge

if.end265.for.body277_crit_edge:                  ; preds = %if.end265
  br label %for.body277

if.end265.for.end333_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end333

for.body277:                                      ; preds = %for.inc327.for.body277_crit_edge, %if.end265.for.body277_crit_edge
  %.pn455495 = phi ptr [ %.pn455, %for.inc327.for.body277_crit_edge ], [ %.pn455492, %if.end265.for.body277_crit_edge ]
  %conn278 = getelementptr i8, ptr %.pn455495, i32 8
  %137 = ptrtoint ptr %conn278 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %conn278, align 4
  %info279 = getelementptr inbounds %struct.nvkm_conn, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %info279 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %info279, align 4
  %141 = zext i8 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %140, label %for.body277.for.inc327_crit_edge [
    i8 64, label %for.body277.if.then290_crit_edge
    i8 71, label %for.body277.if.then290_crit_edge540
  ]

for.body277.if.then290_crit_edge540:              ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then290

for.body277.if.then290_crit_edge:                 ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then290

for.body277.for.inc327_crit_edge:                 ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc327

if.then290:                                       ; preds = %for.body277.if.then290_crit_edge, %for.body277.if.then290_crit_edge540
  %or = getelementptr i8, ptr %.pn455495, i32 -27
  %142 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %or, align 1
  %144 = call i8 @llvm.cttz.i8(i8 %143, i1 true), !range !49
  %145 = zext i8 %144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %iszero = icmp eq i8 %143, 0
  %sub = select i1 %iszero, i32 -1, i32 %145
  %call293 = call ptr @nvkm_ior_find(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %sub) #9
  %tobool294.not = icmp eq ptr %call293, null
  br i1 %tobool294.not, label %do.end308, label %if.then323.critedge, !prof !50

do.end308:                                        ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 410, i32 noundef 9, ptr noundef null) #9
  br label %if.end324

if.then323.critedge:                              ; preds = %if.then290
  call void @__sanitizer_cov_trace_pc() #11
  %identity = getelementptr inbounds %struct.nvkm_ior, ptr %call293, i32 0, i32 6
  %146 = ptrtoint ptr %identity to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %identity, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then323.critedge, %do.end308
  %147 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %outp, align 4
  %identity325 = getelementptr inbounds %struct.nvkm_outp, ptr %148, i32 0, i32 7
  %149 = ptrtoint ptr %identity325 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %identity325, align 4
  br label %for.inc327

for.inc327:                                       ; preds = %if.end324, %for.body277.for.inc327_crit_edge
  %150 = ptrtoint ptr %outp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %outp, align 4
  %head329 = getelementptr inbounds %struct.nvkm_outp, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %head329 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pn455 = load ptr, ptr %head329, align 4
  %storemerge = getelementptr i8, ptr %.pn455, i32 -56
  store ptr %storemerge, ptr %outp, align 4
  %cmp274.not = icmp eq ptr %.pn455, %outp124
  br i1 %cmp274.not, label %for.inc327.for.end333_crit_edge, label %for.inc327.for.body277_crit_edge

for.inc327.for.body277_crit_edge:                 ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body277

for.inc327.for.end333_crit_edge:                  ; preds = %for.inc327
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end333

for.end333:                                       ; preds = %for.inc327.for.end333_crit_edge, %if.end265.for.end333_crit_edge
  %head335 = getelementptr i8, ptr %engine, i32 200
  %153 = ptrtoint ptr %head335 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn456496 = load ptr, ptr %head335, align 4
  %cmp342.not497 = icmp eq ptr %.pn456496, %head335
  br i1 %cmp342.not497, label %for.end333.for.end361_crit_edge, label %for.end333.for.body346_crit_edge

for.end333.for.body346_crit_edge:                 ; preds = %for.end333
  br label %for.body346

for.end333.for.end361_crit_edge:                  ; preds = %for.end333
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end361

for.body346:                                      ; preds = %for.body346.for.body346_crit_edge, %for.end333.for.body346_crit_edge
  %.pn456499 = phi ptr [ %.pn456, %for.body346.for.body346_crit_edge ], [ %.pn456496, %for.end333.for.body346_crit_edge ]
  %i.5498 = phi i32 [ %156, %for.body346.for.body346_crit_edge ], [ 0, %for.end333.for.body346_crit_edge ]
  %id = getelementptr i8, ptr %.pn456499, i32 -4
  %154 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %id, align 4
  %add347 = add i32 %155, 1
  %156 = call i32 @llvm.smax.i32(i32 %i.5498, i32 %add347)
  %157 = ptrtoint ptr %.pn456499 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn456 = load ptr, ptr %.pn456499, align 4
  %cmp342.not = icmp eq ptr %.pn456, %head335
  br i1 %cmp342.not, label %for.body346.for.end361_crit_edge, label %for.body346.for.body346_crit_edge

for.body346.for.body346_crit_edge:                ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body346

for.body346.for.end361_crit_edge:                 ; preds = %for.body346
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end361

for.end361:                                       ; preds = %for.body346.for.end361_crit_edge, %for.end333.for.end361_crit_edge
  %i.5.lcssa = phi i32 [ 0, %for.end333.for.end361_crit_edge ], [ %156, %for.body346.for.end361_crit_edge ]
  %vblank = getelementptr i8, ptr %engine, i32 344
  %call362 = call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_disp_vblank_func, i32 noundef 1, i32 noundef %i.5.lcssa, ptr noundef %vblank) #9
  br label %cleanup363

cleanup363:                                       ; preds = %for.end361, %if.then258.cleanup363_crit_edge, %for.end250.cleanup363_crit_edge
  %retval.0 = phi i32 [ %call362, %for.end361 ], [ %call253, %for.end250.cleanup363_crit_edge ], [ %call261, %if.then258.cleanup363_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %dcbE) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %connE) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_init(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %conn2 = getelementptr i8, ptr %engine, i32 224
  %0 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn75 = load ptr, ptr %conn2, align 4
  %cmp.not76 = icmp eq ptr %.pn75, %conn2
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn75, %entry.for.body_crit_edge ]
  %conn.0 = getelementptr i8, ptr %.pn77, i32 -100
  tail call void @nvkm_conn_init(ptr noundef %conn.0) #9
  %1 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %conn2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %outp12 = getelementptr i8, ptr %engine, i32 216
  %2 = ptrtoint ptr %outp12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn7378 = load ptr, ptr %outp12, align 4
  %cmp19.not79 = icmp eq ptr %.pn7378, %outp12
  br i1 %cmp19.not79, label %for.end.for.end28_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn7380 = phi ptr [ %.pn73, %for.body21.for.body21_crit_edge ], [ %.pn7378, %for.end.for.body21_crit_edge ]
  %outp.0 = getelementptr i8, ptr %.pn7380, i32 -56
  tail call void @nvkm_outp_init(ptr noundef %outp.0) #9
  %3 = ptrtoint ptr %.pn7380 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn73 = load ptr, ptr %.pn7380, align 4
  %cmp19.not = icmp eq ptr %.pn73, %outp12
  br i1 %cmp19.not, label %for.body21.for.end28_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.body21.for.end28_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28

for.end28:                                        ; preds = %for.body21.for.end28_crit_edge, %for.end.for.end28_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %init = getelementptr inbounds %struct.nvkm_disp_func, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.end28.if.end33_crit_edge, label %if.then

for.end28.if.end33_crit_edge:                     ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then:                                          ; preds = %for.end28
  %call = tail call i32 %7(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool31.not = icmp eq i32 %call, 0
  br i1 %tobool31.not, label %if.then.if.end33_crit_edge, label %if.then.cleanup53_crit_edge

if.then.cleanup53_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %if.then.if.end33_crit_edge, %for.end28.if.end33_crit_edge
  %ior35 = getelementptr i8, ptr %engine, i32 208
  %8 = ptrtoint ptr %ior35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn7481 = load ptr, ptr %ior35, align 4
  %cmp42.not82 = icmp eq ptr %.pn7481, %ior35
  br i1 %cmp42.not82, label %if.end33.cleanup53_crit_edge, label %if.end33.for.body44_crit_edge

if.end33.for.body44_crit_edge:                    ; preds = %if.end33
  br label %for.body44

if.end33.cleanup53_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %if.end33.for.body44_crit_edge
  %.pn7483 = phi ptr [ %.pn74, %for.body44.for.body44_crit_edge ], [ %.pn7481, %if.end33.for.body44_crit_edge ]
  %ior.0 = getelementptr i8, ptr %.pn7483, i32 -24
  %9 = ptrtoint ptr %ior.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ior.0, align 4
  %power = getelementptr inbounds %struct.nvkm_ior_func, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power, align 4
  tail call void %12(ptr noundef %ior.0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %13 = ptrtoint ptr %.pn7483 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn74 = load ptr, ptr %.pn7483, align 4
  %cmp42.not = icmp eq ptr %.pn74, %ior35
  br i1 %cmp42.not, label %for.body44.cleanup53_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.body44.cleanup53_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

cleanup53:                                        ; preds = %for.body44.cleanup53_crit_edge, %if.end33.cleanup53_crit_edge, %if.then.cleanup53_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup53_crit_edge ], [ 0, %if.end33.cleanup53_crit_edge ], [ 0, %for.body44.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_fini(ptr noundef %engine, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fini = getelementptr inbounds %struct.nvkm_disp_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %outp4 = getelementptr i8, ptr %engine, i32 216
  %4 = ptrtoint ptr %outp4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn42 = load ptr, ptr %outp4, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %outp4
  br i1 %cmp.not43, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn42, %if.end.for.body_crit_edge ]
  %outp.0 = getelementptr i8, ptr %.pn44, i32 -56
  tail call void @nvkm_outp_fini(ptr noundef %outp.0) #9
  %5 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %outp4
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %conn14 = getelementptr i8, ptr %engine, i32 224
  %6 = ptrtoint ptr %conn14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn4145 = load ptr, ptr %conn14, align 4
  %cmp21.not46 = icmp eq ptr %.pn4145, %conn14
  br i1 %cmp21.not46, label %for.end.for.end30_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %.pn4147 = phi ptr [ %.pn41, %for.body23.for.body23_crit_edge ], [ %.pn4145, %for.end.for.body23_crit_edge ]
  %conn.0 = getelementptr i8, ptr %.pn4147, i32 -100
  tail call void @nvkm_conn_fini(ptr noundef %conn.0) #9
  %7 = ptrtoint ptr %.pn4147 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn41 = load ptr, ptr %.pn4147, align 4
  %cmp21.not = icmp eq ptr %.pn41, %conn14
  br i1 %cmp21.not, label %for.body23.for.end30_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.body23.for.end30_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.end30:                                        ; preds = %for.body23.for.end30_crit_edge, %for.end.for.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_disp_intr(ptr noundef %engine) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %intr = getelementptr inbounds %struct.nvkm_disp_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  tail call void %3(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_class_get(ptr nocapture noundef %oclass, i32 noundef %index, ptr nocapture noundef writeonly %class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %root1 = getelementptr inbounds %struct.nvkm_disp_func, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root1, align 4
  %call = tail call ptr %5(ptr noundef %add.ptr) #9
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %base2 = getelementptr inbounds %struct.nvkm_disp_oclass, ptr %call, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %base, ptr %base2, i32 20)
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %7 = ptrtoint ptr %engn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %engn, align 4
  %8 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvkm_disp_sclass, ptr %class, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ior_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_head_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_outp_parse(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dp_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_connEp(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_conn_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_ior_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_hpd_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef %notify) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %land.lhs.true5, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true5:                                   ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.if.end44_crit_edge

land.lhs.true5.if.end44_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %if.then15, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then15:                                        ; preds = %if.then
  %size16 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %4 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %size16, align 4
  %outp18 = getelementptr i8, ptr %1, i32 -16
  %5 = ptrtoint ptr %outp18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn70 = load ptr, ptr %outp18, align 4
  %cmp22.not71 = icmp eq ptr %.pn70, %outp18
  br i1 %cmp22.not71, label %if.then15.if.end44_crit_edge, label %for.body.lr.ph

if.then15.if.end44_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body.lr.ph:                                   ; preds = %if.then15
  %conn24 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %conn24 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %conn24, align 1
  %conv25 = zext i8 %7 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %8 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp22.not = icmp eq ptr %.pn, %outp18
  br i1 %cmp22.not, label %for.cond.if.end44_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end44_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %.pn72 = phi ptr [ %.pn70, %for.body.lr.ph ], [ %.pn, %for.cond.for.body_crit_edge ]
  %conn = getelementptr i8, ptr %.pn72, i32 8
  %9 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn, align 4
  %index = getelementptr inbounds %struct.nvkm_conn, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv25)
  %cmp26 = icmp eq i32 %12, %conv25
  br i1 %cmp26, label %if.then28, label %for.cond

if.then28:                                        ; preds = %for.body
  %hpd = getelementptr inbounds %struct.nvkm_conn, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hpd, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %if.then28.if.end44_crit_edge, label %if.then32

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mask, align 1
  %conv33 = zext i8 %16 to i32
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %17 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv33, ptr %types, align 4
  %18 = ptrtoint ptr %conn24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %conn24, align 1
  %conv35 = zext i8 %19 to i32
  %index36 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %20 = ptrtoint ptr %index36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv35, ptr %index36, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then32, %if.then28.if.end44_crit_edge, %for.cond.if.end44_crit_edge, %if.then15.if.end44_crit_edge, %if.then.if.end44_crit_edge, %land.lhs.true5.if.end44_crit_edge, %entry.if.end44_crit_edge
  %ret.1 = phi i32 [ 0, %if.then32 ], [ -19, %if.then28.if.end44_crit_edge ], [ -38, %entry.if.end44_crit_edge ], [ -38, %land.lhs.true5.if.end44_crit_edge ], [ -7, %if.then.if.end44_crit_edge ], [ 0, %if.then15.if.end44_crit_edge ], [ -6, %for.cond.if.end44_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_disp_vblank_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef %notify) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %land.lhs.true5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5:                                   ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %if.then15, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.then
  %size16 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %4 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %size16, align 4
  %head = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %head, align 1
  %conv17 = zext i8 %6 to i32
  %index_nr = getelementptr inbounds %struct.nvkm_event, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %index_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv17)
  %cmp18.not = icmp slt i32 %8, %conv17
  br i1 %cmp18.not, label %if.then15.cleanup_crit_edge, label %if.then20

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %9 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %types, align 4
  %10 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %head, align 1
  %conv22 = zext i8 %11 to i32
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %12 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv22, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then15.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20 ], [ -6, %if.then15.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ -38, %land.lhs.true5.cleanup_crit_edge ], [ -7, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_disp_vblank_init(ptr noundef %event, i32 noundef %type, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -348
  %call = tail call ptr @nvkm_head_find(ptr noundef %add.ptr, i32 noundef %id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %vblank_get = getelementptr inbounds %struct.nvkm_head_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vblank_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank_get, align 4
  tail call void %3(ptr noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_disp_vblank_fini(ptr noundef %event, i32 noundef %type, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %event, i32 -348
  %call = tail call ptr @nvkm_head_find(ptr noundef %add.ptr, i32 noundef %id) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %vblank_put = getelementptr inbounds %struct.nvkm_head_func, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vblank_put to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank_put, align 4
  tail call void %3(ptr noundef nonnull %call) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_conn_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_disp_class_new(ptr nocapture noundef readnone %device, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  %oproxy = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %0 = ptrtoint ptr %engn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engn, align 4
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oproxy) #9
  %4 = ptrtoint ptr %oproxy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %oproxy, align 4, !annotation !48
  %call = call i32 @nvkm_oproxy_new_(ptr noundef nonnull @nvkm_disp_class, ptr noundef %oclass, ptr noundef nonnull %oproxy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %oproxy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oproxy, align 4
  %base = getelementptr inbounds %struct.nvkm_oproxy, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base, ptr %pobject, align 4
  %client = getelementptr i8, ptr %3, i32 456
  call void @_raw_spin_lock(ptr noundef %client) #9
  %object = getelementptr i8, ptr %3, i32 500
  %8 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %object, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %client) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %oproxy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oproxy, align 4
  %12 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %object, align 4
  call void @_raw_spin_unlock(ptr noundef %client) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %oproxy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oproxy, align 4
  %object11 = getelementptr inbounds %struct.nvkm_oproxy, ptr %16, i32 0, i32 2
  %call12 = call i32 %14(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %object11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ %call12, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oproxy) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_oproxy_new_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_disp_class_del(ptr noundef readonly %oproxy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oproxy, ptr %oproxy, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %client = getelementptr i8, ptr %1, i32 456
  tail call void @_raw_spin_lock(ptr noundef %client) #9
  %object = getelementptr i8, ptr %1, i32 500
  %2 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object, align 4
  %cmp = icmp eq ptr %3, %oproxy
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %object, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %client) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @nvkm_disp_ctor.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 483, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_disp, !4, !"nvkm_disp", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 465, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 311, i32 4}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nvkm_disp_oneinit._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @nvkm_disp_oneinit._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 319, i32 6}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nvkm_disp_oneinit._entry.6, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_disp_oneinit._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 321, i32 6}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nvkm_disp_oneinit._entry.10, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_disp_oneinit._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 325, i32 4}
!25 = !{ptr @nvkm_disp_oneinit._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_disp_oneinit._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 381, i32 4}
!29 = !{ptr @nvkm_disp_oneinit._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_disp_oneinit._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @nvkm_disp_hpd_func, !32, !"nvkm_disp_hpd_func", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 127, i32 1}
!33 = !{ptr @nvkm_disp_vblank_func, !34, !"nvkm_disp_vblank_func", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 84, i32 1}
!35 = !{ptr @nvkm_disp_sclass, !36, !"nvkm_disp_sclass", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 190, i32 1}
!37 = !{ptr @nvkm_disp_class, !38, !"nvkm_disp_class", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/base.c", i32 159, i32 1}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i8 0, i8 9}
!50 = !{!"branch_weights", i32 1, i32 2000}
