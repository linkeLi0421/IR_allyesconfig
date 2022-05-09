; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_user = type { %struct.nvkm_sclass, ptr }
%struct.nv50_disp_root = type { ptr, ptr, %struct.nvkm_object }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv50_disp_mthd_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nv50_disp_mthd_v1 = type { i8, i8, i16, i16, [2 x i8] }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.136, %struct.anon.136, %struct.anon.136, %struct.anon.137, %struct.anon.138, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.134 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.133 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.133 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.134 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { i32, i32 }
%struct.anon.137 = type { i32, i32, i32 }
%struct.anon.138 = type { i32, i32, [3 x i8] }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.158, i8 }
%union.anon.158 = type { %struct.anon.162 }
%struct.anon.162 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.156, %struct.anon.157 }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.156 = type { i8, i8, i8, i8 }
%struct.anon.157 = type { i8 }
%struct.nvkm_ior_func = type { %struct.anon.152, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.153, %struct.anon.154, %struct.anon.155 }
%struct.anon.152 = type { ptr, ptr }
%struct.anon.153 = type { ptr, ptr }
%struct.anon.154 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.155 = type { ptr, ptr, ptr }
%struct.nvkm_dp = type { %union.anon.170, %struct.nvbios_dpout, i8, ptr, %struct.nvkm_notify, i8, [16 x i8], %struct.mutex, %struct.anon.171 }
%union.anon.170 = type { %struct.nvkm_outp }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.anon.171 = type { %struct.atomic_t, i8 }
%struct.nv50_disp_root_func = type { i32, [0 x %struct.nv50_disp_user] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }

@nv50_disp_root_ = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nv50_disp_root_dtor_, ptr null, ptr null, ptr @nv50_disp_root_mthd_, ptr @nvkm_disp_ntfy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_disp_root_child_get_ }, [36 x i8] zeroinitializer }, align 32
@nv50_disp_root_oclass = dso_local constant { %struct.nvkm_disp_oclass, [40 x i8] } { %struct.nvkm_disp_oclass { ptr @nv50_disp_root_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 20592, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_disp_root_mthd_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd size %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_disp_root_mthd_\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr = internal global ptr @nv50_disp_root_mthd_._entry, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd vers %d mthd %02x head %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.5 = internal global ptr @nv50_disp_root_mthd_._entry.3, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd vers %d mthd %02x type %04x mask %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.8 = internal global ptr @nv50_disp_root_mthd_._entry.6, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hda eld size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.11 = internal global ptr @nv50_disp_root_mthd_._entry.9, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hda eld vers %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.14 = internal global ptr @nv50_disp_root_mthd_._entry.12, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hdmi ctrl size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.17 = internal global ptr @nv50_disp_root_mthd_._entry.15, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor hdmi ctrl vers %d state %d max_ac_packet %d rekey %d scdc %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.20 = internal global ptr @nv50_disp_root_mthd_._entry.18, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor lvds script size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.23 = internal global ptr @nv50_disp_root_mthd_._entry.21, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor lvds script vers %d name %04x\0A\00", [56 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.26 = internal global ptr @nv50_disp_root_mthd_._entry.24, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst link size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.29 = internal global ptr @nv50_disp_root_mthd_._entry.27, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst link vers %d state %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.32 = internal global ptr @nv50_disp_root_mthd_._entry.30, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst vcpi size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.35 = internal global ptr @nv50_disp_root_mthd_._entry.33, section ".printk_index", align 4
@nv50_disp_root_mthd_._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp sor dp mst vcpi vers %d slot %02x/%02x pbn %04x/%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@nv50_disp_root_mthd_._entry_ptr.38 = internal global ptr @nv50_disp_root_mthd_._entry.36, section ".printk_index", align 4
@nv50_disp_root = internal constant { { i32, [6 x %struct.nv50_disp_user] }, [44 x i8] } { { i32, [6 x %struct.nv50_disp_user] } { i32 0, [6 x %struct.nv50_disp_user] [%struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20602, ptr null, ptr null }, ptr @nv50_disp_curs_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20603, ptr null, ptr null }, ptr @nv50_disp_oimm_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20604, ptr null, ptr null }, ptr @nv50_disp_base_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20605, ptr null, ptr null }, ptr @nv50_disp_core_new }, %struct.nv50_disp_user { %struct.nvkm_sclass { i32 0, i32 0, i32 20606, ptr null, ptr null }, ptr @nv50_disp_ovly_new }, %struct.nv50_disp_user zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 17, i64 33, i64 34, i64 35, i64 37, i64 38]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"nv50_disp_root_\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 309, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"nv50_disp_root_oclass\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 355, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 53, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 55, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 61, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 142, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 144, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 176, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 178, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 218, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 220, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 235, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 237, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 250, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 252, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"nv50_disp_root\00", align 1
@___asan_gen_.131 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 335, i32 1 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @nv50_disp_root_mthd_._entry, ptr @nv50_disp_root_mthd_._entry.12, ptr @nv50_disp_root_mthd_._entry.15, ptr @nv50_disp_root_mthd_._entry.18, ptr @nv50_disp_root_mthd_._entry.21, ptr @nv50_disp_root_mthd_._entry.24, ptr @nv50_disp_root_mthd_._entry.27, ptr @nv50_disp_root_mthd_._entry.3, ptr @nv50_disp_root_mthd_._entry.30, ptr @nv50_disp_root_mthd_._entry.33, ptr @nv50_disp_root_mthd_._entry.36, ptr @nv50_disp_root_mthd_._entry.6, ptr @nv50_disp_root_mthd_._entry.9, ptr @nv50_disp_root_mthd_._entry_ptr, ptr @nv50_disp_root_mthd_._entry_ptr.11, ptr @nv50_disp_root_mthd_._entry_ptr.14, ptr @nv50_disp_root_mthd_._entry_ptr.17, ptr @nv50_disp_root_mthd_._entry_ptr.20, ptr @nv50_disp_root_mthd_._entry_ptr.23, ptr @nv50_disp_root_mthd_._entry_ptr.26, ptr @nv50_disp_root_mthd_._entry_ptr.29, ptr @nv50_disp_root_mthd_._entry_ptr.32, ptr @nv50_disp_root_mthd_._entry_ptr.35, ptr @nv50_disp_root_mthd_._entry_ptr.38, ptr @nv50_disp_root_mthd_._entry_ptr.5, ptr @nv50_disp_root_mthd_._entry_ptr.8, ptr @nv50_disp_root_, ptr @nv50_disp_root_oclass, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @nv50_disp_root], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_ to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root_mthd_._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_root to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_root_new_(ptr noundef %func, ptr noundef %base, ptr noundef %oclass, ptr nocapture readnone %data, i32 %size, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %object = getelementptr inbounds %struct.nv50_disp_root, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %object, ptr %pobject, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_root_, ptr noundef %oclass, ptr noundef %object) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %disp3 = getelementptr inbounds %struct.nv50_disp_root, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %disp3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %disp3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_new(ptr noundef %disp, ptr noundef %oclass, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_disp_root_new_.exit_crit_edge, label %if.end.i

entry.nv50_disp_root_new_.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_disp_root_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %disp, i32 -4
  %object.i = getelementptr inbounds %struct.nv50_disp_root, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %object.i, ptr %pobject, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv50_disp_root_, ptr noundef %oclass, ptr noundef %object.i) #7
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv50_disp_root, ptr %call7.i.i.i, align 8
  %disp3.i = getelementptr inbounds %struct.nv50_disp_root, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %disp3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %disp3.i, align 4
  br label %nv50_disp_root_new_.exit

