; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.loader_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.loader_config_v1 = type <{ i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32 }>
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>

@loader_config_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: loaderConfig\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loader_config_dump\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr = internal global ptr @loader_config_dump._entry, section ".printk_index", align 4
@loader_config_dump._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09dmaIdx        : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.7 = internal global ptr @loader_config_dump._entry.5, section ".printk_index", align 4
@loader_config_dump._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: \09codeDmaBase   : 0x%xx\0A\00", [36 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.10 = internal global ptr @loader_config_dump._entry.8, section ".printk_index", align 4
@loader_config_dump._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09codeSizeTotal : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.13 = internal global ptr @loader_config_dump._entry.11, section ".printk_index", align 4
@loader_config_dump._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09codeSizeToLoad: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.16 = internal global ptr @loader_config_dump._entry.14, section ".printk_index", align 4
@loader_config_dump._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09codeEntryPoint: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.19 = internal global ptr @loader_config_dump._entry.17, section ".printk_index", align 4
@loader_config_dump._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09dataDmaBase   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.22 = internal global ptr @loader_config_dump._entry.20, section ".printk_index", align 4
@loader_config_dump._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 35, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09dataSize      : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.25 = internal global ptr @loader_config_dump._entry.23, section ".printk_index", align 4
@loader_config_dump._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09overlayDmaBase: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.28 = internal global ptr @loader_config_dump._entry.26, section ".printk_index", align 4
@loader_config_dump._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09argc          : 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.31 = internal global ptr @loader_config_dump._entry.29, section ".printk_index", align 4
@loader_config_dump._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 38, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09argv          : 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.34 = internal global ptr @loader_config_dump._entry.32, section ".printk_index", align 4
@loader_config_dump._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09codeDmaBase1  : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.37 = internal global ptr @loader_config_dump._entry.35, section ".printk_index", align 4
@loader_config_dump._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09dataDmaBase1  : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.40 = internal global ptr @loader_config_dump._entry.38, section ".printk_index", align 4
@loader_config_dump._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09ovlyDmaBase1  : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@loader_config_dump._entry_ptr.43 = internal global ptr @loader_config_dump._entry.41, section ".printk_index", align 4
@loader_config_v1_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"loader_config_v1_dump\00", [42 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr = internal global ptr @loader_config_v1_dump._entry, section ".printk_index", align 4
@loader_config_v1_dump._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09reserved      : 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.47 = internal global ptr @loader_config_v1_dump._entry.45, section ".printk_index", align 4
@loader_config_v1_dump._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.44, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.49 = internal global ptr @loader_config_v1_dump._entry.48, section ".printk_index", align 4
@loader_config_v1_dump._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.44, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: \09codeDmaBase   : 0x%llxx\0A\00", [34 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.52 = internal global ptr @loader_config_v1_dump._entry.50, section ".printk_index", align 4
@loader_config_v1_dump._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.44, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.54 = internal global ptr @loader_config_v1_dump._entry.53, section ".printk_index", align 4
@loader_config_v1_dump._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.44, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.56 = internal global ptr @loader_config_v1_dump._entry.55, section ".printk_index", align 4
@loader_config_v1_dump._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.44, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.58 = internal global ptr @loader_config_v1_dump._entry.57, section ".printk_index", align 4
@loader_config_v1_dump._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.44, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09dataDmaBase   : 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.61 = internal global ptr @loader_config_v1_dump._entry.59, section ".printk_index", align 4
@loader_config_v1_dump._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.44, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.63 = internal global ptr @loader_config_v1_dump._entry.62, section ".printk_index", align 4
@loader_config_v1_dump._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.44, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09overlayDmaBase: 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.66 = internal global ptr @loader_config_v1_dump._entry.64, section ".printk_index", align 4
@loader_config_v1_dump._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.44, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.68 = internal global ptr @loader_config_v1_dump._entry.67, section ".printk_index", align 4
@loader_config_v1_dump._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.44, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@loader_config_v1_dump._entry_ptr.70 = internal global ptr @loader_config_v1_dump._entry.69, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: flcnBlDmemDesc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"flcn_bl_dmem_desc_dump\00", [41 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr = internal global ptr @flcn_bl_dmem_desc_dump._entry, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: \09reserved      : 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.75 = internal global ptr @flcn_bl_dmem_desc_dump._entry.73, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: \09signature     : 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.78 = internal global ptr @flcn_bl_dmem_desc_dump._entry.76, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09ctxDma        : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.81 = internal global ptr @flcn_bl_dmem_desc_dump._entry.79, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09codeDmaBase   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.84 = internal global ptr @flcn_bl_dmem_desc_dump._entry.82, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09nonSecCodeOff : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.87 = internal global ptr @flcn_bl_dmem_desc_dump._entry.85, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.72, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09nonSecCodeSize: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.90 = internal global ptr @flcn_bl_dmem_desc_dump._entry.88, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.72, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09secCodeOff    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.93 = internal global ptr @flcn_bl_dmem_desc_dump._entry.91, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.72, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09secCodeSize   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.96 = internal global ptr @flcn_bl_dmem_desc_dump._entry.94, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.98 = internal global ptr @flcn_bl_dmem_desc_dump._entry.97, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.72, ptr @.str.2, i32 80, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.100 = internal global ptr @flcn_bl_dmem_desc_dump._entry.99, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.72, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.102 = internal global ptr @flcn_bl_dmem_desc_dump._entry.101, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.72, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.104 = internal global ptr @flcn_bl_dmem_desc_dump._entry.103, section ".printk_index", align 4
@flcn_bl_dmem_desc_dump._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.72, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_dump._entry_ptr.106 = internal global ptr @flcn_bl_dmem_desc_dump._entry.105, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.107, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flcn_bl_dmem_desc_v1_dump\00", [38 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.107, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.109 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.108, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.107, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.111 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.110, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.107, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.113 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.112, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09codeDmaBase   : 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.116 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.114, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.107, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.118 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.117, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.107, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.120 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.119, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.107, ptr @.str.2, i32 101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.122 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.121, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.107, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.124 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.123, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.107, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.126 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.125, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.107, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.128 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.127, section ".printk_index", align 4
@flcn_bl_dmem_desc_v1_dump._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.107, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v1_dump._entry_ptr.130 = internal global ptr @flcn_bl_dmem_desc_v1_dump._entry.129, section ".printk_index", align 4
@flcn_bl_dmem_desc_v2_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.131, ptr @.str.2, i32 113, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flcn_bl_dmem_desc_v2_dump\00", [38 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v2_dump._entry_ptr = internal global ptr @flcn_bl_dmem_desc_v2_dump._entry, section ".printk_index", align 4
@flcn_bl_dmem_desc_v2_dump._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.131, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@flcn_bl_dmem_desc_v2_dump._entry_ptr.133 = internal global ptr @flcn_bl_dmem_desc_v2_dump._entry.132, section ".printk_index", align 4
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 28, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 29, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 30, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 31, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 32, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 33, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 34, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 35, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 36, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 37, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 38, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 39, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 40, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 41, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 48, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 49, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 50, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 51, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 52, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 53, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 54, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 55, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 56, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 57, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 58, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 59, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 66, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 67, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 70, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 73, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 74, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 75, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 76, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 77, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 78, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 79, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 80, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 81, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 82, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 83, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 90, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 91, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 94, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 97, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 98, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 99, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 100, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 101, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 102, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 103, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 104, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 105, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 113, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.402 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 114, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @flcn_bl_dmem_desc_dump._entry, ptr @flcn_bl_dmem_desc_dump._entry.101, ptr @flcn_bl_dmem_desc_dump._entry.103, ptr @flcn_bl_dmem_desc_dump._entry.105, ptr @flcn_bl_dmem_desc_dump._entry.73, ptr @flcn_bl_dmem_desc_dump._entry.76, ptr @flcn_bl_dmem_desc_dump._entry.79, ptr @flcn_bl_dmem_desc_dump._entry.82, ptr @flcn_bl_dmem_desc_dump._entry.85, ptr @flcn_bl_dmem_desc_dump._entry.88, ptr @flcn_bl_dmem_desc_dump._entry.91, ptr @flcn_bl_dmem_desc_dump._entry.94, ptr @flcn_bl_dmem_desc_dump._entry.97, ptr @flcn_bl_dmem_desc_dump._entry.99, ptr @flcn_bl_dmem_desc_dump._entry_ptr, ptr @flcn_bl_dmem_desc_dump._entry_ptr.100, ptr @flcn_bl_dmem_desc_dump._entry_ptr.102, ptr @flcn_bl_dmem_desc_dump._entry_ptr.104, ptr @flcn_bl_dmem_desc_dump._entry_ptr.106, ptr @flcn_bl_dmem_desc_dump._entry_ptr.75, ptr @flcn_bl_dmem_desc_dump._entry_ptr.78, ptr @flcn_bl_dmem_desc_dump._entry_ptr.81, ptr @flcn_bl_dmem_desc_dump._entry_ptr.84, ptr @flcn_bl_dmem_desc_dump._entry_ptr.87, ptr @flcn_bl_dmem_desc_dump._entry_ptr.90, ptr @flcn_bl_dmem_desc_dump._entry_ptr.93, ptr @flcn_bl_dmem_desc_dump._entry_ptr.96, ptr @flcn_bl_dmem_desc_dump._entry_ptr.98, ptr @flcn_bl_dmem_desc_v1_dump._entry, ptr @flcn_bl_dmem_desc_v1_dump._entry.108, ptr @flcn_bl_dmem_desc_v1_dump._entry.110, ptr @flcn_bl_dmem_desc_v1_dump._entry.112, ptr @flcn_bl_dmem_desc_v1_dump._entry.114, ptr @flcn_bl_dmem_desc_v1_dump._entry.117, ptr @flcn_bl_dmem_desc_v1_dump._entry.119, ptr @flcn_bl_dmem_desc_v1_dump._entry.121, ptr @flcn_bl_dmem_desc_v1_dump._entry.123, ptr @flcn_bl_dmem_desc_v1_dump._entry.125, ptr @flcn_bl_dmem_desc_v1_dump._entry.127, ptr @flcn_bl_dmem_desc_v1_dump._entry.129, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.109, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.111, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.113, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.116, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.118, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.120, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.122, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.124, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.126, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.128, ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.130, ptr @flcn_bl_dmem_desc_v2_dump._entry, ptr @flcn_bl_dmem_desc_v2_dump._entry.132, ptr @flcn_bl_dmem_desc_v2_dump._entry_ptr, ptr @flcn_bl_dmem_desc_v2_dump._entry_ptr.133, ptr @loader_config_dump._entry, ptr @loader_config_dump._entry.11, ptr @loader_config_dump._entry.14, ptr @loader_config_dump._entry.17, ptr @loader_config_dump._entry.20, ptr @loader_config_dump._entry.23, ptr @loader_config_dump._entry.26, ptr @loader_config_dump._entry.29, ptr @loader_config_dump._entry.32, ptr @loader_config_dump._entry.35, ptr @loader_config_dump._entry.38, ptr @loader_config_dump._entry.41, ptr @loader_config_dump._entry.5, ptr @loader_config_dump._entry.8, ptr @loader_config_dump._entry_ptr, ptr @loader_config_dump._entry_ptr.10, ptr @loader_config_dump._entry_ptr.13, ptr @loader_config_dump._entry_ptr.16, ptr @loader_config_dump._entry_ptr.19, ptr @loader_config_dump._entry_ptr.22, ptr @loader_config_dump._entry_ptr.25, ptr @loader_config_dump._entry_ptr.28, ptr @loader_config_dump._entry_ptr.31, ptr @loader_config_dump._entry_ptr.34, ptr @loader_config_dump._entry_ptr.37, ptr @loader_config_dump._entry_ptr.40, ptr @loader_config_dump._entry_ptr.43, ptr @loader_config_dump._entry_ptr.7, ptr @loader_config_v1_dump._entry, ptr @loader_config_v1_dump._entry.45, ptr @loader_config_v1_dump._entry.48, ptr @loader_config_v1_dump._entry.50, ptr @loader_config_v1_dump._entry.53, ptr @loader_config_v1_dump._entry.55, ptr @loader_config_v1_dump._entry.57, ptr @loader_config_v1_dump._entry.59, ptr @loader_config_v1_dump._entry.62, ptr @loader_config_v1_dump._entry.64, ptr @loader_config_v1_dump._entry.67, ptr @loader_config_v1_dump._entry.69, ptr @loader_config_v1_dump._entry_ptr, ptr @loader_config_v1_dump._entry_ptr.47, ptr @loader_config_v1_dump._entry_ptr.49, ptr @loader_config_v1_dump._entry_ptr.52, ptr @loader_config_v1_dump._entry_ptr.54, ptr @loader_config_v1_dump._entry_ptr.56, ptr @loader_config_v1_dump._entry_ptr.58, ptr @loader_config_v1_dump._entry_ptr.61, ptr @loader_config_v1_dump._entry_ptr.63, ptr @loader_config_v1_dump._entry_ptr.66, ptr @loader_config_v1_dump._entry_ptr.68, ptr @loader_config_v1_dump._entry_ptr.70, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.51, ptr @.str.60, ptr @.str.65, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.107, ptr @.str.115, ptr @.str.131], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_dump._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loader_config_v1_dump._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_dump._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v1_dump._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v2_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_bl_dmem_desc_v2_dump._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @loader_config_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end196_crit_edge

entry.if.end196_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end196_crit_edge

if.end.if.end196_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr253 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr253)
  %cmp22 = icmp ugt i32 %.pr253, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end196_crit_edge

