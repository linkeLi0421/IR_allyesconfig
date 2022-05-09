; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.143 = type { i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvif_ioctl_sclass_v0 = type { i8, i8, [6 x i8], [0 x %struct.nvif_ioctl_sclass_oclass_v0] }
%struct.nvif_ioctl_sclass_oclass_v0 = type { i32, i16, i16 }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }
%struct.nvif_ioctl_mthd_v0 = type { i8, i8, [6 x i8], [0 x i8] }
%union.anon.150 = type { i32 }
%struct.nvif_ioctl_rd_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvif_ioctl_wr_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvif_ioctl_map_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i8] }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_get_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }

@nvkm_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: size %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvkm_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/ioctl.c\00", [54 x i8] zeroinitializer }, align 32
@nvkm_ioctl._entry_ptr = internal global ptr @nvkm_ioctl._entry, section ".printk_index", align 4
@nvkm_ioctl._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: vers %d type %02x object %016llx owner %02x\0A\00", [51 x i8] zeroinitializer }, align 32
@nvkm_ioctl._entry_ptr.5 = internal global ptr @nvkm_ioctl._entry.3, section ".printk_index", align 4
@nvkm_ioctl._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: return %d\0A\00", [53 x i8] zeroinitializer }, align 32
@nvkm_ioctl._entry_ptr.8 = internal global ptr @nvkm_ioctl._entry.6, section ".printk_index", align 4
@nvkm_ioctl_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: object not found\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_ioctl_path\00", [16 x i8] zeroinitializer }, align 32
@nvkm_ioctl_path._entry_ptr = internal global ptr @nvkm_ioctl_path._entry, section ".printk_index", align 4
@nvkm_ioctl_path._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: route != owner\0A\00", [48 x i8] zeroinitializer }, align 32
@nvkm_ioctl_path._entry_ptr.13 = internal global ptr @nvkm_ioctl_path._entry.11, section ".printk_index", align 4
@nvkm_ioctl_v0 = internal constant { [13 x %struct.anon.143], [56 x i8] } { [13 x %struct.anon.143] [%struct.anon.143 { i32 0, ptr @nvkm_ioctl_nop }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_sclass }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_new }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_del }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_mthd }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_rd }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_wr }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_map }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_unmap }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_ntfy_new }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_ntfy_del }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_ntfy_get }, %struct.anon.143 { i32 0, ptr @nvkm_ioctl_ntfy_put }], [56 x i8] zeroinitializer }, align 32
@nvkm_ioctl_nop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: nop size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_ioctl_nop\00", [17 x i8] zeroinitializer }, align 32
@nvkm_ioctl_nop._entry_ptr = internal global ptr @nvkm_ioctl_nop._entry, section ".printk_index", align 4
@nvkm_ioctl_nop._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: nop vers %lld\0A\00", [49 x i8] zeroinitializer }, align 32
@nvkm_ioctl_nop._entry_ptr.18 = internal global ptr @nvkm_ioctl_nop._entry.16, section ".printk_index", align 4
@nvkm_ioctl_sclass._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: sclass size %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_ioctl_sclass\00", [46 x i8] zeroinitializer }, align 32
@nvkm_ioctl_sclass._entry_ptr = internal global ptr @nvkm_ioctl_sclass._entry, section ".printk_index", align 4
@nvkm_ioctl_sclass._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: sclass vers %d count %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nvkm_ioctl_sclass._entry_ptr.23 = internal global ptr @nvkm_ioctl_sclass._entry.21, section ".printk_index", align 4
@nvkm_ioctl_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: new size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_ioctl_new\00", [17 x i8] zeroinitializer }, align 32
@nvkm_ioctl_new._entry_ptr = internal global ptr @nvkm_ioctl_new._entry, section ".printk_index", align 4
@nvkm_ioctl_new._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: new vers %d handle %08x class %08x route %02x token %llx object %016llx\0A\00", [55 x i8] zeroinitializer }, align 32
@nvkm_ioctl_new._entry_ptr.28 = internal global ptr @nvkm_ioctl_new._entry.26, section ".printk_index", align 4
@nvkm_ioctl_new._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: cannot have children\0A\00", [42 x i8] zeroinitializer }, align 32
@nvkm_ioctl_new._entry_ptr.31 = internal global ptr @nvkm_ioctl_new._entry.29, section ".printk_index", align 4
@nvkm_ioctl_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: delete size %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_ioctl_del\00", [17 x i8] zeroinitializer }, align 32
@nvkm_ioctl_del._entry_ptr = internal global ptr @nvkm_ioctl_del._entry, section ".printk_index", align 4
@nvkm_ioctl_del._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: delete\0A\00", [56 x i8] zeroinitializer }, align 32
@nvkm_ioctl_del._entry_ptr.36 = internal global ptr @nvkm_ioctl_del._entry.34, section ".printk_index", align 4
@nvkm_ioctl_mthd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: mthd size %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_ioctl_mthd\00", [16 x i8] zeroinitializer }, align 32
@nvkm_ioctl_mthd._entry_ptr = internal global ptr @nvkm_ioctl_mthd._entry, section ".printk_index", align 4
@nvkm_ioctl_mthd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: mthd vers %d mthd %02x\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_ioctl_mthd._entry_ptr.41 = internal global ptr @nvkm_ioctl_mthd._entry.39, section ".printk_index", align 4
@nvkm_ioctl_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: rd size %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_ioctl_rd\00", [18 x i8] zeroinitializer }, align 32
@nvkm_ioctl_rd._entry_ptr = internal global ptr @nvkm_ioctl_rd._entry, section ".printk_index", align 4
@nvkm_ioctl_rd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: rd vers %d size %d addr %016llx\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_ioctl_rd._entry_ptr.46 = internal global ptr @nvkm_ioctl_rd._entry.44, section ".printk_index", align 4
@nvkm_ioctl_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: wr size %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvkm_ioctl_wr\00", [18 x i8] zeroinitializer }, align 32
@nvkm_ioctl_wr._entry_ptr = internal global ptr @nvkm_ioctl_wr._entry, section ".printk_index", align 4
@nvkm_ioctl_wr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: wr vers %d size %d addr %016llx data %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@nvkm_ioctl_wr._entry_ptr.51 = internal global ptr @nvkm_ioctl_wr._entry.49, section ".printk_index", align 4
@nvkm_ioctl_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: map size %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_ioctl_map\00", [17 x i8] zeroinitializer }, align 32
@nvkm_ioctl_map._entry_ptr = internal global ptr @nvkm_ioctl_map._entry, section ".printk_index", align 4
@nvkm_ioctl_map._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: map vers %d\0A\00", [51 x i8] zeroinitializer }, align 32
@nvkm_ioctl_map._entry_ptr.56 = internal global ptr @nvkm_ioctl_map._entry.54, section ".printk_index", align 4
@nvkm_ioctl_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: unmap size %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_ioctl_unmap\00", [47 x i8] zeroinitializer }, align 32
@nvkm_ioctl_unmap._entry_ptr = internal global ptr @nvkm_ioctl_unmap._entry, section ".printk_index", align 4
@nvkm_ioctl_unmap._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: unmap\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_ioctl_unmap._entry_ptr.61 = internal global ptr @nvkm_ioctl_unmap._entry.59, section ".printk_index", align 4
@nvkm_ioctl_ntfy_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy new size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_ioctl_ntfy_new\00", [44 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_new._entry_ptr = internal global ptr @nvkm_ioctl_ntfy_new._entry, section ".printk_index", align 4
@nvkm_ioctl_ntfy_new._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy new vers %d event %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_new._entry_ptr.66 = internal global ptr @nvkm_ioctl_ntfy_new._entry.64, section ".printk_index", align 4
@nvkm_ioctl_ntfy_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy del size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_ioctl_ntfy_del\00", [44 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_del._entry_ptr = internal global ptr @nvkm_ioctl_ntfy_del._entry, section ".printk_index", align 4
@nvkm_ioctl_ntfy_del._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy del vers %d index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_del._entry_ptr.71 = internal global ptr @nvkm_ioctl_ntfy_del._entry.69, section ".printk_index", align 4
@nvkm_ioctl_ntfy_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy get size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_ioctl_ntfy_get\00", [44 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_get._entry_ptr = internal global ptr @nvkm_ioctl_ntfy_get._entry, section ".printk_index", align 4
@nvkm_ioctl_ntfy_get._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy get vers %d index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_get._entry_ptr.76 = internal global ptr @nvkm_ioctl_ntfy_get._entry.74, section ".printk_index", align 4
@nvkm_ioctl_ntfy_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy put size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_ioctl_ntfy_put\00", [44 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_put._entry_ptr = internal global ptr @nvkm_ioctl_ntfy_put._entry, section ".printk_index", align 4
@nvkm_ioctl_ntfy_put._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy put vers %d index %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nvkm_ioctl_ntfy_put._entry_ptr.81 = internal global ptr @nvkm_ioctl_ntfy_put._entry.79, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 437, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 440, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 450, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 409, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 414, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"nvkm_ioctl_v0\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 384, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 40, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 42, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 59, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 61, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 93, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 95, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 103, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 154, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 156, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 173, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 175, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 198, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 200, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 233, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 235, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 263, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 265, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 287, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 289, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 306, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 308, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 332, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 334, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 351, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 353, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 370, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [45 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 372, i32 3 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @nvkm_ioctl._entry, ptr @nvkm_ioctl._entry.3, ptr @nvkm_ioctl._entry.6, ptr @nvkm_ioctl._entry_ptr, ptr @nvkm_ioctl._entry_ptr.5, ptr @nvkm_ioctl._entry_ptr.8, ptr @nvkm_ioctl_del._entry, ptr @nvkm_ioctl_del._entry.34, ptr @nvkm_ioctl_del._entry_ptr, ptr @nvkm_ioctl_del._entry_ptr.36, ptr @nvkm_ioctl_map._entry, ptr @nvkm_ioctl_map._entry.54, ptr @nvkm_ioctl_map._entry_ptr, ptr @nvkm_ioctl_map._entry_ptr.56, ptr @nvkm_ioctl_mthd._entry, ptr @nvkm_ioctl_mthd._entry.39, ptr @nvkm_ioctl_mthd._entry_ptr, ptr @nvkm_ioctl_mthd._entry_ptr.41, ptr @nvkm_ioctl_new._entry, ptr @nvkm_ioctl_new._entry.26, ptr @nvkm_ioctl_new._entry.29, ptr @nvkm_ioctl_new._entry_ptr, ptr @nvkm_ioctl_new._entry_ptr.28, ptr @nvkm_ioctl_new._entry_ptr.31, ptr @nvkm_ioctl_nop._entry, ptr @nvkm_ioctl_nop._entry.16, ptr @nvkm_ioctl_nop._entry_ptr, ptr @nvkm_ioctl_nop._entry_ptr.18, ptr @nvkm_ioctl_ntfy_del._entry, ptr @nvkm_ioctl_ntfy_del._entry.69, ptr @nvkm_ioctl_ntfy_del._entry_ptr, ptr @nvkm_ioctl_ntfy_del._entry_ptr.71, ptr @nvkm_ioctl_ntfy_get._entry, ptr @nvkm_ioctl_ntfy_get._entry.74, ptr @nvkm_ioctl_ntfy_get._entry_ptr, ptr @nvkm_ioctl_ntfy_get._entry_ptr.76, ptr @nvkm_ioctl_ntfy_new._entry, ptr @nvkm_ioctl_ntfy_new._entry.64, ptr @nvkm_ioctl_ntfy_new._entry_ptr, ptr @nvkm_ioctl_ntfy_new._entry_ptr.66, ptr @nvkm_ioctl_ntfy_put._entry, ptr @nvkm_ioctl_ntfy_put._entry.79, ptr @nvkm_ioctl_ntfy_put._entry_ptr, ptr @nvkm_ioctl_ntfy_put._entry_ptr.81, ptr @nvkm_ioctl_path._entry, ptr @nvkm_ioctl_path._entry.11, ptr @nvkm_ioctl_path._entry_ptr, ptr @nvkm_ioctl_path._entry_ptr.13, ptr @nvkm_ioctl_rd._entry, ptr @nvkm_ioctl_rd._entry.44, ptr @nvkm_ioctl_rd._entry_ptr, ptr @nvkm_ioctl_rd._entry_ptr.46, ptr @nvkm_ioctl_sclass._entry, ptr @nvkm_ioctl_sclass._entry.21, ptr @nvkm_ioctl_sclass._entry_ptr, ptr @nvkm_ioctl_sclass._entry_ptr.23, ptr @nvkm_ioctl_unmap._entry, ptr @nvkm_ioctl_unmap._entry.59, ptr @nvkm_ioctl_unmap._entry_ptr, ptr @nvkm_ioctl_unmap._entry_ptr.61, ptr @nvkm_ioctl_wr._entry, ptr @nvkm_ioctl_wr._entry.49, ptr @nvkm_ioctl_wr._entry_ptr, ptr @nvkm_ioctl_wr._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @nvkm_ioctl_v0, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_path._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_v0 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_nop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_nop._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_sclass._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_sclass._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_new._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_new._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_del._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_mthd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_mthd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_rd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_wr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_map._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_unmap._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_new._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_del._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_get._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ioctl_ntfy_put._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ioctl(ptr noundef %client, ptr noundef %data, i32 noundef %size, ptr noundef writeonly %hack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client2 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client2, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %size)
  %cmp7 = icmp ugt i32 %size, 23
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.do.body57_crit_edge

