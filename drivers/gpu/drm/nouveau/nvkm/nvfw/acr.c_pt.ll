; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c"
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
%struct.wpr_header = type { i32, i32, i32, i32, i32 }
%struct.wpr_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.lsb_header = type { %struct.lsf_signature, %struct.lsb_header_tail }
%struct.lsf_signature = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32 }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lsb_header_v1 = type { %struct.lsf_signature_v1, %struct.lsb_header_tail }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.flcn_acr_desc = type { %union.anon.139, i32, i32, i32, %struct.anon.140, i32, i64, %struct.anon.142 }
%union.anon.139 = type { [4 x i32], [496 x i8] }
%struct.anon.140 = type { i32, [2 x %struct.anon.141] }
%struct.anon.141 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.142 = type { i32, i32, i32, i32 }
%struct.flcn_acr_desc_v1 = type { [512 x i8], [4 x i32], i32, i32, i32, %struct.anon.143, i32, i64, %struct.anon.145 }
%struct.anon.143 = type { i32, [2 x %struct.anon.144] }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.145 = type { i32, i32, i32, i32 }

@wpr_header_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: wprHeader\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wpr_header_dump\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr = internal global ptr @wpr_header_dump._entry, section ".printk_index", align 4
@wpr_header_dump._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09falconID      : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr.7 = internal global ptr @wpr_header_dump._entry.5, section ".printk_index", align 4
@wpr_header_dump._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 30, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09lsbOffset     : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr.10 = internal global ptr @wpr_header_dump._entry.8, section ".printk_index", align 4
@wpr_header_dump._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09bootstrapOwner: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr.13 = internal global ptr @wpr_header_dump._entry.11, section ".printk_index", align 4
@wpr_header_dump._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09lazyBootstrap : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr.16 = internal global ptr @wpr_header_dump._entry.14, section ".printk_index", align 4
@wpr_header_dump._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09status        : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wpr_header_dump._entry_ptr.19 = internal global ptr @wpr_header_dump._entry.17, section ".printk_index", align 4
@wpr_header_v1_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 39, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wpr_header_v1_dump\00", [45 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr = internal global ptr @wpr_header_v1_dump._entry, section ".printk_index", align 4
@wpr_header_v1_dump._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.22 = internal global ptr @wpr_header_v1_dump._entry.21, section ".printk_index", align 4
@wpr_header_v1_dump._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.24 = internal global ptr @wpr_header_v1_dump._entry.23, section ".printk_index", align 4
@wpr_header_v1_dump._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.26 = internal global ptr @wpr_header_v1_dump._entry.25, section ".printk_index", align 4
@wpr_header_v1_dump._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.2, i32 43, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.28 = internal global ptr @wpr_header_v1_dump._entry.27, section ".printk_index", align 4
@wpr_header_v1_dump._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: \09binVersion    : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.31 = internal global ptr @wpr_header_v1_dump._entry.29, section ".printk_index", align 4
@wpr_header_v1_dump._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.2, i32 45, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@wpr_header_v1_dump._entry_ptr.33 = internal global ptr @wpr_header_v1_dump._entry.32, section ".printk_index", align 4
@flcn_acr_desc_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: acrDesc\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flcn_acr_desc_dump\00", [45 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr = internal global ptr @flcn_acr_desc_dump._entry, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09wprRegionId  : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.38 = internal global ptr @flcn_acr_desc_dump._entry.36, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09wprOffset    : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.41 = internal global ptr @flcn_acr_desc_dump._entry.39, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09mmuMemRange  : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.44 = internal global ptr @flcn_acr_desc_dump._entry.42, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09noRegions    : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.47 = internal global ptr @flcn_acr_desc_dump._entry.45, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: \09region[%d]    :\0A\00", [42 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.50 = internal global ptr @flcn_acr_desc_dump._entry.48, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.35, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09  startAddr  : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.53 = internal global ptr @flcn_acr_desc_dump._entry.51, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.35, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09  endAddr    : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.56 = internal global ptr @flcn_acr_desc_dump._entry.54, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.35, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09  regionId   : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.59 = internal global ptr @flcn_acr_desc_dump._entry.57, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.35, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09  readMask   : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.62 = internal global ptr @flcn_acr_desc_dump._entry.60, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.35, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09  writeMask  : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.65 = internal global ptr @flcn_acr_desc_dump._entry.63, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.35, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09  clientMask : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.68 = internal global ptr @flcn_acr_desc_dump._entry.66, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.35, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09ucodeBlobSize: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.71 = internal global ptr @flcn_acr_desc_dump._entry.69, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.35, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: \09ucodeBlobBase: 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.74 = internal global ptr @flcn_acr_desc_dump._entry.72, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.35, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: \09vprEnabled   : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.77 = internal global ptr @flcn_acr_desc_dump._entry.75, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.35, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09vprStart     : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.80 = internal global ptr @flcn_acr_desc_dump._entry.78, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.35, ptr @.str.2, i32 116, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09vprEnd       : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.83 = internal global ptr @flcn_acr_desc_dump._entry.81, section ".printk_index", align 4
@flcn_acr_desc_dump._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.35, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: \09hdcpPolicies : 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@flcn_acr_desc_dump._entry_ptr.86 = internal global ptr @flcn_acr_desc_dump._entry.84, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.87, ptr @.str.2, i32 126, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flcn_acr_desc_v1_dump\00", [42 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr = internal global ptr @flcn_acr_desc_v1_dump._entry, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: \09wprRegionId         : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.90 = internal global ptr @flcn_acr_desc_v1_dump._entry.88, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09wprOffset           : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.93 = internal global ptr @flcn_acr_desc_v1_dump._entry.91, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09mmuMemoryRange      : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.96 = internal global ptr @flcn_acr_desc_v1_dump._entry.94, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: \09noRegions           : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.99 = internal global ptr @flcn_acr_desc_v1_dump._entry.97, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: \09region[%d]           :\0A\00", [35 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.102 = internal global ptr @flcn_acr_desc_v1_dump._entry.100, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  startAddr         : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.105 = internal global ptr @flcn_acr_desc_v1_dump._entry.103, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.87, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  endAddr           : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.108 = internal global ptr @flcn_acr_desc_v1_dump._entry.106, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.87, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: \09  regionId          : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.111 = internal global ptr @flcn_acr_desc_v1_dump._entry.109, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.87, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  readMask          : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.114 = internal global ptr @flcn_acr_desc_v1_dump._entry.112, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.87, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  writeMask         : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.117 = internal global ptr @flcn_acr_desc_v1_dump._entry.115, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.87, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  clientMask        : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.120 = internal global ptr @flcn_acr_desc_v1_dump._entry.118, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.87, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09  shadowMemStartAddr: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.123 = internal global ptr @flcn_acr_desc_v1_dump._entry.121, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.87, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: \09ucodeBlobSize       : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.126 = internal global ptr @flcn_acr_desc_v1_dump._entry.124, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.87, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: \09ucodeBlobBase       : 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.129 = internal global ptr @flcn_acr_desc_v1_dump._entry.127, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.87, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: \09vprEnabled          : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.132 = internal global ptr @flcn_acr_desc_v1_dump._entry.130, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.87, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09vprStart            : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.135 = internal global ptr @flcn_acr_desc_v1_dump._entry.133, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.87, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09vprEnd              : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.138 = internal global ptr @flcn_acr_desc_v1_dump._entry.136, section ".printk_index", align 4
@flcn_acr_desc_v1_dump._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.87, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: \09hdcpPolicies        : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@flcn_acr_desc_v1_dump._entry_ptr.141 = internal global ptr @flcn_acr_desc_v1_dump._entry.139, section ".printk_index", align 4
@lsb_header_tail_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: lsbHeader\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lsb_header_tail_dump\00", [43 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr = internal global ptr @lsb_header_tail_dump._entry, section ".printk_index", align 4
@lsb_header_tail_dump._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09ucodeOff      : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.146 = internal global ptr @lsb_header_tail_dump._entry.144, section ".printk_index", align 4
@lsb_header_tail_dump._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09ucodeSize     : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.149 = internal global ptr @lsb_header_tail_dump._entry.147, section ".printk_index", align 4
@lsb_header_tail_dump._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.143, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09dataSize      : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.152 = internal global ptr @lsb_header_tail_dump._entry.150, section ".printk_index", align 4
@lsb_header_tail_dump._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.143, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09blCodeSize    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.155 = internal global ptr @lsb_header_tail_dump._entry.153, section ".printk_index", align 4
@lsb_header_tail_dump._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.143, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09blImemOff     : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.158 = internal global ptr @lsb_header_tail_dump._entry.156, section ".printk_index", align 4
@lsb_header_tail_dump._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.143, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09blDataOff     : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.161 = internal global ptr @lsb_header_tail_dump._entry.159, section ".printk_index", align 4
@lsb_header_tail_dump._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.143, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09blDataSize    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.164 = internal global ptr @lsb_header_tail_dump._entry.162, section ".printk_index", align 4
@lsb_header_tail_dump._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.143, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09appCodeOff    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.167 = internal global ptr @lsb_header_tail_dump._entry.165, section ".printk_index", align 4
@lsb_header_tail_dump._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.143, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09appCodeSize   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.170 = internal global ptr @lsb_header_tail_dump._entry.168, section ".printk_index", align 4
@lsb_header_tail_dump._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.143, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09appDataOff    : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.173 = internal global ptr @lsb_header_tail_dump._entry.171, section ".printk_index", align 4
@lsb_header_tail_dump._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.143, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09appDataSize   : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.176 = internal global ptr @lsb_header_tail_dump._entry.174, section ".printk_index", align 4
@lsb_header_tail_dump._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.143, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: \09flags         : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lsb_header_tail_dump._entry_ptr.179 = internal global ptr @lsb_header_tail_dump._entry.177, section ".printk_index", align 4
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 28, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 29, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 30, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 31, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 32, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 33, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 39, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 40, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 41, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 42, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 43, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 44, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 45, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 83, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 84, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 85, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 86, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 88, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 92, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 93, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 95, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 97, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 99, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 101, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 103, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 107, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 109, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 111, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 113, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 115, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 117, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 126, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 127, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 128, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 129, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 131, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 135, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 136, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 138, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 140, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 142, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 144, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 146, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 148, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 152, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 154, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 156, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 158, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 160, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 162, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 51, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 52, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 53, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 54, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 55, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 56, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 57, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 58, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 59, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 60, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 61, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 62, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.559 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 63, i32 2 }
@llvm.compiler.used = appending global [190 x ptr] [ptr @flcn_acr_desc_dump._entry, ptr @flcn_acr_desc_dump._entry.36, ptr @flcn_acr_desc_dump._entry.39, ptr @flcn_acr_desc_dump._entry.42, ptr @flcn_acr_desc_dump._entry.45, ptr @flcn_acr_desc_dump._entry.48, ptr @flcn_acr_desc_dump._entry.51, ptr @flcn_acr_desc_dump._entry.54, ptr @flcn_acr_desc_dump._entry.57, ptr @flcn_acr_desc_dump._entry.60, ptr @flcn_acr_desc_dump._entry.63, ptr @flcn_acr_desc_dump._entry.66, ptr @flcn_acr_desc_dump._entry.69, ptr @flcn_acr_desc_dump._entry.72, ptr @flcn_acr_desc_dump._entry.75, ptr @flcn_acr_desc_dump._entry.78, ptr @flcn_acr_desc_dump._entry.81, ptr @flcn_acr_desc_dump._entry.84, ptr @flcn_acr_desc_dump._entry_ptr, ptr @flcn_acr_desc_dump._entry_ptr.38, ptr @flcn_acr_desc_dump._entry_ptr.41, ptr @flcn_acr_desc_dump._entry_ptr.44, ptr @flcn_acr_desc_dump._entry_ptr.47, ptr @flcn_acr_desc_dump._entry_ptr.50, ptr @flcn_acr_desc_dump._entry_ptr.53, ptr @flcn_acr_desc_dump._entry_ptr.56, ptr @flcn_acr_desc_dump._entry_ptr.59, ptr @flcn_acr_desc_dump._entry_ptr.62, ptr @flcn_acr_desc_dump._entry_ptr.65, ptr @flcn_acr_desc_dump._entry_ptr.68, ptr @flcn_acr_desc_dump._entry_ptr.71, ptr @flcn_acr_desc_dump._entry_ptr.74, ptr @flcn_acr_desc_dump._entry_ptr.77, ptr @flcn_acr_desc_dump._entry_ptr.80, ptr @flcn_acr_desc_dump._entry_ptr.83, ptr @flcn_acr_desc_dump._entry_ptr.86, ptr @flcn_acr_desc_v1_dump._entry, ptr @flcn_acr_desc_v1_dump._entry.100, ptr @flcn_acr_desc_v1_dump._entry.103, ptr @flcn_acr_desc_v1_dump._entry.106, ptr @flcn_acr_desc_v1_dump._entry.109, ptr @flcn_acr_desc_v1_dump._entry.112, ptr @flcn_acr_desc_v1_dump._entry.115, ptr @flcn_acr_desc_v1_dump._entry.118, ptr @flcn_acr_desc_v1_dump._entry.121, ptr @flcn_acr_desc_v1_dump._entry.124, ptr @flcn_acr_desc_v1_dump._entry.127, ptr @flcn_acr_desc_v1_dump._entry.130, ptr @flcn_acr_desc_v1_dump._entry.133, ptr @flcn_acr_desc_v1_dump._entry.136, ptr @flcn_acr_desc_v1_dump._entry.139, ptr @flcn_acr_desc_v1_dump._entry.88, ptr @flcn_acr_desc_v1_dump._entry.91, ptr @flcn_acr_desc_v1_dump._entry.94, ptr @flcn_acr_desc_v1_dump._entry.97, ptr @flcn_acr_desc_v1_dump._entry_ptr, ptr @flcn_acr_desc_v1_dump._entry_ptr.102, ptr @flcn_acr_desc_v1_dump._entry_ptr.105, ptr @flcn_acr_desc_v1_dump._entry_ptr.108, ptr @flcn_acr_desc_v1_dump._entry_ptr.111, ptr @flcn_acr_desc_v1_dump._entry_ptr.114, ptr @flcn_acr_desc_v1_dump._entry_ptr.117, ptr @flcn_acr_desc_v1_dump._entry_ptr.120, ptr @flcn_acr_desc_v1_dump._entry_ptr.123, ptr @flcn_acr_desc_v1_dump._entry_ptr.126, ptr @flcn_acr_desc_v1_dump._entry_ptr.129, ptr @flcn_acr_desc_v1_dump._entry_ptr.132, ptr @flcn_acr_desc_v1_dump._entry_ptr.135, ptr @flcn_acr_desc_v1_dump._entry_ptr.138, ptr @flcn_acr_desc_v1_dump._entry_ptr.141, ptr @flcn_acr_desc_v1_dump._entry_ptr.90, ptr @flcn_acr_desc_v1_dump._entry_ptr.93, ptr @flcn_acr_desc_v1_dump._entry_ptr.96, ptr @flcn_acr_desc_v1_dump._entry_ptr.99, ptr @lsb_header_tail_dump._entry, ptr @lsb_header_tail_dump._entry.144, ptr @lsb_header_tail_dump._entry.147, ptr @lsb_header_tail_dump._entry.150, ptr @lsb_header_tail_dump._entry.153, ptr @lsb_header_tail_dump._entry.156, ptr @lsb_header_tail_dump._entry.159, ptr @lsb_header_tail_dump._entry.162, ptr @lsb_header_tail_dump._entry.165, ptr @lsb_header_tail_dump._entry.168, ptr @lsb_header_tail_dump._entry.171, ptr @lsb_header_tail_dump._entry.174, ptr @lsb_header_tail_dump._entry.177, ptr @lsb_header_tail_dump._entry_ptr, ptr @lsb_header_tail_dump._entry_ptr.146, ptr @lsb_header_tail_dump._entry_ptr.149, ptr @lsb_header_tail_dump._entry_ptr.152, ptr @lsb_header_tail_dump._entry_ptr.155, ptr @lsb_header_tail_dump._entry_ptr.158, ptr @lsb_header_tail_dump._entry_ptr.161, ptr @lsb_header_tail_dump._entry_ptr.164, ptr @lsb_header_tail_dump._entry_ptr.167, ptr @lsb_header_tail_dump._entry_ptr.170, ptr @lsb_header_tail_dump._entry_ptr.173, ptr @lsb_header_tail_dump._entry_ptr.176, ptr @lsb_header_tail_dump._entry_ptr.179, ptr @wpr_header_dump._entry, ptr @wpr_header_dump._entry.11, ptr @wpr_header_dump._entry.14, ptr @wpr_header_dump._entry.17, ptr @wpr_header_dump._entry.5, ptr @wpr_header_dump._entry.8, ptr @wpr_header_dump._entry_ptr, ptr @wpr_header_dump._entry_ptr.10, ptr @wpr_header_dump._entry_ptr.13, ptr @wpr_header_dump._entry_ptr.16, ptr @wpr_header_dump._entry_ptr.19, ptr @wpr_header_dump._entry_ptr.7, ptr @wpr_header_v1_dump._entry, ptr @wpr_header_v1_dump._entry.21, ptr @wpr_header_v1_dump._entry.23, ptr @wpr_header_v1_dump._entry.25, ptr @wpr_header_v1_dump._entry.27, ptr @wpr_header_v1_dump._entry.29, ptr @wpr_header_v1_dump._entry.32, ptr @wpr_header_v1_dump._entry_ptr, ptr @wpr_header_v1_dump._entry_ptr.22, ptr @wpr_header_v1_dump._entry_ptr.24, ptr @wpr_header_v1_dump._entry_ptr.26, ptr @wpr_header_v1_dump._entry_ptr.28, ptr @wpr_header_v1_dump._entry_ptr.31, ptr @wpr_header_v1_dump._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.30, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_dump._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wpr_header_v1_dump._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_dump._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flcn_acr_desc_v1_dump._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsb_header_tail_dump._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wpr_header_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end76_crit_edge

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

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
  br i1 %cmp7, label %if.end16, label %if.end.if.end76_crit_edge

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

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
  %.pr101 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr101)
  %cmp22 = icmp ugt i32 %.pr101, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end76_crit_edge

if.end16.if.end76_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %lsb_offset = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %lsb_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lsb_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr103.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr103.pr)
  %cmp37 = icmp ugt i32 %.pr103.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end76_crit_edge