if.end16.if.end196_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %code_dma_base = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr255.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr255.pr)
  %cmp37 = icmp ugt i32 %.pr255.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end196_crit_edge

if.end31.if.end196_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %code_size_total = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %code_size_total to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %code_size_total, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr257 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr257)
  %cmp52 = icmp ugt i32 %.pr257, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end196_crit_edge

if.end46.if.end196_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %code_size_to_load = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %code_size_to_load to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %code_size_to_load, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr259.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr259.pr.pr)
  %cmp67 = icmp ugt i32 %.pr259.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end196_crit_edge

if.end61.if.end196_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %code_entry_point = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 4
  %39 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %code_entry_point, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr261 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr261)
  %cmp82 = icmp ugt i32 %.pr261, 3
  br i1 %cmp82, label %if.end91, label %if.end76.if.end196_crit_edge

if.end76.if.end196_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end91:                                         ; preds = %if.end76
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %data_dma_base = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 5
  %46 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %47) #5
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr263.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr263.pr.pr)
  %cmp97 = icmp ugt i32 %.pr263.pr.pr, 3
  br i1 %cmp97, label %if.end106, label %if.end91.if.end196_crit_edge

if.end91.if.end196_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end106:                                        ; preds = %if.end91
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev103, align 8
  %data_size = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 6
  %53 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %54) #5
  %55 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr265 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr265)
  %cmp112 = icmp ugt i32 %.pr265, 3
  br i1 %cmp112, label %if.end121, label %if.end106.if.end196_crit_edge

