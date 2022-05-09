; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvfw_ls_desc = type { %struct.nvfw_ls_desc_head, i32, [64 x %struct.anon], i32 }
%struct.nvfw_ls_desc_head = type { i32, i32, i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.nvfw_ls_desc_v1 = type { %struct.nvfw_ls_desc_head, i32, i32, [64 x %struct.anon.140], i32 }
%struct.anon.140 = type { i32, i32 }

@nvfw_ls_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09nbOverlays           : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvfw_ls_desc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvfw_ls_desc._entry_ptr = internal global ptr @nvfw_ls_desc._entry, section ".printk_index", align 4
@nvfw_ls_desc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: \09loadOvl[%d]          : 0x%x %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nvfw_ls_desc._entry_ptr.7 = internal global ptr @nvfw_ls_desc._entry.5, section ".printk_index", align 4
@nvfw_ls_desc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09compressed           : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_ls_desc._entry_ptr.10 = internal global ptr @nvfw_ls_desc._entry.8, section ".printk_index", align 4
@nvfw_ls_desc_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09nbImemOverlays       : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvfw_ls_desc_v1\00", [16 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_v1._entry_ptr = internal global ptr @nvfw_ls_desc_v1._entry, section ".printk_index", align 4
@nvfw_ls_desc_v1._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09nbDmemOverlays       : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_v1._entry_ptr.15 = internal global ptr @nvfw_ls_desc_v1._entry.13, section ".printk_index", align 4
@nvfw_ls_desc_v1._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: \09loadOvl[%2d]          : 0x%x %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_v1._entry_ptr.18 = internal global ptr @nvfw_ls_desc_v1._entry.16, section ".printk_index", align 4
@nvfw_ls_desc_v1._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 105, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_v1._entry_ptr.20 = internal global ptr @nvfw_ls_desc_v1._entry.19, section ".printk_index", align 4
@nvfw_ls_desc_head._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: lsUcodeImgDesc:\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvfw_ls_desc_head\00", [46 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr = internal global ptr @nvfw_ls_desc_head._entry, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09descriptorSize       : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.25 = internal global ptr @nvfw_ls_desc_head._entry.23, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 34, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09imageSize            : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.28 = internal global ptr @nvfw_ls_desc_head._entry.26, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 36, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09toolsVersion         : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.31 = internal global ptr @nvfw_ls_desc_head._entry.29, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appVersion           : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.34 = internal global ptr @nvfw_ls_desc_head._entry.32, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: \09date                 : %s\0A\00", [32 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.37 = internal global ptr @nvfw_ls_desc_head._entry.35, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.22, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09bootloaderStartOffset: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.40 = internal global ptr @nvfw_ls_desc_head._entry.38, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.22, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09bootloaderSize       : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.43 = internal global ptr @nvfw_ls_desc_head._entry.41, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.22, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09bootloaderImemOffset : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.46 = internal global ptr @nvfw_ls_desc_head._entry.44, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.22, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09bootloaderEntryPoint : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.49 = internal global ptr @nvfw_ls_desc_head._entry.47, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.22, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appStartOffset       : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.52 = internal global ptr @nvfw_ls_desc_head._entry.50, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appSize              : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.55 = internal global ptr @nvfw_ls_desc_head._entry.53, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.22, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appImemOffset        : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.58 = internal global ptr @nvfw_ls_desc_head._entry.56, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.22, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appImemEntry         : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.61 = internal global ptr @nvfw_ls_desc_head._entry.59, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.22, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appDmemOffset        : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.64 = internal global ptr @nvfw_ls_desc_head._entry.62, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.22, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appResidentCodeOffset: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.67 = internal global ptr @nvfw_ls_desc_head._entry.65, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.22, ptr @.str.2, i32 64, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appResidentCodeSize  : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.70 = internal global ptr @nvfw_ls_desc_head._entry.68, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.22, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appResidentDataOffset: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.73 = internal global ptr @nvfw_ls_desc_head._entry.71, section ".printk_index", align 4
@nvfw_ls_desc_head._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.22, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: \09appResidentDataSize  : 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@nvfw_ls_desc_head._entry_ptr.76 = internal global ptr @nvfw_ls_desc_head._entry.74, section ".printk_index", align 4
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 79, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 81, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 84, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 97, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 99, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 102, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 105, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 31, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 32, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 34, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 35, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 37, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 40, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 43, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 45, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 47, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 49, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 52, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 54, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 55, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 57, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 59, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 61, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 63, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 65, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 67, i32 2 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @nvfw_ls_desc._entry, ptr @nvfw_ls_desc._entry.5, ptr @nvfw_ls_desc._entry.8, ptr @nvfw_ls_desc._entry_ptr, ptr @nvfw_ls_desc._entry_ptr.10, ptr @nvfw_ls_desc._entry_ptr.7, ptr @nvfw_ls_desc_head._entry, ptr @nvfw_ls_desc_head._entry.23, ptr @nvfw_ls_desc_head._entry.26, ptr @nvfw_ls_desc_head._entry.29, ptr @nvfw_ls_desc_head._entry.32, ptr @nvfw_ls_desc_head._entry.35, ptr @nvfw_ls_desc_head._entry.38, ptr @nvfw_ls_desc_head._entry.41, ptr @nvfw_ls_desc_head._entry.44, ptr @nvfw_ls_desc_head._entry.47, ptr @nvfw_ls_desc_head._entry.50, ptr @nvfw_ls_desc_head._entry.53, ptr @nvfw_ls_desc_head._entry.56, ptr @nvfw_ls_desc_head._entry.59, ptr @nvfw_ls_desc_head._entry.62, ptr @nvfw_ls_desc_head._entry.65, ptr @nvfw_ls_desc_head._entry.68, ptr @nvfw_ls_desc_head._entry.71, ptr @nvfw_ls_desc_head._entry.74, ptr @nvfw_ls_desc_head._entry_ptr, ptr @nvfw_ls_desc_head._entry_ptr.25, ptr @nvfw_ls_desc_head._entry_ptr.28, ptr @nvfw_ls_desc_head._entry_ptr.31, ptr @nvfw_ls_desc_head._entry_ptr.34, ptr @nvfw_ls_desc_head._entry_ptr.37, ptr @nvfw_ls_desc_head._entry_ptr.40, ptr @nvfw_ls_desc_head._entry_ptr.43, ptr @nvfw_ls_desc_head._entry_ptr.46, ptr @nvfw_ls_desc_head._entry_ptr.49, ptr @nvfw_ls_desc_head._entry_ptr.52, ptr @nvfw_ls_desc_head._entry_ptr.55, ptr @nvfw_ls_desc_head._entry_ptr.58, ptr @nvfw_ls_desc_head._entry_ptr.61, ptr @nvfw_ls_desc_head._entry_ptr.64, ptr @nvfw_ls_desc_head._entry_ptr.67, ptr @nvfw_ls_desc_head._entry_ptr.70, ptr @nvfw_ls_desc_head._entry_ptr.73, ptr @nvfw_ls_desc_head._entry_ptr.76, ptr @nvfw_ls_desc_v1._entry, ptr @nvfw_ls_desc_v1._entry.13, ptr @nvfw_ls_desc_v1._entry.16, ptr @nvfw_ls_desc_v1._entry.19, ptr @nvfw_ls_desc_v1._entry_ptr, ptr @nvfw_ls_desc_v1._entry_ptr.15, ptr @nvfw_ls_desc_v1._entry_ptr.18, ptr @nvfw_ls_desc_v1._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_v1._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_v1._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_v1._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvfw_ls_desc_head._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_ls_desc(ptr noundef %subdev, ptr noundef returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvfw_ls_desc_head(ptr noundef %subdev, ptr noundef %data)
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %nb_overlays = getelementptr inbounds %struct.nvfw_ls_desc, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %nb_overlays to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_overlays, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %device13 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name15 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %do.body5

do.body5:                                         ; preds = %if.end19.do.body5_crit_edge, %if.end
  %i.055 = phi i32 [ 0, %if.end ], [ %inc, %if.end19.do.body5_crit_edge ]
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp8 = icmp ugt i32 %9, 3
  br i1 %cmp8, label %do.end12, label %do.body5.if.end19_crit_edge

do.body5.if.end19_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

do.end12:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device13, align 4
  %dev14 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 8
  %arrayidx = getelementptr %struct.nvfw_ls_desc, ptr %data, i32 0, i32 2, i32 %i.055
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.nvfw_ls_desc, ptr %data, i32 0, i32 2, i32 %i.055, i32 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef %name15, i32 noundef %i.055, i32 noundef %15, i32 noundef %17) #6
  br label %if.end19

if.end19:                                         ; preds = %do.end12, %do.body5.if.end19_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.body22, label %if.end19.do.body5_crit_edge

if.end19.do.body5_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5

do.body22:                                        ; preds = %if.end19
  %18 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp25 = icmp ugt i32 %19, 3
  br i1 %cmp25, label %do.end29, label %do.body22.if.end34_crit_edge

do.body22.if.end34_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

do.end29:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device13, align 4
  %dev31 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev31, align 8
  %compressed = getelementptr inbounds %struct.nvfw_ls_desc, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %compressed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %compressed, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef %name15, i32 noundef %25) #6
  br label %if.end34

if.end34:                                         ; preds = %do.end29, %do.body22.if.end34_crit_edge
  ret ptr %data
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvfw_ls_desc_head(ptr noundef %subdev, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end61_crit_edge

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef %name) #6
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %if.end16, label %if.end.if.end61_crit_edge

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %12) #6
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr351 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr351)
  %cmp22 = icmp ugt i32 %.pr351, 3
  br i1 %cmp22, label %if.end31, label %if.end16.if.end61_crit_edge