if.end31.if.end76_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %bootstrap_owner = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %bootstrap_owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bootstrap_owner, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr105 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr105)
  %cmp52 = icmp ugt i32 %.pr105, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end76_crit_edge

if.end46.if.end76_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %lazy_bootstrap = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %lazy_bootstrap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lazy_bootstrap, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr107.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr107.pr.pr)
  %cmp67 = icmp ugt i32 %.pr107.pr.pr, 3
  br i1 %cmp67, label %do.end71, label %if.end61.if.end76_crit_edge

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end76

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %status = getelementptr inbounds %struct.wpr_header, ptr %hdr, i32 0, i32 4
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %40) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end71, %if.end61.if.end76_crit_edge, %if.end46.if.end76_crit_edge, %if.end31.if.end76_crit_edge, %if.end16.if.end76_crit_edge, %if.end.if.end76_crit_edge, %entry.if.end76_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wpr_header_v1_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end91_crit_edge

entry.if.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  br i1 %cmp7, label %if.end16, label %if.end.if.end91_crit_edge

if.end.if.end91_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

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
  %.pr120 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr120)
  %cmp22 = icmp ugt i32 %.pr120, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end91_crit_edge

if.end16.if.end91_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %lsb_offset = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %lsb_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lsb_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr122.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr122.pr)
  %cmp37 = icmp ugt i32 %.pr122.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end91_crit_edge