nv50_disp_root_new_.exit:                         ; preds = %if.end.i, %entry.nv50_disp_root_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.nv50_disp_root_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nv50_disp_root_dtor_(ptr noundef readnone %object) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_mthd_(ptr noundef %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disp1 = getelementptr i8, ptr %object, i32 -4
  %0 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mthd)
  %cmp.not = icmp eq i32 %mthd, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup812_crit_edge

entry.cleanup812_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body:                                          ; preds = %entry
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2 = icmp ugt i32 %5, 4
  br i1 %cmp2, label %do.end, label %do.body.land.lhs.true_crit_edge

do.body.land.lhs.true_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %8 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %do.body.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp10 = icmp ugt i32 %size, 7
  br i1 %cmp10, label %land.lhs.true14, label %land.lhs.true.cleanup812_crit_edge

land.lhs.true.cleanup812_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true14:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp17 = icmp eq i8 %11, 0
  br i1 %cmp17, label %do.body27, label %land.lhs.true66

do.body27:                                        ; preds = %land.lhs.true14
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug31 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp32 = icmp ugt i32 %15, 4
  br i1 %cmp32, label %do.end37, label %do.body27.if.end49_crit_edge

do.body27.if.end49_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.end37:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %name39 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle41 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %16 = ptrtoint ptr %handle41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle41, align 8
  %oclass42 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %18 = ptrtoint ptr %oclass42 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass42, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 2
  %conv44 = zext i8 %21 to i32
  %method = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %method, align 1
  %conv45 = zext i8 %23 to i32
  %head46 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %data, i32 0, i32 2
  %24 = ptrtoint ptr %head46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %head46, align 2
  %conv47 = zext i8 %25 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name39, i32 noundef %17, i32 noundef %19, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %conv47) #11
  br label %if.end49

if.end49:                                         ; preds = %do.end37, %do.body27.if.end49_crit_edge
  %method52 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %data, i32 0, i32 1
  %head54 = getelementptr inbounds %struct.nv50_disp_mthd_v0, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %head54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %head54, align 2
  %conv55 = zext i8 %27 to i32
  br label %if.end121

land.lhs.true66:                                  ; preds = %land.lhs.true14
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cond = icmp eq i8 %29, 1
  br i1 %cond, label %do.body87, label %land.lhs.true66.cleanup812_crit_edge

land.lhs.true66.cleanup812_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body87:                                        ; preds = %land.lhs.true66
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %debug91 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %debug91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp92 = icmp ugt i32 %33, 4
  br i1 %cmp92, label %do.end97, label %do.body87.if.end110_crit_edge

do.body87.if.end110_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.end97:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  %name99 = getelementptr inbounds %struct.nvkm_client, ptr %31, i32 0, i32 1
  %handle101 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %34 = ptrtoint ptr %handle101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle101, align 8
  %oclass102 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %36 = ptrtoint ptr %oclass102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oclass102, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %data, align 2
  %conv104 = zext i8 %39 to i32
  %method105 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %method105 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %method105, align 1
  %conv106 = zext i8 %41 to i32
  %hasht = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 2
  %42 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hasht, align 2
  %conv107 = zext i16 %43 to i32
  %hashm = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 3
  %44 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hashm, align 2
  %conv108 = zext i16 %45 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name99, i32 noundef %35, i32 noundef %37, i32 noundef %conv104, i32 noundef %conv106, i32 noundef %conv107, i32 noundef %conv108) #11
  br label %if.end110

if.end110:                                        ; preds = %do.end97, %do.body87.if.end110_crit_edge
  %method113 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 1
  %hasht115 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 2
  %46 = ptrtoint ptr %hasht115 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hasht115, align 2
  %hashm116 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %data, i32 0, i32 3
  %48 = ptrtoint ptr %hashm116 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hashm116, align 2
  %50 = lshr i16 %49, 8
  %51 = and i16 %50, 15
  %52 = tail call i16 @llvm.cttz.i16(i16 %51, i1 true), !range !69
  %53 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %iszero = icmp eq i16 %51, 0
  %sub118 = select i1 %iszero, i32 -1, i32 %53
  br label %if.end121

if.end121:                                        ; preds = %if.end110, %if.end49
  %hidx.0 = phi i32 [ %sub118, %if.end110 ], [ %conv55, %if.end49 ]
  %mask.0 = phi i16 [ %49, %if.end110 ], [ 0, %if.end49 ]
  %type.0 = phi i16 [ %47, %if.end110 ], [ -1, %if.end49 ]
  %mthd.addr.0.in.in = phi ptr [ %method113, %if.end110 ], [ %method52, %if.end49 ]
  %data.addr.2 = getelementptr i8, ptr %data, i32 8
  %size.addr.2 = add i32 %size, -8
  %54 = ptrtoint ptr %mthd.addr.0.in.in to i32
  call void @__asan_load1_noabort(i32 %54)
  %mthd.addr.0.in = load i8, ptr %mthd.addr.0.in.in, align 1
  %base = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1
  %call122 = tail call ptr @nvkm_head_find(ptr noundef %base, i32 noundef %hidx.0) #7
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end121.cleanup812_crit_edge, label %if.end125

if.end121.cleanup812_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end125:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mask.0)
  %tobool126.not = icmp eq i16 %mask.0, 0
  br i1 %tobool126.not, label %if.end125.if.end163_crit_edge, label %if.then127

if.end125.if.end163_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then127:                                       ; preds = %if.end125
  %outp130 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %outp130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn1152 = load ptr, ptr %outp130, align 4
  %cmp136.not1153 = icmp eq ptr %.pn1152, %outp130
  br i1 %cmp136.not1153, label %if.then127.cleanup812_crit_edge, label %if.then127.for.body_crit_edge

if.then127.for.body_crit_edge:                    ; preds = %if.then127
  br label %for.body

