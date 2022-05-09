; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/subdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/subdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bios\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devinit\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"top\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"privring\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mxm\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imem\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fb\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ltc\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmu\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bar\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fault\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acr\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pmu\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"volt\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iccsense\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"therm\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gsp\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ioctrl\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fla\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsp\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ce\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cipher\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disp\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gr\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ifb\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"me\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpeg\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msenc\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mspdec\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msppp\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msvld\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvdec\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvenc\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvjpg\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ofa\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sec\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sec2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vic\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vp\00", [29 x i8] zeroinitializer }, align 32
@nvkm_subdev_type = dso_local global { [51 x ptr], [52 x i8] } { [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fini\00", [27 x i8] zeroinitializer }, align 32
@nvkm_subdev_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.55, i32 60, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s running...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_subdev_fini\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/subdev.c\00", [53 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_subdev_fini._entry_ptr = internal global ptr @nvkm_subdev_fini._entry, section ".printk_index", align 4
@nvkm_subdev_fini._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.55, i32 66, ptr @.str.60, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s failed, %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_subdev_fini._entry_ptr.61 = internal global ptr @nvkm_subdev_fini._entry.58, section ".printk_index", align 4
@nvkm_subdev_fini._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.55, i32 75, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s completed in %lldus\0A\00", [36 x i8] zeroinitializer }, align 32
@nvkm_subdev_fini._entry_ptr.64 = internal global ptr @nvkm_subdev_fini._entry.62, section ".printk_index", align 4
@nvkm_subdev_preinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.55, i32 84, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: preinit running...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvkm_subdev_preinit\00", [44 x i8] zeroinitializer }, align 32
@nvkm_subdev_preinit._entry_ptr = internal global ptr @nvkm_subdev_preinit._entry, section ".printk_index", align 4
@nvkm_subdev_preinit._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.55, i32 90, ptr @.str.60, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: preinit failed, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_subdev_preinit._entry_ptr.69 = internal global ptr @nvkm_subdev_preinit._entry.67, section ".printk_index", align 4
@nvkm_subdev_preinit._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.55, i32 96, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: preinit completed in %lldus\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_subdev_preinit._entry_ptr.72 = internal global ptr @nvkm_subdev_preinit._entry.70, section ".printk_index", align 4
@nvkm_subdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.55, i32 106, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: init running...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvkm_subdev_init\00", [47 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr = internal global ptr @nvkm_subdev_init._entry, section ".printk_index", align 4
@nvkm_subdev_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.55, i32 111, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: one-time init running...\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr.77 = internal global ptr @nvkm_subdev_init._entry.75, section ".printk_index", align 4
@nvkm_subdev_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.55, i32 115, ptr @.str.60, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: one-time init failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr.80 = internal global ptr @nvkm_subdev_init._entry.78, section ".printk_index", align 4
@nvkm_subdev_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.55, i32 121, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: one-time init completed in %lldus\0A\00", [57 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr.83 = internal global ptr @nvkm_subdev_init._entry.81, section ".printk_index", align 4
@nvkm_subdev_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str.55, i32 127, ptr @.str.60, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: init failed, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr.86 = internal global ptr @nvkm_subdev_init._entry.84, section ".printk_index", align 4
@nvkm_subdev_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.74, ptr @.str.55, i32 133, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: init completed in %lldus\0A\00", [34 x i8] zeroinitializer }, align 32
@nvkm_subdev_init._entry_ptr.89 = internal global ptr @nvkm_subdev_init._entry.87, section ".printk_index", align 4
@nvkm_subdev_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.55, i32 144, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: destroy running...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvkm_subdev_del\00", [16 x i8] zeroinitializer }, align 32
@nvkm_subdev_del._entry_ptr = internal global ptr @nvkm_subdev_del._entry, section ".printk_index", align 4
@nvkm_subdev_del._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.55, i32 150, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: destroy completed in %lldus\0A\00", [63 x i8] zeroinitializer }, align 32
@nvkm_subdev_del._entry_ptr.94 = internal global ptr @nvkm_subdev_del._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 2, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 3, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 4, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 5, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 6, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 7, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 8, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 9, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 10, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 11, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 12, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 13, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 14, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 15, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 16, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 17, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 18, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 19, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 20, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 21, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 22, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 23, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 24, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 25, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 26, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 27, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 28, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 30, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 31, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 32, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 33, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 34, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 35, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 36, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 37, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 38, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 39, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 40, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 41, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 42, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 43, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 44, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 45, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 46, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 47, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 48, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 49, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 50, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 51, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 52, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 53, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"nvkm_subdev_type\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 30, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 57, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 57, i32 45 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 60, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 66, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 75, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 84, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 90, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 96, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 106, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 111, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 115, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 121, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 127, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 133, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 144, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 150, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.367 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 179, i32 48 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @nvkm_subdev_del._entry, ptr @nvkm_subdev_del._entry.92, ptr @nvkm_subdev_del._entry_ptr, ptr @nvkm_subdev_del._entry_ptr.94, ptr @nvkm_subdev_fini._entry, ptr @nvkm_subdev_fini._entry.58, ptr @nvkm_subdev_fini._entry.62, ptr @nvkm_subdev_fini._entry_ptr, ptr @nvkm_subdev_fini._entry_ptr.61, ptr @nvkm_subdev_fini._entry_ptr.64, ptr @nvkm_subdev_init._entry, ptr @nvkm_subdev_init._entry.75, ptr @nvkm_subdev_init._entry.78, ptr @nvkm_subdev_init._entry.81, ptr @nvkm_subdev_init._entry.84, ptr @nvkm_subdev_init._entry.87, ptr @nvkm_subdev_init._entry_ptr, ptr @nvkm_subdev_init._entry_ptr.77, ptr @nvkm_subdev_init._entry_ptr.80, ptr @nvkm_subdev_init._entry_ptr.83, ptr @nvkm_subdev_init._entry_ptr.86, ptr @nvkm_subdev_init._entry_ptr.89, ptr @nvkm_subdev_preinit._entry, ptr @nvkm_subdev_preinit._entry.67, ptr @nvkm_subdev_preinit._entry.70, ptr @nvkm_subdev_preinit._entry_ptr, ptr @nvkm_subdev_preinit._entry_ptr.69, ptr @nvkm_subdev_preinit._entry_ptr.72, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @nvkm_subdev_type, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_type to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_fini._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_fini._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_preinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_preinit._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_preinit._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_subdev_del._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_intr(ptr noundef %subdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  %intr = getelementptr inbounds %struct.nvkm_subdev_func, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %subdev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_info(ptr noundef %subdev, i64 noundef %mthd, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdev, align 4
  %info = getelementptr inbounds %struct.nvkm_subdev_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %subdev, i64 noundef %mthd, ptr noundef %data) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -38, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_fini(ptr noundef %subdev, i1 noundef zeroext %suspend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %cond = select i1 %suspend, ptr @.str.51, ptr @.str.52
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef %name, ptr noundef nonnull %cond) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #7
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #11, !srcloc !183
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !184
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %9 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %10 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdev, align 4
  %fini = getelementptr inbounds %struct.nvkm_subdev_func, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fini, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.if.end34_crit_edge, label %if.then8

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then8:                                         ; preds = %if.end
  %call12 = tail call i32 %13(ptr noundef %subdev, i1 noundef zeroext %suspend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then8.if.end34_crit_edge, label %do.body15

if.then8.if.end34_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body15:                                        ; preds = %if.then8
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.not = icmp eq i32 %15, 0
  br i1 %cmp18.not, label %do.body15.if.end27_crit_edge, label %do.end22

do.body15.if.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end22:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device1, align 4
  %dev24 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev24, align 8
  %name25 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.59, ptr noundef %name25, ptr noundef nonnull %cond, i32 noundef %call12) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end22, %do.body15.if.end27_crit_edge
  br i1 %suspend, label %if.end27.cleanup52_crit_edge, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end27.cleanup52_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end34:                                         ; preds = %if.end27.if.end34_crit_edge, %if.then8.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %type = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %inst = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 3
  %22 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inst, align 4
  tail call void @nvkm_mc_reset(ptr noundef %1, i32 noundef %21, i32 noundef %23) #7
  %call35 = tail call i64 @ktime_get() #7
  %24 = tail call i64 @llvm.abs.i64(i64 %call35, i1 false) #7
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %24, i32 0) #11, !srcloc !183
  %asmresult.i.i.i78 = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.i.i79 = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %24, i64 %asmresult.i.i.i78, i32 %asmresult4.i.i.i79) #11, !srcloc !184
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp40 = icmp ugt i32 %28, 4
  br i1 %cmp40, label %do.end44, label %if.end34.cleanup52_crit_edge