if.end31.if.end91_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %bootstrap_owner = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %bootstrap_owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bootstrap_owner, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr124 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr124)
  %cmp52 = icmp ugt i32 %.pr124, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end91_crit_edge

if.end46.if.end91_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %lazy_bootstrap = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %lazy_bootstrap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lazy_bootstrap, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr126.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr126.pr.pr)
  %cmp67 = icmp ugt i32 %.pr126.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end91_crit_edge

if.end61.if.end91_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %bin_version = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 4
  %39 = ptrtoint ptr %bin_version to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bin_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr128 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr128)
  %cmp82 = icmp ugt i32 %.pr128, 3
  br i1 %cmp82, label %do.end86, label %if.end76.if.end91_crit_edge

if.end76.if.end91_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end91

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %status = getelementptr inbounds %struct.wpr_header_v1, ptr %hdr, i32 0, i32 5
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %47) #5
  br label %if.end91

if.end91:                                         ; preds = %do.end86, %if.end76.if.end91_crit_edge, %if.end61.if.end91_crit_edge, %if.end46.if.end91_crit_edge, %if.end31.if.end91_crit_edge, %if.end16.if.end91_crit_edge, %if.end.if.end91_crit_edge, %entry.if.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lsb_header_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.lsb_header, ptr %hdr, i32 0, i32 1
  tail call fastcc void @lsb_header_tail_dump(ptr noundef %subdev, ptr noundef %tail)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lsb_header_tail_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end181_crit_edge

entry.if.end181_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.142, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end181_crit_edge

if.end.if.end181_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.145, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr234 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr234)
  %cmp22 = icmp ugt i32 %.pr234, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end181_crit_edge

if.end16.if.end181_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %ucode_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %ucode_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ucode_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.148, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr236.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr236.pr)
  %cmp37 = icmp ugt i32 %.pr236.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end181_crit_edge

if.end31.if.end181_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %data_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.151, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr238 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr238)
  %cmp52 = icmp ugt i32 %.pr238, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end181_crit_edge