if.end106.if.end196_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end121:                                        ; preds = %if.end106
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev118, align 8
  %overlay_dma_base = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 7
  %60 = ptrtoint ptr %overlay_dma_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %overlay_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %61) #5
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr267.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr267.pr.pr.pr)
  %cmp127 = icmp ugt i32 %.pr267.pr.pr.pr, 3
  br i1 %cmp127, label %if.end136, label %if.end121.if.end196_crit_edge

if.end121.if.end196_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end136:                                        ; preds = %if.end121
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %dev133 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev133, align 8
  %argc = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 8
  %67 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %argc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %68) #5
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr269 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr269)
  %cmp142 = icmp ugt i32 %.pr269, 3
  br i1 %cmp142, label %if.end151, label %if.end136.if.end196_crit_edge

if.end136.if.end196_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end151:                                        ; preds = %if.end136
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 4
  %dev148 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev148, align 8
  %argv = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 9
  %74 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %argv, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %75) #5
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr271.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr271.pr.pr.pr)
  %cmp157 = icmp ugt i32 %.pr271.pr.pr.pr, 3
  br i1 %cmp157, label %if.end166, label %if.end151.if.end196_crit_edge

if.end151.if.end196_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end166:                                        ; preds = %if.end151
  %77 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device, align 4
  %dev163 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev163, align 8
  %code_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 10
  %81 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %code_dma_base1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %82) #5
  %83 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr273 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr273)
  %cmp172 = icmp ugt i32 %.pr273, 3
  br i1 %cmp172, label %if.end181, label %if.end166.if.end196_crit_edge