if.end34.cleanup52_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

do.end44:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call35)
  %cmp8.i.i77 = icmp slt i64 %call35, 0
  %asmresult10.i.i.i80 = extractvalue { i64, i32 } %26, 0
  %div1811.i.i81 = lshr i64 %asmresult10.i.i.i80, 9
  %sub210.i.i82 = sub nsw i64 0, %div1811.i.i81
  %cond213.i.i83 = select i1 %cmp8.i.i77, i64 %sub210.i.i82, i64 %div1811.i.i81
  %sub = add nsw i64 %cond213.i.i83, %9
  %29 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device1, align 4
  %dev46 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev46, align 8
  %name47 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.63, ptr noundef %name47, ptr noundef nonnull %cond, i64 noundef %sub) #10
  br label %cleanup52

cleanup52:                                        ; preds = %do.end44, %if.end34.cleanup52_crit_edge, %if.end27.cleanup52_crit_edge
  %retval.1 = phi i32 [ %call12, %if.end27.cleanup52_crit_edge ], [ 0, %do.end44 ], [ 0, %if.end34.cleanup52_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_preinit(ptr noundef %subdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #7
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #11, !srcloc !183
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !184
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %9 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %10 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdev, align 4
  %preinit = getelementptr inbounds %struct.nvkm_subdev_func, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preinit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %preinit, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.then5

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then5:                                         ; preds = %if.end
  %call8 = tail call i32 %13(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end27_crit_edge, label %do.body11

if.then5.if.end27_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.body11:                                        ; preds = %if.then5
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not = icmp eq i32 %15, 0
  br i1 %cmp14.not, label %do.body11.cleanup45_crit_edge, label %do.end18

do.body11.cleanup45_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

do.end18:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %device19 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %16 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device19, align 4
  %dev20 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev20, align 8
  %name21 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.68, ptr noundef %name21, i32 noundef %call8) #10
  br label %cleanup45

if.end27:                                         ; preds = %if.then5.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call28 = tail call i64 @ktime_get() #7
  %20 = tail call i64 @llvm.abs.i64(i64 %call28, i1 false) #7
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #11, !srcloc !183
  %asmresult.i.i.i62 = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i63 = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %asmresult.i.i.i62, i32 %asmresult4.i.i.i63) #11, !srcloc !184
  %23 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp33 = icmp ugt i32 %24, 4
  br i1 %cmp33, label %do.end37, label %if.end27.cleanup45_crit_edge

if.end27.cleanup45_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call28)
  %cmp8.i.i61 = icmp slt i64 %call28, 0
  %asmresult10.i.i.i64 = extractvalue { i64, i32 } %22, 0
  %div1811.i.i65 = lshr i64 %asmresult10.i.i.i64, 9
  %sub210.i.i66 = sub nsw i64 0, %div1811.i.i65
  %cond213.i.i67 = select i1 %cmp8.i.i61, i64 %sub210.i.i66, i64 %div1811.i.i65
  %sub = add nsw i64 %cond213.i.i67, %9
  %device38 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %25 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device38, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev39, align 8
  %name40 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.71, ptr noundef %name40, i64 noundef %sub) #10
  br label %cleanup45