if.end46.if.end181_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %bl_code_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %bl_code_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bl_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.154, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr240.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr240.pr.pr)
  %cmp67 = icmp ugt i32 %.pr240.pr.pr, 3
  br i1 %cmp67, label %if.end76, label %if.end61.if.end181_crit_edge

if.end61.if.end181_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end76:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 8
  %bl_imem_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 4
  %39 = ptrtoint ptr %bl_imem_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bl_imem_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.157, ptr noundef %name, i32 noundef %40) #5
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr242 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr242)
  %cmp82 = icmp ugt i32 %.pr242, 3
  br i1 %cmp82, label %if.end91, label %if.end76.if.end181_crit_edge

if.end76.if.end181_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end91:                                         ; preds = %if.end76
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 4
  %dev88 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev88, align 8
  %bl_data_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 5
  %46 = ptrtoint ptr %bl_data_off to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bl_data_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.160, ptr noundef %name, i32 noundef %47) #5
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr244.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr244.pr.pr)
  %cmp97 = icmp ugt i32 %.pr244.pr.pr, 3
  br i1 %cmp97, label %if.end106, label %if.end91.if.end181_crit_edge

if.end91.if.end181_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end106:                                        ; preds = %if.end91
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev103, align 8
  %bl_data_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 6
  %53 = ptrtoint ptr %bl_data_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bl_data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.163, ptr noundef %name, i32 noundef %54) #5
  %55 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr246 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr246)
  %cmp112 = icmp ugt i32 %.pr246, 3
  br i1 %cmp112, label %if.end121, label %if.end106.if.end181_crit_edge

if.end106.if.end181_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end121:                                        ; preds = %if.end106
  %56 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device, align 4
  %dev118 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev118, align 8
  %app_code_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 7
  %60 = ptrtoint ptr %app_code_off to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %app_code_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.166, ptr noundef %name, i32 noundef %61) #5
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr248.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr248.pr.pr.pr)
  %cmp127 = icmp ugt i32 %.pr248.pr.pr.pr, 3
  br i1 %cmp127, label %if.end136, label %if.end121.if.end181_crit_edge

if.end121.if.end181_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end136:                                        ; preds = %if.end121
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %dev133 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev133, align 8
  %app_code_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 8
  %67 = ptrtoint ptr %app_code_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %app_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.169, ptr noundef %name, i32 noundef %68) #5
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr250 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr250)
  %cmp142 = icmp ugt i32 %.pr250, 3
  br i1 %cmp142, label %if.end151, label %if.end136.if.end181_crit_edge

if.end136.if.end181_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end151:                                        ; preds = %if.end136
  %70 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device, align 4
  %dev148 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev148, align 8
  %app_data_off = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 9
  %74 = ptrtoint ptr %app_data_off to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %app_data_off, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.172, ptr noundef %name, i32 noundef %75) #5
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr252.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr252.pr.pr.pr)
  %cmp157 = icmp ugt i32 %.pr252.pr.pr.pr, 3
  br i1 %cmp157, label %if.end166, label %if.end151.if.end181_crit_edge

if.end151.if.end181_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

if.end166:                                        ; preds = %if.end151
  %77 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device, align 4
  %dev163 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev163, align 8
  %app_data_size = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 10
  %81 = ptrtoint ptr %app_data_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %app_data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.175, ptr noundef %name, i32 noundef %82) #5
  %83 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr254 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr254)
  %cmp172 = icmp ugt i32 %.pr254, 3
  br i1 %cmp172, label %do.end176, label %if.end166.if.end181_crit_edge

if.end166.if.end181_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end181

do.end176:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #4
  %84 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device, align 4
  %dev178 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %dev178 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev178, align 8
  %flags = getelementptr inbounds %struct.lsb_header_tail, ptr %hdr, i32 0, i32 11
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.178, ptr noundef %name, i32 noundef %89) #5
  br label %if.end181

if.end181:                                        ; preds = %do.end176, %if.end166.if.end181_crit_edge, %if.end151.if.end181_crit_edge, %if.end136.if.end181_crit_edge, %if.end121.if.end181_crit_edge, %if.end106.if.end181_crit_edge, %if.end91.if.end181_crit_edge, %if.end76.if.end181_crit_edge, %if.end61.if.end181_crit_edge, %if.end46.if.end181_crit_edge, %if.end31.if.end181_crit_edge, %if.end16.if.end181_crit_edge, %if.end.if.end181_crit_edge, %entry.if.end181_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lsb_header_v1_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.lsb_header_v1, ptr %hdr, i32 0, i32 1
  tail call fastcc void @lsb_header_tail_dump(ptr noundef %subdev, ptr noundef %tail)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flcn_acr_desc_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end61.thread_crit_edge

entry.if.end61.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61.thread

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end61.thread_crit_edge

if.end.if.end61.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61.thread

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %wpr_region_id = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 1
  %11 = ptrtoint ptr %wpr_region_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wpr_region_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.37, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr356 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr356)
  %cmp22 = icmp ugt i32 %.pr356, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end61.thread_crit_edge

if.end16.if.end61.thread_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61.thread

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %wpr_offset = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 2
  %18 = ptrtoint ptr %wpr_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wpr_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr358.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr358.pr)
  %cmp37 = icmp ugt i32 %.pr358.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end61.thread_crit_edge

if.end31.if.end61.thread_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61.thread

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %mmu_mem_range = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 3
  %25 = ptrtoint ptr %mmu_mem_range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmu_mem_range, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.43, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr360 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr360)
  %cmp52 = icmp ugt i32 %.pr360, 3
  br i1 %cmp52, label %if.end61, label %if.end46.if.end61.thread_crit_edge

if.end46.if.end61.thread_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61.thread

if.end61.thread:                                  ; preds = %if.end46.if.end61.thread_crit_edge, %if.end31.if.end61.thread_crit_edge, %if.end16.if.end61.thread_crit_edge, %if.end.if.end61.thread_crit_edge, %entry.if.end61.thread_crit_edge
  %device73412 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name75413 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %if.end183

if.end61:                                         ; preds = %if.end46
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %regions = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4
  %32 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regions, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.46, ptr noundef %name, i32 noundef %33) #5
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr411 = load i32, ptr %debug, align 4
  %device73 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name75 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr411)
  %cmp68 = icmp ugt i32 %.pr411, 3
  br i1 %cmp68, label %if.end77, label %if.end61.if.end276_crit_edge

if.end61.if.end276_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end77:                                         ; preds = %if.end61
  %35 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device73, align 4
  %dev74 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.49, ptr noundef %name75, i32 noundef 0) #5
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr362 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr362)
  %cmp83 = icmp ugt i32 %.pr362, 3
  br i1 %cmp83, label %if.end93, label %if.end77.if.end276_crit_edge

if.end77.if.end276_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end93:                                         ; preds = %if.end77
  %40 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device73, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev89, align 8
  %arrayidx = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.52, ptr noundef %name75, i32 noundef %45) #5
  %46 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr364 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr364)
  %cmp99 = icmp ugt i32 %.pr364, 3
  br i1 %cmp99, label %if.end111, label %if.end93.if.end276_crit_edge

if.end93.if.end276_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end111:                                        ; preds = %if.end93
  %47 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device73, align 4
  %dev105 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev105, align 8
  %end_addr = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.55, ptr noundef %name75, i32 noundef %52) #5
  %53 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr366.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr366.pr)
  %cmp117 = icmp ugt i32 %.pr366.pr, 3
  br i1 %cmp117, label %if.end129, label %if.end111.if.end276_crit_edge