if.end166.if.end196_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

if.end181:                                        ; preds = %if.end166
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 4
  %dev178 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %dev178 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev178, align 8
  %data_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 11
  %88 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_dma_base1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %89) #5
  %90 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr275.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr275.pr.pr.pr)
  %cmp187 = icmp ugt i32 %.pr275.pr.pr.pr, 3
  br i1 %cmp187, label %do.end191, label %if.end181.if.end196_crit_edge

if.end181.if.end196_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end196

do.end191:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #4
  %91 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device, align 4
  %dev193 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev193 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev193, align 8
  %overlay_dma_base1 = getelementptr inbounds %struct.loader_config, ptr %hdr, i32 0, i32 12
  %95 = ptrtoint ptr %overlay_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %overlay_dma_base1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %96) #5
  br label %if.end196

if.end196:                                        ; preds = %do.end191, %if.end181.if.end196_crit_edge, %if.end166.if.end196_crit_edge, %if.end151.if.end196_crit_edge, %if.end136.if.end196_crit_edge, %if.end121.if.end196_crit_edge, %if.end106.if.end196_crit_edge, %if.end91.if.end196_crit_edge, %if.end76.if.end196_crit_edge, %if.end61.if.end196_crit_edge, %if.end46.if.end196_crit_edge, %if.end31.if.end196_crit_edge, %if.end16.if.end196_crit_edge, %if.end.if.end196_crit_edge, %entry.if.end196_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @loader_config_v1_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end166_crit_edge

entry.if.end166_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end166_crit_edge

if.end.if.end166_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hdr, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr215 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr215)
  %cmp22 = icmp ugt i32 %.pr215, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end166_crit_edge

if.end16.if.end166_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %dma_idx = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %dma_idx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %dma_idx, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr217.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr217.pr)
  %cmp37 = icmp ugt i32 %.pr217.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end166_crit_edge

if.end31.if.end166_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %code_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %code_dma_base, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.51, ptr noundef %name, i64 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr219 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr219)
  %cmp52 = icmp ugt i32 %.pr219, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end166_crit_edge

if.end46.if.end166_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %code_size_total = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %code_size_total to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %code_size_total, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr221.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr221.pr.pr)
  %cmp67 = icmp ugt i32 %.pr221.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end166_crit_edge

if.end61.if.end166_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %code_size_to_load = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 4
  %39 = ptrtoint ptr %code_size_to_load to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %code_size_to_load, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr223 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr223)
  %cmp82 = icmp ugt i32 %.pr223, 3
  br i1 %cmp82, label %if.end91, label %if.end76.if.end166_crit_edge

if.end76.if.end166_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end91:                                         ; preds = %if.end76
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %code_entry_point = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 5
  %46 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %code_entry_point, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %47) #5
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr225.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr225.pr.pr)
  %cmp97 = icmp ugt i32 %.pr225.pr.pr, 3
  br i1 %cmp97, label %if.end106, label %if.end91.if.end166_crit_edge

if.end91.if.end166_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end106:                                        ; preds = %if.end91
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev103, align 8
  %data_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 6
  %53 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %data_dma_base, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.60, ptr noundef %name, i64 noundef %54) #5
  %55 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr227 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr227)
  %cmp112 = icmp ugt i32 %.pr227, 3
  br i1 %cmp112, label %if.end121, label %if.end106.if.end166_crit_edge