land.lhs.true.do.body57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

land.lhs.true11:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14 = icmp eq i8 %9, 0
  br i1 %cmp14, label %do.body23, label %land.lhs.true11.do.body57_crit_edge

land.lhs.true11.do.body57_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

do.body23:                                        ; preds = %land.lhs.true11
  %add.ptr = getelementptr i8, ptr %data, i32 24
  %sub = add i32 %size, -24
  %10 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client2, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp28 = icmp ugt i32 %13, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end45_crit_edge

do.body23.if.end45_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 4
  %14 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 3
  %16 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass38, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 8
  %conv40 = zext i8 %19 to i32
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 1
  %conv41 = zext i8 %21 to i32
  %object42 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 6
  %22 = ptrtoint ptr %object42 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %object42, align 8
  %owner = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %owner to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %owner, align 2
  %conv43 = zext i8 %25 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35, i32 noundef %15, i32 noundef %17, i32 noundef %conv40, i32 noundef %conv41, i64 noundef %23, i32 noundef %conv43) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end33, %do.body23.if.end45_crit_edge
  %object48 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %object48 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %object48, align 8
  %type49 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %type49 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type49, align 1
  %conv50 = zext i8 %29 to i32
  %owner51 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %owner51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %owner51, align 2
  %route = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 4
  %token = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 5
  %call.i = tail call ptr @nvkm_object_search(ptr noundef %client, i64 noundef %27, ptr noundef null) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %if.end45
  %32 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client2, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i = icmp ugt i32 %35, 4
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end.i_crit_edge

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %33, i32 0, i32 1
  %handle6.i = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 4
  %36 = ptrtoint ptr %handle6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle6.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 3
  %38 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oclass.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name.i, i32 noundef %37, i32 noundef %39) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.body.i.if.end.i_crit_edge
  %40 = ptrtoint ptr %call.i to i32
  br label %if.end53