if.end111.if.end276_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end129:                                        ; preds = %if.end111
  %54 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device73, align 4
  %dev123 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev123, align 8
  %region_id = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0, i32 2
  %58 = ptrtoint ptr %region_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %region_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.58, ptr noundef %name75, i32 noundef %59) #5
  %60 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr368 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr368)
  %cmp135 = icmp ugt i32 %.pr368, 3
  br i1 %cmp135, label %if.end147, label %if.end129.if.end276_crit_edge

if.end129.if.end276_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end147:                                        ; preds = %if.end129
  %61 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device73, align 4
  %dev141 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev141, align 8
  %read_mask = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0, i32 3
  %65 = ptrtoint ptr %read_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.61, ptr noundef %name75, i32 noundef %66) #5
  %67 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr370.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr370.pr.pr)
  %cmp153 = icmp ugt i32 %.pr370.pr.pr, 3
  br i1 %cmp153, label %if.end165, label %if.end147.if.end276_crit_edge

if.end147.if.end276_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end165:                                        ; preds = %if.end147
  %68 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device73, align 4
  %dev159 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev159, align 8
  %write_mask = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0, i32 4
  %72 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %write_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.64, ptr noundef %name75, i32 noundef %73) #5
  %74 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr372 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr372)
  %cmp171 = icmp ugt i32 %.pr372, 3
  br i1 %cmp171, label %do.end175, label %if.end165.if.end276_crit_edge

if.end165.if.end276_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

do.end175:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #4
  %75 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device73, align 4
  %dev177 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %dev177 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev177, align 8
  %client_mask = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 0, i32 5
  %79 = ptrtoint ptr %client_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %client_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.67, ptr noundef %name75, i32 noundef %80) #5
  br label %if.end183

if.end183:                                        ; preds = %do.end175, %if.end61.thread
  %name75417.ph = phi ptr [ %name75, %do.end175 ], [ %name75413, %if.end61.thread ]
  %device73415.ph = phi ptr [ %device73, %do.end175 ], [ %device73412, %if.end61.thread ]
  %81 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr419 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr419)
  %cmp68.1 = icmp ugt i32 %.pr419, 3
  br i1 %cmp68.1, label %if.end77.1, label %if.end183.if.end276_crit_edge

if.end183.if.end276_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end77.1:                                       ; preds = %if.end183
  %82 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device73415.ph, align 4
  %dev74.1 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %dev74.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev74.1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.49, ptr noundef %name75417.ph, i32 noundef 1) #5
  %86 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr362.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr362.1)
  %cmp83.1 = icmp ugt i32 %.pr362.1, 3
  br i1 %cmp83.1, label %if.end93.1, label %if.end77.1.if.end276_crit_edge

if.end77.1.if.end276_crit_edge:                   ; preds = %if.end77.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end93.1:                                       ; preds = %if.end77.1
  %87 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device73415.ph, align 4
  %dev89.1 = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev89.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev89.1, align 8
  %arrayidx.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.52, ptr noundef %name75417.ph, i32 noundef %92) #5
  %93 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr364.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr364.1)
  %cmp99.1 = icmp ugt i32 %.pr364.1, 3
  br i1 %cmp99.1, label %if.end111.1, label %if.end93.1.if.end276_crit_edge

if.end93.1.if.end276_crit_edge:                   ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end111.1:                                      ; preds = %if.end93.1
  %94 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %device73415.ph, align 4
  %dev105.1 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %dev105.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev105.1, align 8
  %end_addr.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1, i32 1
  %98 = ptrtoint ptr %end_addr.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %end_addr.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.55, ptr noundef %name75417.ph, i32 noundef %99) #5
  %100 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr366.pr.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr366.pr.1)
  %cmp117.1 = icmp ugt i32 %.pr366.pr.1, 3
  br i1 %cmp117.1, label %if.end129.1, label %if.end111.1.if.end276_crit_edge

if.end111.1.if.end276_crit_edge:                  ; preds = %if.end111.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end129.1:                                      ; preds = %if.end111.1
  %101 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device73415.ph, align 4
  %dev123.1 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %dev123.1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev123.1, align 8
  %region_id.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1, i32 2
  %105 = ptrtoint ptr %region_id.1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %region_id.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.58, ptr noundef %name75417.ph, i32 noundef %106) #5
  %107 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr368.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr368.1)
  %cmp135.1 = icmp ugt i32 %.pr368.1, 3
  br i1 %cmp135.1, label %if.end147.1, label %if.end129.1.if.end276_crit_edge

if.end129.1.if.end276_crit_edge:                  ; preds = %if.end129.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end147.1:                                      ; preds = %if.end129.1
  %108 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %device73415.ph, align 4
  %dev141.1 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %dev141.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev141.1, align 8
  %read_mask.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1, i32 3
  %112 = ptrtoint ptr %read_mask.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %read_mask.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.61, ptr noundef %name75417.ph, i32 noundef %113) #5
  %114 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pr370.pr.pr.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr370.pr.pr.1)
  %cmp153.1 = icmp ugt i32 %.pr370.pr.pr.1, 3
  br i1 %cmp153.1, label %if.end165.1, label %if.end147.1.if.end276_crit_edge

if.end147.1.if.end276_crit_edge:                  ; preds = %if.end147.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end165.1:                                      ; preds = %if.end147.1
  %115 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device73415.ph, align 4
  %dev159.1 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %dev159.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev159.1, align 8
  %write_mask.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1, i32 4
  %119 = ptrtoint ptr %write_mask.1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %write_mask.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.64, ptr noundef %name75417.ph, i32 noundef %120) #5
  %121 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr372.1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr372.1)
  %cmp171.1 = icmp ugt i32 %.pr372.1, 3
  br i1 %cmp171.1, label %if.end183.1, label %if.end165.1.if.end276_crit_edge

if.end165.1.if.end276_crit_edge:                  ; preds = %if.end165.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end183.1:                                      ; preds = %if.end165.1
  %122 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device73415.ph, align 4
  %dev177.1 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev177.1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev177.1, align 8
  %client_mask.1 = getelementptr %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 4, i32 1, i32 1, i32 5
  %126 = ptrtoint ptr %client_mask.1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %client_mask.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %125, ptr noundef nonnull @.str.67, ptr noundef %name75417.ph, i32 noundef %127) #5
  %128 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr423.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr423.pr)
  %cmp189 = icmp ugt i32 %.pr423.pr, 3
  br i1 %cmp189, label %if.end198, label %if.end183.1.if.end276_crit_edge

if.end183.1.if.end276_crit_edge:                  ; preds = %if.end183.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end198:                                        ; preds = %if.end183.1
  %129 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %device73415.ph, align 4
  %dev195 = getelementptr inbounds %struct.nvkm_device, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev195, align 8
  %ucode_blob_size = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 5
  %133 = ptrtoint ptr %ucode_blob_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ucode_blob_size, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull @.str.70, ptr noundef %name75417.ph, i32 noundef %134) #5
  %135 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pr374 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr374)
  %cmp204 = icmp ugt i32 %.pr374, 3
  br i1 %cmp204, label %if.end213, label %if.end198.if.end276_crit_edge