if.end106.if.end166_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end121:                                        ; preds = %if.end106
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev118, align 8
  %data_size = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 7
  %60 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %data_size, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %61) #5
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr229.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr229.pr.pr.pr)
  %cmp127 = icmp ugt i32 %.pr229.pr.pr.pr, 3
  br i1 %cmp127, label %if.end136, label %if.end121.if.end166_crit_edge

if.end121.if.end166_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end136:                                        ; preds = %if.end121
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %dev133 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev133, align 8
  %overlay_dma_base = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 8
  %67 = ptrtoint ptr %overlay_dma_base to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %overlay_dma_base, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.65, ptr noundef %name, i64 noundef %68) #5
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr231 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr231)
  %cmp142 = icmp ugt i32 %.pr231, 3
  br i1 %cmp142, label %if.end151, label %if.end136.if.end166_crit_edge

if.end136.if.end166_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

if.end151:                                        ; preds = %if.end136
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 4
  %dev148 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev148, align 8
  %argc = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 9
  %74 = ptrtoint ptr %argc to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %argc, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %75) #5
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr233.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr233.pr.pr.pr)
  %cmp157 = icmp ugt i32 %.pr233.pr.pr.pr, 3
  br i1 %cmp157, label %do.end161, label %if.end151.if.end166_crit_edge

if.end151.if.end166_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end166

do.end161:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #4
  %77 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device, align 4
  %dev163 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev163, align 8
  %argv = getelementptr inbounds %struct.loader_config_v1, ptr %hdr, i32 0, i32 10
  %81 = ptrtoint ptr %argv to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %argv, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %82) #5
  br label %if.end166

if.end166:                                        ; preds = %do.end161, %if.end151.if.end166_crit_edge, %if.end136.if.end166_crit_edge, %if.end121.if.end166_crit_edge, %if.end106.if.end166_crit_edge, %if.end91.if.end166_crit_edge, %if.end76.if.end166_crit_edge, %if.end61.if.end166_crit_edge, %if.end46.if.end166_crit_edge, %if.end31.if.end166_crit_edge, %if.end16.if.end166_crit_edge, %if.end.if.end166_crit_edge, %entry.if.end166_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end209_crit_edge

entry.if.end209_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.71, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end22, label %if.end.if.end209_crit_edge

if.end.if.end209_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end22:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.74, ptr noundef %name, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr272 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr272)
  %cmp28 = icmp ugt i32 %.pr272, 3
  br i1 %cmp28, label %if.end44, label %if.end22.if.end209_crit_edge

if.end22.if.end209_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end44:                                         ; preds = %if.end22
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %dev34 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev34, align 8
  %signature = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 1
  %24 = ptrtoint ptr %signature to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signature, align 4
  %arrayidx39 = getelementptr %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  %arrayidx41 = getelementptr %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx41, align 4
  %arrayidx43 = getelementptr %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #5
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr274.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr274.pr)
  %cmp50 = icmp ugt i32 %.pr274.pr, 3
  br i1 %cmp50, label %if.end59, label %if.end44.if.end209_crit_edge

if.end44.if.end209_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end59:                                         ; preds = %if.end44
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %dev56 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev56, align 8
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 2
  %37 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctx_dma, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %38) #5
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr276 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr276)
  %cmp65 = icmp ugt i32 %.pr276, 3
  br i1 %cmp65, label %if.end74, label %if.end59.if.end209_crit_edge

if.end59.if.end209_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end74:                                         ; preds = %if.end59
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %dev71 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev71, align 8
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 3
  %44 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %code_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %45) #5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr278.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr278.pr.pr)
  %cmp80 = icmp ugt i32 %.pr278.pr.pr, 3
  br i1 %cmp80, label %if.end89, label %if.end74.if.end209_crit_edge

if.end74.if.end209_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end89:                                         ; preds = %if.end74
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %dev86 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev86, align 8
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 4
  %51 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %non_sec_code_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.86, ptr noundef %name, i32 noundef %52) #5
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr280 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr280)
  %cmp95 = icmp ugt i32 %.pr280, 3
  br i1 %cmp95, label %if.end104, label %if.end89.if.end209_crit_edge

if.end89.if.end209_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end104:                                        ; preds = %if.end89
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %dev101 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev101, align 8
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 5
  %58 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %non_sec_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %59) #5
  %60 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr282.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr282.pr.pr)
  %cmp110 = icmp ugt i32 %.pr282.pr.pr, 3
  br i1 %cmp110, label %if.end119, label %if.end104.if.end209_crit_edge

if.end104.if.end209_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end119:                                        ; preds = %if.end104
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 4
  %dev116 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev116, align 8
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 6
  %65 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sec_code_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.92, ptr noundef %name, i32 noundef %66) #5
  %67 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr284 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr284)
  %cmp125 = icmp ugt i32 %.pr284, 3
  br i1 %cmp125, label %if.end134, label %if.end119.if.end209_crit_edge