if.end16.if.end61_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.end31:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %dev28 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 8
  %image_size = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 1
  %18 = ptrtoint ptr %image_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %image_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %19) #6
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr353.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr353.pr)
  %cmp37 = icmp ugt i32 %.pr353.pr, 3
  br i1 %cmp37, label %if.end46, label %if.end31.if.end61_crit_edge

if.end31.if.end61_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

if.end46:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %dev43 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev43, align 8
  %tools_version = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 2
  %25 = ptrtoint ptr %tools_version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tools_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %26) #6
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr355 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr355)
  %cmp52 = icmp ugt i32 %.pr355, 3
  br i1 %cmp52, label %do.end56, label %if.end46.if.end61_crit_edge

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev58 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev58, align 8
  %app_version = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 3
  %32 = ptrtoint ptr %app_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %app_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %33) #6
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %if.end46.if.end61_crit_edge, %if.end31.if.end61_crit_edge, %if.end16.if.end61_crit_edge, %if.end.if.end61_crit_edge, %entry.if.end61_crit_edge
  %date64 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 4
  %call = tail call ptr @kstrndup(ptr noundef %date64, i32 noundef 64, i32 noundef 3264) #3
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp69 = icmp ugt i32 %35, 3
  br i1 %cmp69, label %do.end73, label %if.end61.if.end78_crit_edge