if.end11.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp12.not.i = icmp eq i8 %31, -1
  br i1 %cmp12.not.i, label %if.end11.i.if.end41.i_crit_edge, label %land.lhs.true.i

if.end11.i.if.end41.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %route15.i = getelementptr inbounds %struct.nvkm_object, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %route15.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %route15.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %31)
  %cmp17.not.i = icmp eq i8 %42, %31
  br i1 %cmp17.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %do.body20.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

do.body20.i:                                      ; preds = %land.lhs.true.i
  %43 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client2, align 4
  %debug25.i = getelementptr inbounds %struct.nvkm_client, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %debug25.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %debug25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp26.i = icmp ugt i32 %46, 4
  br i1 %cmp26.i, label %do.end31.i, label %do.body20.i.do.body57_crit_edge

do.body20.i.do.body57_crit_edge:                  ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

do.end31.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #6
  %name33.i = getelementptr inbounds %struct.nvkm_client, ptr %44, i32 0, i32 1
  %handle35.i = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 4
  %47 = ptrtoint ptr %handle35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle35.i, align 8
  %oclass36.i = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 3
  %49 = ptrtoint ptr %oclass36.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oclass36.i, align 4
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name33.i, i32 noundef %48, i32 noundef %50) #7
  br label %do.body57

if.end41.i:                                       ; preds = %land.lhs.true.i.if.end41.i_crit_edge, %if.end11.i.if.end41.i_crit_edge
  %route42.i = getelementptr inbounds %struct.nvkm_object, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %route42.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %route42.i, align 4
  %53 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %route, align 1
  %token43.i = getelementptr inbounds %struct.nvkm_object, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %token43.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %token43.i, align 8
  %56 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %token, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %29)
  %cmp44.i = icmp ult i8 %29, 13
  br i1 %cmp44.i, label %if.then46.i, label %if.end41.i.do.body57_crit_edge

if.end41.i.do.body57_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

if.then46.i:                                      ; preds = %if.end41.i
  %arrayidx.i = getelementptr [13 x %struct.anon.143], ptr @nvkm_ioctl_v0, i32 0, i32 %conv50
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp47.i = icmp eq i32 %58, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.then46.i.do.body57_crit_edge

if.then46.i.do.body57_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

if.then49.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #6
  %func.i = getelementptr [13 x %struct.anon.143], ptr @nvkm_ioctl_v0, i32 0, i32 %conv50, i32 1
  %59 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %func.i, align 4
  %call51.i = tail call i32 %60(ptr noundef %client, ptr noundef %call.i, ptr noundef %add.ptr, i32 noundef %sub) #4
  br label %if.end53

if.end53:                                         ; preds = %if.then49.i, %if.end.i
  %ret.0 = phi i32 [ %40, %if.end.i ], [ %call51.i, %if.then49.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp54.not = icmp eq i32 %ret.0, 1
  br i1 %cmp54.not, label %if.end53.if.end82_crit_edge, label %if.end53.do.body57_crit_edge

if.end53.do.body57_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body57

if.end53.if.end82_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

do.body57:                                        ; preds = %if.end53.do.body57_crit_edge, %if.then46.i.do.body57_crit_edge, %if.end41.i.do.body57_crit_edge, %do.end31.i, %do.body20.i.do.body57_crit_edge, %land.lhs.true11.do.body57_crit_edge, %land.lhs.true.do.body57_crit_edge
  %ret.0126 = phi i32 [ %ret.0, %if.end53.do.body57_crit_edge ], [ -22, %if.end41.i.do.body57_crit_edge ], [ -22, %if.then46.i.do.body57_crit_edge ], [ -13, %do.body20.i.do.body57_crit_edge ], [ -13, %do.end31.i ], [ -38, %land.lhs.true11.do.body57_crit_edge ], [ -38, %land.lhs.true.do.body57_crit_edge ]
  %61 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client2, align 4
  %debug61 = getelementptr inbounds %struct.nvkm_client, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %debug61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp62 = icmp ugt i32 %64, 4
  br i1 %cmp62, label %do.end67, label %do.body57.if.end74_crit_edge

do.body57.if.end74_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

do.end67:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  %name69 = getelementptr inbounds %struct.nvkm_client, ptr %62, i32 0, i32 1
  %handle71 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 4
  %65 = ptrtoint ptr %handle71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %handle71, align 8
  %oclass72 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 3
  %67 = ptrtoint ptr %oclass72 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %oclass72, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name69, i32 noundef %66, i32 noundef %68, i32 noundef %ret.0126) #7
  br label %if.end74