if.end198.if.end276_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end213:                                        ; preds = %if.end198
  %136 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device73415.ph, align 4
  %dev210 = getelementptr inbounds %struct.nvkm_device, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev210, align 8
  %ucode_blob_base = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 6
  %140 = ptrtoint ptr %ucode_blob_base to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %ucode_blob_base, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str.73, ptr noundef %name75417.ph, i64 noundef %141) #5
  %142 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pr376 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr376)
  %cmp219 = icmp ugt i32 %.pr376, 3
  br i1 %cmp219, label %if.end228, label %if.end213.if.end276_crit_edge

if.end213.if.end276_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end228:                                        ; preds = %if.end213
  %143 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device73415.ph, align 4
  %dev225 = getelementptr inbounds %struct.nvkm_device, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %dev225 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev225, align 8
  %vpr_desc = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 7
  %147 = ptrtoint ptr %vpr_desc to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vpr_desc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.76, ptr noundef %name75417.ph, i32 noundef %148) #5
  %149 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr378.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr378.pr)
  %cmp234 = icmp ugt i32 %.pr378.pr, 3
  br i1 %cmp234, label %if.end244, label %if.end228.if.end276_crit_edge

if.end228.if.end276_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end244:                                        ; preds = %if.end228
  %150 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device73415.ph, align 4
  %dev240 = getelementptr inbounds %struct.nvkm_device, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev240, align 8
  %vpr_start = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 7, i32 1
  %154 = ptrtoint ptr %vpr_start to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %vpr_start, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %153, ptr noundef nonnull @.str.79, ptr noundef %name75417.ph, i32 noundef %155) #5
  %156 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr380 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr380)
  %cmp250 = icmp ugt i32 %.pr380, 3
  br i1 %cmp250, label %if.end260, label %if.end244.if.end276_crit_edge

if.end244.if.end276_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

if.end260:                                        ; preds = %if.end244
  %157 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device73415.ph, align 4
  %dev256 = getelementptr inbounds %struct.nvkm_device, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %dev256 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev256, align 8
  %vpr_end = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 7, i32 2
  %161 = ptrtoint ptr %vpr_end to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %vpr_end, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %160, ptr noundef nonnull @.str.82, ptr noundef %name75417.ph, i32 noundef %162) #5
  %163 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr382.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr382.pr.pr)
  %cmp266 = icmp ugt i32 %.pr382.pr.pr, 3
  br i1 %cmp266, label %do.end270, label %if.end260.if.end276_crit_edge

if.end260.if.end276_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end276

do.end270:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #4
  %164 = ptrtoint ptr %device73415.ph to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device73415.ph, align 4
  %dev272 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %dev272 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev272, align 8
  %hdcp_policies = getelementptr inbounds %struct.flcn_acr_desc, ptr %hdr, i32 0, i32 7, i32 3
  %168 = ptrtoint ptr %hdcp_policies to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %hdcp_policies, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.85, ptr noundef %name75417.ph, i32 noundef %169) #5
  br label %if.end276

if.end276:                                        ; preds = %do.end270, %if.end260.if.end276_crit_edge, %if.end244.if.end276_crit_edge, %if.end228.if.end276_crit_edge, %if.end213.if.end276_crit_edge, %if.end198.if.end276_crit_edge, %if.end183.1.if.end276_crit_edge, %if.end165.1.if.end276_crit_edge, %if.end147.1.if.end276_crit_edge, %if.end129.1.if.end276_crit_edge, %if.end111.1.if.end276_crit_edge, %if.end93.1.if.end276_crit_edge, %if.end77.1.if.end276_crit_edge, %if.end183.if.end276_crit_edge, %if.end165.if.end276_crit_edge, %if.end147.if.end276_crit_edge, %if.end129.if.end276_crit_edge, %if.end111.if.end276_crit_edge, %if.end93.if.end276_crit_edge, %if.end77.if.end276_crit_edge, %if.end61.if.end276_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flcn_acr_desc_v1_dump(ptr noundef %subdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef %name) #5
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end61_crit_edge

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev13, align 8
  %wpr_region_id = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 2
  %11 = ptrtoint ptr %wpr_region_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wpr_region_id, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.89, ptr noundef %name, i32 noundef %12) #5
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr379 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr379)
  %cmp22 = icmp ugt i32 %.pr379, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end61_crit_edge

if.end16.if.end61_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %wpr_offset = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 3
  %18 = ptrtoint ptr %wpr_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wpr_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.92, ptr noundef %name, i32 noundef %19) #5
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr381.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr381.pr)
  %cmp37 = icmp ugt i32 %.pr381.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end61_crit_edge

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %mmu_memory_range = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 4
  %25 = ptrtoint ptr %mmu_memory_range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mmu_memory_range, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.95, ptr noundef %name, i32 noundef %26) #5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr383 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr383)
  %cmp52 = icmp ugt i32 %.pr383, 3
  br i1 %cmp52, label %do.end56, label %if.end46.if.end61_crit_edge

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #4
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %regions = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5
  %32 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regions, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.98, ptr noundef %name, i32 noundef %33) #5
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %if.end46.if.end61_crit_edge, %if.end31.if.end61_crit_edge, %if.end16.if.end61_crit_edge, %if.end.if.end61_crit_edge, %entry.if.end61_crit_edge
  %device73 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name75 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %do.body65

do.body65:                                        ; preds = %if.end201.do.body65_crit_edge, %if.end61
  %cmp64 = phi i1 [ true, %if.end61 ], [ false, %if.end201.do.body65_crit_edge ]
  %i.0442 = phi i32 [ 0, %if.end61 ], [ 1, %if.end201.do.body65_crit_edge ]
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp68 = icmp ugt i32 %35, 3
  br i1 %cmp68, label %if.end77, label %do.body65.if.end201_crit_edge

do.body65.if.end201_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end77:                                         ; preds = %do.body65
  %36 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device73, align 4
  %dev74 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.101, ptr noundef %name75, i32 noundef %i.0442) #5
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr385 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr385)
  %cmp83 = icmp ugt i32 %.pr385, 3
  br i1 %cmp83, label %if.end93, label %if.end77.if.end201_crit_edge

if.end77.if.end201_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end93:                                         ; preds = %if.end77
  %41 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device73, align 4
  %dev89 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev89, align 8
  %arrayidx = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.104, ptr noundef %name75, i32 noundef %46) #5
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr387 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr387)
  %cmp99 = icmp ugt i32 %.pr387, 3
  br i1 %cmp99, label %if.end111, label %if.end93.if.end201_crit_edge

if.end93.if.end201_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end111:                                        ; preds = %if.end93
  %48 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device73, align 4
  %dev105 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev105, align 8
  %end_addr = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 1
  %52 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.107, ptr noundef %name75, i32 noundef %53) #5
  %54 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr389.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr389.pr)
  %cmp117 = icmp ugt i32 %.pr389.pr, 3
  br i1 %cmp117, label %if.end129, label %if.end111.if.end201_crit_edge

if.end111.if.end201_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end129:                                        ; preds = %if.end111
  %55 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device73, align 4
  %dev123 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev123, align 8
  %region_id = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 2
  %59 = ptrtoint ptr %region_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %region_id, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.110, ptr noundef %name75, i32 noundef %60) #5
  %61 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr391 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr391)
  %cmp135 = icmp ugt i32 %.pr391, 3
  br i1 %cmp135, label %if.end147, label %if.end129.if.end201_crit_edge