if.end61.if.end78_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end78

do.end73:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %device74 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %36 = ptrtoint ptr %device74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device74, align 4
  %dev75 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev75, align 8
  %name76 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.36, ptr noundef %name76, ptr noundef %call) #6
  br label %if.end78

if.end78:                                         ; preds = %do.end73, %if.end61.if.end78_crit_edge
  tail call void @kfree(ptr noundef %call) #3
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp84 = icmp ugt i32 %41, 3
  br i1 %cmp84, label %if.end93, label %if.end78.if.end273_crit_edge

if.end78.if.end273_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end93:                                         ; preds = %if.end78
  %device89 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %42 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device89, align 4
  %dev90 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev90, align 8
  %name91 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %bootloader_start_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 5
  %46 = ptrtoint ptr %bootloader_start_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bootloader_start_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.39, ptr noundef %name91, i32 noundef %47) #6
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr357 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr357)
  %cmp99 = icmp ugt i32 %.pr357, 3
  br i1 %cmp99, label %if.end108, label %if.end93.if.end273_crit_edge

if.end93.if.end273_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end108:                                        ; preds = %if.end93
  %49 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device89, align 4
  %dev105 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev105, align 8
  %bootloader_size = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 6
  %53 = ptrtoint ptr %bootloader_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bootloader_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.42, ptr noundef %name91, i32 noundef %54) #6
  %55 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr359 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr359)
  %cmp114 = icmp ugt i32 %.pr359, 3
  br i1 %cmp114, label %if.end123, label %if.end108.if.end273_crit_edge