if.then127.cleanup812_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then127.for.body_crit_edge
  %.pn1154 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn1152, %if.then127.for.body_crit_edge ]
  %hasht138 = getelementptr i8, ptr %.pn1154, i32 -40
  %56 = ptrtoint ptr %hasht138 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hasht138, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %type.0)
  %cmp141 = icmp eq i16 %57, %type.0
  br i1 %cmp141, label %land.lhs.true143, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true143:                                 ; preds = %for.body
  %hashm145 = getelementptr i8, ptr %.pn1154, i32 -38
  %58 = ptrtoint ptr %hashm145 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hashm145, align 2
  %and1481112 = and i16 %59, %mask.0
  call void @__sanitizer_cov_trace_cmp2(i16 %and1481112, i16 %mask.0)
  %cmp150 = icmp eq i16 %and1481112, %mask.0
  br i1 %cmp150, label %for.end, label %land.lhs.true143.for.inc_crit_edge

land.lhs.true143.for.inc_crit_edge:               ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true143.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %60 = ptrtoint ptr %.pn1154 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn1154, align 4
  %cmp136.not = icmp eq ptr %.pn, %outp130
  br i1 %cmp136.not, label %for.inc.cleanup812_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup812_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

for.end:                                          ; preds = %land.lhs.true143
  %temp.0.le = getelementptr i8, ptr %.pn1154, i32 -56
  %cmp159 = icmp eq ptr %temp.0.le, null
  br i1 %cmp159, label %for.end.cleanup812_crit_edge, label %for.end.if.end163_crit_edge

for.end.if.end163_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

for.end.cleanup812_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end163:                                        ; preds = %for.end.if.end163_crit_edge, %if.end125.if.end163_crit_edge
  %outp.1 = phi ptr [ %temp.0.le, %for.end.if.end163_crit_edge ], [ null, %if.end125.if.end163_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mthd.addr.0.in)
  %cond822 = icmp eq i8 %mthd.addr.0.in, 0
  br i1 %cond822, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  %call164 = tail call i32 @nvkm_head_mthd_scanoutpos(ptr noundef %object, ptr noundef nonnull %call122, ptr noundef %data.addr.2, i32 noundef %size.addr.2) #7
  br label %cleanup812

sw.epilog:                                        ; preds = %if.end163
  %tobool165.not = icmp eq ptr %outp.1, null
  %trunc = select i1 %tobool165.not, i8 0, i8 %mthd.addr.0.in
  %61 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.epilog.cleanup812_crit_edge [
    i8 1, label %land.lhs.true178
    i8 2, label %sw.bb213
    i8 17, label %land.lhs.true224
    i8 33, label %sw.bb268
    i8 34, label %sw.bb393
    i8 35, label %sw.bb538
    i8 37, label %sw.bb620
    i8 38, label %sw.bb712
  ]

sw.epilog.cleanup812_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true178:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp179 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp179, label %land.lhs.true186, label %land.lhs.true178.cleanup812_crit_edge

land.lhs.true178.cleanup812_crit_edge:            ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true186:                                 ; preds = %land.lhs.true178
  %62 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data.addr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp189 = icmp eq i8 %63, 0
  br i1 %cmp189, label %if.then191, label %land.lhs.true186.cleanup812_crit_edge

land.lhs.true186.cleanup812_crit_edge:            ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then191:                                       ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.2)
  %tobool195.not = icmp eq i32 %size.addr.2, 8
  br i1 %tobool195.not, label %if.then201, label %if.then191.cleanup812_crit_edge

if.then191.cleanup812_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then201:                                       ; preds = %if.then191
  %hda = getelementptr i8, ptr %data, i32 11
  %64 = ptrtoint ptr %hda to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hda, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool202 = icmp ne i8 %65, 0
  %call203 = tail call i32 @nvkm_outp_acquire(ptr noundef %outp.1, i8 noundef zeroext 2, i1 noundef zeroext %tobool202) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.then201.cleanup812_crit_edge

if.then201.cleanup812_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then206:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  %ior = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 9
  %66 = ptrtoint ptr %ior to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ior, align 4
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id, align 4
  %conv207 = trunc i32 %69 to i8
  %or = getelementptr i8, ptr %data, i32 9
  %70 = ptrtoint ptr %or to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv207, ptr %or, align 1
  %71 = load ptr, ptr %ior, align 4
  %link = getelementptr inbounds %struct.nvkm_ior, ptr %71, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load = load i32, ptr %link, align 4
  %bf.lshr = lshr i32 %bf.load, 23
  %73 = trunc i32 %bf.lshr to i8
  %conv209 = and i8 %73, 3
  %link210 = getelementptr i8, ptr %data, i32 10
  %74 = ptrtoint ptr %link210 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv209, ptr %link210, align 1
  br label %cleanup812

sw.bb213:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nvkm_outp_release(ptr noundef %outp.1, i8 noundef zeroext 2) #7
  br label %cleanup812

land.lhs.true224:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp225 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp225, label %land.lhs.true232, label %land.lhs.true224.cleanup812_crit_edge

land.lhs.true224.cleanup812_crit_edge:            ; preds = %land.lhs.true224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true232:                                 ; preds = %land.lhs.true224
  %75 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data.addr.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp235 = icmp eq i8 %76, 0
  br i1 %cmp235, label %if.then237, label %land.lhs.true232.cleanup812_crit_edge

land.lhs.true232.cleanup812_crit_edge:            ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then237:                                       ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.2)
  %tobool241.not = icmp eq i32 %size.addr.2, 8
  br i1 %tobool241.not, label %if.then247, label %if.then237.cleanup812_crit_edge

if.then237.cleanup812_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then247:                                       ; preds = %if.then237
  %data248 = getelementptr i8, ptr %data, i32 12
  %77 = ptrtoint ptr %data248 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %78)
  %tobool250.not = icmp ult i32 %78, 1048576
  br i1 %tobool250.not, label %if.end252, label %if.then247.cleanup812_crit_edge