if.end119.if.end209_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end134:                                        ; preds = %if.end119
  %68 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device, align 4
  %dev131 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev131, align 8
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 7
  %72 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sec_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.95, ptr noundef %name, i32 noundef %73) #5
  %74 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr286.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr286.pr.pr.pr)
  %cmp140 = icmp ugt i32 %.pr286.pr.pr.pr, 3
  br i1 %cmp140, label %if.end149, label %if.end134.if.end209_crit_edge

if.end134.if.end209_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end149:                                        ; preds = %if.end134
  %75 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device, align 4
  %dev146 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev146, align 8
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 8
  %79 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %code_entry_point, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %80) #5
  %81 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr288 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr288)
  %cmp155 = icmp ugt i32 %.pr288, 3
  br i1 %cmp155, label %if.end164, label %if.end149.if.end209_crit_edge

if.end149.if.end209_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end164:                                        ; preds = %if.end149
  %82 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device, align 4
  %dev161 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev161, align 8
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 9
  %86 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_dma_base, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %87) #5
  %88 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr290.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr290.pr.pr.pr)
  %cmp170 = icmp ugt i32 %.pr290.pr.pr.pr, 3
  br i1 %cmp170, label %if.end179, label %if.end164.if.end209_crit_edge

if.end164.if.end209_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end179:                                        ; preds = %if.end164
  %89 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device, align 4
  %dev176 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev176, align 8
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 10
  %93 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %94) #5
  %95 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr292 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr292)
  %cmp185 = icmp ugt i32 %.pr292, 3
  br i1 %cmp185, label %if.end194, label %if.end179.if.end209_crit_edge

if.end179.if.end209_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

if.end194:                                        ; preds = %if.end179
  %96 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device, align 4
  %dev191 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %dev191 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev191, align 8
  %code_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 11
  %100 = ptrtoint ptr %code_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %code_dma_base1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %101) #5
  %102 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr294.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr294.pr.pr.pr)
  %cmp200 = icmp ugt i32 %.pr294.pr.pr.pr, 3
  br i1 %cmp200, label %do.end204, label %if.end194.if.end209_crit_edge

if.end194.if.end209_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end209

do.end204:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #4
  %103 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %device, align 4
  %dev206 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev206, align 8
  %data_dma_base1 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %hdr, i32 0, i32 12
  %107 = ptrtoint ptr %data_dma_base1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_dma_base1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.39, ptr noundef %name, i32 noundef %108) #5
  br label %if.end209

if.end209:                                        ; preds = %do.end204, %if.end194.if.end209_crit_edge, %if.end179.if.end209_crit_edge, %if.end164.if.end209_crit_edge, %if.end149.if.end209_crit_edge, %if.end134.if.end209_crit_edge, %if.end119.if.end209_crit_edge, %if.end104.if.end209_crit_edge, %if.end89.if.end209_crit_edge, %if.end74.if.end209_crit_edge, %if.end59.if.end209_crit_edge, %if.end44.if.end209_crit_edge, %if.end22.if.end209_crit_edge, %if.end.if.end209_crit_edge, %entry.if.end209_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end179_crit_edge

entry.if.end179_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.71, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end22, label %if.end.if.end179_crit_edge

if.end.if.end179_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end22:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hdr, align 1
  %arrayidx17 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [4 x i32], ptr %hdr, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx21, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.74, ptr noundef %name, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr234 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr234)
  %cmp28 = icmp ugt i32 %.pr234, 3
  br i1 %cmp28, label %if.end44, label %if.end22.if.end179_crit_edge

if.end22.if.end179_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end44:                                         ; preds = %if.end22
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %dev34 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev34, align 8
  %signature = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 1
  %24 = ptrtoint ptr %signature to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %signature, align 1
  %arrayidx39 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %arrayidx41, align 1
  %arrayidx43 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx43, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #5
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr236.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr236.pr)
  %cmp50 = icmp ugt i32 %.pr236.pr, 3
  br i1 %cmp50, label %if.end59, label %if.end44.if.end179_crit_edge

if.end44.if.end179_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end59:                                         ; preds = %if.end44
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  %dev56 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev56, align 8
  %ctx_dma = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 2
  %37 = ptrtoint ptr %ctx_dma to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ctx_dma, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.80, ptr noundef %name, i32 noundef %38) #5
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr238 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr238)
  %cmp65 = icmp ugt i32 %.pr238, 3
  br i1 %cmp65, label %if.end74, label %if.end59.if.end179_crit_edge

if.end59.if.end179_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end74:                                         ; preds = %if.end59
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  %dev71 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev71, align 8
  %code_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 3
  %44 = ptrtoint ptr %code_dma_base to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %code_dma_base, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.115, ptr noundef %name, i64 noundef %45) #5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr240.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr240.pr.pr)
  %cmp80 = icmp ugt i32 %.pr240.pr.pr, 3
  br i1 %cmp80, label %if.end89, label %if.end74.if.end179_crit_edge