if.end74:                                         ; preds = %do.end67, %do.body57.if.end74_crit_edge
  %tobool77.not = icmp eq ptr %hack, null
  br i1 %tobool77.not, label %if.end74.if.end82_crit_edge, label %if.then78

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  %data79 = getelementptr inbounds %struct.nvkm_client, ptr %client, i32 0, i32 6
  %69 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data79, align 8
  %71 = ptrtoint ptr %hack to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %hack, align 4
  store ptr null, ptr %data79, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end74.if.end82_crit_edge, %if.end53.if.end82_crit_edge
  %ret.0127 = phi i32 [ %ret.0126, %if.end74.if.end82_crit_edge ], [ %ret.0126, %if.then78 ], [ 1, %if.end53.if.end82_crit_edge ]
  ret i32 %ret.0127
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_nop(ptr nocapture noundef readnone %client, ptr nocapture noundef readonly %object, ptr nocapture noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp13 = icmp eq i64 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.if.end44_crit_edge

land.lhs.true10.if.end44_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %do.body22, label %if.then15.if.end44_crit_edge

if.then15.if.end44_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

do.body22:                                        ; preds = %if.then15
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end40_crit_edge

do.body22.if.end40_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data, align 8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i64 noundef %19) #7
  br label %if.end40

if.end40:                                         ; preds = %do.end32, %do.body22.if.end40_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 256, ptr %data, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end40, %if.then15.if.end44_crit_edge, %land.lhs.true10.if.end44_crit_edge, %land.lhs.true.if.end44_crit_edge
  %_ret.069 = phi i32 [ 0, %if.end40 ], [ -38, %land.lhs.true.if.end44_crit_edge ], [ -38, %land.lhs.true10.if.end44_crit_edge ], [ -7, %if.then15.if.end44_crit_edge ]
  ret i32 %_ret.069
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_sclass(ptr noundef %client, ptr noundef %object, ptr nocapture noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %oclass = alloca %struct.nvkm_oclass, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %oclass) #4
  %0 = call ptr @memset(ptr %oclass, i32 0, i32 72)
  %client2 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %1 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client2, align 8
  %client3 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %2 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client3, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass5 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %8 = ptrtoint ptr %oclass5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass5, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp9 = icmp ugt i32 %size, 7
  br i1 %cmp9, label %land.lhs.true13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true13:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp16 = icmp eq i8 %11, 0
  br i1 %cmp16, label %do.body25, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body25:                                        ; preds = %land.lhs.true13
  %sub = add i32 %size, -8
  %12 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client3, align 4
  %debug29 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp30 = icmp ugt i32 %15, 4
  br i1 %cmp30, label %do.end35, label %do.body25.if.end45_crit_edge

do.body25.if.end45_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

do.end35:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  %name37 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle39 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %16 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle39, align 8
  %oclass40 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %18 = ptrtoint ptr %oclass40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass40, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 4
  %conv42 = zext i8 %21 to i32
  %count = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %count, align 1
  %conv43 = zext i8 %23 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name37, i32 noundef %17, i32 noundef %19, i32 noundef %conv42, i32 noundef %conv43) #7
  br label %if.end45

if.end45:                                         ; preds = %do.end35, %do.body25.if.end45_crit_edge
  %count48 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %count48 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %count48, align 1
  %conv49 = zext i8 %25 to i32
  %mul = shl nuw nsw i32 %conv49, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp50.not = icmp eq i32 %sub, %mul
  br i1 %cmp50.not, label %while.cond.preheader, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end45
  %26 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %object, align 8
  %sclass122 = getelementptr inbounds %struct.nvkm_object_func, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %sclass122 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sclass122, align 4
  %tobool54.not123 = icmp eq ptr %29, null
  br i1 %tobool54.not123, label %while.cond.preheader.while.end_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %oclass65 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %maxver = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end78.land.rhs_crit_edge, %land.rhs.lr.ph
  %30 = phi ptr [ %29, %land.rhs.lr.ph ], [ %45, %if.end78.land.rhs_crit_edge ]
  %i.0124 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end78.land.rhs_crit_edge ]
  %call57 = call i32 %30(ptr noundef %object, i32 noundef %i.0124, ptr noundef nonnull %oclass) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, -1
  br i1 %cmp58, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %31 = ptrtoint ptr %count48 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %count48, align 1
  %conv61 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %conv61)
  %cmp62 = icmp slt i32 %i.0124, %conv61
  br i1 %cmp62, label %if.then64, label %while.body.if.end78_crit_edge

while.body.if.end78_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then64:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %oclass65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oclass65, align 4
  %arrayidx = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %data, i32 0, i32 3, i32 %i.0124
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base, align 4
  %conv69 = trunc i32 %37 to i16
  %minver72 = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %data, i32 0, i32 3, i32 %i.0124, i32 1
  %38 = ptrtoint ptr %minver72 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv69, ptr %minver72, align 4
  %39 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxver, align 8
  %conv74 = trunc i32 %40 to i16
  %maxver77 = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %data, i32 0, i32 3, i32 %i.0124, i32 2
  %41 = ptrtoint ptr %maxver77 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv74, ptr %maxver77, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.then64, %while.body.if.end78_crit_edge
  %inc = add i32 %i.0124, 1
  %42 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %object, align 8
  %sclass = getelementptr inbounds %struct.nvkm_object_func, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sclass, align 4
  %tobool54.not = icmp eq ptr %45, null
  br i1 %tobool54.not, label %if.end78.while.end_crit_edge, label %if.end78.land.rhs_crit_edge

if.end78.land.rhs_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end78.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %if.end78.while.end_crit_edge ], [ %i.0124, %land.rhs.while.end_crit_edge ]
  %conv79 = trunc i32 %i.0.lcssa to i8
  %46 = ptrtoint ptr %count48 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv79, ptr %count48, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end45.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end45.cleanup_crit_edge ], [ 0, %while.end ], [ -38, %land.lhs.true13.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %oclass) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_new(ptr noundef %client, ptr noundef %parent, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %object = alloca ptr, align 4
  %oclass = alloca %struct.nvkm_oclass, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %object) #4
  %0 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %object, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %oclass) #4
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 8
  %oclass3 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 3
  %7 = ptrtoint ptr %oclass3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %6, i32 noundef %8, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp7 = icmp ugt i32 %size, 31
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp14 = icmp eq i8 %10, 0
  br i1 %cmp14, label %do.body23, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body23:                                        ; preds = %land.lhs.true11
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %sub = add i32 %size, -32
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp28 = icmp ugt i32 %14, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end46_crit_edge

do.body23.if.end46_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #6
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 4
  %15 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 3
  %17 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass38, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 8
  %conv40 = zext i8 %20 to i32
  %handle41 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 5
  %21 = ptrtoint ptr %handle41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handle41, align 8
  %oclass42 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 6
  %23 = ptrtoint ptr %oclass42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oclass42, align 4
  %route = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %route, align 1
  %conv43 = zext i8 %26 to i32
  %token = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %token, align 8
  %object44 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %object44 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %object44, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name35, i32 noundef %16, i32 noundef %18, i32 noundef %conv40, i32 noundef %22, i32 noundef %24, i32 noundef %conv43, i64 noundef %28, i64 noundef %30) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end33, %do.body23.if.end46_crit_edge
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %sclass = getelementptr inbounds %struct.nvkm_object_func, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sclass, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %do.body52, label %do.body73.preheader