cleanup45:                                        ; preds = %do.end37, %if.end27.cleanup45_crit_edge, %do.end18, %do.body11.cleanup45_crit_edge
  %retval.1 = phi i32 [ %call8, %do.end18 ], [ 0, %do.end37 ], [ 0, %if.end27.cleanup45_crit_edge ], [ %call8, %do.body11.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_init(ptr noundef %subdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef %name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #7
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #11, !srcloc !183
  %asmresult.i.i.i = extractvalue { i64, i32 } %7, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %7, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !184
  %asmresult10.i.i.i = extractvalue { i64, i32 } %8, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %9 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %10 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdev, align 4
  %oneinit = getelementptr inbounds %struct.nvkm_subdev_func, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %oneinit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oneinit, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end65_crit_edge, label %land.lhs.true

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end
  %oneinit5 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 8
  %14 = ptrtoint ptr %oneinit5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %oneinit5, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then7:                                         ; preds = %land.lhs.true
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp12 = icmp ugt i32 %17, 4
  br i1 %cmp12, label %do.end16, label %if.then7.if.end21_crit_edge

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end16:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %device17 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %18 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device17, align 4
  %dev18 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 8
  %name19 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.76, ptr noundef %name19) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end16, %if.then7.if.end21_crit_edge
  %call24 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call24)
  %cmp8.i.i145 = icmp slt i64 %call24, 0
  %22 = tail call i64 @llvm.abs.i64(i64 %call24, i1 false) #7
  %23 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %22, i32 0) #11, !srcloc !183
  %asmresult.i.i.i146 = extractvalue { i64, i32 } %23, 0
  %asmresult4.i.i.i147 = extractvalue { i64, i32 } %23, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %22, i64 %asmresult.i.i.i146, i32 %asmresult4.i.i.i147) #11, !srcloc !184
  %asmresult10.i.i.i148 = extractvalue { i64, i32 } %24, 0
  %div1811.i.i149 = lshr i64 %asmresult10.i.i.i148, 9
  %sub210.i.i150 = sub nsw i64 0, %div1811.i.i149
  %25 = select i1 %cmp8.i.i145, i64 %div1811.i.i149, i64 %sub210.i.i150
  %26 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdev, align 4
  %oneinit27 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %oneinit27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oneinit27, align 4
  %call28 = tail call i32 %29(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end46, label %do.body31

do.body31:                                        ; preds = %if.end21
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp34.not = icmp eq i32 %31, 0
  br i1 %cmp34.not, label %do.body31.cleanup109_crit_edge, label %do.end38

do.body31.cleanup109_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

do.end38:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %device39 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %32 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device39, align 4
  %dev40 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev40, align 8
  %name41 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.79, ptr noundef %name41, i32 noundef %call28) #10
  br label %cleanup109