if.then247.cleanup812_crit_edge:                  ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end252:                                        ; preds = %if.then247
  %call253 = tail call i32 @nvkm_outp_acquire(ptr noundef %outp.1, i8 noundef zeroext 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %if.end252.cleanup812_crit_edge

if.end252.cleanup812_crit_edge:                   ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end256:                                        ; preds = %if.end252
  %ior257 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 9
  %79 = ptrtoint ptr %ior257 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ior257, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %sense = getelementptr inbounds %struct.nvkm_ior_func, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sense, align 4
  %85 = ptrtoint ptr %data248 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data248, align 4
  %call260 = tail call i32 %84(ptr noundef %80, i32 noundef %86) #7
  tail call void @nvkm_outp_release(ptr noundef %outp.1, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %if.end256.cleanup812_crit_edge, label %if.end264

if.end256.cleanup812_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end264:                                        ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #9
  %conv265 = trunc i32 %call260 to i8
  %load = getelementptr i8, ptr %data, i32 9
  %87 = ptrtoint ptr %load to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv265, ptr %load, align 1
  br label %cleanup812

sw.bb268:                                         ; preds = %sw.epilog
  %ior271 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 9
  %88 = ptrtoint ptr %ior271 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ior271, align 4
  %90 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %client, align 4
  %debug277 = getelementptr inbounds %struct.nvkm_client, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %debug277 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug277, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp278 = icmp ugt i32 %93, 4
  br i1 %cmp278, label %do.end283, label %sw.bb268.land.lhs.true300_crit_edge

sw.bb268.land.lhs.true300_crit_edge:              ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true300

do.end283:                                        ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #9
  %name285 = getelementptr inbounds %struct.nvkm_client, ptr %91, i32 0, i32 1
  %handle287 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %94 = ptrtoint ptr %handle287 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %handle287, align 8
  %oclass288 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %96 = ptrtoint ptr %oclass288 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %oclass288, align 4
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name285, i32 noundef %95, i32 noundef %97, i32 noundef %size.addr.2) #11
  br label %land.lhs.true300

land.lhs.true300:                                 ; preds = %do.end283, %sw.bb268.land.lhs.true300_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp301 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp301, label %land.lhs.true308, label %land.lhs.true300.cleanup812_crit_edge

land.lhs.true300.cleanup812_crit_edge:            ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true308:                                 ; preds = %land.lhs.true300
  %98 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data.addr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %cmp311 = icmp eq i8 %99, 0
  br i1 %cmp311, label %do.body324, label %land.lhs.true308.cleanup812_crit_edge

land.lhs.true308.cleanup812_crit_edge:            ; preds = %land.lhs.true308
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body324:                                       ; preds = %land.lhs.true308
  %add.ptr314 = getelementptr i8, ptr %data, i32 16
  %sub315 = add i32 %size, -16
  %100 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %client, align 4
  %debug328 = getelementptr inbounds %struct.nvkm_client, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %debug328 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %debug328, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %103)
  %cmp329 = icmp ugt i32 %103, 4
  br i1 %cmp329, label %do.end334, label %do.body324.if.end343_crit_edge

do.body324.if.end343_crit_edge:                   ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end343

do.end334:                                        ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #9
  %name336 = getelementptr inbounds %struct.nvkm_client, ptr %101, i32 0, i32 1
  %handle338 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %104 = ptrtoint ptr %handle338 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %handle338, align 8
  %oclass339 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %106 = ptrtoint ptr %oclass339 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %oclass339, align 4
  %108 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %data.addr.2, align 1
  %conv341 = zext i8 %109 to i32
  %call342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name336, i32 noundef %105, i32 noundef %107, i32 noundef %conv341) #11
  br label %if.end343

if.end343:                                        ; preds = %do.end334, %do.body324.if.end343_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %sub315)
  %cmp346 = icmp ugt i32 %sub315, 96
  br i1 %cmp346, label %if.end343.cleanup812_crit_edge, label %if.end351

if.end343.cleanup812_crit_edge:                   ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end351:                                        ; preds = %if.end343
  %110 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %89, align 4
  %hda353 = getelementptr inbounds %struct.nvkm_ior_func, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %hda353 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hda353, align 4
  %tobool354.not = icmp eq ptr %113, null
  br i1 %tobool354.not, label %if.end351.cleanup812_crit_edge, label %if.end356

if.end351.cleanup812_crit_edge:                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end356:                                        ; preds = %if.end351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub315)
  %tobool357.not = icmp eq i32 %sub315, 0
  br i1 %tobool357.not, label %if.end356.if.else376_crit_edge, label %land.lhs.true358

if.end356.if.else376_crit_edge:                   ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else376

land.lhs.true358:                                 ; preds = %if.end356
  %114 = ptrtoint ptr %add.ptr314 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %add.ptr314, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool361.not = icmp eq i8 %115, 0
  br i1 %tobool361.not, label %land.lhs.true358.if.else376_crit_edge, label %if.then362

land.lhs.true358.if.else376_crit_edge:            ; preds = %land.lhs.true358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else376

if.then362:                                       ; preds = %land.lhs.true358
  %type364 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 3, i32 3
  %116 = ptrtoint ptr %type364 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type364, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %117)
  %cmp365 = icmp eq i32 %117, 6
  br i1 %cmp365, label %if.then367, label %if.then362.if.end369_crit_edge

if.then362.if.end369_crit_edge:                   ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end369

if.then367:                                       ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #9
  %audio = getelementptr inbounds %struct.nvkm_ior_func, ptr %111, i32 0, i32 8, i32 6
  %118 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %audio, align 4
  tail call void %119(ptr noundef %89, i32 noundef %hidx.0, i1 noundef zeroext true) #7
  br label %if.end369

if.end369:                                        ; preds = %if.then367, %if.then362.if.end369_crit_edge
  %120 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %89, align 4
  %hda371 = getelementptr inbounds %struct.nvkm_ior_func, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %hda371 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hda371, align 4
  tail call void %123(ptr noundef %89, i32 noundef %hidx.0, i1 noundef zeroext true) #7
  %124 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %89, align 4
  %eld = getelementptr inbounds %struct.nvkm_ior_func, ptr %125, i32 0, i32 9, i32 1
  %126 = ptrtoint ptr %eld to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %eld, align 4
  %conv375 = trunc i32 %sub315 to i8
  tail call void %127(ptr noundef %89, i32 noundef %hidx.0, ptr noundef %add.ptr314, i8 noundef zeroext %conv375) #7
  br label %cleanup812

if.else376:                                       ; preds = %land.lhs.true358.if.else376_crit_edge, %if.end356.if.else376_crit_edge
  %type378 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 3, i32 3
  %128 = ptrtoint ptr %type378 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %type378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %129)
  %cmp379 = icmp eq i32 %129, 6
  br i1 %cmp379, label %if.then381, label %if.else376.if.end385_crit_edge

if.else376.if.end385_crit_edge:                   ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end385

if.then381:                                       ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #9
  %audio384 = getelementptr inbounds %struct.nvkm_ior_func, ptr %111, i32 0, i32 8, i32 6
  %130 = ptrtoint ptr %audio384 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %audio384, align 4
  tail call void %131(ptr noundef %89, i32 noundef %hidx.0, i1 noundef zeroext false) #7
  br label %if.end385

if.end385:                                        ; preds = %if.then381, %if.else376.if.end385_crit_edge
  %132 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %89, align 4
  %hda387 = getelementptr inbounds %struct.nvkm_ior_func, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %hda387 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hda387, align 4
  tail call void %135(ptr noundef %89, i32 noundef %hidx.0, i1 noundef zeroext false) #7
  br label %cleanup812

sw.bb393:                                         ; preds = %sw.epilog
  %136 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %client, align 4
  %debug400 = getelementptr inbounds %struct.nvkm_client, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %debug400 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %debug400, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp401 = icmp ugt i32 %139, 4
  br i1 %cmp401, label %do.end406, label %sw.bb393.land.lhs.true423_crit_edge

sw.bb393.land.lhs.true423_crit_edge:              ; preds = %sw.bb393
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true423