if.end74.if.end179_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end89:                                         ; preds = %if.end74
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %dev86 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev86, align 8
  %non_sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 4
  %51 = ptrtoint ptr %non_sec_code_off to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %non_sec_code_off, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.86, ptr noundef %name, i32 noundef %52) #5
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr242 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr242)
  %cmp95 = icmp ugt i32 %.pr242, 3
  br i1 %cmp95, label %if.end104, label %if.end89.if.end179_crit_edge

if.end89.if.end179_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end104:                                        ; preds = %if.end89
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %dev101 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev101, align 8
  %non_sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 5
  %58 = ptrtoint ptr %non_sec_code_size to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %non_sec_code_size, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %59) #5
  %60 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr244.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr244.pr.pr)
  %cmp110 = icmp ugt i32 %.pr244.pr.pr, 3
  br i1 %cmp110, label %if.end119, label %if.end104.if.end179_crit_edge

if.end104.if.end179_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end119:                                        ; preds = %if.end104
  %61 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device, align 4
  %dev116 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev116, align 8
  %sec_code_off = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 6
  %65 = ptrtoint ptr %sec_code_off to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %sec_code_off, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.92, ptr noundef %name, i32 noundef %66) #5
  %67 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr246 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr246)
  %cmp125 = icmp ugt i32 %.pr246, 3
  br i1 %cmp125, label %if.end134, label %if.end119.if.end179_crit_edge

if.end119.if.end179_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end134:                                        ; preds = %if.end119
  %68 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device, align 4
  %dev131 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev131, align 8
  %sec_code_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 7
  %72 = ptrtoint ptr %sec_code_size to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %sec_code_size, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.95, ptr noundef %name, i32 noundef %73) #5
  %74 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr248.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr248.pr.pr.pr)
  %cmp140 = icmp ugt i32 %.pr248.pr.pr.pr, 3
  br i1 %cmp140, label %if.end149, label %if.end134.if.end179_crit_edge

if.end134.if.end179_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end149:                                        ; preds = %if.end134
  %75 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device, align 4
  %dev146 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev146, align 8
  %code_entry_point = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 8
  %79 = ptrtoint ptr %code_entry_point to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %code_entry_point, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %80) #5
  %81 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr250 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr250)
  %cmp155 = icmp ugt i32 %.pr250, 3
  br i1 %cmp155, label %if.end164, label %if.end149.if.end179_crit_edge

if.end149.if.end179_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

if.end164:                                        ; preds = %if.end149
  %82 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device, align 4
  %dev161 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev161, align 8
  %data_dma_base = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 9
  %86 = ptrtoint ptr %data_dma_base to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %data_dma_base, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.60, ptr noundef %name, i64 noundef %87) #5
  %88 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr252.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr252.pr.pr.pr)
  %cmp170 = icmp ugt i32 %.pr252.pr.pr.pr, 3
  br i1 %cmp170, label %do.end174, label %if.end164.if.end179_crit_edge

if.end164.if.end179_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end179

do.end174:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #4
  %89 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device, align 4
  %dev176 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev176, align 8
  %data_size = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %hdr, i32 0, i32 10
  %93 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %data_size, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %94) #5
  br label %if.end179