if.end46:                                         ; preds = %if.end21
  %36 = ptrtoint ptr %oneinit5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %oneinit5, align 4
  %call48 = tail call i64 @ktime_get() #7
  %37 = tail call i64 @llvm.abs.i64(i64 %call48, i1 false) #7
  %38 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %37, i32 0) #11, !srcloc !183
  %asmresult.i.i.i153 = extractvalue { i64, i32 } %38, 0
  %asmresult4.i.i.i154 = extractvalue { i64, i32 } %38, 1
  %39 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %37, i64 %asmresult.i.i.i153, i32 %asmresult4.i.i.i154) #11, !srcloc !184
  %40 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp53 = icmp ugt i32 %41, 4
  br i1 %cmp53, label %do.end57, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call48)
  %cmp8.i.i152 = icmp slt i64 %call48, 0
  %asmresult10.i.i.i155 = extractvalue { i64, i32 } %39, 0
  %div1811.i.i156 = lshr i64 %asmresult10.i.i.i155, 9
  %sub210.i.i157 = sub nsw i64 0, %div1811.i.i156
  %cond213.i.i158 = select i1 %cmp8.i.i152, i64 %sub210.i.i157, i64 %div1811.i.i156
  %sub = add nsw i64 %cond213.i.i158, %25
  %device58 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %42 = ptrtoint ptr %device58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device58, align 4
  %dev59 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev59, align 8
  %name60 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.82, ptr noundef %name60, i64 noundef %sub) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end57, %if.end46.if.end65_crit_edge, %land.lhs.true.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %46 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %subdev, align 4
  %init = getelementptr inbounds %struct.nvkm_subdev_func, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init, align 4
  %tobool67.not = icmp eq ptr %49, null
  br i1 %tobool67.not, label %if.end65.if.end90_crit_edge, label %if.then68