do.end406:                                        ; preds = %sw.bb393
  call void @__sanitizer_cov_trace_pc() #9
  %name408 = getelementptr inbounds %struct.nvkm_client, ptr %137, i32 0, i32 1
  %handle410 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %140 = ptrtoint ptr %handle410 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %handle410, align 8
  %oclass411 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %142 = ptrtoint ptr %oclass411 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %oclass411, align 4
  %call412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name408, i32 noundef %141, i32 noundef %143, i32 noundef %size.addr.2) #11
  br label %land.lhs.true423

land.lhs.true423:                                 ; preds = %do.end406, %sw.bb393.land.lhs.true423_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp424 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp424, label %land.lhs.true431, label %land.lhs.true423.cleanup812_crit_edge

land.lhs.true423.cleanup812_crit_edge:            ; preds = %land.lhs.true423
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true431:                                 ; preds = %land.lhs.true423
  %144 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %data.addr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp434 = icmp eq i8 %145, 0
  br i1 %cmp434, label %do.body447, label %land.lhs.true431.cleanup812_crit_edge

land.lhs.true431.cleanup812_crit_edge:            ; preds = %land.lhs.true431
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body447:                                       ; preds = %land.lhs.true431
  %add.ptr437 = getelementptr i8, ptr %data, i32 16
  %sub438 = add i32 %size, -16
  %146 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %client, align 4
  %debug451 = getelementptr inbounds %struct.nvkm_client, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %debug451 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %debug451, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %149)
  %cmp452 = icmp ugt i32 %149, 4
  br i1 %cmp452, label %do.end457, label %do.body447.if.end470_crit_edge

do.body447.if.end470_crit_edge:                   ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end470

do.end457:                                        ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #9
  %name459 = getelementptr inbounds %struct.nvkm_client, ptr %147, i32 0, i32 1
  %handle461 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %150 = ptrtoint ptr %handle461 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle461, align 8
  %oclass462 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %152 = ptrtoint ptr %oclass462 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %oclass462, align 4
  %154 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %data.addr.2, align 1
  %conv464 = zext i8 %155 to i32
  %state = getelementptr i8, ptr %data, i32 9
  %156 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %state, align 1
  %conv465 = zext i8 %157 to i32
  %max_ac_packet = getelementptr i8, ptr %data, i32 10
  %158 = ptrtoint ptr %max_ac_packet to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %max_ac_packet, align 1
  %conv466 = zext i8 %159 to i32
  %rekey = getelementptr i8, ptr %data, i32 11
  %160 = ptrtoint ptr %rekey to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %rekey, align 1
  %conv467 = zext i8 %161 to i32
  %scdc = getelementptr i8, ptr %data, i32 14
  %162 = ptrtoint ptr %scdc to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %scdc, align 1
  %conv468 = zext i8 %163 to i32
  %call469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name459, i32 noundef %151, i32 noundef %153, i32 noundef %conv464, i32 noundef %conv465, i32 noundef %conv466, i32 noundef %conv467, i32 noundef %conv468) #11
  br label %if.end470

if.end470:                                        ; preds = %do.end457, %do.body447.if.end470_crit_edge
  %max_ac_packet473 = getelementptr i8, ptr %data, i32 10
  %164 = ptrtoint ptr %max_ac_packet473 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %max_ac_packet473, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %165)
  %cmp475 = icmp ugt i8 %165, 31
  br i1 %cmp475, label %if.end470.cleanup812_crit_edge, label %lor.lhs.false

if.end470.cleanup812_crit_edge:                   ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

lor.lhs.false:                                    ; preds = %if.end470
  %rekey477 = getelementptr i8, ptr %data, i32 11
  %166 = ptrtoint ptr %rekey477 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %rekey477, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %cmp479 = icmp slt i8 %167, 0
  br i1 %cmp479, label %lor.lhs.false.cleanup812_crit_edge, label %if.end482

lor.lhs.false.cleanup812_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end482:                                        ; preds = %lor.lhs.false
  %avi_infoframe_length = getelementptr i8, ptr %data, i32 12
  %168 = ptrtoint ptr %avi_infoframe_length to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %avi_infoframe_length, align 1
  %conv483 = zext i8 %169 to i32
  %vendor_infoframe_length = getelementptr i8, ptr %data, i32 13
  %170 = ptrtoint ptr %vendor_infoframe_length to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %vendor_infoframe_length, align 1
  %conv484 = zext i8 %171 to i32
  %add = add nuw nsw i32 %conv484, %conv483
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub438)
  %cmp485 = icmp ugt i32 %add, %sub438
  br i1 %cmp485, label %if.end482.cleanup812_crit_edge, label %if.else488

if.end482.cleanup812_crit_edge:                   ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.else488:                                       ; preds = %if.end482
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub438)
  %cmp494 = icmp ult i32 %add, %sub438
  br i1 %cmp494, label %if.else488.cleanup812_crit_edge, label %if.end498

if.else488.cleanup812_crit_edge:                  ; preds = %if.else488
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end498:                                        ; preds = %if.else488
  %ior505 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 9
  %172 = ptrtoint ptr %ior505 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ior505, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %hdmi = getelementptr inbounds %struct.nvkm_ior_func, ptr %175, i32 0, i32 7
  %176 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hdmi, align 4
  %tobool507.not = icmp eq ptr %177, null
  br i1 %tobool507.not, label %if.end498.cleanup812_crit_edge, label %if.end509

if.end498.cleanup812_crit_edge:                   ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end509:                                        ; preds = %if.end498
  %add.ptr501 = getelementptr i8, ptr %add.ptr437, i32 %conv483
  %state515 = getelementptr i8, ptr %data, i32 9
  %178 = ptrtoint ptr %state515 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %state515, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool516 = icmp ne i8 %179, 0
  tail call void %177(ptr noundef %173, i32 noundef %hidx.0, i1 noundef zeroext %tobool516, i8 noundef zeroext %165, i8 noundef zeroext %167, ptr noundef %add.ptr437, i8 noundef zeroext %169, ptr noundef %add.ptr501, i8 noundef zeroext %171) #7
  %180 = ptrtoint ptr %ior505 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ior505, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %scdc522 = getelementptr inbounds %struct.nvkm_ior_func, ptr %183, i32 0, i32 7, i32 1
  %184 = ptrtoint ptr %scdc522 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %scdc522, align 4
  %tobool523.not = icmp eq ptr %185, null
  br i1 %tobool523.not, label %if.end509.cleanup812_crit_edge, label %if.then524

if.end509.cleanup812_crit_edge:                   ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then524:                                       ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #9
  %scdc530 = getelementptr i8, ptr %data, i32 14
  %186 = ptrtoint ptr %scdc530 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %scdc530, align 1
  tail call void %185(ptr noundef %181, i8 noundef zeroext %187) #7
  br label %cleanup812

sw.bb538:                                         ; preds = %sw.epilog
  %188 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %client, align 4
  %debug545 = getelementptr inbounds %struct.nvkm_client, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %debug545 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %debug545, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %191)
  %cmp546 = icmp ugt i32 %191, 4
  br i1 %cmp546, label %do.end551, label %sw.bb538.land.lhs.true568_crit_edge