if.end108.if.end273_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end123:                                        ; preds = %if.end108
  %56 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device89, align 4
  %dev120 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev120, align 8
  %bootloader_imem_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 7
  %60 = ptrtoint ptr %bootloader_imem_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bootloader_imem_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.45, ptr noundef %name91, i32 noundef %61) #6
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr361.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr361.pr)
  %cmp129 = icmp ugt i32 %.pr361.pr, 3
  br i1 %cmp129, label %if.end138, label %if.end123.if.end273_crit_edge

if.end123.if.end273_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end138:                                        ; preds = %if.end123
  %63 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device89, align 4
  %dev135 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev135, align 8
  %bootloader_entry_point = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 8
  %67 = ptrtoint ptr %bootloader_entry_point to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bootloader_entry_point, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.48, ptr noundef %name91, i32 noundef %68) #6
  %69 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr363 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr363)
  %cmp144 = icmp ugt i32 %.pr363, 3
  br i1 %cmp144, label %if.end153, label %if.end138.if.end273_crit_edge

if.end138.if.end273_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end153:                                        ; preds = %if.end138
  %70 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device89, align 4
  %dev150 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev150, align 8
  %app_start_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 9
  %74 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %app_start_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.51, ptr noundef %name91, i32 noundef %75) #6
  %76 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr365.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr365.pr.pr)
  %cmp159 = icmp ugt i32 %.pr365.pr.pr, 3
  br i1 %cmp159, label %if.end168, label %if.end153.if.end273_crit_edge

if.end153.if.end273_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end168:                                        ; preds = %if.end153
  %77 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device89, align 4
  %dev165 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %dev165 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev165, align 8
  %app_size = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 10
  %81 = ptrtoint ptr %app_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %app_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.54, ptr noundef %name91, i32 noundef %82) #6
  %83 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr367 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr367)
  %cmp174 = icmp ugt i32 %.pr367, 3
  br i1 %cmp174, label %if.end183, label %if.end168.if.end273_crit_edge

if.end168.if.end273_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end183:                                        ; preds = %if.end168
  %84 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device89, align 4
  %dev180 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev180, align 8
  %app_imem_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 11
  %88 = ptrtoint ptr %app_imem_offset to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %app_imem_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.57, ptr noundef %name91, i32 noundef %89) #6
  %90 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr369.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr369.pr.pr)
  %cmp189 = icmp ugt i32 %.pr369.pr.pr, 3
  br i1 %cmp189, label %if.end198, label %if.end183.if.end273_crit_edge

if.end183.if.end273_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end198:                                        ; preds = %if.end183
  %91 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device89, align 4
  %dev195 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev195, align 8
  %app_imem_entry = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 12
  %95 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %app_imem_entry, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.60, ptr noundef %name91, i32 noundef %96) #6
  %97 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr371 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr371)
  %cmp204 = icmp ugt i32 %.pr371, 3
  br i1 %cmp204, label %if.end213, label %if.end198.if.end273_crit_edge

if.end198.if.end273_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end213:                                        ; preds = %if.end198
  %98 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device89, align 4
  %dev210 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev210, align 8
  %app_dmem_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 13
  %102 = ptrtoint ptr %app_dmem_offset to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %app_dmem_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.63, ptr noundef %name91, i32 noundef %103) #6
  %104 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr373.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr373.pr.pr.pr)
  %cmp219 = icmp ugt i32 %.pr373.pr.pr.pr, 3
  br i1 %cmp219, label %if.end228, label %if.end213.if.end273_crit_edge

if.end213.if.end273_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end228:                                        ; preds = %if.end213
  %105 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device89, align 4
  %dev225 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %dev225 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev225, align 8
  %app_resident_code_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 14
  %109 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %app_resident_code_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.66, ptr noundef %name91, i32 noundef %110) #6
  %111 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr375 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr375)
  %cmp234 = icmp ugt i32 %.pr375, 3
  br i1 %cmp234, label %if.end243, label %if.end228.if.end273_crit_edge