if.end65.if.end90_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then68:                                        ; preds = %if.end65
  %call71 = tail call i32 %49(ptr noundef %subdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then68.if.end90_crit_edge, label %do.body74

if.then68.if.end90_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.body74:                                        ; preds = %if.then68
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp77.not = icmp eq i32 %51, 0
  br i1 %cmp77.not, label %do.body74.cleanup109_crit_edge, label %do.end81

do.body74.cleanup109_crit_edge:                   ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

do.end81:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  %device82 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %52 = ptrtoint ptr %device82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device82, align 4
  %dev83 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev83, align 8
  %name84 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.85, ptr noundef %name84, i32 noundef %call71) #10
  br label %cleanup109

if.end90:                                         ; preds = %if.then68.if.end90_crit_edge, %if.end65.if.end90_crit_edge
  %call91 = tail call i64 @ktime_get() #7
  %56 = tail call i64 @llvm.abs.i64(i64 %call91, i1 false) #7
  %57 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %56, i32 0) #11, !srcloc !183
  %asmresult.i.i.i160 = extractvalue { i64, i32 } %57, 0
  %asmresult4.i.i.i161 = extractvalue { i64, i32 } %57, 1
  %58 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %56, i64 %asmresult.i.i.i160, i32 %asmresult4.i.i.i161) #11, !srcloc !184
  %59 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp97 = icmp ugt i32 %60, 4
  br i1 %cmp97, label %do.end101, label %if.end90.cleanup109_crit_edge

if.end90.cleanup109_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup109

do.end101:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call91)
  %cmp8.i.i159 = icmp slt i64 %call91, 0
  %asmresult10.i.i.i162 = extractvalue { i64, i32 } %58, 0
  %div1811.i.i163 = lshr i64 %asmresult10.i.i.i162, 9
  %sub210.i.i164 = sub nsw i64 0, %div1811.i.i163
  %cond213.i.i165 = select i1 %cmp8.i.i159, i64 %sub210.i.i164, i64 %div1811.i.i163
  %sub93 = add nsw i64 %cond213.i.i165, %9
  %device102 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %61 = ptrtoint ptr %device102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device102, align 4
  %dev103 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev103, align 8
  %name104 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.88, ptr noundef %name104, i64 noundef %sub93) #10
  br label %cleanup109

cleanup109:                                       ; preds = %do.end101, %if.end90.cleanup109_crit_edge, %do.end81, %do.body74.cleanup109_crit_edge, %do.end38, %do.body31.cleanup109_crit_edge
  %retval.1 = phi i32 [ %call28, %do.end38 ], [ %call71, %do.end81 ], [ %call71, %do.body74.cleanup109_crit_edge ], [ 0, %do.end101 ], [ 0, %if.end90.cleanup109_crit_edge ], [ %call28, %do.body31.cleanup109_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_del(ptr nocapture noundef %psubdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %psubdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psubdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end57_crit_edge, label %land.lhs.true

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end, label %do.body24.critedge, !prof !186

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 143, i32 noundef 9, ptr noundef null) #7
  br label %if.end57

do.body24.critedge:                               ; preds = %land.lhs.true
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end28, label %do.body24.critedge.if.end29_crit_edge

do.body24.critedge.if.end29_crit_edge:            ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end28:                                         ; preds = %do.body24.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.90, ptr noundef %name) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.body24.critedge.if.end29_crit_edge
  %call = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp8.i.i = icmp slt i64 %call, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %call, i1 false) #7
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #11, !srcloc !183
  %asmresult.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !184
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %13 = select i1 %cmp8.i.i, i64 %div1811.i.i, i64 %sub210.i.i
  %head = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del.exit_crit_edge

if.end29.list_del.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end29.list_del.exit_crit_edge
  %20 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool34.not = icmp eq ptr %25, null
  br i1 %tobool34.not, label %list_del.exit.if.end39_crit_edge, label %if.then35