do.body73.preheader:                              ; preds = %if.end46
  %handle74 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 5
  %handle75 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 4
  %route76 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 2
  %route77 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 5
  %token78 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 3
  %token79 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 6
  %object80 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 4
  %object81 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 7
  %client82 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 8
  %parent83 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %oclass91 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %oclass92 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 6
  br label %do.body73

do.body52:                                        ; preds = %if.end46
  %35 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client1, align 4
  %debug56 = getelementptr inbounds %struct.nvkm_client, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %debug56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %debug56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp57 = icmp ugt i32 %38, 4
  br i1 %cmp57, label %do.end62, label %do.body52.cleanup_crit_edge

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end62:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  %name64 = getelementptr inbounds %struct.nvkm_client, ptr %36, i32 0, i32 1
  %handle66 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 4
  %39 = ptrtoint ptr %handle66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %handle66, align 8
  %oclass67 = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 3
  %41 = ptrtoint ptr %oclass67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %oclass67, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name64, i32 noundef %40, i32 noundef %42) #7
  br label %cleanup

do.body73:                                        ; preds = %do.cond90.do.body73_crit_edge, %do.body73.preheader
  %i.0 = phi i32 [ %inc, %do.cond90.do.body73_crit_edge ], [ 0, %do.body73.preheader ]
  %43 = call ptr @memset(ptr %oclass, i32 0, i32 72)
  %44 = ptrtoint ptr %handle74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle74, align 8
  %46 = ptrtoint ptr %handle75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %handle75, align 8
  %47 = ptrtoint ptr %route76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %route76, align 1
  %49 = ptrtoint ptr %route77 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %route77, align 4
  %50 = ptrtoint ptr %token78 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %token78, align 8
  %52 = ptrtoint ptr %token79 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %token79, align 8
  %53 = ptrtoint ptr %object80 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %object80, align 8
  %55 = ptrtoint ptr %object81 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %object81, align 8
  %56 = ptrtoint ptr %client82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %client, ptr %client82, align 8
  %57 = ptrtoint ptr %parent83 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %parent, ptr %parent83, align 4
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent, align 8
  %sclass85 = getelementptr inbounds %struct.nvkm_object_func, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %sclass85 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sclass85, align 4
  %call86 = call i32 %61(ptr noundef %parent, i32 noundef %i.0, ptr noundef nonnull %oclass) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.cond90, label %do.body73.cleanup_crit_edge

do.body73.cleanup_crit_edge:                      ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.cond90:                                        ; preds = %do.body73
  %inc = add i32 %i.0, 1
  %62 = ptrtoint ptr %oclass91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oclass91, align 4
  %64 = ptrtoint ptr %oclass92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %oclass92, align 4
  %cmp93.not = icmp eq i32 %63, %65
  br i1 %cmp93.not, label %do.end95, label %do.cond90.do.body73_crit_edge

do.cond90.do.body73_crit_edge:                    ; preds = %do.cond90
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body73

do.end95:                                         ; preds = %do.cond90
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %66 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %engine, align 8
  %tobool96.not = icmp eq ptr %67, null
  br i1 %tobool96.not, label %do.end95.if.end107_crit_edge, label %if.then97

do.end95.if.end107_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then97:                                        ; preds = %do.end95
  %call99 = call ptr @nvkm_engine_ref(ptr noundef nonnull %67) #4
  %68 = ptrtoint ptr %engine to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call99, ptr %engine, align 8
  %cmp.i = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then103, label %if.then97.if.end107_crit_edge

if.then97.if.end107_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then103:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %call99 to i32
  br label %cleanup

if.end107:                                        ; preds = %if.then97.if.end107_crit_edge, %do.end95.if.end107_crit_edge
  %70 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %oclass, align 8
  %call108 = call i32 %71(ptr noundef nonnull %oclass, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %object) #4
  call void @nvkm_engine_unref(ptr noundef %engine) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp110 = icmp eq i32 %call108, 0
  br i1 %cmp110, label %if.then112, label %if.end107.if.end123_crit_edge

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end123

if.then112:                                       ; preds = %if.end107
  %72 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %object, align 4
  %call113 = call i32 @nvkm_object_init(ptr noundef %73) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.then112.if.end121_crit_edge

if.then112.if.end121_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then116:                                       ; preds = %if.then112
  %74 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %object, align 4
  %head = getelementptr inbounds %struct.nvkm_object, ptr %75, i32 0, i32 5
  %tree = getelementptr inbounds %struct.nvkm_object, ptr %parent, i32 0, i32 6
  %76 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tree, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %tree, ptr noundef %77) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then116.list_add.exit_crit_edge

if.then116.list_add.exit_crit_edge:               ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %head, ptr %prev1.i.i, align 4
  %79 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_object, ptr %75, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %tree, ptr %prev3.i.i, align 4
  %81 = ptrtoint ptr %tree to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %head, ptr %tree, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then116.list_add.exit_crit_edge
  %82 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %object, align 4
  %call117 = call zeroext i1 @nvkm_object_insert(ptr noundef %83) #4
  br i1 %call117, label %if.then118, label %list_add.exit.if.end121_crit_edge

list_add.exit.if.end121_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.then118:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %object, align 4
  %data119 = getelementptr inbounds %struct.nvkm_client, ptr %client, i32 0, i32 6
  %86 = ptrtoint ptr %data119 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %data119, align 8
  br label %cleanup

if.end121:                                        ; preds = %list_add.exit.if.end121_crit_edge, %if.then112.if.end121_crit_edge
  %ret.0 = phi i32 [ %call113, %if.then112.if.end121_crit_edge ], [ -17, %list_add.exit.if.end121_crit_edge ]
  %87 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %object, align 4
  %call122 = call i32 @nvkm_object_fini(ptr noundef %88, i1 noundef zeroext false) #4
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %if.end107.if.end123_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end121 ], [ %call108, %if.end107.if.end123_crit_edge ]
  call void @nvkm_object_del(ptr noundef nonnull %object) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then118, %if.then103, %do.body73.cleanup_crit_edge, %do.end62, %do.body52.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %69, %if.then103 ], [ 0, %if.then118 ], [ %ret.1, %if.end123 ], [ -22, %do.end62 ], [ -22, %do.body52.cleanup_crit_edge ], [ -38, %land.lhs.true11.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ %call86, %do.body73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %oclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %object) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_del(ptr nocapture noundef readnone %client, ptr noundef %object, ptr nocapture noundef readnone %data, i32 noundef %size) #0 align 64 {