if.end228.if.end273_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end243:                                        ; preds = %if.end228
  %112 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %device89, align 4
  %dev240 = getelementptr inbounds %struct.nvkm_device, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev240, align 8
  %app_resident_code_size = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 15
  %116 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %app_resident_code_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.69, ptr noundef %name91, i32 noundef %117) #6
  %118 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr377.pr.pr.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr377.pr.pr.pr)
  %cmp249 = icmp ugt i32 %.pr377.pr.pr.pr, 3
  br i1 %cmp249, label %if.end258, label %if.end243.if.end273_crit_edge

if.end243.if.end273_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

if.end258:                                        ; preds = %if.end243
  %119 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device89, align 4
  %dev255 = getelementptr inbounds %struct.nvkm_device, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %dev255 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev255, align 8
  %app_resident_data_offset = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 16
  %123 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %app_resident_data_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %122, ptr noundef nonnull @.str.72, ptr noundef %name91, i32 noundef %124) #6
  %125 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr379 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr379)
  %cmp264 = icmp ugt i32 %.pr379, 3
  br i1 %cmp264, label %do.end268, label %if.end258.if.end273_crit_edge

if.end258.if.end273_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end273

do.end268:                                        ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %device89 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %device89, align 4
  %dev270 = getelementptr inbounds %struct.nvkm_device, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %dev270 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev270, align 8
  %app_resident_data_size = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %hdr, i32 0, i32 17
  %130 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %app_resident_data_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %129, ptr noundef nonnull @.str.75, ptr noundef %name91, i32 noundef %131) #6
  br label %if.end273

if.end273:                                        ; preds = %do.end268, %if.end258.if.end273_crit_edge, %if.end243.if.end273_crit_edge, %if.end228.if.end273_crit_edge, %if.end213.if.end273_crit_edge, %if.end198.if.end273_crit_edge, %if.end183.if.end273_crit_edge, %if.end168.if.end273_crit_edge, %if.end153.if.end273_crit_edge, %if.end138.if.end273_crit_edge, %if.end123.if.end273_crit_edge, %if.end108.if.end273_crit_edge, %if.end93.if.end273_crit_edge, %if.end78.if.end273_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvfw_ls_desc_v1(ptr noundef %subdev, ptr noundef returned %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nvfw_ls_desc_head(ptr noundef %subdev, ptr noundef %data)
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %if.end, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

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
  %nb_imem_overlays = getelementptr inbounds %struct.nvfw_ls_desc_v1, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %nb_imem_overlays to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_imem_overlays, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %7) #6
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp7 = icmp ugt i32 %.pr, 3
  br i1 %cmp7, label %do.end11, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %dev13 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 8
  %13 = ptrtoint ptr %nb_imem_overlays to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_imem_overlays, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %14) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end11, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %device29 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %name31 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  br label %do.body21

do.body21:                                        ; preds = %if.end35.do.body21_crit_edge, %if.end17
  %i.076 = phi i32 [ 0, %if.end17 ], [ %inc, %if.end35.do.body21_crit_edge ]
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp24 = icmp ugt i32 %16, 3
  br i1 %cmp24, label %do.end28, label %do.body21.if.end35_crit_edge

do.body21.if.end35_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

do.end28:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %device29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device29, align 4
  %dev30 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev30, align 8
  %arrayidx = getelementptr %struct.nvfw_ls_desc_v1, ptr %data, i32 0, i32 3, i32 %i.076
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %size = getelementptr %struct.nvfw_ls_desc_v1, ptr %data, i32 0, i32 3, i32 %i.076, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.17, ptr noundef %name31, i32 noundef %i.076, i32 noundef %22, i32 noundef %24) #6
  br label %if.end35

if.end35:                                         ; preds = %do.end28, %do.body21.if.end35_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %do.body38, label %if.end35.do.body21_crit_edge

if.end35.do.body21_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body21