sw.bb538.land.lhs.true568_crit_edge:              ; preds = %sw.bb538
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true568

do.end551:                                        ; preds = %sw.bb538
  call void @__sanitizer_cov_trace_pc() #9
  %name553 = getelementptr inbounds %struct.nvkm_client, ptr %189, i32 0, i32 1
  %handle555 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %192 = ptrtoint ptr %handle555 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %handle555, align 8
  %oclass556 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %194 = ptrtoint ptr %oclass556 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %oclass556, align 4
  %call557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name553, i32 noundef %193, i32 noundef %195, i32 noundef %size.addr.2) #11
  br label %land.lhs.true568

land.lhs.true568:                                 ; preds = %do.end551, %sw.bb538.land.lhs.true568_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp569 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp569, label %land.lhs.true576, label %land.lhs.true568.cleanup812_crit_edge

land.lhs.true568.cleanup812_crit_edge:            ; preds = %land.lhs.true568
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true576:                                 ; preds = %land.lhs.true568
  %196 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %data.addr.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp579 = icmp eq i8 %197, 0
  br i1 %cmp579, label %if.then581, label %land.lhs.true576.cleanup812_crit_edge

land.lhs.true576.cleanup812_crit_edge:            ; preds = %land.lhs.true576
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then581:                                       ; preds = %land.lhs.true576
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.2)
  %tobool585.not = icmp eq i32 %size.addr.2, 8
  br i1 %tobool585.not, label %do.body592, label %if.then581.cleanup812_crit_edge

if.then581.cleanup812_crit_edge:                  ; preds = %if.then581
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body592:                                       ; preds = %if.then581
  %198 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client, align 4
  %debug596 = getelementptr inbounds %struct.nvkm_client, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %debug596 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %debug596, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %201)
  %cmp597 = icmp ugt i32 %201, 4
  br i1 %cmp597, label %do.end602, label %do.body592.if.end612_crit_edge

do.body592.if.end612_crit_edge:                   ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end612

do.end602:                                        ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #9
  %name604 = getelementptr inbounds %struct.nvkm_client, ptr %199, i32 0, i32 1
  %handle606 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %202 = ptrtoint ptr %handle606 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle606, align 8
  %oclass607 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %204 = ptrtoint ptr %oclass607 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %oclass607, align 4
  %206 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %data.addr.2, align 2
  %conv609 = zext i8 %207 to i32
  %script = getelementptr i8, ptr %data, i32 10
  %208 = ptrtoint ptr %script to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %script, align 2
  %conv610 = zext i16 %209 to i32
  %call611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name604, i32 noundef %203, i32 noundef %205, i32 noundef %conv609, i32 noundef %conv610) #11
  br label %if.end612

if.end612:                                        ; preds = %do.end602, %do.body592.if.end612_crit_edge
  %script615 = getelementptr i8, ptr %data, i32 10
  %210 = ptrtoint ptr %script615 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %script615, align 2
  %conv616 = zext i16 %211 to i32
  %lvdsconf = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 9, i32 2
  %212 = ptrtoint ptr %lvdsconf to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv616, ptr %lvdsconf, align 4
  br label %cleanup812

sw.bb620:                                         ; preds = %sw.epilog
  %213 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %client, align 4
  %debug631 = getelementptr inbounds %struct.nvkm_client, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %debug631 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %debug631, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %216)
  %cmp632 = icmp ugt i32 %216, 4
  br i1 %cmp632, label %do.end637, label %sw.bb620.land.lhs.true654_crit_edge

sw.bb620.land.lhs.true654_crit_edge:              ; preds = %sw.bb620
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true654

do.end637:                                        ; preds = %sw.bb620
  call void @__sanitizer_cov_trace_pc() #9
  %name639 = getelementptr inbounds %struct.nvkm_client, ptr %214, i32 0, i32 1
  %handle641 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %217 = ptrtoint ptr %handle641 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %handle641, align 8
  %oclass642 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %219 = ptrtoint ptr %oclass642 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %oclass642, align 4
  %call643 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name639, i32 noundef %218, i32 noundef %220, i32 noundef %size.addr.2) #11
  br label %land.lhs.true654

land.lhs.true654:                                 ; preds = %do.end637, %sw.bb620.land.lhs.true654_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp655 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp655, label %land.lhs.true662, label %land.lhs.true654.cleanup812_crit_edge

land.lhs.true654.cleanup812_crit_edge:            ; preds = %land.lhs.true654
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true662:                                 ; preds = %land.lhs.true654
  %221 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %data.addr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %cmp665 = icmp eq i8 %222, 0
  br i1 %cmp665, label %if.then667, label %land.lhs.true662.cleanup812_crit_edge

land.lhs.true662.cleanup812_crit_edge:            ; preds = %land.lhs.true662
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then667:                                       ; preds = %land.lhs.true662
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.2)
  %tobool671.not = icmp eq i32 %size.addr.2, 8
  br i1 %tobool671.not, label %do.body678, label %if.then667.cleanup812_crit_edge

if.then667.cleanup812_crit_edge:                  ; preds = %if.then667
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body678:                                       ; preds = %if.then667
  %223 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %client, align 4
  %debug682 = getelementptr inbounds %struct.nvkm_client, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %debug682 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %debug682, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %226)
  %cmp683 = icmp ugt i32 %226, 4
  br i1 %cmp683, label %do.end688, label %do.body678.if.end699_crit_edge

do.body678.if.end699_crit_edge:                   ; preds = %do.body678
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end699

do.end688:                                        ; preds = %do.body678
  call void @__sanitizer_cov_trace_pc() #9
  %name690 = getelementptr inbounds %struct.nvkm_client, ptr %224, i32 0, i32 1
  %handle692 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %227 = ptrtoint ptr %handle692 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %handle692, align 8
  %oclass693 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %229 = ptrtoint ptr %oclass693 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %oclass693, align 4
  %231 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %data.addr.2, align 1
  %conv695 = zext i8 %232 to i32
  %state696 = getelementptr i8, ptr %data, i32 9
  %233 = ptrtoint ptr %state696 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %state696, align 1
  %conv697 = zext i8 %234 to i32
  %call698 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name690, i32 noundef %228, i32 noundef %230, i32 noundef %conv695, i32 noundef %conv697) #11
  br label %if.end699

if.end699:                                        ; preds = %do.end688, %do.body678.if.end699_crit_edge
  %state702 = getelementptr i8, ptr %data, i32 9
  %235 = ptrtoint ptr %state702 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %state702, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool703 = icmp ne i8 %236, 0
  %mst = getelementptr inbounds %struct.nvkm_dp, ptr %outp.1, i32 0, i32 8, i32 1
  %frombool = zext i1 %tobool703 to i8
  %237 = ptrtoint ptr %mst to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %frombool, ptr %mst, align 4
  br label %cleanup812