if.end129.if.end201_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end147:                                        ; preds = %if.end129
  %62 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device73, align 4
  %dev141 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev141, align 8
  %read_mask = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 3
  %66 = ptrtoint ptr %read_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %read_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.113, ptr noundef %name75, i32 noundef %67) #5
  %68 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr393.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr393.pr.pr)
  %cmp153 = icmp ugt i32 %.pr393.pr.pr, 3
  br i1 %cmp153, label %if.end165, label %if.end147.if.end201_crit_edge

if.end147.if.end201_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end165:                                        ; preds = %if.end147
  %69 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device73, align 4
  %dev159 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev159, align 8
  %write_mask = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 4
  %73 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %write_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.116, ptr noundef %name75, i32 noundef %74) #5
  %75 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr395 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr395)
  %cmp171 = icmp ugt i32 %.pr395, 3
  br i1 %cmp171, label %if.end183, label %if.end165.if.end201_crit_edge

if.end165.if.end201_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

if.end183:                                        ; preds = %if.end165
  %76 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device73, align 4
  %dev177 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev177 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev177, align 8
  %client_mask = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 5
  %80 = ptrtoint ptr %client_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %client_mask, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.119, ptr noundef %name75, i32 noundef %81) #5
  %82 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr397.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr397.pr.pr)
  %cmp189 = icmp ugt i32 %.pr397.pr.pr, 3
  br i1 %cmp189, label %do.end193, label %if.end183.if.end201_crit_edge

if.end183.if.end201_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end201

do.end193:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #4
  %83 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device73, align 4
  %dev195 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev195, align 8
  %shadow_mem_start_addr = getelementptr %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 5, i32 1, i32 %i.0442, i32 6
  %87 = ptrtoint ptr %shadow_mem_start_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %shadow_mem_start_addr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.122, ptr noundef %name75, i32 noundef %88) #5
  br label %if.end201

if.end201:                                        ; preds = %do.end193, %if.end183.if.end201_crit_edge, %if.end165.if.end201_crit_edge, %if.end147.if.end201_crit_edge, %if.end129.if.end201_crit_edge, %if.end111.if.end201_crit_edge, %if.end93.if.end201_crit_edge, %if.end77.if.end201_crit_edge, %do.body65.if.end201_crit_edge
  br i1 %cmp64, label %if.end201.do.body65_crit_edge, label %do.body204

if.end201.do.body65_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body65

do.body204:                                       ; preds = %if.end201
  %89 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp207 = icmp ugt i32 %90, 3
  br i1 %cmp207, label %if.end216, label %do.body204.if.end294_crit_edge

do.body204.if.end294_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

if.end216:                                        ; preds = %do.body204
  %91 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device73, align 4
  %dev213 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev213 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev213, align 8
  %ucode_blob_size = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 6
  %95 = ptrtoint ptr %ucode_blob_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ucode_blob_size, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.125, ptr noundef %name75, i32 noundef %96) #5
  %97 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr399 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr399)
  %cmp222 = icmp ugt i32 %.pr399, 3
  br i1 %cmp222, label %if.end231, label %if.end216.if.end294_crit_edge

if.end216.if.end294_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

if.end231:                                        ; preds = %if.end216
  %98 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device73, align 4
  %dev228 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev228, align 8
  %ucode_blob_base = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 7
  %102 = ptrtoint ptr %ucode_blob_base to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ucode_blob_base, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.128, ptr noundef %name75, i64 noundef %103) #5
  %104 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr401 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr401)
  %cmp237 = icmp ugt i32 %.pr401, 3
  br i1 %cmp237, label %if.end246, label %if.end231.if.end294_crit_edge

if.end231.if.end294_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

if.end246:                                        ; preds = %if.end231
  %105 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device73, align 4
  %dev243 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %dev243 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev243, align 8
  %vpr_desc = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 8
  %109 = ptrtoint ptr %vpr_desc to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vpr_desc, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.131, ptr noundef %name75, i32 noundef %110) #5
  %111 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr403.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr403.pr)
  %cmp252 = icmp ugt i32 %.pr403.pr, 3
  br i1 %cmp252, label %if.end262, label %if.end246.if.end294_crit_edge

if.end246.if.end294_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

if.end262:                                        ; preds = %if.end246
  %112 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device73, align 4
  %dev258 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %dev258 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev258, align 8
  %vpr_start = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 8, i32 1
  %116 = ptrtoint ptr %vpr_start to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vpr_start, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.134, ptr noundef %name75, i32 noundef %117) #5
  %118 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr405 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr405)
  %cmp268 = icmp ugt i32 %.pr405, 3
  br i1 %cmp268, label %if.end278, label %if.end262.if.end294_crit_edge

if.end262.if.end294_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

if.end278:                                        ; preds = %if.end262
  %119 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device73, align 4
  %dev274 = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %dev274 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev274, align 8
  %vpr_end = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 8, i32 2
  %123 = ptrtoint ptr %vpr_end to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vpr_end, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %122, ptr noundef nonnull @.str.137, ptr noundef %name75, i32 noundef %124) #5
  %125 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr407.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr407.pr.pr)
  %cmp284 = icmp ugt i32 %.pr407.pr.pr, 3
  br i1 %cmp284, label %do.end288, label %if.end278.if.end294_crit_edge

if.end278.if.end294_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

do.end288:                                        ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #4
  %126 = ptrtoint ptr %device73 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device73, align 4
  %dev290 = getelementptr inbounds %struct.nvkm_device, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %dev290 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev290, align 8
  %hdcp_policies = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %hdr, i32 0, i32 8, i32 3
  %130 = ptrtoint ptr %hdcp_policies to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hdcp_policies, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.140, ptr noundef %name75, i32 noundef %131) #5
  br label %if.end294