entry:
  %object.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %object, ptr %object.addr, align 4
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %7 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %6, i32 noundef %8, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp6 = icmp eq i32 %size, 0
  br i1 %cmp6, label %do.body11, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.body11:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %object.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %object.addr, align 4
  %client14 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %client14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client14, align 4
  %debug15 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp16 = icmp ugt i32 %14, 4
  br i1 %cmp16, label %do.end20, label %do.body11.if.end27_crit_edge

do.body11.if.end27_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.end20:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %name22 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %handle24 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 4
  %15 = ptrtoint ptr %handle24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle24, align 8
  %oclass25 = getelementptr inbounds %struct.nvkm_object, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %oclass25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name22, i32 noundef %16, i32 noundef %18) #7
  br label %if.end27

if.end27:                                         ; preds = %do.end20, %do.body11.if.end27_crit_edge
  %19 = ptrtoint ptr %object.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %object.addr, align 4
  %call30 = tail call i32 @nvkm_object_fini(ptr noundef %20, i1 noundef zeroext false) #4
  call void @nvkm_object_del(ptr noundef nonnull %object.addr) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %land.lhs.true.if.end31_crit_edge
  %spec.select44 = phi i32 [ 1, %if.end27 ], [ -38, %land.lhs.true.if.end31_crit_edge ]
  ret i32 %spec.select44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_mthd(ptr nocapture noundef readnone %client, ptr noundef %object, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %do.body22, label %land.lhs.true10.if.end48_crit_edge

land.lhs.true10.if.end48_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body22:                                        ; preds = %land.lhs.true10
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %sub = add i32 %size, -8
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end42_crit_edge

do.body22.if.end42_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv39 = zext i8 %19 to i32
  %method = getelementptr inbounds %struct.nvif_ioctl_mthd_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %method, align 1
  %conv40 = zext i8 %21 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i32 noundef %conv39, i32 noundef %conv40) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.body22.if.end42_crit_edge
  %method45 = getelementptr inbounds %struct.nvif_ioctl_mthd_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %method45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %method45, align 1
  %conv46 = zext i8 %23 to i32
  %call47 = tail call i32 @nvkm_object_mthd(ptr noundef %object, i32 noundef %conv46, ptr noundef %add.ptr, i32 noundef %sub) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %land.lhs.true10.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge
  %ret.0 = phi i32 [ %call47, %if.end42 ], [ -38, %land.lhs.true10.if.end48_crit_edge ], [ -38, %land.lhs.true.if.end48_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_rd(ptr nocapture noundef readnone %client, ptr noundef %object, ptr nocapture noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %v = alloca %union.anon.150, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #4
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !155
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %7 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %6, i32 noundef %8, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp6 = icmp ugt i32 %size, 15
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13 = icmp eq i8 %10, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.if.end61_crit_edge

land.lhs.true10.if.end61_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not = icmp eq i32 %size, 16
  br i1 %tobool.not, label %do.body22, label %if.then15.if.end61_crit_edge

if.then15.if.end61_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

do.body22:                                        ; preds = %if.then15
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp27 = icmp ugt i32 %14, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end43_crit_edge

do.body22.if.end43_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %15 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %17 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass37, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 8
  %conv39 = zext i8 %20 to i32
  %size40 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %size40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %size40, align 1
  %conv41 = zext i8 %22 to i32
  %addr = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr, align 8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name34, i32 noundef %16, i32 noundef %18, i32 noundef %conv39, i32 noundef %conv41, i64 noundef %24) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end32, %do.body22.if.end43_crit_edge
  %size46 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %size46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size46, align 1
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i8 %26, label %if.end43.if.end61_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb52
    i8 4, label %sw.bb57
  ]

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

sw.bb:                                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %addr48 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 4
  %28 = ptrtoint ptr %addr48 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %addr48, align 8
  %call49 = call i32 @nvkm_object_rd08(ptr noundef %object, i64 noundef %29, ptr noundef nonnull %v) #4
  %30 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %v, align 4
  %conv50 = zext i8 %31 to i32
  br label %if.end61.sink.split

sw.bb52:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %addr53 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 4
  %32 = ptrtoint ptr %addr53 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %addr53, align 8
  %call54 = call i32 @nvkm_object_rd16(ptr noundef %object, i64 noundef %33, ptr noundef nonnull %v) #4
  %34 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %v, align 4
  %conv55 = zext i16 %35 to i32
  br label %if.end61.sink.split

sw.bb57:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %addr58 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 4
  %36 = ptrtoint ptr %addr58 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %addr58, align 8
  %call59 = call i32 @nvkm_object_rd32(ptr noundef %object, i64 noundef %37, ptr noundef nonnull %v) #4
  %38 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %v, align 4
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %sw.bb57, %sw.bb52, %sw.bb
  %conv50.sink = phi i32 [ %conv50, %sw.bb ], [ %conv55, %sw.bb52 ], [ %39, %sw.bb57 ]
  %ret.0.ph = phi i32 [ %call49, %sw.bb ], [ %call54, %sw.bb52 ], [ %call59, %sw.bb57 ]
  %data51 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %data51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv50.sink, ptr %data51, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.end43.if.end61_crit_edge, %if.then15.if.end61_crit_edge, %land.lhs.true10.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge
  %ret.0 = phi i32 [ -22, %if.end43.if.end61_crit_edge ], [ -38, %land.lhs.true.if.end61_crit_edge ], [ -38, %land.lhs.true10.if.end61_crit_edge ], [ -7, %if.then15.if.end61_crit_edge ], [ %ret.0.ph, %if.end61.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_wr(ptr nocapture noundef readnone %client, ptr noundef %object, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %size)
  %cmp6 = icmp ugt i32 %size, 15
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %tobool.not = icmp eq i32 %size, 16
  br i1 %tobool.not, label %do.body22, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body22:                                        ; preds = %if.then15
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end44_crit_edge

do.body22.if.end44_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 8
  %conv39 = zext i8 %19 to i32
  %size40 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %size40 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %size40, align 1
  %conv41 = zext i8 %21 to i32
  %addr = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr, align 8
  %data42 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i32 noundef %conv39, i32 noundef %conv41, i64 noundef %23, i32 noundef %25) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end32, %do.body22.if.end44_crit_edge
  %size48 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %size48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %size48, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %27, label %if.end44.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb54
    i8 4, label %sw.bb59
  ]

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %addr50 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 4
  %29 = ptrtoint ptr %addr50 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %addr50, align 8
  %data51 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data51, align 4
  %conv52 = trunc i32 %32 to i8
  %call53 = tail call i32 @nvkm_object_wr08(ptr noundef %object, i64 noundef %30, i8 noundef zeroext %conv52) #4
  br label %cleanup