do.body38:                                        ; preds = %if.end35
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp41 = icmp ugt i32 %26, 3
  br i1 %cmp41, label %do.end45, label %do.body38.if.end50_crit_edge

do.body38.if.end50_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50

do.end45:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %device29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device29, align 4
  %dev47 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev47, align 8
  %compressed = getelementptr inbounds %struct.nvfw_ls_desc_v1, ptr %data, i32 0, i32 4
  %31 = ptrtoint ptr %compressed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %compressed, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.9, ptr noundef %name31, i32 noundef %32) #6
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %do.body38.if.end50_crit_edge
  ret ptr %data
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 79, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvfw_ls_desc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvfw_ls_desc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 81, i32 3}
!10 = !{ptr @nvfw_ls_desc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvfw_ls_desc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 84, i32 2}
!14 = !{ptr @nvfw_ls_desc._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvfw_ls_desc._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 97, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvfw_ls_desc_v1._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvfw_ls_desc_v1._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 99, i32 2}
!23 = !{ptr @nvfw_ls_desc_v1._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvfw_ls_desc_v1._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 102, i32 3}
!27 = !{ptr @nvfw_ls_desc_v1._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvfw_ls_desc_v1._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nvfw_ls_desc_v1._entry.19, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 105, i32 2}
!31 = !{ptr @nvfw_ls_desc_v1._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 31, i32 2}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nvfw_ls_desc_head._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nvfw_ls_desc_head._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 32, i32 2}
!39 = !{ptr @nvfw_ls_desc_head._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nvfw_ls_desc_head._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 34, i32 2}
!43 = !{ptr @nvfw_ls_desc_head._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @nvfw_ls_desc_head._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 35, i32 2}
!47 = !{ptr @nvfw_ls_desc_head._entry.29, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @nvfw_ls_desc_head._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 37, i32 2}
!51 = !{ptr @nvfw_ls_desc_head._entry.32, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nvfw_ls_desc_head._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 40, i32 2}
!55 = !{ptr @nvfw_ls_desc_head._entry.35, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nvfw_ls_desc_head._entry_ptr.37, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 43, i32 2}
!59 = !{ptr @nvfw_ls_desc_head._entry.38, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nvfw_ls_desc_head._entry_ptr.40, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 45, i32 2}
!63 = !{ptr @nvfw_ls_desc_head._entry.41, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nvfw_ls_desc_head._entry_ptr.43, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.45, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 47, i32 2}
!67 = !{ptr @nvfw_ls_desc_head._entry.44, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nvfw_ls_desc_head._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.48, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 49, i32 2}
!71 = !{ptr @nvfw_ls_desc_head._entry.47, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @nvfw_ls_desc_head._entry_ptr.49, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.51, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 52, i32 2}
!75 = !{ptr @nvfw_ls_desc_head._entry.50, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @nvfw_ls_desc_head._entry_ptr.52, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.54, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 54, i32 2}
!79 = !{ptr @nvfw_ls_desc_head._entry.53, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @nvfw_ls_desc_head._entry_ptr.55, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.57, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 55, i32 2}
!83 = !{ptr @nvfw_ls_desc_head._entry.56, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @nvfw_ls_desc_head._entry_ptr.58, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.60, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 57, i32 2}
!87 = !{ptr @nvfw_ls_desc_head._entry.59, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nvfw_ls_desc_head._entry_ptr.61, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.63, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 59, i32 2}
!91 = !{ptr @nvfw_ls_desc_head._entry.62, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nvfw_ls_desc_head._entry_ptr.64, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.66, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 61, i32 2}
!95 = !{ptr @nvfw_ls_desc_head._entry.65, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @nvfw_ls_desc_head._entry_ptr.67, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.69, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 63, i32 2}
!99 = !{ptr @nvfw_ls_desc_head._entry.68, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @nvfw_ls_desc_head._entry_ptr.70, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.72, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 65, i32 2}
!103 = !{ptr @nvfw_ls_desc_head._entry.71, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @nvfw_ls_desc_head._entry_ptr.73, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.75, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c", i32 67, i32 2}
!107 = !{ptr @nvfw_ls_desc_head._entry.74, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nvfw_ls_desc_head._entry_ptr.76, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