list_del.exit.if.end39_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call ptr %25(ptr noundef nonnull %1) #7
  %26 = ptrtoint ptr %psubdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38, ptr %psubdev, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %list_del.exit.if.end39_crit_edge
  %call40 = tail call i64 @ktime_get() #7
  %27 = tail call i64 @llvm.abs.i64(i64 %call40, i1 false) #7
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %27, i32 0) #11, !srcloc !183
  %asmresult.i.i.i76 = extractvalue { i64, i32 } %28, 0
  %asmresult4.i.i.i77 = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %27, i64 %asmresult.i.i.i76, i32 %asmresult4.i.i.i77) #11, !srcloc !184
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp45 = icmp ugt i32 %31, 4
  br i1 %cmp45, label %do.end49, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call40)
  %cmp8.i.i75 = icmp slt i64 %call40, 0
  %asmresult10.i.i.i78 = extractvalue { i64, i32 } %29, 0
  %div1811.i.i79 = lshr i64 %asmresult10.i.i.i78, 9
  %sub210.i.i80 = sub nsw i64 0, %div1811.i.i79
  %cond213.i.i81 = select i1 %cmp8.i.i75, i64 %sub210.i.i80, i64 %div1811.i.i79
  %sub = add nsw i64 %cond213.i.i81, %13
  %device50 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device50, align 4
  %dev51 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev51, align 8
  %name52 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.93, ptr noundef %name52, i64 noundef %sub) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end49, %if.end39.if.end54_crit_edge
  %36 = ptrtoint ptr %psubdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %psubdev, align 4
  tail call void @kfree(ptr noundef %37) #7
  %38 = ptrtoint ptr %psubdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %psubdev, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %do.end, %entry.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_disable(ptr noundef readonly %device, i32 noundef %type, i32 noundef %inst) local_unnamed_addr #0 align 64 {
entry:
  %subdev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdev) #7
  %subdev1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 71
  %0 = ptrtoint ptr %subdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %subdev1, align 4
  %cmp.not17 = icmp eq ptr %.pn15, %subdev1
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %type3 = getelementptr i8, ptr %.pn18, i32 -28
  %1 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %type)
  %cmp4 = icmp eq i32 %2, %type
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %inst5 = getelementptr i8, ptr %.pn18, i32 -24
  %3 = ptrtoint ptr %inst5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %inst5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %inst)
  %cmp6 = icmp eq i32 %4, %inst
  br i1 %cmp6, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %storemerge19 = getelementptr i8, ptr %.pn18, i32 -36
  %5 = ptrtoint ptr %subdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %storemerge19, ptr %subdev, align 4
  %pself = getelementptr i8, ptr %.pn18, i32 8
  %6 = ptrtoint ptr %pself to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pself, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  call void @nvkm_subdev_del(ptr noundef nonnull %subdev)
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %subdev1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %subdev, align 4
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %1 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %device, ptr %device2, align 4
  %type3 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 2
  %2 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type3, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %inst, i32 0)
  %inst4 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 3
  %4 = ptrtoint ptr %inst4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %inst4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inst)
  %cmp5 = icmp sgt i32 %inst, -1
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %arrayidx = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.95, ptr noundef %6, i32 noundef %inst)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %6, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dbgopt = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 7
  %7 = ptrtoint ptr %dbgopt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dbgopt, align 8
  %name10 = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  %call12 = tail call i32 @nvkm_dbgopt(ptr noundef %8, ptr noundef %name10) #7
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call12, ptr %debug, align 4
  %head = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 6
  %subdev13 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 71
  %prev.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 71, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %11, ptr noundef %subdev13) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head, ptr %prev.i, align 4
  %13 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %subdev13, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %head, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %psubdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #12
  %1 = ptrtoint ptr %psubdev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psubdev, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %device2.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %device2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %device, ptr %device2.i, align 4
  %type3.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type3.i, align 8
  %5 = tail call i32 @llvm.smax.i32(i32 %inst, i32 0) #7
  %inst4.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %inst4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %inst4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inst)
  %cmp5.i = icmp sgt i32 %inst, -1
  %name.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 4
  %arrayidx.i = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %type
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 16, ptr noundef nonnull @.str.95, ptr noundef %8, i32 noundef %inst) #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %8, i32 noundef 16) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %dbgopt.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 7
  %9 = ptrtoint ptr %dbgopt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dbgopt.i, align 8
  %call12.i = tail call i32 @nvkm_dbgopt(ptr noundef %10, ptr noundef %name.i) #7
  %debug.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call12.i, ptr %debug.i, align 8
  %head.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 6
  %subdev13.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 71
  %prev.i.i = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 71, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head.i, ptr noundef %13, ptr noundef %subdev13.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %subdev13.i, ptr %head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %head.i, ptr %13, align 4
  br label %return