sw.bb54:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %addr55 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 4
  %33 = ptrtoint ptr %addr55 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %addr55, align 8
  %data56 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 3
  %35 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data56, align 4
  %conv57 = trunc i32 %36 to i16
  %call58 = tail call i32 @nvkm_object_wr16(ptr noundef %object, i64 noundef %34, i16 noundef zeroext %conv57) #4
  br label %cleanup

sw.bb59:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %addr60 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %addr60 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr60, align 8
  %data61 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %data61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data61, align 4
  %call62 = tail call i32 @nvkm_object_wr32(ptr noundef %object, i64 noundef %38, i32 noundef %40) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb59, %sw.bb54, %sw.bb, %if.end44.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %sw.bb59 ], [ %call58, %sw.bb54 ], [ %call53, %sw.bb ], [ -22, %if.end44.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true10.cleanup_crit_edge ], [ -7, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_map(ptr nocapture noundef readnone %client, ptr noundef %object, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !155
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %7 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %6, i32 noundef %8, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %size)
  %cmp6 = icmp ugt i32 %size, 23
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13 = icmp eq i8 %10, 0
  br i1 %cmp13, label %do.body22, label %land.lhs.true10.if.end52_crit_edge

land.lhs.true10.if.end52_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

do.body22:                                        ; preds = %land.lhs.true10
  %add.ptr = getelementptr i8, ptr %data, i32 24
  %sub = add i32 %size, -24
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp27 = icmp ugt i32 %14, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end41_crit_edge

do.body22.if.end41_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %15 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %17 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass37, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 8
  %conv39 = zext i8 %20 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name34, i32 noundef %16, i32 noundef %18, i32 noundef %conv39) #7
  br label %if.end41