sw.bb712:                                         ; preds = %sw.epilog
  %238 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %client, align 4
  %debug719 = getelementptr inbounds %struct.nvkm_client, ptr %239, i32 0, i32 3
  %240 = ptrtoint ptr %debug719 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %debug719, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %241)
  %cmp720 = icmp ugt i32 %241, 4
  br i1 %cmp720, label %do.end725, label %sw.bb712.land.lhs.true742_crit_edge

sw.bb712.land.lhs.true742_crit_edge:              ; preds = %sw.bb712
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true742

do.end725:                                        ; preds = %sw.bb712
  call void @__sanitizer_cov_trace_pc() #9
  %name727 = getelementptr inbounds %struct.nvkm_client, ptr %239, i32 0, i32 1
  %handle729 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %242 = ptrtoint ptr %handle729 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %handle729, align 8
  %oclass730 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %244 = ptrtoint ptr %oclass730 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %oclass730, align 4
  %call731 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name727, i32 noundef %243, i32 noundef %245, i32 noundef %size.addr.2) #11
  br label %land.lhs.true742

land.lhs.true742:                                 ; preds = %do.end725, %sw.bb712.land.lhs.true742_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size.addr.2)
  %cmp743 = icmp ugt i32 %size.addr.2, 7
  br i1 %cmp743, label %land.lhs.true750, label %land.lhs.true742.cleanup812_crit_edge

land.lhs.true742.cleanup812_crit_edge:            ; preds = %land.lhs.true742
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

land.lhs.true750:                                 ; preds = %land.lhs.true742
  %246 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %data.addr.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %cmp753 = icmp eq i8 %247, 0
  br i1 %cmp753, label %if.then755, label %land.lhs.true750.cleanup812_crit_edge

land.lhs.true750.cleanup812_crit_edge:            ; preds = %land.lhs.true750
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.then755:                                       ; preds = %land.lhs.true750
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size.addr.2)
  %tobool759.not = icmp eq i32 %size.addr.2, 8
  br i1 %tobool759.not, label %do.body766, label %if.then755.cleanup812_crit_edge

if.then755.cleanup812_crit_edge:                  ; preds = %if.then755
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

do.body766:                                       ; preds = %if.then755
  %248 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %client, align 4
  %debug770 = getelementptr inbounds %struct.nvkm_client, ptr %249, i32 0, i32 3
  %250 = ptrtoint ptr %debug770 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %debug770, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %251)
  %cmp771 = icmp ugt i32 %251, 4
  br i1 %cmp771, label %do.end776, label %do.body766.if.end789_crit_edge

do.body766.if.end789_crit_edge:                   ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end789

do.end776:                                        ; preds = %do.body766
  call void @__sanitizer_cov_trace_pc() #9
  %name778 = getelementptr inbounds %struct.nvkm_client, ptr %249, i32 0, i32 1
  %handle780 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %252 = ptrtoint ptr %handle780 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %handle780, align 8
  %oclass781 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %254 = ptrtoint ptr %oclass781 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %oclass781, align 4
  %256 = ptrtoint ptr %data.addr.2 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %data.addr.2, align 2
  %conv783 = zext i8 %257 to i32
  %start_slot = getelementptr i8, ptr %data, i32 10
  %258 = ptrtoint ptr %start_slot to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %start_slot, align 2
  %conv784 = zext i8 %259 to i32
  %num_slots = getelementptr i8, ptr %data, i32 11
  %260 = ptrtoint ptr %num_slots to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %num_slots, align 1
  %conv785 = zext i8 %261 to i32
  %pbn = getelementptr i8, ptr %data, i32 12
  %262 = ptrtoint ptr %pbn to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %pbn, align 2
  %conv786 = zext i16 %263 to i32
  %aligned_pbn = getelementptr i8, ptr %data, i32 14
  %264 = ptrtoint ptr %aligned_pbn to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %aligned_pbn, align 2
  %conv787 = zext i16 %265 to i32
  %call788 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name778, i32 noundef %253, i32 noundef %255, i32 noundef %conv783, i32 noundef %conv784, i32 noundef %conv785, i32 noundef %conv786, i32 noundef %conv787) #11
  br label %if.end789

if.end789:                                        ; preds = %do.end776, %do.body766.if.end789_crit_edge
  %ior792 = getelementptr inbounds %struct.nvkm_outp, ptr %outp.1, i32 0, i32 9
  %266 = ptrtoint ptr %ior792 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ior792, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %vcpi = getelementptr inbounds %struct.nvkm_ior_func, ptr %269, i32 0, i32 8, i32 5
  %270 = ptrtoint ptr %vcpi to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vcpi, align 4
  %tobool795.not = icmp eq ptr %271, null
  br i1 %tobool795.not, label %if.end789.cleanup812_crit_edge, label %if.end797

if.end789.cleanup812_crit_edge:                   ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup812

if.end797:                                        ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #9
  %start_slot803 = getelementptr i8, ptr %data, i32 10
  %272 = ptrtoint ptr %start_slot803 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %start_slot803, align 2
  %num_slots804 = getelementptr i8, ptr %data, i32 11
  %274 = ptrtoint ptr %num_slots804 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %num_slots804, align 1
  %pbn805 = getelementptr i8, ptr %data, i32 12
  %276 = ptrtoint ptr %pbn805 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %pbn805, align 2
  %aligned_pbn806 = getelementptr i8, ptr %data, i32 14
  %278 = ptrtoint ptr %aligned_pbn806 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %aligned_pbn806, align 2
  tail call void %271(ptr noundef %267, i32 noundef %hidx.0, i8 noundef zeroext %273, i8 noundef zeroext %275, i16 noundef zeroext %277, i16 noundef zeroext %279) #7
  br label %cleanup812