if.end179:                                        ; preds = %do.end174, %if.end164.if.end179_crit_edge, %if.end149.if.end179_crit_edge, %if.end134.if.end179_crit_edge, %if.end119.if.end179_crit_edge, %if.end104.if.end179_crit_edge, %if.end89.if.end179_crit_edge, %if.end74.if.end179_crit_edge, %if.end59.if.end179_crit_edge, %if.end44.if.end179_crit_edge, %if.end22.if.end179_crit_edge, %if.end.if.end179_crit_edge, %entry.if.end179_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %subdev, ptr noundef %hdr)
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %argc = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 11
  %6 = ptrtoint ptr %argc to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %argc, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %7) #5
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %do.end11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 8
  %argv = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %hdr, i32 0, i32 12
  %13 = ptrtoint ptr %argv to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %argv, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %14) #5
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !195, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @loader_config_dump._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @loader_config_dump._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 29, i32 2}
!10 = !{ptr @loader_config_dump._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @loader_config_dump._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 30, i32 2}
!14 = !{ptr @loader_config_dump._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @loader_config_dump._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 31, i32 2}
!18 = !{ptr @loader_config_dump._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @loader_config_dump._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 32, i32 2}
!22 = !{ptr @loader_config_dump._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @loader_config_dump._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 33, i32 2}
!26 = !{ptr @loader_config_dump._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @loader_config_dump._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 34, i32 2}
!30 = !{ptr @loader_config_dump._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @loader_config_dump._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 35, i32 2}
!34 = !{ptr @loader_config_dump._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @loader_config_dump._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 36, i32 2}
!38 = !{ptr @loader_config_dump._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @loader_config_dump._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.30, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 37, i32 2}
!42 = !{ptr @loader_config_dump._entry.29, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @loader_config_dump._entry_ptr.31, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.33, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 38, i32 2}
!46 = !{ptr @loader_config_dump._entry.32, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @loader_config_dump._entry_ptr.34, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 39, i32 2}
!50 = !{ptr @loader_config_dump._entry.35, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @loader_config_dump._entry_ptr.37, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.39, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 40, i32 2}
!54 = !{ptr @loader_config_dump._entry.38, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @loader_config_dump._entry_ptr.40, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.42, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 41, i32 2}
!58 = !{ptr @loader_config_dump._entry.41, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @loader_config_dump._entry_ptr.43, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.44, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 48, i32 2}
!62 = !{ptr @loader_config_v1_dump._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @loader_config_v1_dump._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.46, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 49, i32 2}
!66 = !{ptr @loader_config_v1_dump._entry.45, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @loader_config_v1_dump._entry_ptr.47, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @loader_config_v1_dump._entry.48, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 50, i32 2}
!70 = !{ptr @loader_config_v1_dump._entry_ptr.49, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.51, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 51, i32 2}
!73 = !{ptr @loader_config_v1_dump._entry.50, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @loader_config_v1_dump._entry_ptr.52, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @loader_config_v1_dump._entry.53, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 52, i32 2}
!77 = !{ptr @loader_config_v1_dump._entry_ptr.54, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @loader_config_v1_dump._entry.55, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 53, i32 2}
!80 = !{ptr @loader_config_v1_dump._entry_ptr.56, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @loader_config_v1_dump._entry.57, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 54, i32 2}
!83 = !{ptr @loader_config_v1_dump._entry_ptr.58, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 55, i32 2}
!86 = !{ptr @loader_config_v1_dump._entry.59, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @loader_config_v1_dump._entry_ptr.61, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @loader_config_v1_dump._entry.62, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 56, i32 2}
!90 = !{ptr @loader_config_v1_dump._entry_ptr.63, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.65, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 57, i32 2}
!93 = !{ptr @loader_config_v1_dump._entry.64, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @loader_config_v1_dump._entry_ptr.66, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @loader_config_v1_dump._entry.67, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 58, i32 2}
!97 = !{ptr @loader_config_v1_dump._entry_ptr.68, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @loader_config_v1_dump._entry.69, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 59, i32 2}
!100 = !{ptr @loader_config_v1_dump._entry_ptr.70, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.71, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 66, i32 2}
!103 = !{ptr @.str.72, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @flcn_bl_dmem_desc_dump._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.74, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 67, i32 2}
!108 = !{ptr @flcn_bl_dmem_desc_dump._entry.73, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.75, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.77, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 70, i32 2}
!112 = !{ptr @flcn_bl_dmem_desc_dump._entry.76, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.78, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.80, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 73, i32 2}
!116 = !{ptr @flcn_bl_dmem_desc_dump._entry.79, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.81, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.83, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 74, i32 2}
!120 = !{ptr @flcn_bl_dmem_desc_dump._entry.82, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.84, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.86, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 75, i32 2}
!124 = !{ptr @flcn_bl_dmem_desc_dump._entry.85, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.87, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.89, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 76, i32 2}
!128 = !{ptr @flcn_bl_dmem_desc_dump._entry.88, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.90, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.92, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 77, i32 2}
!132 = !{ptr @flcn_bl_dmem_desc_dump._entry.91, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.93, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.95, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 78, i32 2}
!136 = !{ptr @flcn_bl_dmem_desc_dump._entry.94, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.96, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @flcn_bl_dmem_desc_dump._entry.97, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 79, i32 2}
!140 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.98, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @flcn_bl_dmem_desc_dump._entry.99, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 80, i32 2}
!143 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.100, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @flcn_bl_dmem_desc_dump._entry.101, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 81, i32 2}
!146 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.102, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @flcn_bl_dmem_desc_dump._entry.103, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 82, i32 2}
!149 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.104, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @flcn_bl_dmem_desc_dump._entry.105, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 83, i32 2}
!152 = !{ptr @flcn_bl_dmem_desc_dump._entry_ptr.106, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.107, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 90, i32 2}
!155 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.108, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 91, i32 2}
!159 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.109, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.110, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 94, i32 2}
!162 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.111, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.112, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 97, i32 2}
!165 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.113, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.115, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 98, i32 2}
!168 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.114, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.116, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.117, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 99, i32 2}
!172 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.118, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.119, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 100, i32 2}
!175 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.120, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.121, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 101, i32 2}
!178 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.122, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.123, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 102, i32 2}
!181 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.124, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.125, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 103, i32 2}
!184 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.126, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.127, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 104, i32 2}
!187 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.128, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry.129, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 105, i32 2}
!190 = !{ptr @flcn_bl_dmem_desc_v1_dump._entry_ptr.130, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.131, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 113, i32 2}
!193 = !{ptr @flcn_bl_dmem_desc_v2_dump._entry, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @flcn_bl_dmem_desc_v2_dump._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @flcn_bl_dmem_desc_v2_dump._entry.132, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c", i32 114, i32 2}
!197 = !{ptr @flcn_bl_dmem_desc_v2_dump._entry_ptr.133, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