return:                                           ; preds = %if.end.i.i.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %if.end.i.return_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 2, i32 1}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 3, i32 1}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 4, i32 1}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 5, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 6, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 7, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 8, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 9, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 10, i32 1}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 11, i32 1}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 12, i32 1}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 13, i32 1}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 14, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 15, i32 1}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 16, i32 1}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 17, i32 1}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 18, i32 1}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 19, i32 1}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 20, i32 1}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 21, i32 1}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 22, i32 1}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 23, i32 1}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 24, i32 1}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 25, i32 1}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 26, i32 1}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 27, i32 1}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 28, i32 1}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 30, i32 1}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 31, i32 1}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 32, i32 1}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 33, i32 1}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 34, i32 1}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 35, i32 1}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 36, i32 1}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 37, i32 1}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 38, i32 1}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 39, i32 1}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 40, i32 1}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 41, i32 1}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 42, i32 1}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 43, i32 1}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 44, i32 1}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 45, i32 1}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 46, i32 1}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 47, i32 1}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 48, i32 1}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 49, i32 1}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 50, i32 1}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 51, i32 1}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 52, i32 1}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/include/nvkm/core/layout.h", i32 53, i32 1}
!102 = !{ptr @nvkm_subdev_type, !103, !"nvkm_subdev_type", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 30, i32 1}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 57, i32 33}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 57, i32 45}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 60, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @nvkm_subdev_fini._entry, !109, !"_entry", i1 false, i1 false}
!115 = !{ptr @nvkm_subdev_fini._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 66, i32 4}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @nvkm_subdev_fini._entry.58, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @nvkm_subdev_fini._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 75, i32 2}
!123 = !{ptr @nvkm_subdev_fini._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nvkm_subdev_fini._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 84, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @nvkm_subdev_preinit._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @nvkm_subdev_preinit._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 90, i32 4}
!132 = !{ptr @nvkm_subdev_preinit._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @nvkm_subdev_preinit._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 96, i32 2}
!136 = !{ptr @nvkm_subdev_preinit._entry.70, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nvkm_subdev_preinit._entry_ptr.72, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 106, i32 2}
!140 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nvkm_subdev_init._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @nvkm_subdev_init._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 111, i32 3}
!145 = !{ptr @nvkm_subdev_init._entry.75, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @nvkm_subdev_init._entry_ptr.77, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 115, i32 4}
!149 = !{ptr @nvkm_subdev_init._entry.78, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nvkm_subdev_init._entry_ptr.80, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 121, i32 3}
!153 = !{ptr @nvkm_subdev_init._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nvkm_subdev_init._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 127, i32 4}
!157 = !{ptr @nvkm_subdev_init._entry.84, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @nvkm_subdev_init._entry_ptr.86, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 133, i32 2}
!161 = !{ptr @nvkm_subdev_init._entry.87, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @nvkm_subdev_init._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 144, i32 3}
!165 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @nvkm_subdev_del._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @nvkm_subdev_del._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 150, i32 3}
!170 = !{ptr @nvkm_subdev_del._entry.92, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @nvkm_subdev_del._entry_ptr.94, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/subdev.c", i32 179, i32 48}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 957491, i64 957518, i64 957540, i64 957568}
!184 = !{i64 957899, i64 957926, i64 957959, i64 957980, i64 958007, i64 958033}
!185 = !{i8 0, i8 2}
!186 = !{!"branch_weights", i32 1, i32 2000}