if.end41:                                         ; preds = %do.end32, %do.body22.if.end41_crit_edge
  %handle44 = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %data, i32 0, i32 3
  %length = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %data, i32 0, i32 4
  %call45 = call i32 @nvkm_object_map(ptr noundef %object, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %type, ptr noundef %handle44, ptr noundef %length) #4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46 = icmp ne i32 %22, 0
  %type49 = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %data, i32 0, i32 1
  %. = zext i1 %cmp46 to i8
  %23 = ptrtoint ptr %type49 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %., ptr %type49, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end41, %land.lhs.true10.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge
  %ret.0 = phi i32 [ -38, %land.lhs.true10.if.end52_crit_edge ], [ -38, %land.lhs.true.if.end52_crit_edge ], [ %call45, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_unmap(ptr nocapture noundef readnone %client, ptr noundef %object, ptr nocapture noundef readnone %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp6 = icmp eq i32 %size, 0
  br i1 %cmp6, label %do.body11, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.body11:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client1, align 4
  %debug15 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %debug15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp16 = icmp ugt i32 %11, 4
  br i1 %cmp16, label %do.end20, label %do.body11.if.end27_crit_edge

do.body11.if.end27_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

do.end20:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  %name22 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %handle24 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %12 = ptrtoint ptr %handle24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle24, align 8
  %oclass25 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %14 = ptrtoint ptr %oclass25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oclass25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name22, i32 noundef %13, i32 noundef %15) #7
  br label %if.end27

if.end27:                                         ; preds = %do.end20, %do.body11.if.end27_crit_edge
  %call30 = tail call i32 @nvkm_object_unmap(ptr noundef %object) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end27, %land.lhs.true.if.end31_crit_edge
  %ret.0 = phi i32 [ -38, %land.lhs.true.if.end31_crit_edge ], [ %call30, %if.end27 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_new(ptr nocapture noundef readnone %client, ptr noundef %object, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  %event = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event) #4
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %event, align 4, !annotation !155
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ugt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %7 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %6, i32 noundef %8, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

land.lhs.true10:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp13 = icmp eq i8 %10, 0
  br i1 %cmp13, label %do.body22, label %land.lhs.true10.if.end59_crit_edge

land.lhs.true10.if.end59_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

do.body22:                                        ; preds = %land.lhs.true10
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %sub = add i32 %size, -8
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp27 = icmp ugt i32 %14, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end43_crit_edge

do.body22.if.end43_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %12, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %15 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %17 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass37, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %conv39 = zext i8 %20 to i32
  %event40 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %event40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %event40, align 1
  %conv41 = zext i8 %22 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name34, i32 noundef %16, i32 noundef %18, i32 noundef %conv39, i32 noundef %conv41) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end32, %do.body22.if.end43_crit_edge
  %event46 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %data, i32 0, i32 1
  %23 = ptrtoint ptr %event46 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %event46, align 1
  %conv47 = zext i8 %24 to i32
  %call48 = call i32 @nvkm_object_ntfy(ptr noundef %object, i32 noundef %conv47, ptr noundef nonnull %event) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end43.if.end59_crit_edge

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then51:                                        ; preds = %if.end43
  %25 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %event, align 4
  %call52 = call i32 @nvkm_client_notify_new(ptr noundef %object, ptr noundef %26, ptr noundef %add.ptr, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call52)
  %cmp53 = icmp sgt i32 %call52, -1
  br i1 %cmp53, label %if.then55, label %if.then51.if.end59_crit_edge

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %conv56 = trunc i32 %call52 to i8
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %data, i32 0, i32 2
  %27 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv56, ptr %index, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.then51.if.end59_crit_edge, %if.end43.if.end59_crit_edge, %land.lhs.true10.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge
  %ret.0 = phi i32 [ 0, %if.then55 ], [ %call52, %if.then51.if.end59_crit_edge ], [ %call48, %if.end43.if.end59_crit_edge ], [ -38, %land.lhs.true10.if.end59_crit_edge ], [ -38, %land.lhs.true.if.end59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_del(ptr noundef %client, ptr nocapture noundef readonly %object, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.if.end48_crit_edge

land.lhs.true10.if.end48_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %do.body22, label %if.then15.if.end48_crit_edge

if.then15.if.end48_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body22:                                        ; preds = %if.then15
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end42_crit_edge

do.body22.if.end42_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv39 = zext i8 %19 to i32
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index, align 1
  %conv40 = zext i8 %21 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i32 noundef %conv39, i32 noundef %conv40) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.body22.if.end42_crit_edge
  %index45 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %index45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index45, align 1
  %conv46 = zext i8 %23 to i32
  %call47 = tail call i32 @nvkm_client_notify_del(ptr noundef %client, i32 noundef %conv46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.then15.if.end48_crit_edge, %land.lhs.true10.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge
  %ret.0 = phi i32 [ %call47, %if.end42 ], [ -38, %land.lhs.true.if.end48_crit_edge ], [ -38, %land.lhs.true10.if.end48_crit_edge ], [ -7, %if.then15.if.end48_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_get(ptr noundef %client, ptr nocapture noundef readonly %object, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.if.end48_crit_edge

land.lhs.true10.if.end48_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %do.body22, label %if.then15.if.end48_crit_edge

if.then15.if.end48_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body22:                                        ; preds = %if.then15
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end42_crit_edge

do.body22.if.end42_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv39 = zext i8 %19 to i32
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_get_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index, align 1
  %conv40 = zext i8 %21 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i32 noundef %conv39, i32 noundef %conv40) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.body22.if.end42_crit_edge
  %index45 = getelementptr inbounds %struct.nvif_ioctl_ntfy_get_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %index45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index45, align 1
  %conv46 = zext i8 %23 to i32
  %call47 = tail call i32 @nvkm_client_notify_get(ptr noundef %client, i32 noundef %conv46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.then15.if.end48_crit_edge, %land.lhs.true10.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge
  %ret.0 = phi i32 [ %call47, %if.end42 ], [ -38, %land.lhs.true.if.end48_crit_edge ], [ -38, %land.lhs.true10.if.end48_crit_edge ], [ -7, %if.then15.if.end48_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_put(ptr noundef %client, ptr nocapture noundef readonly %object, ptr nocapture noundef readonly %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 8
  %oclass = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %6 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %5, i32 noundef %7, i32 noundef %size) #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6 = icmp ugt i32 %size, 7
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.if.end48_crit_edge

land.lhs.true10.if.end48_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

if.then15:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not = icmp eq i32 %size, 8
  br i1 %tobool.not, label %do.body22, label %if.then15.if.end48_crit_edge

if.then15.if.end48_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.body22:                                        ; preds = %if.then15
  %10 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1, align 4
  %debug26 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %debug26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp27 = icmp ugt i32 %13, 4
  br i1 %cmp27, label %do.end32, label %do.body22.if.end42_crit_edge

do.body22.if.end42_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end32:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #6
  %name34 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 1
  %handle36 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %14 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle36, align 8
  %oclass37 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %16 = ptrtoint ptr %oclass37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oclass37, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  %conv39 = zext i8 %19 to i32
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index, align 1
  %conv40 = zext i8 %21 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name34, i32 noundef %15, i32 noundef %17, i32 noundef %conv39, i32 noundef %conv40) #7
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.body22.if.end42_crit_edge
  %index45 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %index45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index45, align 1
  %conv46 = zext i8 %23 to i32
  %call47 = tail call i32 @nvkm_client_notify_put(ptr noundef %client, i32 noundef %conv46) #4
  br label %if.end48

if.end48:                                         ; preds = %if.end42, %if.then15.if.end48_crit_edge, %land.lhs.true10.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge
  %ret.0 = phi i32 [ %call47, %if.end42 ], [ -38, %land.lhs.true.if.end48_crit_edge ], [ -38, %land.lhs.true10.if.end48_crit_edge ], [ -7, %if.then15.if.end48_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_engine_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_object_insert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd08(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd16(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd32(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr08(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr16(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_ntfy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 437, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_ioctl._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvkm_ioctl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 440, i32 3}
!8 = !{ptr @nvkm_ioctl._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_ioctl._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 450, i32 3}
!12 = !{ptr @nvkm_ioctl._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_ioctl._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 409, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_ioctl_path._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_ioctl_path._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 414, i32 3}
!21 = !{ptr @nvkm_ioctl_path._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_ioctl_path._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @nvkm_ioctl_v0, !24, !"nvkm_ioctl_v0", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 384, i32 1}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 40, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nvkm_ioctl_nop._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @nvkm_ioctl_nop._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 42, i32 3}
!32 = !{ptr @nvkm_ioctl_nop._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nvkm_ioctl_nop._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 59, i32 2}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nvkm_ioctl_sclass._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_ioctl_sclass._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 61, i32 3}
!41 = !{ptr @nvkm_ioctl_sclass._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_ioctl_sclass._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 93, i32 2}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nvkm_ioctl_new._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nvkm_ioctl_new._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 95, i32 3}
!50 = !{ptr @nvkm_ioctl_new._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @nvkm_ioctl_new._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 103, i32 3}
!54 = !{ptr @nvkm_ioctl_new._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nvkm_ioctl_new._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 154, i32 2}
!58 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nvkm_ioctl_del._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvkm_ioctl_del._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 156, i32 3}
!63 = !{ptr @nvkm_ioctl_del._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nvkm_ioctl_del._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 173, i32 2}
!67 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nvkm_ioctl_mthd._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nvkm_ioctl_mthd._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 175, i32 3}
!72 = !{ptr @nvkm_ioctl_mthd._entry.39, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nvkm_ioctl_mthd._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 198, i32 2}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @nvkm_ioctl_rd._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @nvkm_ioctl_rd._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 200, i32 3}
!81 = !{ptr @nvkm_ioctl_rd._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvkm_ioctl_rd._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 233, i32 2}
!85 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nvkm_ioctl_wr._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nvkm_ioctl_wr._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 235, i32 3}
!90 = !{ptr @nvkm_ioctl_wr._entry.49, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @nvkm_ioctl_wr._entry_ptr.51, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 263, i32 2}
!94 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nvkm_ioctl_map._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nvkm_ioctl_map._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 265, i32 3}
!99 = !{ptr @nvkm_ioctl_map._entry.54, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nvkm_ioctl_map._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 287, i32 2}
!103 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @nvkm_ioctl_unmap._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @nvkm_ioctl_unmap._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 289, i32 3}
!108 = !{ptr @nvkm_ioctl_unmap._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @nvkm_ioctl_unmap._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 306, i32 2}
!112 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @nvkm_ioctl_ntfy_new._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @nvkm_ioctl_ntfy_new._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 308, i32 3}
!117 = !{ptr @nvkm_ioctl_ntfy_new._entry.64, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @nvkm_ioctl_ntfy_new._entry_ptr.66, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 332, i32 2}
!121 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @nvkm_ioctl_ntfy_del._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @nvkm_ioctl_ntfy_del._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 334, i32 3}
!126 = !{ptr @nvkm_ioctl_ntfy_del._entry.69, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @nvkm_ioctl_ntfy_del._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.72, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 351, i32 2}
!130 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @nvkm_ioctl_ntfy_get._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @nvkm_ioctl_ntfy_get._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 353, i32 3}
!135 = !{ptr @nvkm_ioctl_ntfy_get._entry.74, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @nvkm_ioctl_ntfy_get._entry_ptr.76, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 370, i32 2}
!139 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @nvkm_ioctl_ntfy_put._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @nvkm_ioctl_ntfy_put._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c", i32 372, i32 3}
!144 = !{ptr @nvkm_ioctl_ntfy_put._entry.79, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @nvkm_ioctl_ntfy_put._entry_ptr.81, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