if.end294:                                        ; preds = %do.end288, %if.end278.if.end294_crit_edge, %if.end262.if.end294_crit_edge, %if.end246.if.end294_crit_edge, %if.end231.if.end294_crit_edge, %if.end216.if.end294_crit_edge, %do.body204.if.end294_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wpr_header_dump._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wpr_header_dump._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 29, i32 2}
!10 = !{ptr @wpr_header_dump._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wpr_header_dump._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 30, i32 2}
!14 = !{ptr @wpr_header_dump._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @wpr_header_dump._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 31, i32 2}
!18 = !{ptr @wpr_header_dump._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @wpr_header_dump._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 32, i32 2}
!22 = !{ptr @wpr_header_dump._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @wpr_header_dump._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 33, i32 2}
!26 = !{ptr @wpr_header_dump._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wpr_header_dump._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 39, i32 2}
!30 = !{ptr @wpr_header_v1_dump._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @wpr_header_v1_dump._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wpr_header_v1_dump._entry.21, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 40, i32 2}
!34 = !{ptr @wpr_header_v1_dump._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @wpr_header_v1_dump._entry.23, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 41, i32 2}
!37 = !{ptr @wpr_header_v1_dump._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @wpr_header_v1_dump._entry.25, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 42, i32 2}
!40 = !{ptr @wpr_header_v1_dump._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @wpr_header_v1_dump._entry.27, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 43, i32 2}
!43 = !{ptr @wpr_header_v1_dump._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 44, i32 2}
!46 = !{ptr @wpr_header_v1_dump._entry.29, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wpr_header_v1_dump._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @wpr_header_v1_dump._entry.32, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 45, i32 2}
!50 = !{ptr @wpr_header_v1_dump._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 83, i32 2}
!53 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @flcn_acr_desc_dump._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @flcn_acr_desc_dump._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 84, i32 2}
!58 = !{ptr @flcn_acr_desc_dump._entry.36, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @flcn_acr_desc_dump._entry_ptr.38, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 85, i32 2}
!62 = !{ptr @flcn_acr_desc_dump._entry.39, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @flcn_acr_desc_dump._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.43, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 86, i32 2}
!66 = !{ptr @flcn_acr_desc_dump._entry.42, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @flcn_acr_desc_dump._entry_ptr.44, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 88, i32 2}
!70 = !{ptr @flcn_acr_desc_dump._entry.45, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @flcn_acr_desc_dump._entry_ptr.47, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 92, i32 3}
!74 = !{ptr @flcn_acr_desc_dump._entry.48, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @flcn_acr_desc_dump._entry_ptr.50, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 93, i32 3}
!78 = !{ptr @flcn_acr_desc_dump._entry.51, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @flcn_acr_desc_dump._entry_ptr.53, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.55, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 95, i32 3}
!82 = !{ptr @flcn_acr_desc_dump._entry.54, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @flcn_acr_desc_dump._entry_ptr.56, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.58, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 97, i32 3}
!86 = !{ptr @flcn_acr_desc_dump._entry.57, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @flcn_acr_desc_dump._entry_ptr.59, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.61, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 99, i32 3}
!90 = !{ptr @flcn_acr_desc_dump._entry.60, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @flcn_acr_desc_dump._entry_ptr.62, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.64, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 101, i32 3}
!94 = !{ptr @flcn_acr_desc_dump._entry.63, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @flcn_acr_desc_dump._entry_ptr.65, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.67, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 103, i32 3}
!98 = !{ptr @flcn_acr_desc_dump._entry.66, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @flcn_acr_desc_dump._entry_ptr.68, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.70, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 107, i32 2}
!102 = !{ptr @flcn_acr_desc_dump._entry.69, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @flcn_acr_desc_dump._entry_ptr.71, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.73, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 109, i32 2}
!106 = !{ptr @flcn_acr_desc_dump._entry.72, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @flcn_acr_desc_dump._entry_ptr.74, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.76, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 111, i32 2}
!110 = !{ptr @flcn_acr_desc_dump._entry.75, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @flcn_acr_desc_dump._entry_ptr.77, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.79, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 113, i32 2}
!114 = !{ptr @flcn_acr_desc_dump._entry.78, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @flcn_acr_desc_dump._entry_ptr.80, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.82, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 115, i32 2}
!118 = !{ptr @flcn_acr_desc_dump._entry.81, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @flcn_acr_desc_dump._entry_ptr.83, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.85, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 117, i32 2}
!122 = !{ptr @flcn_acr_desc_dump._entry.84, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @flcn_acr_desc_dump._entry_ptr.86, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.87, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 126, i32 2}
!126 = !{ptr @flcn_acr_desc_v1_dump._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.89, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 127, i32 2}
!130 = !{ptr @flcn_acr_desc_v1_dump._entry.88, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.90, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.92, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 128, i32 2}
!134 = !{ptr @flcn_acr_desc_v1_dump._entry.91, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.93, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.95, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 129, i32 2}
!138 = !{ptr @flcn_acr_desc_v1_dump._entry.94, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.96, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.98, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 131, i32 2}
!142 = !{ptr @flcn_acr_desc_v1_dump._entry.97, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.99, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.101, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 135, i32 3}
!146 = !{ptr @flcn_acr_desc_v1_dump._entry.100, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.102, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 136, i32 3}
!150 = !{ptr @flcn_acr_desc_v1_dump._entry.103, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.105, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.107, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 138, i32 3}
!154 = !{ptr @flcn_acr_desc_v1_dump._entry.106, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.108, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.110, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 140, i32 3}
!158 = !{ptr @flcn_acr_desc_v1_dump._entry.109, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.111, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.113, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 142, i32 3}
!162 = !{ptr @flcn_acr_desc_v1_dump._entry.112, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.114, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.116, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 144, i32 3}
!166 = !{ptr @flcn_acr_desc_v1_dump._entry.115, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.117, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.119, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 146, i32 3}
!170 = !{ptr @flcn_acr_desc_v1_dump._entry.118, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.120, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.122, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 148, i32 3}
!174 = !{ptr @flcn_acr_desc_v1_dump._entry.121, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.123, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.125, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 152, i32 2}
!178 = !{ptr @flcn_acr_desc_v1_dump._entry.124, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.126, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.128, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 154, i32 2}
!182 = !{ptr @flcn_acr_desc_v1_dump._entry.127, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.129, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.131, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 156, i32 2}
!186 = !{ptr @flcn_acr_desc_v1_dump._entry.130, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.132, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.134, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 158, i32 2}
!190 = !{ptr @flcn_acr_desc_v1_dump._entry.133, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.135, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.137, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 160, i32 2}
!194 = !{ptr @flcn_acr_desc_v1_dump._entry.136, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.138, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.140, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 162, i32 2}
!198 = !{ptr @flcn_acr_desc_v1_dump._entry.139, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @flcn_acr_desc_v1_dump._entry_ptr.141, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.142, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 51, i32 2}
!202 = !{ptr @.str.143, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @lsb_header_tail_dump._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @lsb_header_tail_dump._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.145, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 52, i32 2}
!207 = !{ptr @lsb_header_tail_dump._entry.144, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @lsb_header_tail_dump._entry_ptr.146, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.148, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 53, i32 2}
!211 = !{ptr @lsb_header_tail_dump._entry.147, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @lsb_header_tail_dump._entry_ptr.149, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.151, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 54, i32 2}
!215 = !{ptr @lsb_header_tail_dump._entry.150, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @lsb_header_tail_dump._entry_ptr.152, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.154, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 55, i32 2}
!219 = !{ptr @lsb_header_tail_dump._entry.153, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @lsb_header_tail_dump._entry_ptr.155, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.157, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 56, i32 2}
!223 = !{ptr @lsb_header_tail_dump._entry.156, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @lsb_header_tail_dump._entry_ptr.158, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.160, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 57, i32 2}
!227 = !{ptr @lsb_header_tail_dump._entry.159, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @lsb_header_tail_dump._entry_ptr.161, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.163, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 58, i32 2}
!231 = !{ptr @lsb_header_tail_dump._entry.162, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @lsb_header_tail_dump._entry_ptr.164, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.166, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 59, i32 2}
!235 = !{ptr @lsb_header_tail_dump._entry.165, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @lsb_header_tail_dump._entry_ptr.167, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.169, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 60, i32 2}
!239 = !{ptr @lsb_header_tail_dump._entry.168, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @lsb_header_tail_dump._entry_ptr.170, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.172, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 61, i32 2}
!243 = !{ptr @lsb_header_tail_dump._entry.171, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @lsb_header_tail_dump._entry_ptr.173, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.175, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 62, i32 2}
!247 = !{ptr @lsb_header_tail_dump._entry.174, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @lsb_header_tail_dump._entry_ptr.176, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.178, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c", i32 63, i32 2}
!251 = !{ptr @lsb_header_tail_dump._entry.177, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @lsb_header_tail_dump._entry_ptr.179, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