cleanup812:                                       ; preds = %if.end797, %if.end789.cleanup812_crit_edge, %if.then755.cleanup812_crit_edge, %land.lhs.true750.cleanup812_crit_edge, %land.lhs.true742.cleanup812_crit_edge, %if.end699, %if.then667.cleanup812_crit_edge, %land.lhs.true662.cleanup812_crit_edge, %land.lhs.true654.cleanup812_crit_edge, %if.end612, %if.then581.cleanup812_crit_edge, %land.lhs.true576.cleanup812_crit_edge, %land.lhs.true568.cleanup812_crit_edge, %if.then524, %if.end509.cleanup812_crit_edge, %if.end498.cleanup812_crit_edge, %if.else488.cleanup812_crit_edge, %if.end482.cleanup812_crit_edge, %lor.lhs.false.cleanup812_crit_edge, %if.end470.cleanup812_crit_edge, %land.lhs.true431.cleanup812_crit_edge, %land.lhs.true423.cleanup812_crit_edge, %if.end385, %if.end369, %if.end351.cleanup812_crit_edge, %if.end343.cleanup812_crit_edge, %land.lhs.true308.cleanup812_crit_edge, %land.lhs.true300.cleanup812_crit_edge, %if.end264, %if.end256.cleanup812_crit_edge, %if.end252.cleanup812_crit_edge, %if.then247.cleanup812_crit_edge, %if.then237.cleanup812_crit_edge, %land.lhs.true232.cleanup812_crit_edge, %land.lhs.true224.cleanup812_crit_edge, %sw.bb213, %if.then206, %if.then201.cleanup812_crit_edge, %if.then191.cleanup812_crit_edge, %land.lhs.true186.cleanup812_crit_edge, %land.lhs.true178.cleanup812_crit_edge, %sw.epilog.cleanup812_crit_edge, %sw.bb, %for.end.cleanup812_crit_edge, %for.inc.cleanup812_crit_edge, %if.then127.cleanup812_crit_edge, %if.end121.cleanup812_crit_edge, %land.lhs.true66.cleanup812_crit_edge, %land.lhs.true.cleanup812_crit_edge, %entry.cleanup812_crit_edge
  %retval.6 = phi i32 [ %call164, %sw.bb ], [ 0, %sw.bb213 ], [ -22, %entry.cleanup812_crit_edge ], [ -6, %if.end121.cleanup812_crit_edge ], [ -6, %for.end.cleanup812_crit_edge ], [ 0, %if.then206 ], [ %call203, %if.then201.cleanup812_crit_edge ], [ 0, %if.end264 ], [ -22, %if.then247.cleanup812_crit_edge ], [ %call253, %if.end252.cleanup812_crit_edge ], [ %call260, %if.end256.cleanup812_crit_edge ], [ -7, %if.end343.cleanup812_crit_edge ], [ -19, %if.end351.cleanup812_crit_edge ], [ 0, %if.end385 ], [ 0, %if.end369 ], [ -22, %lor.lhs.false.cleanup812_crit_edge ], [ -22, %if.end470.cleanup812_crit_edge ], [ -22, %if.end482.cleanup812_crit_edge ], [ -7, %if.else488.cleanup812_crit_edge ], [ -19, %if.end498.cleanup812_crit_edge ], [ 0, %if.then524 ], [ 0, %if.end509.cleanup812_crit_edge ], [ 0, %if.end612 ], [ 0, %if.end699 ], [ 0, %if.end797 ], [ -19, %if.end789.cleanup812_crit_edge ], [ -22, %sw.epilog.cleanup812_crit_edge ], [ -38, %land.lhs.true66.cleanup812_crit_edge ], [ -38, %land.lhs.true.cleanup812_crit_edge ], [ -38, %land.lhs.true178.cleanup812_crit_edge ], [ -38, %land.lhs.true186.cleanup812_crit_edge ], [ -7, %if.then191.cleanup812_crit_edge ], [ -38, %land.lhs.true224.cleanup812_crit_edge ], [ -38, %land.lhs.true232.cleanup812_crit_edge ], [ -7, %if.then237.cleanup812_crit_edge ], [ -38, %land.lhs.true308.cleanup812_crit_edge ], [ -38, %land.lhs.true300.cleanup812_crit_edge ], [ -38, %land.lhs.true431.cleanup812_crit_edge ], [ -38, %land.lhs.true423.cleanup812_crit_edge ], [ -38, %land.lhs.true568.cleanup812_crit_edge ], [ -38, %land.lhs.true576.cleanup812_crit_edge ], [ -7, %if.then581.cleanup812_crit_edge ], [ -38, %land.lhs.true654.cleanup812_crit_edge ], [ -38, %land.lhs.true662.cleanup812_crit_edge ], [ -7, %if.then667.cleanup812_crit_edge ], [ -38, %land.lhs.true742.cleanup812_crit_edge ], [ -38, %land.lhs.true750.cleanup812_crit_edge ], [ -7, %if.then755.cleanup812_crit_edge ], [ -6, %if.then127.cleanup812_crit_edge ], [ -6, %for.inc.cleanup812_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_disp_ntfy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv50_disp_root_child_get_(ptr nocapture noundef readonly %object, i32 noundef %index, ptr nocapture noundef writeonly %sclass) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ctor = getelementptr %struct.nv50_disp_root_func, ptr %1, i32 0, i32 1, i32 %index, i32 1
  %2 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctor, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.nv50_disp_root_func, ptr %1, i32 0, i32 1, i32 %index
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %base, ptr %arrayidx, i32 20)
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %user6 = getelementptr inbounds %struct.nv50_disp_root_func, ptr %6, i32 0, i32 1
  %add.ptr7 = getelementptr %struct.nv50_disp_user, ptr %user6, i32 %index
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %sclass, i32 0, i32 2
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr7, ptr %priv, align 8
  %8 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nv50_disp_root_child_new_, ptr %sclass, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_head_mthd_scanoutpos(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_acquire(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_outp_release(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_disp_root_child_new_(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %disp1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %disp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disp1, align 4
  %priv = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 2
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %ctor = getelementptr inbounds %struct.nv50_disp_user, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctor, align 4
  %call = tail call i32 %7(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %3, ptr noundef %pobject) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_curs_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_oimm_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_base_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_core_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_ovly_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @nv50_disp_root_oclass, !1, !"nv50_disp_root_oclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 355, i32 1}
!2 = !{ptr @nv50_disp_root_, !3, !"nv50_disp_root_", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 309, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 53, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv50_disp_root_mthd_._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv50_disp_root_mthd_._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 55, i32 3}
!12 = !{ptr @nv50_disp_root_mthd_._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nv50_disp_root_mthd_._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 61, i32 3}
!16 = !{ptr @nv50_disp_root_mthd_._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nv50_disp_root_mthd_._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 142, i32 3}
!20 = !{ptr @nv50_disp_root_mthd_._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @nv50_disp_root_mthd_._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 144, i32 4}
!24 = !{ptr @nv50_disp_root_mthd_._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @nv50_disp_root_mthd_._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 176, i32 3}
!28 = !{ptr @nv50_disp_root_mthd_._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nv50_disp_root_mthd_._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 178, i32 4}
!32 = !{ptr @nv50_disp_root_mthd_._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nv50_disp_root_mthd_._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 218, i32 3}
!36 = !{ptr @nv50_disp_root_mthd_._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nv50_disp_root_mthd_._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 220, i32 4}
!40 = !{ptr @nv50_disp_root_mthd_._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nv50_disp_root_mthd_._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 235, i32 3}
!44 = !{ptr @nv50_disp_root_mthd_._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nv50_disp_root_mthd_._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 237, i32 4}
!48 = !{ptr @nv50_disp_root_mthd_._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nv50_disp_root_mthd_._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 250, i32 3}
!52 = !{ptr @nv50_disp_root_mthd_._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nv50_disp_root_mthd_._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 252, i32 4}
!56 = !{ptr @nv50_disp_root_mthd_._entry.36, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nv50_disp_root_mthd_._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @nv50_disp_root, !59, !"nv50_disp_root", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv50.c", i32 335, i32 1}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i16 0, i16 17}
