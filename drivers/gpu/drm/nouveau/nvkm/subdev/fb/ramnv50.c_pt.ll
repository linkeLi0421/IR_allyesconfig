; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.109, %struct.anon.110, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.109 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.110 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.150, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.150 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.98, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32, [11 x i32], %union.anon.106 }>
%union.anon.98 = type { %struct.anon.101 }
%struct.anon.101 = type { i64 }
%union.anon.102 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i8 }
%union.anon.106 = type <{ %struct.anon.108, [12 x i8] }>
%struct.anon.108 = type { i48 }
%struct.nv50_ram = type { %struct.nvkm_ram, %struct.nv50_ramseq }
%struct.nv50_ramseq = type { %struct.hwsq, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, %struct.hwsq_reg, [9 x %struct.hwsq_reg], [4 x %struct.hwsq_reg], [4 x %struct.hwsq_reg] }
%struct.hwsq = type { ptr, ptr, i32 }
%struct.hwsq_reg = type { i32, i8, i32, i32, i32, i32 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.157, %struct.anon.157 }
%struct.anon.157 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }

@nv50_ram_func = internal constant { %struct.nvkm_ram_func, [56 x i8] } { %struct.nvkm_ram_func { i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_ram_calc, ptr @nv50_ram_prog, ptr @nv50_ram_tidy }, [56 x i8] zeroinitializer }, align 32
@nv50_fb_vram_rblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 515, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: memcfg %08x %08x %08x %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_fb_vram_rblock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_fb_vram_rblock._entry_ptr = internal global ptr @nv50_fb_vram_rblock._entry, section ".printk_index", align 4
@nv50_fb_vram_rblock._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 529, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: memory controller reports %d MiB VRAM\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nv50_fb_vram_rblock._entry_ptr.8 = internal global ptr @nv50_fb_vram_rblock._entry.5, section ".printk_index", align 4
@nv50_fb_vram_rblock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 536, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: rblock %d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@nv50_fb_vram_rblock._entry_ptr.11 = internal global ptr @nv50_fb_vram_rblock._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_ram_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 245, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: invalid/missing perftab entry\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv50_ram_calc\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv50_ram_calc._entry_ptr = internal global ptr @nv50_ram_calc._entry, section ".printk_index", align 4
@nv50_ram_calc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 255, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid ramcfg strap\0A\00", [38 x i8] zeroinitializer }, align 32
@nv50_ram_calc._entry_ptr.17 = internal global ptr @nv50_ram_calc._entry.15, section ".printk_index", align 4
@nv50_ram_calc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 262, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid/missing rammap entry \00", [62 x i8] zeroinitializer }, align 32
@nv50_ram_calc._entry_ptr.20 = internal global ptr @nv50_ram_calc._entry.18, section ".printk_index", align 4
@nv50_ram_calc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 273, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: invalid/missing timing entry %02x %04x %02x %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@nv50_ram_calc._entry_ptr.23 = internal global ptr @nv50_ram_calc._entry.21, section ".printk_index", align 4
@nv50_ram_calc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 300, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Could not calculate MR\0A\00", [36 x i8] zeroinitializer }, align 32
@nv50_ram_calc._entry_ptr.26 = internal global ptr @nv50_ram_calc._entry.24, section ".printk_index", align 4
@nv50_ram_timing_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:  220: %08x %08x %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv50_ram_timing_calc\00", [43 x i8] zeroinitializer }, align 32
@nv50_ram_timing_calc._entry_ptr = internal global ptr @nv50_ram_timing_calc._entry, section ".printk_index", align 4
@nv50_ram_timing_calc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:  230: %08x %08x %08x %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@nv50_ram_timing_calc._entry_ptr.31 = internal global ptr @nv50_ram_timing_calc._entry.29, section ".printk_index", align 4
@nv50_ram_timing_calc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:  240: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@nv50_ram_timing_calc._entry_ptr.34 = internal global ptr @nv50_ram_timing_calc._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NvMemExec\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 8]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"nv50_ram_func\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 496, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 514, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 528, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 536, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 245, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 255, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 262, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 271, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 300, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 142, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 144, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 146, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 484, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @nv50_fb_vram_rblock._entry, ptr @nv50_fb_vram_rblock._entry.5, ptr @nv50_fb_vram_rblock._entry.9, ptr @nv50_fb_vram_rblock._entry_ptr, ptr @nv50_fb_vram_rblock._entry_ptr.11, ptr @nv50_fb_vram_rblock._entry_ptr.8, ptr @nv50_ram_calc._entry, ptr @nv50_ram_calc._entry.15, ptr @nv50_ram_calc._entry.18, ptr @nv50_ram_calc._entry.21, ptr @nv50_ram_calc._entry.24, ptr @nv50_ram_calc._entry_ptr, ptr @nv50_ram_calc._entry_ptr.17, ptr @nv50_ram_calc._entry_ptr.20, ptr @nv50_ram_calc._entry_ptr.23, ptr @nv50_ram_calc._entry_ptr.26, ptr @nv50_ram_timing_calc._entry, ptr @nv50_ram_timing_calc._entry.29, ptr @nv50_ram_timing_calc._entry.32, ptr @nv50_ram_timing_calc._entry_ptr, ptr @nv50_ram_timing_calc._entry_ptr.31, ptr @nv50_ram_timing_calc._entry_ptr.34, ptr @nv50_ram_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb_vram_rblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb_vram_rblock._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb_vram_rblock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_calc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_calc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_calc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_calc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_timing_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_timing_calc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ram_timing_calc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_ram_ctor(ptr noundef %func, ptr noundef %fb, ptr noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fb, ptr %fb, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %bios2 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios2, align 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1049100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 1050388
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %and = and i32 %9, 7
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @nvkm_fb_bios_memtype(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call9)
  %cmp = icmp eq i32 %call9, 6
  %. = select i1 %cmp, i32 6, i32 5
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  %type.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 10, %sw.bb13 ], [ 9, %sw.bb12 ], [ 8, %sw.bb11 ], [ 4, %sw.bb ], [ %., %sw.bb8 ]
  %and14 = shl nuw i64 %conv, 32
  %shl = and i64 %and14, 1095216660480
  %and15 = and i64 %conv, 4294967040
  %or = or i64 %shl, %and15
  %call16 = tail call i32 @nvkm_ram_ctor(ptr noundef %func, ptr noundef %fb, i32 noundef %type.0, i64 noundef %or, ptr noundef %ram) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %11 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri, align 4
  %add.ptr21 = getelementptr i8, ptr %12, i32 5440
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %and24 = lshr i32 %13, 16
  %shr = and i32 %and24, 255
  %part_mask = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 9
  %14 = ptrtoint ptr %part_mask to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %part_mask, align 4
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %shr) #7
  %parts = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 8
  %15 = ptrtoint ptr %parts to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %parts, align 8
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr97 = getelementptr i8, ptr %17, i32 1049088
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and100 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %cond102 = select i1 %tobool101.not, i32 1, i32 2
  %ranks = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 7
  %19 = ptrtoint ptr %ranks to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond102, ptr %ranks, align 4
  %vram = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 4
  %call103 = tail call i32 @nvkm_mm_fini(ptr noundef %vram) #7
  %sub105 = add nuw nsw i64 %or, 17592184733696
  %shr106 = lshr i64 %sub105, 12
  %conv107 = trunc i64 %shr106 to i32
  %fb.i = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 1
  %20 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fb.i, align 4
  %device2.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device2.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1049088
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %27 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %28, i32 1049092
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %30 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 1049168
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %debug.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i = icmp ugt i32 %34, 3
  br i1 %cmp.i, label %do.end.i, label %if.end18.if.end.i_crit_edge

if.end18.if.end.i_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device2.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %40, i32 5440
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %41) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end18.if.end.i_crit_edge
  %and.i = lshr i32 %29, 12
  %shr.i = and i32 %and.i, 15
  %and22.i = lshr i32 %29, 16
  %shr23.i = and i32 %and22.i, 15
  %add.i = add nuw nsw i32 %shr23.i, 8
  %and27.i = lshr i32 %29, 24
  %shr28.i = and i32 %and27.i, 3
  %shl.i = shl nuw nsw i32 4, %shr28.i
  %42 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %parts, align 8
  %mul.i = mul i32 %43, %shl.i
  %mul31.i = shl i32 %mul.i, %shr.i
  %mul32.i = shl i32 %mul31.i, 3
  %conv.i = sext i32 %mul32.i to i64
  %sh_prom.i = zext i32 %add.i to i64
  %shl33.i = shl nsw i64 %conv.i, %sh_prom.i
  %and34.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end39.i_crit_edge, label %if.then35.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then35.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i = lshr i32 %29, 20
  %shr25.i = and i32 %and24.i, 15
  %add26.i = add nuw nsw i32 %shr25.i, 8
  %sh_prom36.i = zext i32 %add26.i to i64
  %shl37.i = shl nsw i64 %conv.i, %sh_prom36.i
  %add38.i = add i64 %shl33.i, %shl37.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.end.i.if.end39.i_crit_edge
  %predicted.0.i = phi i64 [ %add38.i, %if.then35.i ], [ %shl33.i, %if.end.i.if.end39.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 3
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %predicted.0.i, i64 %45)
  %cmp40.not.i = icmp eq i64 %predicted.0.i, %45
  br i1 %cmp40.not.i, label %if.end39.i.if.end62.i_crit_edge, label %do.body43.i

if.end39.i.if.end62.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

do.body43.i:                                      ; preds = %if.end39.i
  %46 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp46.i = icmp ugt i32 %47, 1
  br i1 %cmp46.i, label %do.end51.i, label %if.end62.thread.i

if.end62.thread.i:                                ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  %and64111.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64111.i)
  %tobool65.not112.i = icmp eq i32 %and64111.i, 0
  %mul67113.i = mul i32 %mul31.i, 24
  %spec.select114.i = select i1 %tobool65.not112.i, i32 %mul32.i, i32 %mul67113.i
  br label %nv50_fb_vram_rblock.exit

do.end51.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device2.i, align 4
  %dev53.i = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev53.i, align 8
  %name54.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  %shr57.i = lshr i64 %45, 20
  %conv58.i = trunc i64 %shr57.i to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %51, ptr noundef nonnull @.str.6, ptr noundef %name54.i, i32 noundef %conv58.i) #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end51.i, %if.end39.i.if.end62.i_crit_edge
  %52 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr.i = load i32, ptr %debug.i, align 4
  %and64.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %mul67.i = mul i32 %mul31.i, 24
  %spec.select.i = select i1 %tobool65.not.i, i32 %mul32.i, i32 %mul67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp72.i = icmp ugt i32 %.pr.i, 3
  br i1 %cmp72.i, label %do.end77.i, label %if.end62.i.nv50_fb_vram_rblock.exit_crit_edge

if.end62.i.nv50_fb_vram_rblock.exit_crit_edge:    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_fb_vram_rblock.exit

do.end77.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device2.i, align 4
  %dev79.i = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev79.i, align 8
  %name80.i = getelementptr inbounds %struct.nvkm_fb, ptr %21, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.10, ptr noundef %name80.i, i32 noundef %spec.select.i) #10
  br label %nv50_fb_vram_rblock.exit

nv50_fb_vram_rblock.exit:                         ; preds = %do.end77.i, %if.end62.i.nv50_fb_vram_rblock.exit_crit_edge, %if.end62.thread.i
  %spec.select116.i = phi i32 [ %spec.select114.i, %if.end62.thread.i ], [ %spec.select.i, %do.end77.i ], [ %spec.select.i, %if.end62.i.nv50_fb_vram_rblock.exit_crit_edge ]
  %shr109 = lshr i32 %spec.select116.i, 12
  %call110 = tail call i32 @nvkm_mm_init(ptr noundef %vram, i8 noundef zeroext 1, i32 noundef 64, i32 noundef %conv107, i32 noundef %shr109) #7
  br label %cleanup

cleanup:                                          ; preds = %nv50_fb_vram_rblock.exit, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call110, %nv50_fb_vram_rblock.exit ], [ %call16, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fb_bios_memtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_ctor(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_ram_new(ptr noundef %fb, ptr nocapture noundef writeonly %pram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1600) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pram to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pram, align 4
  %call2 = tail call i32 @nv50_ram_ctor(ptr noundef nonnull @nv50_ram_func, ptr noundef %fb, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %r_0x002504 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %r_0x002504 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %r_0x002504, align 4
  %tmp.sroa.4.0.r_0x002504.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %tmp.sroa.4.0.r_0x002504.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tmp.sroa.4.0.r_0x002504.sroa_idx, align 8
  %tmp.sroa.5337.0.r_0x002504.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %tmp.sroa.5337.0.r_0x002504.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9476, ptr %tmp.sroa.5337.0.r_0x002504.sroa_idx, align 4
  %tmp.sroa.6.0.r_0x002504.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %5 = ptrtoint ptr %tmp.sroa.6.0.r_0x002504.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tmp.sroa.6.0.r_0x002504.sroa_idx, align 8
  %tmp.sroa.7.0.r_0x002504.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 4
  %6 = ptrtoint ptr %tmp.sroa.7.0.r_0x002504.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tmp.sroa.7.0.r_0x002504.sroa_idx, align 4
  %tmp.sroa.8.0.r_0x002504.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 5
  %7 = ptrtoint ptr %tmp.sroa.8.0.r_0x002504.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -559038737, ptr %tmp.sroa.8.0.r_0x002504.sroa_idx, align 8
  %r_0x00c040 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %r_0x00c040 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r_0x00c040, align 4
  %tmp7.sroa.4.0.r_0x00c040.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %9 = ptrtoint ptr %tmp7.sroa.4.0.r_0x00c040.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmp7.sroa.4.0.r_0x00c040.sroa_idx, align 8
  %tmp7.sroa.5336.0.r_0x00c040.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 2
  %10 = ptrtoint ptr %tmp7.sroa.5336.0.r_0x00c040.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 49216, ptr %tmp7.sroa.5336.0.r_0x00c040.sroa_idx, align 4
  %tmp7.sroa.6.0.r_0x00c040.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 3
  %11 = ptrtoint ptr %tmp7.sroa.6.0.r_0x00c040.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tmp7.sroa.6.0.r_0x00c040.sroa_idx, align 8
  %tmp7.sroa.7.0.r_0x00c040.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 4
  %12 = ptrtoint ptr %tmp7.sroa.7.0.r_0x00c040.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tmp7.sroa.7.0.r_0x00c040.sroa_idx, align 4
  %tmp7.sroa.8.0.r_0x00c040.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 5
  %13 = ptrtoint ptr %tmp7.sroa.8.0.r_0x00c040.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -559038737, ptr %tmp7.sroa.8.0.r_0x00c040.sroa_idx, align 8
  %r_0x004008 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %r_0x004008 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %r_0x004008, align 4
  %tmp9.sroa.4.0.r_0x004008.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %tmp9.sroa.4.0.r_0x004008.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tmp9.sroa.4.0.r_0x004008.sroa_idx, align 8
  %tmp9.sroa.5335.0.r_0x004008.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 2
  %16 = ptrtoint ptr %tmp9.sroa.5335.0.r_0x004008.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16392, ptr %tmp9.sroa.5335.0.r_0x004008.sroa_idx, align 4
  %tmp9.sroa.6.0.r_0x004008.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 3
  %17 = ptrtoint ptr %tmp9.sroa.6.0.r_0x004008.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tmp9.sroa.6.0.r_0x004008.sroa_idx, align 8
  %tmp9.sroa.7.0.r_0x004008.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 4
  %18 = ptrtoint ptr %tmp9.sroa.7.0.r_0x004008.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tmp9.sroa.7.0.r_0x004008.sroa_idx, align 4
  %tmp9.sroa.8.0.r_0x004008.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 5
  %19 = ptrtoint ptr %tmp9.sroa.8.0.r_0x004008.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -559038737, ptr %tmp9.sroa.8.0.r_0x004008.sroa_idx, align 8
  %r_0x00400c = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %r_0x00400c to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %r_0x00400c, align 4
  %tmp11.sroa.4.0.r_0x00400c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %21 = ptrtoint ptr %tmp11.sroa.4.0.r_0x00400c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %tmp11.sroa.4.0.r_0x00400c.sroa_idx, align 8
  %tmp11.sroa.5334.0.r_0x00400c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 2
  %22 = ptrtoint ptr %tmp11.sroa.5334.0.r_0x00400c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16396, ptr %tmp11.sroa.5334.0.r_0x00400c.sroa_idx, align 4
  %tmp11.sroa.6.0.r_0x00400c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 3
  %23 = ptrtoint ptr %tmp11.sroa.6.0.r_0x00400c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tmp11.sroa.6.0.r_0x00400c.sroa_idx, align 8
  %tmp11.sroa.7.0.r_0x00400c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 4
  %24 = ptrtoint ptr %tmp11.sroa.7.0.r_0x00400c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tmp11.sroa.7.0.r_0x00400c.sroa_idx, align 4
  %tmp11.sroa.8.0.r_0x00400c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 5
  %25 = ptrtoint ptr %tmp11.sroa.8.0.r_0x00400c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -559038737, ptr %tmp11.sroa.8.0.r_0x00400c.sroa_idx, align 8
  %r_0x100200 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %r_0x100200 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %r_0x100200, align 4
  %tmp13.sroa.4.0.r_0x100200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %27 = ptrtoint ptr %tmp13.sroa.4.0.r_0x100200.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tmp13.sroa.4.0.r_0x100200.sroa_idx, align 8
  %tmp13.sroa.5333.0.r_0x100200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 2
  %28 = ptrtoint ptr %tmp13.sroa.5333.0.r_0x100200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1049088, ptr %tmp13.sroa.5333.0.r_0x100200.sroa_idx, align 4
  %tmp13.sroa.6.0.r_0x100200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 3
  %29 = ptrtoint ptr %tmp13.sroa.6.0.r_0x100200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tmp13.sroa.6.0.r_0x100200.sroa_idx, align 8
  %tmp13.sroa.7.0.r_0x100200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 4
  %30 = ptrtoint ptr %tmp13.sroa.7.0.r_0x100200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %tmp13.sroa.7.0.r_0x100200.sroa_idx, align 4
  %tmp13.sroa.8.0.r_0x100200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 5
  %31 = ptrtoint ptr %tmp13.sroa.8.0.r_0x100200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -559038737, ptr %tmp13.sroa.8.0.r_0x100200.sroa_idx, align 8
  %r_0x100210 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %r_0x100210 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %r_0x100210, align 4
  %tmp15.sroa.4.0.r_0x100210.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 1
  %33 = ptrtoint ptr %tmp15.sroa.4.0.r_0x100210.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %tmp15.sroa.4.0.r_0x100210.sroa_idx, align 8
  %tmp15.sroa.5332.0.r_0x100210.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 2
  %34 = ptrtoint ptr %tmp15.sroa.5332.0.r_0x100210.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1049104, ptr %tmp15.sroa.5332.0.r_0x100210.sroa_idx, align 4
  %tmp15.sroa.6.0.r_0x100210.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 3
  %35 = ptrtoint ptr %tmp15.sroa.6.0.r_0x100210.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tmp15.sroa.6.0.r_0x100210.sroa_idx, align 8
  %tmp15.sroa.7.0.r_0x100210.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 4
  %36 = ptrtoint ptr %tmp15.sroa.7.0.r_0x100210.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %tmp15.sroa.7.0.r_0x100210.sroa_idx, align 4
  %tmp15.sroa.8.0.r_0x100210.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 5
  %37 = ptrtoint ptr %tmp15.sroa.8.0.r_0x100210.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -559038737, ptr %tmp15.sroa.8.0.r_0x100210.sroa_idx, align 8
  %r_0x10021c = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %r_0x10021c to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %r_0x10021c, align 4
  %tmp17.sroa.4.0.r_0x10021c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 1
  %39 = ptrtoint ptr %tmp17.sroa.4.0.r_0x10021c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %tmp17.sroa.4.0.r_0x10021c.sroa_idx, align 8
  %tmp17.sroa.5331.0.r_0x10021c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 2
  %40 = ptrtoint ptr %tmp17.sroa.5331.0.r_0x10021c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1049116, ptr %tmp17.sroa.5331.0.r_0x10021c.sroa_idx, align 4
  %tmp17.sroa.6.0.r_0x10021c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 3
  %41 = ptrtoint ptr %tmp17.sroa.6.0.r_0x10021c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tmp17.sroa.6.0.r_0x10021c.sroa_idx, align 8
  %tmp17.sroa.7.0.r_0x10021c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 4
  %42 = ptrtoint ptr %tmp17.sroa.7.0.r_0x10021c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %tmp17.sroa.7.0.r_0x10021c.sroa_idx, align 4
  %tmp17.sroa.8.0.r_0x10021c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 5
  %43 = ptrtoint ptr %tmp17.sroa.8.0.r_0x10021c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -559038737, ptr %tmp17.sroa.8.0.r_0x10021c.sroa_idx, align 8
  %r_0x1002d0 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %r_0x1002d0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %r_0x1002d0, align 4
  %tmp19.sroa.4.0.r_0x1002d0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 1
  %45 = ptrtoint ptr %tmp19.sroa.4.0.r_0x1002d0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %tmp19.sroa.4.0.r_0x1002d0.sroa_idx, align 8
  %tmp19.sroa.5330.0.r_0x1002d0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 2
  %46 = ptrtoint ptr %tmp19.sroa.5330.0.r_0x1002d0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1049296, ptr %tmp19.sroa.5330.0.r_0x1002d0.sroa_idx, align 4
  %tmp19.sroa.6.0.r_0x1002d0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 3
  %47 = ptrtoint ptr %tmp19.sroa.6.0.r_0x1002d0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tmp19.sroa.6.0.r_0x1002d0.sroa_idx, align 8
  %tmp19.sroa.7.0.r_0x1002d0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 4
  %48 = ptrtoint ptr %tmp19.sroa.7.0.r_0x1002d0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %tmp19.sroa.7.0.r_0x1002d0.sroa_idx, align 4
  %tmp19.sroa.8.0.r_0x1002d0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 5
  %49 = ptrtoint ptr %tmp19.sroa.8.0.r_0x1002d0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -559038737, ptr %tmp19.sroa.8.0.r_0x1002d0.sroa_idx, align 8
  %r_0x1002d4 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9
  %50 = ptrtoint ptr %r_0x1002d4 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %r_0x1002d4, align 4
  %tmp21.sroa.4.0.r_0x1002d4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 1
  %51 = ptrtoint ptr %tmp21.sroa.4.0.r_0x1002d4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %tmp21.sroa.4.0.r_0x1002d4.sroa_idx, align 8
  %tmp21.sroa.5329.0.r_0x1002d4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 2
  %52 = ptrtoint ptr %tmp21.sroa.5329.0.r_0x1002d4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1049300, ptr %tmp21.sroa.5329.0.r_0x1002d4.sroa_idx, align 4
  %tmp21.sroa.6.0.r_0x1002d4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 3
  %53 = ptrtoint ptr %tmp21.sroa.6.0.r_0x1002d4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tmp21.sroa.6.0.r_0x1002d4.sroa_idx, align 8
  %tmp21.sroa.7.0.r_0x1002d4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 4
  %54 = ptrtoint ptr %tmp21.sroa.7.0.r_0x1002d4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %tmp21.sroa.7.0.r_0x1002d4.sroa_idx, align 4
  %tmp21.sroa.8.0.r_0x1002d4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 5
  %55 = ptrtoint ptr %tmp21.sroa.8.0.r_0x1002d4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -559038737, ptr %tmp21.sroa.8.0.r_0x1002d4.sroa_idx, align 8
  %r_0x1002dc = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10
  %56 = ptrtoint ptr %r_0x1002dc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %r_0x1002dc, align 4
  %tmp23.sroa.4.0.r_0x1002dc.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 1
  %57 = ptrtoint ptr %tmp23.sroa.4.0.r_0x1002dc.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %tmp23.sroa.4.0.r_0x1002dc.sroa_idx, align 8
  %tmp23.sroa.5328.0.r_0x1002dc.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 2
  %58 = ptrtoint ptr %tmp23.sroa.5328.0.r_0x1002dc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1049308, ptr %tmp23.sroa.5328.0.r_0x1002dc.sroa_idx, align 4
  %tmp23.sroa.6.0.r_0x1002dc.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 3
  %59 = ptrtoint ptr %tmp23.sroa.6.0.r_0x1002dc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %tmp23.sroa.6.0.r_0x1002dc.sroa_idx, align 8
  %tmp23.sroa.7.0.r_0x1002dc.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 4
  %60 = ptrtoint ptr %tmp23.sroa.7.0.r_0x1002dc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %tmp23.sroa.7.0.r_0x1002dc.sroa_idx, align 4
  %tmp23.sroa.8.0.r_0x1002dc.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 5
  %61 = ptrtoint ptr %tmp23.sroa.8.0.r_0x1002dc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -559038737, ptr %tmp23.sroa.8.0.r_0x1002dc.sroa_idx, align 8
  %r_0x10053c = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11
  %62 = ptrtoint ptr %r_0x10053c to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %r_0x10053c, align 4
  %tmp25.sroa.4.0.r_0x10053c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 1
  %63 = ptrtoint ptr %tmp25.sroa.4.0.r_0x10053c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %tmp25.sroa.4.0.r_0x10053c.sroa_idx, align 8
  %tmp25.sroa.5327.0.r_0x10053c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 2
  %64 = ptrtoint ptr %tmp25.sroa.5327.0.r_0x10053c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1049916, ptr %tmp25.sroa.5327.0.r_0x10053c.sroa_idx, align 4
  %tmp25.sroa.6.0.r_0x10053c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 3
  %65 = ptrtoint ptr %tmp25.sroa.6.0.r_0x10053c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %tmp25.sroa.6.0.r_0x10053c.sroa_idx, align 8
  %tmp25.sroa.7.0.r_0x10053c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 4
  %66 = ptrtoint ptr %tmp25.sroa.7.0.r_0x10053c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %tmp25.sroa.7.0.r_0x10053c.sroa_idx, align 4
  %tmp25.sroa.8.0.r_0x10053c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 5
  %67 = ptrtoint ptr %tmp25.sroa.8.0.r_0x10053c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -559038737, ptr %tmp25.sroa.8.0.r_0x10053c.sroa_idx, align 8
  %r_0x1005a0 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12
  %68 = ptrtoint ptr %r_0x1005a0 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %r_0x1005a0, align 4
  %tmp27.sroa.4.0.r_0x1005a0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 1
  %69 = ptrtoint ptr %tmp27.sroa.4.0.r_0x1005a0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %tmp27.sroa.4.0.r_0x1005a0.sroa_idx, align 8
  %tmp27.sroa.5326.0.r_0x1005a0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 2
  %70 = ptrtoint ptr %tmp27.sroa.5326.0.r_0x1005a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1050016, ptr %tmp27.sroa.5326.0.r_0x1005a0.sroa_idx, align 4
  %tmp27.sroa.6.0.r_0x1005a0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 3
  %71 = ptrtoint ptr %tmp27.sroa.6.0.r_0x1005a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %tmp27.sroa.6.0.r_0x1005a0.sroa_idx, align 8
  %tmp27.sroa.7.0.r_0x1005a0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 4
  %72 = ptrtoint ptr %tmp27.sroa.7.0.r_0x1005a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %tmp27.sroa.7.0.r_0x1005a0.sroa_idx, align 4
  %tmp27.sroa.8.0.r_0x1005a0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 5
  %73 = ptrtoint ptr %tmp27.sroa.8.0.r_0x1005a0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -559038737, ptr %tmp27.sroa.8.0.r_0x1005a0.sroa_idx, align 8
  %r_0x1005a4 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13
  %74 = ptrtoint ptr %r_0x1005a4 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %r_0x1005a4, align 4
  %tmp29.sroa.4.0.r_0x1005a4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 1
  %75 = ptrtoint ptr %tmp29.sroa.4.0.r_0x1005a4.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %tmp29.sroa.4.0.r_0x1005a4.sroa_idx, align 8
  %tmp29.sroa.5325.0.r_0x1005a4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 2
  %76 = ptrtoint ptr %tmp29.sroa.5325.0.r_0x1005a4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1050020, ptr %tmp29.sroa.5325.0.r_0x1005a4.sroa_idx, align 4
  %tmp29.sroa.6.0.r_0x1005a4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 3
  %77 = ptrtoint ptr %tmp29.sroa.6.0.r_0x1005a4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %tmp29.sroa.6.0.r_0x1005a4.sroa_idx, align 8
  %tmp29.sroa.7.0.r_0x1005a4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 4
  %78 = ptrtoint ptr %tmp29.sroa.7.0.r_0x1005a4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %tmp29.sroa.7.0.r_0x1005a4.sroa_idx, align 4
  %tmp29.sroa.8.0.r_0x1005a4.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 5
  %79 = ptrtoint ptr %tmp29.sroa.8.0.r_0x1005a4.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -559038737, ptr %tmp29.sroa.8.0.r_0x1005a4.sroa_idx, align 8
  %r_0x100710 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14
  %80 = ptrtoint ptr %r_0x100710 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %r_0x100710, align 4
  %tmp31.sroa.4.0.r_0x100710.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 1
  %81 = ptrtoint ptr %tmp31.sroa.4.0.r_0x100710.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %tmp31.sroa.4.0.r_0x100710.sroa_idx, align 8
  %tmp31.sroa.5324.0.r_0x100710.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 2
  %82 = ptrtoint ptr %tmp31.sroa.5324.0.r_0x100710.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1050384, ptr %tmp31.sroa.5324.0.r_0x100710.sroa_idx, align 4
  %tmp31.sroa.6.0.r_0x100710.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 3
  %83 = ptrtoint ptr %tmp31.sroa.6.0.r_0x100710.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %tmp31.sroa.6.0.r_0x100710.sroa_idx, align 8
  %tmp31.sroa.7.0.r_0x100710.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 4
  %84 = ptrtoint ptr %tmp31.sroa.7.0.r_0x100710.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %tmp31.sroa.7.0.r_0x100710.sroa_idx, align 4
  %tmp31.sroa.8.0.r_0x100710.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 5
  %85 = ptrtoint ptr %tmp31.sroa.8.0.r_0x100710.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -559038737, ptr %tmp31.sroa.8.0.r_0x100710.sroa_idx, align 8
  %r_0x100714 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15
  %86 = ptrtoint ptr %r_0x100714 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %r_0x100714, align 4
  %tmp33.sroa.4.0.r_0x100714.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 1
  %87 = ptrtoint ptr %tmp33.sroa.4.0.r_0x100714.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %tmp33.sroa.4.0.r_0x100714.sroa_idx, align 8
  %tmp33.sroa.5323.0.r_0x100714.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 2
  %88 = ptrtoint ptr %tmp33.sroa.5323.0.r_0x100714.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1050388, ptr %tmp33.sroa.5323.0.r_0x100714.sroa_idx, align 4
  %tmp33.sroa.6.0.r_0x100714.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 3
  %89 = ptrtoint ptr %tmp33.sroa.6.0.r_0x100714.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %tmp33.sroa.6.0.r_0x100714.sroa_idx, align 8
  %tmp33.sroa.7.0.r_0x100714.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 4
  %90 = ptrtoint ptr %tmp33.sroa.7.0.r_0x100714.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %tmp33.sroa.7.0.r_0x100714.sroa_idx, align 4
  %tmp33.sroa.8.0.r_0x100714.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 5
  %91 = ptrtoint ptr %tmp33.sroa.8.0.r_0x100714.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -559038737, ptr %tmp33.sroa.8.0.r_0x100714.sroa_idx, align 8
  %r_0x100718 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16
  %92 = ptrtoint ptr %r_0x100718 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %r_0x100718, align 4
  %tmp35.sroa.4.0.r_0x100718.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16, i32 1
  %93 = ptrtoint ptr %tmp35.sroa.4.0.r_0x100718.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %tmp35.sroa.4.0.r_0x100718.sroa_idx, align 8
  %tmp35.sroa.5322.0.r_0x100718.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16, i32 2
  %94 = ptrtoint ptr %tmp35.sroa.5322.0.r_0x100718.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1050392, ptr %tmp35.sroa.5322.0.r_0x100718.sroa_idx, align 4
  %tmp35.sroa.6.0.r_0x100718.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16, i32 3
  %95 = ptrtoint ptr %tmp35.sroa.6.0.r_0x100718.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %tmp35.sroa.6.0.r_0x100718.sroa_idx, align 8
  %tmp35.sroa.7.0.r_0x100718.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16, i32 4
  %96 = ptrtoint ptr %tmp35.sroa.7.0.r_0x100718.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %tmp35.sroa.7.0.r_0x100718.sroa_idx, align 4
  %tmp35.sroa.8.0.r_0x100718.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 16, i32 5
  %97 = ptrtoint ptr %tmp35.sroa.8.0.r_0x100718.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -559038737, ptr %tmp35.sroa.8.0.r_0x100718.sroa_idx, align 8
  %r_0x10071c = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17
  %98 = ptrtoint ptr %r_0x10071c to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %r_0x10071c, align 4
  %tmp37.sroa.4.0.r_0x10071c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17, i32 1
  %99 = ptrtoint ptr %tmp37.sroa.4.0.r_0x10071c.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %tmp37.sroa.4.0.r_0x10071c.sroa_idx, align 8
  %tmp37.sroa.5321.0.r_0x10071c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17, i32 2
  %100 = ptrtoint ptr %tmp37.sroa.5321.0.r_0x10071c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1050396, ptr %tmp37.sroa.5321.0.r_0x10071c.sroa_idx, align 4
  %tmp37.sroa.6.0.r_0x10071c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17, i32 3
  %101 = ptrtoint ptr %tmp37.sroa.6.0.r_0x10071c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %tmp37.sroa.6.0.r_0x10071c.sroa_idx, align 8
  %tmp37.sroa.7.0.r_0x10071c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17, i32 4
  %102 = ptrtoint ptr %tmp37.sroa.7.0.r_0x10071c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %tmp37.sroa.7.0.r_0x10071c.sroa_idx, align 4
  %tmp37.sroa.8.0.r_0x10071c.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 17, i32 5
  %103 = ptrtoint ptr %tmp37.sroa.8.0.r_0x10071c.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -559038737, ptr %tmp37.sroa.8.0.r_0x10071c.sroa_idx, align 8
  %r_0x100da0 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18
  %part_mask = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 9
  %104 = ptrtoint ptr %part_mask to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %part_mask, align 4
  %106 = ptrtoint ptr %r_0x100da0 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %r_0x100da0, align 4
  %tmp39.sroa.4.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18, i32 1
  %107 = ptrtoint ptr %tmp39.sroa.4.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %tmp39.sroa.4.0.r_0x100da0.sroa_idx, align 8
  %tmp39.sroa.5320.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18, i32 2
  %108 = ptrtoint ptr %tmp39.sroa.5320.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1052064, ptr %tmp39.sroa.5320.0.r_0x100da0.sroa_idx, align 4
  %tmp39.sroa.6.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18, i32 3
  %109 = ptrtoint ptr %tmp39.sroa.6.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %tmp39.sroa.6.0.r_0x100da0.sroa_idx, align 8
  %tmp39.sroa.7.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18, i32 4
  %110 = ptrtoint ptr %tmp39.sroa.7.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %105, ptr %tmp39.sroa.7.0.r_0x100da0.sroa_idx, align 4
  %tmp39.sroa.8.0.r_0x100da0.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 18, i32 5
  %111 = ptrtoint ptr %tmp39.sroa.8.0.r_0x100da0.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -559038737, ptr %tmp39.sroa.8.0.r_0x100da0.sroa_idx, align 8
  %r_0x100e20 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19
  %112 = ptrtoint ptr %r_0x100e20 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %r_0x100e20, align 4
  %tmp42.sroa.4.0.r_0x100e20.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19, i32 1
  %113 = ptrtoint ptr %tmp42.sroa.4.0.r_0x100e20.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %tmp42.sroa.4.0.r_0x100e20.sroa_idx, align 8
  %tmp42.sroa.5319.0.r_0x100e20.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19, i32 2
  %114 = ptrtoint ptr %tmp42.sroa.5319.0.r_0x100e20.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1052192, ptr %tmp42.sroa.5319.0.r_0x100e20.sroa_idx, align 4
  %tmp42.sroa.6.0.r_0x100e20.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19, i32 3
  %115 = ptrtoint ptr %tmp42.sroa.6.0.r_0x100e20.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %tmp42.sroa.6.0.r_0x100e20.sroa_idx, align 8
  %tmp42.sroa.7.0.r_0x100e20.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19, i32 4
  %116 = ptrtoint ptr %tmp42.sroa.7.0.r_0x100e20.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %tmp42.sroa.7.0.r_0x100e20.sroa_idx, align 4
  %tmp42.sroa.8.0.r_0x100e20.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 19, i32 5
  %117 = ptrtoint ptr %tmp42.sroa.8.0.r_0x100e20.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -559038737, ptr %tmp42.sroa.8.0.r_0x100e20.sroa_idx, align 8
  %r_0x100e24 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20
  %118 = ptrtoint ptr %r_0x100e24 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %r_0x100e24, align 4
  %tmp44.sroa.4.0.r_0x100e24.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20, i32 1
  %119 = ptrtoint ptr %tmp44.sroa.4.0.r_0x100e24.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %tmp44.sroa.4.0.r_0x100e24.sroa_idx, align 8
  %tmp44.sroa.5318.0.r_0x100e24.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20, i32 2
  %120 = ptrtoint ptr %tmp44.sroa.5318.0.r_0x100e24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1052196, ptr %tmp44.sroa.5318.0.r_0x100e24.sroa_idx, align 4
  %tmp44.sroa.6.0.r_0x100e24.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20, i32 3
  %121 = ptrtoint ptr %tmp44.sroa.6.0.r_0x100e24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %tmp44.sroa.6.0.r_0x100e24.sroa_idx, align 8
  %tmp44.sroa.7.0.r_0x100e24.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20, i32 4
  %122 = ptrtoint ptr %tmp44.sroa.7.0.r_0x100e24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %tmp44.sroa.7.0.r_0x100e24.sroa_idx, align 4
  %tmp44.sroa.8.0.r_0x100e24.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 20, i32 5
  %123 = ptrtoint ptr %tmp44.sroa.8.0.r_0x100e24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -559038737, ptr %tmp44.sroa.8.0.r_0x100e24.sroa_idx, align 8
  %r_0x611200 = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21
  %124 = ptrtoint ptr %r_0x611200 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %r_0x611200, align 4
  %tmp46.sroa.4.0.r_0x611200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21, i32 1
  %125 = ptrtoint ptr %tmp46.sroa.4.0.r_0x611200.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %tmp46.sroa.4.0.r_0x611200.sroa_idx, align 8
  %tmp46.sroa.5317.0.r_0x611200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21, i32 2
  %126 = ptrtoint ptr %tmp46.sroa.5317.0.r_0x611200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 6361600, ptr %tmp46.sroa.5317.0.r_0x611200.sroa_idx, align 4
  %tmp46.sroa.6.0.r_0x611200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21, i32 3
  %127 = ptrtoint ptr %tmp46.sroa.6.0.r_0x611200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %tmp46.sroa.6.0.r_0x611200.sroa_idx, align 8
  %tmp46.sroa.7.0.r_0x611200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21, i32 4
  %128 = ptrtoint ptr %tmp46.sroa.7.0.r_0x611200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %tmp46.sroa.7.0.r_0x611200.sroa_idx, align 4
  %tmp46.sroa.8.0.r_0x611200.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 21, i32 5
  %129 = ptrtoint ptr %tmp46.sroa.8.0.r_0x611200.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -559038737, ptr %tmp46.sroa.8.0.r_0x611200.sroa_idx, align 8
  %arrayidx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %arrayidx, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0, i32 1
  %131 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0, i32 2
  %132 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1049120, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0, i32 3
  %133 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0, i32 4
  %134 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 0, i32 5
  %135 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx, align 8
  %arrayidx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1
  %136 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %arrayidx.1, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1, i32 1
  %137 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.1, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1, i32 2
  %138 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1049124, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.1, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1, i32 3
  %139 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.1, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1, i32 4
  %140 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.1, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.1 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 1, i32 5
  %141 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.1 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.1, align 8
  %arrayidx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2
  %142 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %arrayidx.2, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2, i32 1
  %143 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.2, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2, i32 2
  %144 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1049128, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.2, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2, i32 3
  %145 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.2, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2, i32 4
  %146 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.2, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.2 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 2, i32 5
  %147 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.2 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.2, align 8
  %arrayidx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3
  %148 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx.3, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3, i32 1
  %149 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.3, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3, i32 2
  %150 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1049132, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.3, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3, i32 3
  %151 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.3, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3, i32 4
  %152 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.3, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.3 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 3, i32 5
  %153 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.3 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.3, align 8
  %arrayidx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4
  %154 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %arrayidx.4, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4, i32 1
  %155 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.4, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4, i32 2
  %156 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1049136, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.4, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4, i32 3
  %157 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.4, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4, i32 4
  %158 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.4, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.4 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 4, i32 5
  %159 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.4 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.4, align 8
  %arrayidx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5
  %160 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %arrayidx.5, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5, i32 1
  %161 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.5, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5, i32 2
  %162 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1049140, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.5, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5, i32 3
  %163 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.5, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5, i32 4
  %164 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.5, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.5 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 5, i32 5
  %165 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.5 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.5, align 8
  %arrayidx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6
  %166 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %arrayidx.6, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6, i32 1
  %167 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.6 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.6, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6, i32 2
  %168 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.6 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1049144, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.6, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6, i32 3
  %169 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.6 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.6, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6, i32 4
  %170 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.6 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.6, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.6 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 6, i32 5
  %171 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.6 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.6, align 8
  %arrayidx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7
  %172 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %arrayidx.7, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7, i32 1
  %173 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.7 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.7, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7, i32 2
  %174 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.7 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1049148, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.7, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7, i32 3
  %175 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.7 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.7, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7, i32 4
  %176 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.7 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.7, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.7 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 7, i32 5
  %177 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.7 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.7, align 8
  %arrayidx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8
  %178 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %arrayidx.8, align 4
  %tmp48.sroa.4.0.arrayidx.sroa_idx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8, i32 1
  %179 = ptrtoint ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.8 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %tmp48.sroa.4.0.arrayidx.sroa_idx.8, align 8
  %tmp48.sroa.5316.0.arrayidx.sroa_idx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8, i32 2
  %180 = ptrtoint ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.8 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1049152, ptr %tmp48.sroa.5316.0.arrayidx.sroa_idx.8, align 4
  %tmp48.sroa.6.0.arrayidx.sroa_idx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8, i32 3
  %181 = ptrtoint ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.8 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %tmp48.sroa.6.0.arrayidx.sroa_idx.8, align 8
  %tmp48.sroa.7.0.arrayidx.sroa_idx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8, i32 4
  %182 = ptrtoint ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.8 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 1, ptr %tmp48.sroa.7.0.arrayidx.sroa_idx.8, align 4
  %tmp48.sroa.8.0.arrayidx.sroa_idx.8 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 22, i32 8, i32 5
  %183 = ptrtoint ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.8 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -559038737, ptr %tmp48.sroa.8.0.arrayidx.sroa_idx.8, align 8
  %ranks = getelementptr inbounds %struct.nvkm_ram, ptr %call7.i.i, i32 0, i32 7
  %184 = ptrtoint ptr %ranks to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %ranks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp50 = icmp sgt i32 %185, 1
  %r_mr = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23
  %186 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %r_mr, align 4
  %tmp54.sroa.4.0.r_mr.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 0, i32 1
  %187 = ptrtoint ptr %tmp54.sroa.4.0.r_mr.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %tmp54.sroa.4.0.r_mr.sroa_idx, align 8
  %tmp54.sroa.5315.0.r_mr.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 0, i32 2
  %188 = ptrtoint ptr %tmp54.sroa.5315.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 1049280, ptr %tmp54.sroa.5315.0.r_mr.sroa_idx, align 4
  %tmp54.sroa.6.0.r_mr.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 0, i32 3
  %. = select i1 %cmp50, i32 8, i32 0
  %.346 = select i1 %cmp50, i32 3, i32 1
  %189 = ptrtoint ptr %tmp54.sroa.6.0.r_mr.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %., ptr %tmp54.sroa.6.0.r_mr.sroa_idx, align 8
  %tmp70.sroa.7.0.r_mr68.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 0, i32 4
  %190 = ptrtoint ptr %tmp70.sroa.7.0.r_mr68.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %.346, ptr %tmp70.sroa.7.0.r_mr68.sroa_idx, align 4
  %tmp70.sroa.8.0.r_mr68.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 0, i32 5
  %191 = ptrtoint ptr %tmp70.sroa.8.0.r_mr68.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -559038737, ptr %tmp70.sroa.8.0.r_mr68.sroa_idx, align 8
  %arrayidx73 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1
  %192 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %arrayidx73, align 4
  %tmp74.sroa.4.0.arrayidx73.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1, i32 1
  %193 = ptrtoint ptr %tmp74.sroa.4.0.arrayidx73.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %tmp74.sroa.4.0.arrayidx73.sroa_idx, align 8
  %tmp74.sroa.5310.0.arrayidx73.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1, i32 2
  %194 = ptrtoint ptr %tmp74.sroa.5310.0.arrayidx73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 1049284, ptr %tmp74.sroa.5310.0.arrayidx73.sroa_idx, align 4
  %tmp74.sroa.6.0.arrayidx73.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1, i32 3
  %195 = ptrtoint ptr %tmp74.sroa.6.0.arrayidx73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %., ptr %tmp74.sroa.6.0.arrayidx73.sroa_idx, align 8
  %tmp74.sroa.7.0.arrayidx73.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1, i32 4
  %196 = ptrtoint ptr %tmp74.sroa.7.0.arrayidx73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %.346, ptr %tmp74.sroa.7.0.arrayidx73.sroa_idx, align 4
  %tmp74.sroa.8.0.arrayidx73.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 1, i32 5
  %197 = ptrtoint ptr %tmp74.sroa.8.0.arrayidx73.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -559038737, ptr %tmp74.sroa.8.0.arrayidx73.sroa_idx, align 8
  %arrayidx77 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2
  %198 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %arrayidx77, align 4
  %tmp78.sroa.4.0.arrayidx77.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2, i32 1
  %199 = ptrtoint ptr %tmp78.sroa.4.0.arrayidx77.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %tmp78.sroa.4.0.arrayidx77.sroa_idx, align 8
  %tmp78.sroa.5309.0.arrayidx77.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2, i32 2
  %200 = ptrtoint ptr %tmp78.sroa.5309.0.arrayidx77.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1049312, ptr %tmp78.sroa.5309.0.arrayidx77.sroa_idx, align 4
  %tmp78.sroa.6.0.arrayidx77.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2, i32 3
  %201 = ptrtoint ptr %tmp78.sroa.6.0.arrayidx77.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %., ptr %tmp78.sroa.6.0.arrayidx77.sroa_idx, align 8
  %tmp78.sroa.7.0.arrayidx77.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2, i32 4
  %202 = ptrtoint ptr %tmp78.sroa.7.0.arrayidx77.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %.346, ptr %tmp78.sroa.7.0.arrayidx77.sroa_idx, align 4
  %tmp78.sroa.8.0.arrayidx77.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 2, i32 5
  %203 = ptrtoint ptr %tmp78.sroa.8.0.arrayidx77.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -559038737, ptr %tmp78.sroa.8.0.arrayidx77.sroa_idx, align 8
  %arrayidx81 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3
  %204 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %arrayidx81, align 4
  %tmp82.sroa.4.0.arrayidx81.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3, i32 1
  %205 = ptrtoint ptr %tmp82.sroa.4.0.arrayidx81.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %tmp82.sroa.4.0.arrayidx81.sroa_idx, align 8
  %tmp82.sroa.5308.0.arrayidx81.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3, i32 2
  %206 = ptrtoint ptr %tmp82.sroa.5308.0.arrayidx81.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1049316, ptr %tmp82.sroa.5308.0.arrayidx81.sroa_idx, align 4
  %207 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3, i32 3
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %., ptr %207, align 8
  %209 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3, i32 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %.346, ptr %209, align 4
  %211 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 23, i32 3, i32 5
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 -559038737, ptr %211, align 8
  %r_gpio = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24
  %213 = ptrtoint ptr %r_gpio to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %r_gpio, align 4
  %tmp86.sroa.4.0.r_gpio.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 0, i32 1
  %214 = ptrtoint ptr %tmp86.sroa.4.0.r_gpio.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %tmp86.sroa.4.0.r_gpio.sroa_idx, align 8
  %tmp86.sroa.5307.0.r_gpio.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 0, i32 2
  %215 = ptrtoint ptr %tmp86.sroa.5307.0.r_gpio.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 57604, ptr %tmp86.sroa.5307.0.r_gpio.sroa_idx, align 4
  %tmp86.sroa.6.0.r_gpio.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 0, i32 3
  %216 = ptrtoint ptr %tmp86.sroa.6.0.r_gpio.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %tmp86.sroa.6.0.r_gpio.sroa_idx, align 8
  %tmp86.sroa.7.0.r_gpio.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 0, i32 4
  %217 = ptrtoint ptr %tmp86.sroa.7.0.r_gpio.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %tmp86.sroa.7.0.r_gpio.sroa_idx, align 4
  %tmp86.sroa.8.0.r_gpio.sroa_idx = getelementptr inbounds %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 0, i32 5
  %218 = ptrtoint ptr %tmp86.sroa.8.0.r_gpio.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -559038737, ptr %tmp86.sroa.8.0.r_gpio.sroa_idx, align 8
  %arrayidx89 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1
  %219 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %arrayidx89, align 4
  %tmp90.sroa.4.0.arrayidx89.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1, i32 1
  %220 = ptrtoint ptr %tmp90.sroa.4.0.arrayidx89.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %tmp90.sroa.4.0.arrayidx89.sroa_idx, align 8
  %tmp90.sroa.5306.0.arrayidx89.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1, i32 2
  %221 = ptrtoint ptr %tmp90.sroa.5306.0.arrayidx89.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 57608, ptr %tmp90.sroa.5306.0.arrayidx89.sroa_idx, align 4
  %tmp90.sroa.6.0.arrayidx89.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1, i32 3
  %222 = ptrtoint ptr %tmp90.sroa.6.0.arrayidx89.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %tmp90.sroa.6.0.arrayidx89.sroa_idx, align 8
  %tmp90.sroa.7.0.arrayidx89.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1, i32 4
  %223 = ptrtoint ptr %tmp90.sroa.7.0.arrayidx89.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %tmp90.sroa.7.0.arrayidx89.sroa_idx, align 4
  %tmp90.sroa.8.0.arrayidx89.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 1, i32 5
  %224 = ptrtoint ptr %tmp90.sroa.8.0.arrayidx89.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -559038737, ptr %tmp90.sroa.8.0.arrayidx89.sroa_idx, align 8
  %arrayidx93 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2
  %225 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %arrayidx93, align 4
  %tmp94.sroa.4.0.arrayidx93.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2, i32 1
  %226 = ptrtoint ptr %tmp94.sroa.4.0.arrayidx93.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %tmp94.sroa.4.0.arrayidx93.sroa_idx, align 8
  %tmp94.sroa.5305.0.arrayidx93.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2, i32 2
  %227 = ptrtoint ptr %tmp94.sroa.5305.0.arrayidx93.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 57632, ptr %tmp94.sroa.5305.0.arrayidx93.sroa_idx, align 4
  %tmp94.sroa.6.0.arrayidx93.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2, i32 3
  %228 = ptrtoint ptr %tmp94.sroa.6.0.arrayidx93.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %tmp94.sroa.6.0.arrayidx93.sroa_idx, align 8
  %tmp94.sroa.7.0.arrayidx93.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2, i32 4
  %229 = ptrtoint ptr %tmp94.sroa.7.0.arrayidx93.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 1, ptr %tmp94.sroa.7.0.arrayidx93.sroa_idx, align 4
  %tmp94.sroa.8.0.arrayidx93.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 2, i32 5
  %230 = ptrtoint ptr %tmp94.sroa.8.0.arrayidx93.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 -559038737, ptr %tmp94.sroa.8.0.arrayidx93.sroa_idx, align 8
  %arrayidx97 = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3
  %231 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %arrayidx97, align 4
  %tmp98.sroa.4.0.arrayidx97.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3, i32 1
  %232 = ptrtoint ptr %tmp98.sroa.4.0.arrayidx97.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %tmp98.sroa.4.0.arrayidx97.sroa_idx, align 8
  %tmp98.sroa.5304.0.arrayidx97.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3, i32 2
  %233 = ptrtoint ptr %tmp98.sroa.5304.0.arrayidx97.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 57636, ptr %tmp98.sroa.5304.0.arrayidx97.sroa_idx, align 4
  %tmp98.sroa.6.0.arrayidx97.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3, i32 3
  %234 = ptrtoint ptr %tmp98.sroa.6.0.arrayidx97.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %tmp98.sroa.6.0.arrayidx97.sroa_idx, align 8
  %tmp98.sroa.7.0.arrayidx97.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3, i32 4
  %235 = ptrtoint ptr %tmp98.sroa.7.0.arrayidx97.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 1, ptr %tmp98.sroa.7.0.arrayidx97.sroa_idx, align 4
  %tmp98.sroa.8.0.arrayidx97.sroa_idx = getelementptr %struct.nv50_ram, ptr %call7.i.i, i32 0, i32 1, i32 24, i32 3, i32 5
  %236 = ptrtoint ptr %tmp98.sroa.8.0.arrayidx97.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -559038737, ptr %tmp98.sroa.8.0.arrayidx97.sroa_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_ram_calc(ptr noundef %base, i32 noundef %freq) #0 align 64 {
entry:
  %perfE = alloca %struct.nvbios_perfE, align 4
  %mpll = alloca %struct.nvbios_pll, align 4
  %ver = alloca i8, align 1
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  %len = alloca i8, align 1
  %size = alloca i8, align 1
  %N1 = alloca i32, align 4
  %M1 = alloca i32, align 4
  %N2 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %P = alloca i32, align 4
  %timing = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwsq1 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %subdev3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1
  %device = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %bios4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios4, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %perfE) #7
  %6 = call ptr @memset(ptr %perfE, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mpll) #7
  %7 = call ptr @memset(ptr %mpll, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #7
  %8 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ver, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #7
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %hdr, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #7
  %10 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %cnt, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %len, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size) #7
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %size, align 1, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N1) #7
  %13 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %N1, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #7
  %14 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %M1, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N2) #7
  %15 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %N2, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #7
  %16 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %M2, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %P) #7
  %17 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %P, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %timing) #7
  %18 = call ptr @memset(ptr %timing, i32 255, i32 36)
  %target = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16
  %freq6 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 2
  %19 = ptrtoint ptr %freq6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %freq, ptr %freq6, align 4
  %next8 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 13
  %20 = ptrtoint ptr %next8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %target, ptr %next8, align 8
  %memory = getelementptr inbounds %struct.nvbios_perfE, ptr %perfE, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond27.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond27.do.body_crit_edge ]
  %inc = add i32 %i.0, 1
  %call = call i32 @nvbios_perfEp(ptr noundef %5, i32 noundef %i.0, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %size, ptr noundef nonnull %perfE) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.do.body18_crit_edge, label %lor.lhs.false

do.body.do.body18_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

lor.lhs.false:                                    ; preds = %do.body
  %21 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ver, align 1
  %23 = add i8 %22, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -27, i8 %23)
  %24 = icmp ult i8 %23, -27
  br i1 %24, label %lor.lhs.false.do.body18_crit_edge, label %lor.lhs.false14

lor.lhs.false.do.body18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp16 = icmp ult i8 %26, 2
  br i1 %cmp16, label %lor.lhs.false14.do.body18_crit_edge, label %do.cond27

lor.lhs.false14.do.body18_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

do.body18:                                        ; preds = %lor.lhs.false14.do.body18_crit_edge, %lor.lhs.false.do.body18_crit_edge, %do.body.do.body18_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp19.not = icmp eq i32 %28, 0
  br i1 %cmp19.not, label %do.body18.cleanup_crit_edge, label %do.end

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef %name) #10
  br label %cleanup

do.cond27:                                        ; preds = %lor.lhs.false14
  %33 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %memory, align 4
  %cmp28 = icmp ult i32 %34, %freq
  br i1 %cmp28, label %do.cond27.do.body_crit_edge, label %do.end30

do.cond27.do.body_crit_edge:                      ; preds = %do.cond27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end30:                                         ; preds = %do.cond27
  %35 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hdr, align 1
  %bios31 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1
  %call32 = call i32 @nvbios_rammapEp_from_perf(ptr noundef %5, i32 noundef %call, i8 noundef zeroext %36, ptr noundef %bios31) #7
  %call33 = call zeroext i8 @nvbios_ramcfg_index(ptr noundef %subdev3) #7
  %conv34 = zext i8 %call33 to i32
  %37 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call33, i8 %38)
  %cmp36.not = icmp ult i8 %call33, %38
  br i1 %cmp36.not, label %if.end55, label %do.body39

do.body39:                                        ; preds = %do.end30
  %debug41 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %debug41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp42.not = icmp eq i32 %40, 0
  br i1 %cmp42.not, label %do.body39.cleanup_crit_edge, label %do.end47

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %dev49 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev49, align 8
  %name50 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.16, ptr noundef %name50) #10
  br label %cleanup

if.end55:                                         ; preds = %do.end30
  %45 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hdr, align 1
  %conv56 = zext i8 %46 to i32
  %add = add i32 %call, %conv56
  %47 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %size, align 1
  %call59 = call i32 @nvbios_rammapSp_from_perf(ptr noundef %5, i32 noundef %add, i8 noundef zeroext %48, i32 noundef %conv34, ptr noundef %bios31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body62, label %if.end78

do.body62:                                        ; preds = %if.end55
  %debug64 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %debug64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp65.not = icmp eq i32 %50, 0
  br i1 %cmp65.not, label %do.body62.cleanup_crit_edge, label %do.end70

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end70:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device, align 4
  %dev72 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev72, align 8
  %name73 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.19, ptr noundef %name73) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end55
  %ramcfg_timing = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 7
  %55 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ramcfg_timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %56)
  %cmp80.not = icmp eq i32 %56, 255
  br i1 %cmp80.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end78
  %call86 = call i32 @nvbios_timingEp(ptr noundef %5, i32 noundef %56, ptr noundef nonnull %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef nonnull %len, ptr noundef %bios31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then82.do.body97_crit_edge, label %lor.lhs.false88

if.then82.do.body97_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

lor.lhs.false88:                                  ; preds = %if.then82
  %57 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %58)
  %cmp90.not = icmp eq i8 %58, 16
  br i1 %cmp90.not, label %lor.lhs.false92, label %lor.lhs.false88.do.body97_crit_edge

lor.lhs.false88.do.body97_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

lor.lhs.false92:                                  ; preds = %lor.lhs.false88
  %59 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %60)
  %cmp94 = icmp ult i8 %60, 18
  br i1 %cmp94, label %lor.lhs.false92.do.body97_crit_edge, label %if.end116

lor.lhs.false92.do.body97_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

do.body97:                                        ; preds = %lor.lhs.false92.do.body97_crit_edge, %lor.lhs.false88.do.body97_crit_edge, %if.then82.do.body97_crit_edge
  %debug99 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %61 = ptrtoint ptr %debug99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp100.not = icmp eq i32 %62, 0
  br i1 %cmp100.not, label %do.body97.cleanup_crit_edge, label %do.end105

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end105:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %dev107 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev107, align 8
  %name108 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ver, align 1
  %conv111 = zext i8 %68 to i32
  %69 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hdr, align 1
  %conv112 = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.22, ptr noundef %name108, i32 noundef %conv34, i32 noundef %call86, i32 noundef %conv111, i32 noundef %conv112) #10
  br label %cleanup

if.end116:                                        ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nv50_ram_timing_calc(ptr noundef %base, ptr noundef nonnull %timing)
  br label %if.end121

if.else:                                          ; preds = %if.end78
  %71 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fb, align 4
  %device3.i = getelementptr inbounds %struct.nvkm_fb, ptr %72, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %device3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %device3.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pri.i, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 1049120
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %78 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %timing, align 4
  %79 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pri.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %80, i32 1049124
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.1.i = getelementptr inbounds i32, ptr %timing, i32 1
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx.1.i, align 4
  %83 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pri.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %84, i32 1049128
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.2.i = getelementptr inbounds i32, ptr %timing, i32 2
  %86 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx.2.i, align 4
  %87 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pri.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %88, i32 1049132
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.3.i = getelementptr inbounds i32, ptr %timing, i32 3
  %90 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx.3.i, align 4
  %91 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pri.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %92, i32 1049136
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.4.i = getelementptr inbounds i32, ptr %timing, i32 4
  %94 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx.4.i, align 4
  %95 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pri.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %96, i32 1049140
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.5.i = getelementptr inbounds i32, ptr %timing, i32 5
  %98 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx.5.i, align 4
  %99 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pri.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %100, i32 1049144
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.6.i = getelementptr inbounds i32, ptr %timing, i32 6
  %102 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx.6.i, align 4
  %103 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pri.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %104, i32 1049148
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.7.i = getelementptr inbounds i32, ptr %timing, i32 7
  %106 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx.7.i, align 4
  %107 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pri.i, align 4
  %add.ptr.8.i = getelementptr i8, ptr %108, i32 1049152
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %arrayidx.8.i = getelementptr inbounds i32, ptr %timing, i32 8
  %110 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %arrayidx.8.i, align 4
  %timing_ver.i = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 12
  %111 = ptrtoint ptr %timing_ver.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16, ptr %timing_ver.i, align 4
  %112 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.3.i, align 4
  %add5.i = add i32 %113, 1
  %114 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 12)
  %bf.load.i = load i96, ptr %114, align 4
  %116 = and i32 %add5.i, 255
  %bf.value.i = zext i32 %116 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 72
  %bf.clear.i = and i96 %bf.load.i, -1204203453131759529492481
  %bf.set.i = or i96 %bf.shl.i, %bf.clear.i
  store i96 %bf.set.i, ptr %114, align 4
  %type.i = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 2
  %117 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type.i, align 8
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %118, label %if.else.if.end121_crit_edge [
    i32 5, label %sw.bb.i
    i32 8, label %sw.bb15.i
  ]

if.else.if.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %timing_10_CWL.i = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %120 = ptrtoint ptr %timing_10_CWL.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %bf.load9.i = load i64, ptr %timing_10_CWL.i, align 4
  %121 = and i32 %113, 255
  %bf.value10.i = zext i32 %121 to i64
  %bf.shl11.i = shl nuw nsw i64 %bf.value10.i, 40
  %bf.clear12.i = and i64 %bf.load9.i, -280375465082881
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.2.i, align 4
  %shr.i = lshr i32 %123, 24
  %add18.i = add nuw nsw i32 %shr.i, 1
  %timing_10_CWL19.i = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %124 = ptrtoint ptr %timing_10_CWL19.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %bf.load20.i = load i64, ptr %timing_10_CWL19.i, align 4
  %125 = and i32 %add18.i, 255
  %bf.value21.i = zext i32 %125 to i64
  %bf.shl22.i = shl nuw nsw i64 %bf.value21.i, 40
  %bf.clear23.i = and i64 %bf.load20.i, -280375465082881
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %sw.bb.i
  %bf.clear23.sink.i = phi i64 [ %bf.clear23.i, %sw.bb15.i ], [ %bf.shl11.i, %sw.bb.i ]
  %bf.shl22.sink.i = phi i64 [ %bf.shl22.i, %sw.bb15.i ], [ %bf.clear12.i, %sw.bb.i ]
  %timing_10_CWL19.sink.i = phi ptr [ %timing_10_CWL19.i, %sw.bb15.i ], [ %timing_10_CWL.i, %sw.bb.i ]
  %bf.set24.i = or i64 %bf.shl22.sink.i, %bf.clear23.sink.i
  %126 = ptrtoint ptr %timing_10_CWL19.sink.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %bf.set24.i, ptr %timing_10_CWL19.sink.i, align 4
  %127 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.1.i, align 4
  %shr27.i = lshr i32 %128, 24
  %bf.lshr32.i = lshr i64 %bf.set24.i, 40
  %129 = trunc i64 %bf.lshr32.i to i32
  %130 = xor i32 %129, -1
  %sub35.i = add nsw i32 %shr27.i, %130
  %bf.value37.i = zext i32 %sub35.i to i96
  %bf.shl38.i = shl i96 %bf.value37.i, 88
  %bf.clear39.i = and i96 %bf.set.i, 309485009821345068724781055
  %bf.set40.i = or i96 %bf.shl38.i, %bf.clear39.i
  %131 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 12)
  store i96 %bf.set40.i, ptr %114, align 4
  br label %if.end121

if.end121:                                        ; preds = %sw.epilog.i, %if.else.if.end121_crit_edge, %if.end116
  %hwsq.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = call i32 @nvkm_hwsq_init(ptr noundef %subdev3, ptr noundef %hwsq.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end126, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end126:                                        ; preds = %if.end121
  %sequence.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 0, i32 2
  %132 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %133, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %134 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %subdev3, ptr %hwsq1, align 4
  %r_mr = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23
  %135 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %r_mr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %inc.i)
  %cmp.not.i = icmp eq i32 %136, %inc.i
  br i1 %cmp.not.i, label %if.end126.hwsq_rd32.exit_crit_edge, label %if.then.i

if.end126.hwsq_rd32.exit_crit_edge:               ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit

if.then.i:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hwsq1, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %device1.i, align 4
  %pri.i833 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 11
  %141 = ptrtoint ptr %pri.i833 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pri.i833, align 4
  %addr.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 0, i32 2
  %143 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %addr.i, align 4
  %add.ptr.i834 = getelementptr i8, ptr %142, i32 %144
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i834) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 0, i32 5
  %146 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %data.i, align 4
  br label %hwsq_rd32.exit

hwsq_rd32.exit:                                   ; preds = %if.then.i, %if.end126.hwsq_rd32.exit_crit_edge
  %data3.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 0, i32 5
  %147 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %data3.i, align 4
  %mr = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 11
  %149 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %mr, align 4
  %arrayidx133 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 1
  %150 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx133, align 4
  %152 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp.not.i837 = icmp eq i32 %151, %153
  br i1 %cmp.not.i837, label %hwsq_rd32.exit.hwsq_rd32.exit846_crit_edge, label %if.then.i843

hwsq_rd32.exit.hwsq_rd32.exit846_crit_edge:       ; preds = %hwsq_rd32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit846

if.then.i843:                                     ; preds = %hwsq_rd32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hwsq1, align 4
  %device1.i838 = getelementptr inbounds %struct.nvkm_subdev, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %device1.i838 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %device1.i838, align 4
  %pri.i839 = getelementptr inbounds %struct.nvkm_device, ptr %157, i32 0, i32 11
  %158 = ptrtoint ptr %pri.i839 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pri.i839, align 4
  %addr.i840 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 1, i32 2
  %160 = ptrtoint ptr %addr.i840 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %addr.i840, align 4
  %add.ptr.i841 = getelementptr i8, ptr %159, i32 %161
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i841) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i842 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 1, i32 5
  %163 = ptrtoint ptr %data.i842 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %data.i842, align 4
  br label %hwsq_rd32.exit846

hwsq_rd32.exit846:                                ; preds = %if.then.i843, %hwsq_rd32.exit.hwsq_rd32.exit846_crit_edge
  %data3.i844 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 1, i32 5
  %164 = ptrtoint ptr %data3.i844 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %data3.i844, align 4
  %arrayidx137 = getelementptr %struct.nvkm_ram, ptr %base, i32 0, i32 11, i32 1
  %166 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %arrayidx137, align 4
  %arrayidx140 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 2
  %167 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx140, align 4
  %169 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp.not.i848 = icmp eq i32 %168, %170
  br i1 %cmp.not.i848, label %hwsq_rd32.exit846.hwsq_rd32.exit857_crit_edge, label %if.then.i854

hwsq_rd32.exit846.hwsq_rd32.exit857_crit_edge:    ; preds = %hwsq_rd32.exit846
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit857

if.then.i854:                                     ; preds = %hwsq_rd32.exit846
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hwsq1, align 4
  %device1.i849 = getelementptr inbounds %struct.nvkm_subdev, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %device1.i849 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %device1.i849, align 4
  %pri.i850 = getelementptr inbounds %struct.nvkm_device, ptr %174, i32 0, i32 11
  %175 = ptrtoint ptr %pri.i850 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pri.i850, align 4
  %addr.i851 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 2, i32 2
  %177 = ptrtoint ptr %addr.i851 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %addr.i851, align 4
  %add.ptr.i852 = getelementptr i8, ptr %176, i32 %178
  %179 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i852) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i853 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 2, i32 5
  %180 = ptrtoint ptr %data.i853 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %data.i853, align 4
  br label %hwsq_rd32.exit857

hwsq_rd32.exit857:                                ; preds = %if.then.i854, %hwsq_rd32.exit846.hwsq_rd32.exit857_crit_edge
  %data3.i855 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 2, i32 5
  %181 = ptrtoint ptr %data3.i855 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %data3.i855, align 4
  %arrayidx144 = getelementptr %struct.nvkm_ram, ptr %base, i32 0, i32 11, i32 2
  %183 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx144, align 4
  %type = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 2
  %184 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %185)
  %cond = icmp eq i32 %185, 8
  br i1 %cond, label %sw.epilog, label %hwsq_rd32.exit857.do.body150_crit_edge

hwsq_rd32.exit857.do.body150_crit_edge:           ; preds = %hwsq_rd32.exit857
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body150

sw.epilog:                                        ; preds = %hwsq_rd32.exit857
  %call147 = call i32 @nvkm_gddr3_calc(ptr noundef %base) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end166, label %sw.epilog.do.body150_crit_edge

sw.epilog.do.body150_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body150

do.body150:                                       ; preds = %sw.epilog.do.body150_crit_edge, %hwsq_rd32.exit857.do.body150_crit_edge
  %ret.0916 = phi i32 [ %call147, %sw.epilog.do.body150_crit_edge ], [ -38, %hwsq_rd32.exit857.do.body150_crit_edge ]
  %debug152 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %186 = ptrtoint ptr %debug152 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %debug152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp153.not = icmp eq i32 %187, 0
  br i1 %cmp153.not, label %do.body150.cleanup_crit_edge, label %do.end158

do.body150.cleanup_crit_edge:                     ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end158:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %device, align 4
  %dev160 = getelementptr inbounds %struct.nvkm_device, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev160, align 8
  %name161 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.25, ptr noundef %name161) #10
  br label %cleanup

if.end166:                                        ; preds = %sw.epilog
  %192 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %device, align 4
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %193, i32 0, i32 16
  %194 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %195)
  %cmp168 = icmp ult i32 %195, 151
  br i1 %cmp168, label %land.lhs.true, label %if.end166.if.end175_crit_edge

if.end166.if.end175_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

land.lhs.true:                                    ; preds = %if.end166
  %196 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 11
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %bf.load = load i32, ptr %196, align 4
  %198 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool171.not = icmp eq i32 %198, 0
  br i1 %tobool171.not, label %if.then172, label %land.lhs.true.if.end175_crit_edge

land.lhs.true.if.end175_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.then172:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %r_0x100710 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 14
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100710, i32 noundef 512, i32 noundef 0)
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %land.lhs.true.if.end175_crit_edge, %if.end166.if.end175_crit_edge
  %r_0x100200 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 5
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100200, i32 noundef 2048, i32 noundef 0)
  %199 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_wait_vblank(ptr noundef %200) #7
  %r_0x611200 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 21
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x611200, i32 noundef 13056)
  %r_0x002504 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 1
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x002504, i32 noundef 1)
  %201 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %202, i32 noundef 8000) #7
  %203 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_setf(ptr noundef %204, i8 noundef zeroext 16, i32 noundef 0) #7
  %205 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_wait(ptr noundef %206, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %207 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %208, i32 noundef 2000) #7
  %209 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 15
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 12)
  %bf.load186 = load i96, ptr %209, align 4
  %211 = and i96 %bf.load186, 224
  %tobool189.not = icmp eq i96 %211, 0
  br i1 %tobool189.not, label %if.end175.if.end191_crit_edge, label %if.then190

if.end175.if.end191_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end191

if.then190:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nv50_ram_gpio(ptr noundef %hwsq1, i8 noundef zeroext 46, i32 noundef 1)
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end175.if.end191_crit_edge
  %r_0x1002d4 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 9
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002d4, i32 noundef 1)
  %r_0x1002d0 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 8
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002d0, i32 noundef 1)
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002d0, i32 noundef 1)
  %r_0x100210 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 6
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x100210, i32 noundef 0)
  %r_0x1002dc = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 10
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002dc, i32 noundef 1)
  %call198 = call i32 @nvbios_pll_parse(ptr noundef %5, i32 noundef 16392, ptr noundef nonnull %mpll) #7
  %max_freq = getelementptr inbounds %struct.nvbios_pll, ptr %mpll, i32 0, i32 8, i32 1
  %212 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call198)
  %cmp199 = icmp sgt i32 %call198, -1
  br i1 %cmp199, label %if.then201, label %if.end191.cleanup_crit_edge

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then201:                                       ; preds = %if.end191
  %call202 = call i32 @nv04_pll_calc(ptr noundef %subdev3, ptr noundef nonnull %mpll, i32 noundef %freq, ptr noundef nonnull %N1, ptr noundef nonnull %M1, ptr noundef nonnull %N2, ptr noundef nonnull %M2, ptr noundef nonnull %P) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call202)
  %cmp203 = icmp slt i32 %call202, 1
  br i1 %cmp203, label %if.then201.cleanup_crit_edge, label %if.end211

if.then201.cleanup_crit_edge:                     ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end211:                                        ; preds = %if.then201
  call void @__sanitizer_cov_trace_const_cmp4(i32 750001, i32 %freq)
  %cmp212 = icmp ult i32 %freq, 750001
  %.829 = select i1 %cmp212, i32 -1879048192, i32 -2147483648
  %bias_p = getelementptr inbounds %struct.nvbios_pll, ptr %mpll, i32 0, i32 5
  %213 = ptrtoint ptr %bias_p to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %bias_p, align 2
  %conv217 = zext i8 %214 to i32
  %shl = shl nuw nsw i32 %conv217, 19
  %215 = ptrtoint ptr %P to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %P, align 4
  %shl218 = shl i32 %216, 22
  %shl219 = shl i32 %216, 16
  %or = or i32 %shl218, %.829
  %or220 = or i32 %or, %shl
  %or221 = or i32 %or220, %shl219
  %r_0x00c040 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x00c040, i32 noundef -1073692672, i32 noundef 49152)
  %r_0x004008 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 2
  %217 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %218)
  %bf.load226 = load i8, ptr %217, align 4
  %bf.lshr227 = lshr i8 %bf.load226, 6
  %bf.clear228 = and i8 %bf.lshr227, 1
  %bf.cast229 = zext i8 %bf.clear228 to i32
  %shl230 = shl nuw nsw i32 %bf.cast229, 14
  %or231 = or i32 %shl230, 512
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x004008, i32 noundef 16896, i32 noundef %or231)
  %r_0x00400c = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 3
  %219 = ptrtoint ptr %N1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %N1, align 4
  %shl234 = shl i32 %220, 8
  %221 = ptrtoint ptr %M1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %M1, align 4
  %or235 = or i32 %shl234, %222
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x00400c, i32 noundef 65535, i32 noundef %or235)
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x004008, i32 noundef -1845559296, i32 noundef %or221)
  %223 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %device, align 4
  %chipset241 = getelementptr inbounds %struct.nvkm_device, ptr %224, i32 0, i32 16
  %225 = ptrtoint ptr %chipset241 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %chipset241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %226)
  %cmp242 = icmp ugt i32 %226, 145
  br i1 %cmp242, label %if.then244, label %if.end211.if.end246_crit_edge

if.end211.if.end246_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then244:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %cmp212, i32 16, i32 0
  %r_0x100da0 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 18
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x100da0, i32 noundef %.)
  br label %if.end246

if.end246:                                        ; preds = %if.then244, %if.end211.if.end246_crit_edge
  %ramcfg_FBVDDQ = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 10
  %227 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ramcfg_FBVDDQ, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool248.not = icmp eq i32 %228, 0
  %lnot.ext = zext i1 %tobool248.not to i32
  call fastcc void @nv50_ram_gpio(ptr noundef %hwsq1, i8 noundef zeroext 24, i32 noundef %lnot.ext)
  %229 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %230, i32 noundef 64000) #7
  %231 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %232, i32 noundef 32000) #7
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x004008, i32 noundef 8704, i32 noundef 8192)
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002dc, i32 noundef 0)
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1002d4, i32 noundef 1)
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x100210, i32 noundef -2147483648)
  %233 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %234, i32 noundef 12000) #7
  %235 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %type, align 8
  %237 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %236, label %if.end246.sw.epilog291_crit_edge [
    i32 5, label %sw.bb263
    i32 8, label %sw.bb271
  ]

if.end246.sw.epilog291_crit_edge:                 ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog291

sw.bb263:                                         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  %force.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 0, i32 1
  %238 = ptrtoint ptr %force.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %force.i, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_mr, i32 noundef 0, i32 noundef 0)
  br label %sw.epilog291

sw.bb271:                                         ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  %force.i866 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 1, i32 1
  %239 = ptrtoint ptr %force.i866 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %force.i866, align 4
  %240 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx137, align 4
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %arrayidx133, i32 noundef %241)
  %force.i867 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 23, i32 0, i32 1
  %242 = ptrtoint ptr %force.i867 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %force.i867, align 4
  %243 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %mr, align 4
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_mr, i32 noundef %244)
  br label %sw.epilog291

sw.epilog291:                                     ; preds = %sw.bb271, %sw.bb263, %if.end246.sw.epilog291_crit_edge
  %r_timing = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22
  %arrayidx293 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 3
  %arrayidx294 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 3
  %245 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx294, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx293, i32 noundef -1, i32 noundef %246)
  %arrayidx298 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 1
  %arrayidx299 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 1
  %247 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx299, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx298, i32 noundef -1, i32 noundef %248)
  %arrayidx303 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 6
  %arrayidx304 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 6
  %249 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx304, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx303, i32 noundef -1, i32 noundef %250)
  %arrayidx308 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 7
  %arrayidx309 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 7
  %251 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx309, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx308, i32 noundef -1, i32 noundef %252)
  %arrayidx313 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 8
  %arrayidx314 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 8
  %253 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx314, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx313, i32 noundef -1, i32 noundef %254)
  %255 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %timing, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_timing, i32 noundef -1, i32 noundef %256)
  %arrayidx323 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 2
  %arrayidx324 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 2
  %257 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx324, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx323, i32 noundef -1, i32 noundef %258)
  %arrayidx328 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 4
  %arrayidx329 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 4
  %259 = ptrtoint ptr %arrayidx329 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx329, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx328, i32 noundef -1, i32 noundef %260)
  %arrayidx333 = getelementptr %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 22, i32 5
  %arrayidx334 = getelementptr inbounds [9 x i32], ptr %timing, i32 0, i32 5
  %261 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx334, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx333, i32 noundef -1, i32 noundef %262)
  %263 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 11
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %bf.load337 = load i32, ptr %263, align 4
  %265 = and i32 %bf.load337, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool340.not = icmp eq i32 %265, 0
  br i1 %tobool340.not, label %if.then341, label %sw.epilog291.if.end344_crit_edge

sw.epilog291.if.end344_crit_edge:                 ; preds = %sw.epilog291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344

if.then341:                                       ; preds = %sw.epilog291
  call void @__sanitizer_cov_trace_pc() #9
  %r_0x10021c = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 7
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x10021c, i32 noundef 65536, i32 noundef 0)
  br label %if.end344

if.end344:                                        ; preds = %if.then341, %sw.epilog291.if.end344_crit_edge
  %266 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %266)
  %bf.load348 = load i32, ptr %263, align 4
  %267 = lshr i32 %bf.load348, 15
  %268 = and i32 %267, 4096
  %shl354 = xor i32 %268, 4096
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100200, i32 noundef 4096, i32 noundef %shl354)
  %r_0x100710357 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 14
  %269 = ptrtoint ptr %r_0x100710357 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %r_0x100710357, align 4
  %271 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %270, i32 %272)
  %cmp.not.i869 = icmp eq i32 %270, %272
  br i1 %cmp.not.i869, label %if.end344.hwsq_rd32.exit878_crit_edge, label %if.then.i875

if.end344.hwsq_rd32.exit878_crit_edge:            ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit878

if.then.i875:                                     ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #9
  %273 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hwsq1, align 4
  %device1.i870 = getelementptr inbounds %struct.nvkm_subdev, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %device1.i870 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %device1.i870, align 4
  %pri.i871 = getelementptr inbounds %struct.nvkm_device, ptr %276, i32 0, i32 11
  %277 = ptrtoint ptr %pri.i871 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %pri.i871, align 4
  %addr.i872 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 14, i32 2
  %279 = ptrtoint ptr %addr.i872 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %addr.i872, align 4
  %add.ptr.i873 = getelementptr i8, ptr %278, i32 %280
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i873) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i874 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 14, i32 5
  %282 = ptrtoint ptr %data.i874 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %data.i874, align 4
  br label %hwsq_rd32.exit878

hwsq_rd32.exit878:                                ; preds = %if.then.i875, %if.end344.hwsq_rd32.exit878_crit_edge
  %data3.i876 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 14, i32 5
  %283 = ptrtoint ptr %data3.i876 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %data3.i876, align 4
  %r_0x100714 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 15
  %285 = ptrtoint ptr %r_0x100714 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %r_0x100714, align 4
  %287 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %286, i32 %288)
  %cmp.not.i880 = icmp eq i32 %286, %288
  br i1 %cmp.not.i880, label %hwsq_rd32.exit878.hwsq_rd32.exit889_crit_edge, label %if.then.i886

hwsq_rd32.exit878.hwsq_rd32.exit889_crit_edge:    ; preds = %hwsq_rd32.exit878
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit889

if.then.i886:                                     ; preds = %hwsq_rd32.exit878
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hwsq1, align 4
  %device1.i881 = getelementptr inbounds %struct.nvkm_subdev, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %device1.i881 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %device1.i881, align 4
  %pri.i882 = getelementptr inbounds %struct.nvkm_device, ptr %292, i32 0, i32 11
  %293 = ptrtoint ptr %pri.i882 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pri.i882, align 4
  %addr.i883 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 15, i32 2
  %295 = ptrtoint ptr %addr.i883 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %addr.i883, align 4
  %add.ptr.i884 = getelementptr i8, ptr %294, i32 %296
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i884) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i885 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 15, i32 5
  %298 = ptrtoint ptr %data.i885 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %297, ptr %data.i885, align 4
  br label %hwsq_rd32.exit889

hwsq_rd32.exit889:                                ; preds = %if.then.i886, %hwsq_rd32.exit878.hwsq_rd32.exit889_crit_edge
  %data3.i887 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 15, i32 5
  %299 = ptrtoint ptr %data3.i887 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %data3.i887, align 4
  %and361 = and i32 %300, 268435423
  %r_0x100718 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 16
  %301 = ptrtoint ptr %r_0x100718 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %r_0x100718, align 4
  %303 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %302, i32 %304)
  %cmp.not.i891 = icmp eq i32 %302, %304
  br i1 %cmp.not.i891, label %hwsq_rd32.exit889.hwsq_rd32.exit900_crit_edge, label %if.then.i897

hwsq_rd32.exit889.hwsq_rd32.exit900_crit_edge:    ; preds = %hwsq_rd32.exit889
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit900

if.then.i897:                                     ; preds = %hwsq_rd32.exit889
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %hwsq1, align 4
  %device1.i892 = getelementptr inbounds %struct.nvkm_subdev, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %device1.i892 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %device1.i892, align 4
  %pri.i893 = getelementptr inbounds %struct.nvkm_device, ptr %308, i32 0, i32 11
  %309 = ptrtoint ptr %pri.i893 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %pri.i893, align 4
  %addr.i894 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 16, i32 2
  %311 = ptrtoint ptr %addr.i894 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %addr.i894, align 4
  %add.ptr.i895 = getelementptr i8, ptr %310, i32 %312
  %313 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i895) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i896 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 16, i32 5
  %314 = ptrtoint ptr %data.i896 to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %data.i896, align 4
  br label %hwsq_rd32.exit900

hwsq_rd32.exit900:                                ; preds = %if.then.i897, %hwsq_rd32.exit889.hwsq_rd32.exit900_crit_edge
  %data3.i898 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 16, i32 5
  %315 = ptrtoint ptr %data3.i898 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %data3.i898, align 4
  %and364 = and i32 %316, -257
  %r_0x10071c = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 17
  %317 = ptrtoint ptr %r_0x10071c to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %r_0x10071c, align 4
  %319 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %sequence.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %318, i32 %320)
  %cmp.not.i902 = icmp eq i32 %318, %320
  br i1 %cmp.not.i902, label %hwsq_rd32.exit900.hwsq_rd32.exit911_crit_edge, label %if.then.i908

hwsq_rd32.exit900.hwsq_rd32.exit911_crit_edge:    ; preds = %hwsq_rd32.exit900
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit911

if.then.i908:                                     ; preds = %hwsq_rd32.exit900
  call void @__sanitizer_cov_trace_pc() #9
  %321 = ptrtoint ptr %hwsq1 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hwsq1, align 4
  %device1.i903 = getelementptr inbounds %struct.nvkm_subdev, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %device1.i903 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %device1.i903, align 4
  %pri.i904 = getelementptr inbounds %struct.nvkm_device, ptr %324, i32 0, i32 11
  %325 = ptrtoint ptr %pri.i904 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %pri.i904, align 4
  %addr.i905 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 17, i32 2
  %327 = ptrtoint ptr %addr.i905 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %addr.i905, align 4
  %add.ptr.i906 = getelementptr i8, ptr %326, i32 %328
  %329 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i906) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i907 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 17, i32 5
  %330 = ptrtoint ptr %data.i907 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %data.i907, align 4
  br label %hwsq_rd32.exit911

hwsq_rd32.exit911:                                ; preds = %if.then.i908, %hwsq_rd32.exit900.hwsq_rd32.exit911_crit_edge
  %data3.i909 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 17, i32 5
  %331 = ptrtoint ptr %data3.i909 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %data3.i909, align 4
  %and367 = and i32 %332, -257
  %333 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %device, align 4
  %chipset369 = getelementptr inbounds %struct.nvkm_device, ptr %334, i32 0, i32 16
  %335 = ptrtoint ptr %chipset369 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %chipset369, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %336)
  %cmp370 = icmp ult i32 %336, 151
  br i1 %cmp370, label %if.then372, label %if.else397

if.then372:                                       ; preds = %hwsq_rd32.exit911
  call void @__sanitizer_cov_trace_pc() #9
  %and373 = and i32 %284, -367
  %and374 = and i32 %300, 268435167
  %337 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %337)
  %bf.load376 = load i32, ptr %263, align 4
  %338 = and i32 %bf.load376, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool379.not = icmp eq i32 %338, 0
  %or381 = or i32 %and373, 96
  %spec.select = select i1 %tobool379.not, i32 %or381, i32 %and373
  %339 = ptrtoint ptr %ramcfg_FBVDDQ to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %ramcfg_FBVDDQ, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool385.not = icmp eq i32 %340, 0
  %or387 = or i32 %and374, 256
  %unk714.0 = select i1 %tobool385.not, i32 %or387, i32 %and374
  %341 = and i32 %bf.load376, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool393.not = icmp eq i32 %341, 0
  %or395 = or i32 %spec.select, 14
  %spec.select832 = select i1 %tobool393.not, i32 %spec.select, i32 %or395
  br label %if.end407

if.else397:                                       ; preds = %hwsq_rd32.exit911
  call void @__sanitizer_cov_trace_pc() #9
  %and398 = and i32 %284, -258
  %342 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %342)
  %bf.load400 = load i32, ptr %263, align 4
  %343 = lshr i32 %bf.load400, 29
  %344 = and i32 %343, 1
  %345 = or i32 %344, %and398
  %346 = xor i32 %345, 1
  br label %if.end407

if.end407:                                        ; preds = %if.else397, %if.then372
  %unk710.1 = phi i32 [ %346, %if.else397 ], [ %spec.select832, %if.then372 ]
  %unk714.1 = phi i32 [ %and361, %if.else397 ], [ %unk714.0, %if.then372 ]
  %347 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %347)
  %bf.load409 = load i32, ptr %263, align 4
  %348 = lshr i32 %bf.load409, 23
  %349 = and i32 %348, 256
  %spec.select831 = or i32 %349, %and367
  %350 = lshr i32 %bf.load409, 22
  %351 = and i32 %350, 256
  %352 = or i32 %351, %unk710.1
  %353 = lshr i32 %bf.load409, 24
  %354 = and i32 %353, 32
  %355 = xor i32 %354, 32
  %356 = or i32 %355, %unk714.1
  %357 = and i32 %bf.load409, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %357)
  %tobool435.not = icmp eq i32 %357, 0
  %or437 = or i32 %356, 1879048192
  %unk714.3 = select i1 %tobool435.not, i32 %356, i32 %or437
  %358 = lshr i32 %bf.load409, 17
  %359 = and i32 %358, 256
  %unk718.0 = or i32 %359, %and364
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100714, i32 noundef -1, i32 noundef %unk714.3)
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x10071c, i32 noundef -1, i32 noundef %spec.select831)
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100718, i32 noundef -1, i32 noundef %unk718.0)
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100710357, i32 noundef -1, i32 noundef %352)
  %360 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %360)
  %bf.load460 = load i8, ptr %217, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load460)
  %tobool463.not = icmp sgt i8 %bf.load460, -1
  br i1 %tobool463.not, label %if.end407.if.end498_crit_edge, label %if.then464

if.end407.if.end498_crit_edge:                    ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end498

if.then464:                                       ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #9
  %r_0x1005a0 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 12
  %361 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %361)
  %bf.load467 = load i32, ptr %263, align 4
  %362 = shl i32 %bf.load467, 15
  %shl470 = and i32 %362, 16711680
  %363 = lshr i32 %bf.load467, 1
  %shl475 = and i32 %363, 65280
  %or476 = or i32 %shl470, %shl475
  %bf.lshr479 = lshr i32 %bf.load467, 17
  %bf.clear480 = and i32 %bf.lshr479, 255
  %or481 = or i32 %or476, %bf.clear480
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1005a0, i32 noundef %or481)
  %r_0x1005a4 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 13
  %ramcfg_00_09 = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 11, i32 0, i32 1
  %364 = ptrtoint ptr %ramcfg_00_09 to i32
  call void @__asan_load4_noabort(i32 %364)
  %bf.load484 = load i32, ptr %ramcfg_00_09, align 4
  %365 = lshr i32 %bf.load484, 8
  %shl487 = and i32 %365, 65280
  %bf.lshr490 = lshr i32 %bf.load484, 24
  %or491 = or i32 %shl487, %bf.lshr490
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x1005a4, i32 noundef %or491)
  br label %if.end498

if.end498:                                        ; preds = %if.then464, %if.end407.if.end498_crit_edge
  %.sink = phi i32 [ 0, %if.then464 ], [ 4096, %if.end407.if.end498_crit_edge ]
  %r_0x10053c496 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 11
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x10053c496, i32 noundef 4096, i32 noundef %.sink)
  %366 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %arrayidx137, align 4
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %arrayidx133, i32 noundef -1, i32 noundef %367)
  %368 = ptrtoint ptr %209 to i32
  call void @__asan_loadN_noabort(i32 %368, i32 12)
  %bf.load507 = load i96, ptr %209, align 4
  %369 = and i96 %bf.load507, 224
  %tobool511.not = icmp eq i96 %369, 0
  br i1 %tobool511.not, label %if.then512, label %if.end498.if.end513_crit_edge

if.end498.if.end513_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end513

if.then512:                                       ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nv50_ram_gpio(ptr noundef %hwsq1, i8 noundef zeroext 46, i32 noundef 0)
  br label %if.end513

if.end513:                                        ; preds = %if.then512, %if.end498.if.end513_crit_edge
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 16, i32 1, i32 8
  %370 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool515.not = icmp eq i32 %371, 0
  br i1 %tobool515.not, label %if.then516, label %if.end513.if.end517_crit_edge

if.end513.if.end517_crit_edge:                    ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end517

if.then516:                                       ; preds = %if.end513
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nvkm_sddr2_dll_reset(ptr noundef %hwsq1)
  br label %if.end517

if.end517:                                        ; preds = %if.then516, %if.end513.if.end517_crit_edge
  %372 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_setf(ptr noundef %373, i8 noundef zeroext 16, i32 noundef 1) #7
  %374 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_wait(ptr noundef %375, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x611200, i32 noundef 13104)
  call fastcc void @hwsq_wr32(ptr noundef %hwsq1, ptr noundef %r_0x002504, i32 noundef 0)
  %376 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %376)
  %bf.load525 = load i8, ptr %217, align 4
  %377 = and i8 %bf.load525, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %tobool529.not = icmp eq i8 %377, 0
  br i1 %tobool529.not, label %if.end517.if.end534_crit_edge, label %if.then530

if.end517.if.end534_crit_edge:                    ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end534

if.then530:                                       ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100200, i32 noundef 2048, i32 noundef 2048)
  br label %if.end534

if.end534:                                        ; preds = %if.then530, %if.end517.if.end534_crit_edge
  %378 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %378)
  %bf.load536 = load i8, ptr %217, align 4
  %379 = and i8 %bf.load536, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool540.not = icmp eq i8 %379, 0
  br i1 %tobool540.not, label %if.then541, label %if.end534.if.end545_crit_edge

if.end534.if.end545_crit_edge:                    ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end545

if.then541:                                       ; preds = %if.end534
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x004008, i32 noundef 16384, i32 noundef 0)
  br label %if.end545

if.end545:                                        ; preds = %if.then541, %if.end534.if.end545_crit_edge
  %380 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %380)
  %bf.load547 = load i32, ptr %263, align 4
  %381 = and i32 %bf.load547, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %tobool550.not = icmp eq i32 %381, 0
  br i1 %tobool550.not, label %if.end545.if.end555_crit_edge, label %if.then551

if.end545.if.end555_crit_edge:                    ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end555

if.then551:                                       ; preds = %if.end545
  call void @__sanitizer_cov_trace_pc() #9
  %r_0x10021c553 = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 7
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x10021c553, i32 noundef 65536, i32 noundef 65536)
  br label %if.end555

if.end555:                                        ; preds = %if.then551, %if.end545.if.end555_crit_edge
  %382 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %device, align 4
  %chipset557 = getelementptr inbounds %struct.nvkm_device, ptr %383, i32 0, i32 16
  %384 = ptrtoint ptr %chipset557 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %chipset557, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %385)
  %cmp558 = icmp ult i32 %385, 151
  br i1 %cmp558, label %land.lhs.true560, label %if.end555.cleanup_crit_edge

if.end555.cleanup_crit_edge:                      ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true560:                                 ; preds = %if.end555
  %386 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %386)
  %bf.load562 = load i32, ptr %263, align 4
  %387 = and i32 %bf.load562, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %tobool565.not = icmp eq i32 %387, 0
  br i1 %tobool565.not, label %land.lhs.true560.cleanup_crit_edge, label %if.then566

land.lhs.true560.cleanup_crit_edge:               ; preds = %land.lhs.true560
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then566:                                       ; preds = %land.lhs.true560
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @hwsq_mask(ptr noundef %hwsq1, ptr noundef %r_0x100710357, i32 noundef 512, i32 noundef 512)
  br label %cleanup

cleanup:                                          ; preds = %if.then566, %land.lhs.true560.cleanup_crit_edge, %if.end555.cleanup_crit_edge, %if.then201.cleanup_crit_edge, %if.end191.cleanup_crit_edge, %do.end158, %do.body150.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %do.end105, %do.body97.cleanup_crit_edge, %do.end70, %do.body62.cleanup_crit_edge, %do.end47, %do.body39.cleanup_crit_edge, %do.end, %do.body18.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %do.end47 ], [ -22, %do.body39.cleanup_crit_edge ], [ -22, %do.end70 ], [ -22, %do.body62.cleanup_crit_edge ], [ -22, %do.end105 ], [ -22, %do.body97.cleanup_crit_edge ], [ %ret.0916, %do.end158 ], [ %ret.0916, %do.body150.cleanup_crit_edge ], [ 0, %if.then566 ], [ 0, %land.lhs.true560.cleanup_crit_edge ], [ 0, %if.end555.cleanup_crit_edge ], [ %call.i, %if.end121.cleanup_crit_edge ], [ %call198, %if.end191.cleanup_crit_edge ], [ -22, %if.then201.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %timing) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %P) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mpll) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %perfE) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_ram_prog(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %hwsq = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1
  %cfgopt = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cfgopt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfgopt, align 4
  %call = tail call zeroext i1 @nvkm_boolopt(ptr noundef %5, ptr noundef nonnull @.str.35, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwsq, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.hwsq_exec.exit_crit_edge, label %if.then.i

entry.hwsq_exec.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwsq.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = tail call i32 @nvkm_hwsq_fini(ptr noundef %hwsq.i, i1 noundef zeroext %call) #7
  %8 = ptrtoint ptr %hwsq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %hwsq, align 4
  br label %hwsq_exec.exit

hwsq_exec.exit:                                   ; preds = %if.then.i, %entry.hwsq_exec.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_ram_tidy(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwsq = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hwsq_exec.exit_crit_edge, label %if.then.i

entry.hwsq_exec.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_exec.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwsq.i = getelementptr inbounds %struct.nv50_ram, ptr %base, i32 0, i32 1, i32 0, i32 1
  %call.i = tail call i32 @nvkm_hwsq_fini(ptr noundef %hwsq.i, i1 noundef zeroext false) #7
  %2 = ptrtoint ptr %hwsq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hwsq, align 4
  br label %hwsq_exec.exit

hwsq_exec.exit:                                   ; preds = %if.then.i, %entry.hwsq_exec.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapEp_from_perf(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_ramcfg_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rammapSp_from_perf(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_timingEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_ram_timing_calc(ptr nocapture noundef %ram, ptr nocapture noundef %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 1
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %device3 = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1049128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 1049136
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 1049148
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 1049152
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %16 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 16, i32 1, i32 15
  %timing_10_CWL = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 16, i32 1, i32 15, i32 1, i32 4
  %17 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load = load i64, ptr %timing_10_CWL, align 4
  %18 = and i64 %bf.load, 280375465082880
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not = icmp eq i64 %18, 0
  %type = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 8
  %mul = select i1 %tobool.not, i32 %20, i32 0
  %21 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mul, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 8, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 12)
  %bf.load20 = load i96, ptr %16, align 4
  %bf.lshr21 = lshr i96 %bf.load20, 72
  %23 = trunc i96 %bf.lshr21 to i32
  %sub = add nuw nsw i32 %23, 255
  %24 = and i32 %sub, 255
  %bf.value = zext i32 %24 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 40
  %bf.clear26 = and i64 %bf.load, -280375465082881
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %6, 24
  %add = add nuw nsw i32 %shr, 1
  %25 = and i32 %add, 255
  %bf.value30 = zext i32 %25 to i64
  %bf.shl31 = shl nuw nsw i64 %bf.value30, 40
  %bf.clear32 = and i64 %bf.load, -280375465082881
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb27, %sw.bb
  %bf.shl31.sink = phi i64 [ %bf.shl31, %sw.bb27 ], [ %bf.clear26, %sw.bb ]
  %bf.clear32.sink = phi i64 [ %bf.clear32, %sw.bb27 ], [ %bf.shl, %sw.bb ]
  %bf.set33 = or i64 %bf.clear32.sink, %bf.shl31.sink
  %26 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %bf.set33, ptr %timing_10_CWL, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %27 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %28)
  %cmp = icmp eq i32 %28, 160
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %next = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 13
  %29 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next, align 8
  %31 = getelementptr inbounds %struct.nvkm_ram_data, ptr %30, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load37 = load i8, ptr %31, align 4
  %bf.lshr38 = lshr i8 %bf.load37, 6
  %bf.clear39 = and i8 %bf.lshr38, 1
  %bf.cast40 = zext i8 %bf.clear39 to i32
  %add41 = add nuw nsw i32 %bf.cast40, 25
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 12)
  %bf.load42 = load i96, ptr %16, align 4
  %bf.lshr43 = lshr i96 %bf.load42, 72
  %34 = trunc i96 %bf.lshr43 to i32
  %bf.cast45 = and i32 %34, 255
  %35 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load48 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr49 = lshr i64 %bf.load48, 40
  %36 = trunc i64 %bf.lshr49 to i32
  %bf.cast51 = and i32 %36, 255
  %add46 = add nuw nsw i32 %bf.cast40, 45
  %sub52 = add nuw nsw i32 %add46, %bf.cast45
  %add60 = sub nsw i32 %sub52, %bf.cast51
  %shl = shl nsw i32 %add60, 16
  %shl66 = shl nuw nsw i32 %bf.cast51, 8
  %or = or i32 %shl, %shl66
  %add71 = add nuw nsw i32 %bf.cast45, 47
  %sub77 = sub nsw i32 %add71, %bf.cast51
  %or78 = or i32 %or, %sub77
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 12)
  %bf.load79 = load i96, ptr %16, align 4
  %bf.lshr80 = lshr i96 %bf.load79, 72
  %38 = trunc i96 %bf.lshr80 to i32
  %bf.cast82 = and i32 %38, 255
  %add83 = add nuw nsw i32 %bf.cast82, 43
  %39 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load85 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr86 = lshr i64 %bf.load85, 40
  %40 = trunc i64 %bf.lshr86 to i32
  %bf.cast88 = and i32 %40, 255
  %sub89 = sub nsw i32 %add83, %bf.cast88
  %shl90 = shl nsw i32 %sub89, 16
  %conv97 = shl i32 %40, 24
  %sext = add i32 %conv97, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %sext)
  %cmp101 = icmp sgt i32 %sext, 16777216
  %phi.bo = ashr exact i32 %sext, 16
  %cond = select i1 %cmp101, i32 %phi.bo, i32 256
  %add111 = add nuw nsw i32 %bf.cast82, 46
  %sub117 = sub nsw i32 %add111, %bf.cast88
  %or106 = or i32 %shl90, %sub117
  %or118 = or i32 %or106, %cond
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %or118.sink = phi i32 [ %or78, %if.then ], [ %or118, %if.else ]
  %unkt3b.0 = phi i32 [ %add41, %if.then ], [ 22, %if.else ]
  %41 = getelementptr i32, ptr %timing, i32 6
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or118.sink, ptr %41, align 4
  %43 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 12)
  %bf.load120 = load i96, ptr %16, align 4
  %sh.diff = lshr i96 %bf.load120, 16
  %tr.sh.diff = trunc i96 %sh.diff to i32
  %shl124 = and i32 %tr.sh.diff, -16777216
  %sh.diff2 = lshr i96 %bf.load120, 32
  %tr.sh.diff3 = trunc i96 %sh.diff2 to i32
  %shl129 = and i32 %tr.sh.diff3, 16711680
  %or130 = or i32 %shl124, %shl129
  %sh.diff4 = lshr i96 %bf.load120, 48
  %tr.sh.diff5 = trunc i96 %sh.diff4 to i32
  %shl135 = and i32 %tr.sh.diff5, 65280
  %or136 = or i32 %or130, %shl135
  %bf.lshr138 = lshr i96 %bf.load120, 64
  %44 = trunc i96 %bf.lshr138 to i32
  %bf.cast140 = and i32 %44, 255
  %or141 = or i32 %or136, %bf.cast140
  %45 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or141, ptr %timing, align 4
  %bf.load143 = load i96, ptr %16, align 4
  %bf.lshr144 = lshr i96 %bf.load143, 88
  %bf.cast145 = trunc i96 %bf.lshr144 to i32
  %add146 = add nuw nsw i32 %bf.cast145, 1
  %46 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load148 = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr149 = lshr i64 %bf.load148, 40
  %47 = trunc i64 %bf.lshr149 to i32
  %add152 = add nuw nsw i32 %add146, %47
  %shl153 = shl i32 %add152, 24
  %bf.lshr155 = lshr i64 %bf.load148, 48
  %48 = trunc i64 %bf.lshr155 to i32
  %conv160 = and i32 %48, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv160)
  %cmp162 = icmp ugt i32 %conv160, 1
  %phi.bo6 = shl nuw nsw i32 %conv160, 16
  %cond169 = select i1 %cmp162, i32 %phi.bo6, i32 65536
  %or171 = or i32 %cond169, %shl153
  %bf.lshr173 = lshr i96 %bf.load143, 80
  %49 = trunc i96 %bf.lshr173 to i32
  %bf.cast175 = and i32 %49, 255
  %add176 = add nuw nsw i32 %bf.cast175, 1
  %bf.cast181 = and i32 %47, 255
  %add182 = add nuw nsw i32 %add176, %bf.cast181
  %shl183 = shl nuw nsw i32 %add182, 8
  %bf.lshr186 = lshr i96 %bf.load143, 72
  %50 = trunc i96 %bf.lshr186 to i32
  %bf.cast188 = and i32 %50, 255
  %add189 = add nuw nsw i32 %bf.cast188, 3
  %sub195 = sub nsw i32 %add189, %bf.cast181
  %or184 = or i32 %shl183, %sub195
  %or196 = or i32 %or184, %or171
  %arrayidx197 = getelementptr i32, ptr %timing, i32 1
  %51 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or196, ptr %arrayidx197, align 4
  %52 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load199 = load i64, ptr %timing_10_CWL, align 4
  %sh.diff7 = lshr i64 %bf.load199, 16
  %tr.sh.diff8 = trunc i64 %sh.diff7 to i32
  %53 = add i32 %tr.sh.diff8, -16777216
  %shl204 = and i32 %53, -16777216
  %54 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 12)
  %bf.load205 = load i96, ptr %16, align 4
  %55 = trunc i96 %bf.load205 to i32
  %bf.cast208 = and i32 %55, 16711680
  %or210 = or i32 %shl204, %bf.cast208
  %56 = lshr i32 %55, 16
  %shl215 = and i32 %56, 65280
  %or216 = or i32 %or210, %shl215
  %bf.lshr218 = lshr i96 %bf.load205, 32
  %57 = trunc i96 %bf.lshr218 to i32
  %bf.cast220 = and i32 %57, 255
  %or221 = or i32 %or216, %bf.cast220
  %arrayidx222 = getelementptr i32, ptr %timing, i32 2
  %58 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or221, ptr %arrayidx222, align 4
  %sub224 = add nuw nsw i32 %unkt3b.0, 254
  %bf.load225 = load i96, ptr %16, align 4
  %bf.lshr226 = lshr i96 %bf.load225, 72
  %59 = trunc i96 %bf.lshr226 to i32
  %bf.cast228 = and i32 %59, 255
  %add229 = add nuw nsw i32 %sub224, %59
  %shl230 = shl i32 %add229, 24
  %shl232 = shl nuw nsw i32 %unkt3b.0, 16
  %or233 = or i32 %shl230, %shl232
  %sub238 = add nsw i32 %bf.cast228, -1
  %shl239 = shl nsw i32 %sub238, 8
  %or240 = or i32 %or233, %sub238
  %or246 = or i32 %or240, %shl239
  %arrayidx247 = getelementptr i32, ptr %timing, i32 3
  %60 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or246, ptr %arrayidx247, align 4
  %and248 = and i32 %9, -65536
  %bf.load249 = load i96, ptr %16, align 4
  %61 = trunc i96 %bf.load249 to i32
  %62 = lshr i32 %61, 8
  %bf.cast252 = and i32 %62, 255
  %shl253 = shl nuw nsw i32 %bf.cast252, 8
  %or254 = or i32 %shl253, %and248
  %or259 = or i32 %or254, %bf.cast252
  %arrayidx260 = getelementptr i32, ptr %timing, i32 4
  %63 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or259, ptr %arrayidx260, align 4
  %bf.load261 = load i96, ptr %16, align 4
  %sh.diff9 = lshr i96 %bf.load261, 32
  %tr.sh.diff10 = trunc i96 %sh.diff9 to i32
  %shl265 = and i32 %tr.sh.diff10, -16777216
  %64 = trunc i96 %bf.load261 to i32
  %65 = lshr i32 %64, 24
  %conv277 = and i32 %tr.sh.diff10, 255
  %66 = tail call i32 @llvm.umax.i32(i32 %conv277, i32 %65)
  %shl287 = shl nuw nsw i32 %66, 16
  %or288 = or i32 %shl287, %shl265
  %bf.lshr290 = lshr i96 %bf.load261, 40
  %67 = trunc i96 %bf.lshr290 to i32
  %bf.cast292 = and i32 %67, 255
  %or293 = or i32 %or288, %bf.cast292
  %arrayidx294 = getelementptr i32, ptr %timing, i32 5
  %68 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or293, ptr %arrayidx294, align 4
  %and295 = and i32 %12, -16711681
  %69 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 12)
  %bf.load296 = load i96, ptr %16, align 4
  %sh.diff11 = lshr i96 %bf.load296, 56
  %tr.sh.diff12 = trunc i96 %sh.diff11 to i32
  %sub300 = and i32 %tr.sh.diff12, 16711680
  %shl301 = add nsw i32 %sub300, -65536
  %or302 = or i32 %shl301, %and295
  %arrayidx303 = getelementptr i32, ptr %timing, i32 7
  %70 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or302, ptr %arrayidx303, align 4
  %and304 = and i32 %15, -256
  %arrayidx305 = getelementptr i32, ptr %timing, i32 8
  %71 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and304, ptr %arrayidx305, align 4
  %72 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type, align 8
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %73, label %if.end.do.body_crit_edge [
    i32 5, label %if.end.do.body.sink.split_crit_edge
    i32 8, label %if.then331
  ]

if.end.do.body.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then331:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then331, %if.end.do.body.sink.split_crit_edge
  %.sink21 = phi i32 [ 512, %if.then331 ], [ 768, %if.end.do.body.sink.split_crit_edge ]
  %.sink = phi i32 [ -2, %if.then331 ], [ -4, %if.end.do.body.sink.split_crit_edge ]
  %75 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 12)
  %bf.load311 = load i96, ptr %16, align 4
  %sh.diff15 = lshr i96 %bf.load311, 64
  %tr.sh.diff16 = trunc i96 %sh.diff15 to i32
  %add315 = and i32 %tr.sh.diff16, 65280
  %shl316 = add nuw nsw i32 %add315, %.sink21
  %or318 = or i32 %shl316, %or293
  %76 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or318, ptr %arrayidx294, align 4
  %bf.load319 = load i96, ptr %16, align 4
  %bf.lshr320 = lshr i96 %bf.load319, 72
  %77 = trunc i96 %bf.lshr320 to i32
  %bf.cast322 = and i32 %77, 255
  %sub323 = add nsw i32 %bf.cast322, %.sink
  %or325 = or i32 %sub323, %and304
  %78 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or325, ptr %arrayidx305, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 5
  %79 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp349 = icmp ugt i32 %80, 3
  br i1 %cmp349, label %if.end358, label %do.body.if.end395_crit_edge

do.body.if.end395_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end395

if.end358:                                        ; preds = %do.body
  %81 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %or141, i32 noundef %or196, i32 noundef %or221, i32 noundef %or246) #10
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp364 = icmp ugt i32 %.pr, 3
  br i1 %cmp364, label %if.end378, label %if.end358.if.end395_crit_edge

if.end358.if.end395_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end395

if.end378:                                        ; preds = %if.end358
  %86 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device3, align 4
  %dev371 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %dev371 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev371, align 8
  %90 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx260, align 4
  %92 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx294, align 4
  %94 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %41, align 4
  %96 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx303, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.30, ptr noundef %name, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #10
  %98 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr18 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr18)
  %cmp384 = icmp ugt i32 %.pr18, 3
  br i1 %cmp384, label %do.end389, label %if.end378.if.end395_crit_edge

if.end378.if.end395_crit_edge:                    ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end395

do.end389:                                        ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device3, align 4
  %dev391 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %dev391 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev391, align 8
  %103 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx305, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.33, ptr noundef %name, i32 noundef %104) #10
  br label %if.end395

if.end395:                                        ; preds = %do.end389, %if.end378.if.end395_crit_edge, %if.end358.if.end395_crit_edge, %do.body.if.end395_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gddr3_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwsq_mask(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  %sequence2.i = getelementptr inbounds %struct.hwsq, ptr %ram, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %entry.hwsq_rd32.exit_crit_edge, label %if.then.i

entry.hwsq_rd32.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 2
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i, align 4
  br label %hwsq_rd32.exit

hwsq_rd32.exit:                                   ; preds = %if.then.i, %entry.hwsq_rd32.exit_crit_edge
  %data3.i = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 5
  %14 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i, align 4
  %neg = xor i32 %mask, -1
  %and = and i32 %15, %neg
  %or = or i32 %and, %data
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp.not = icmp eq i32 %15, %or
  br i1 %cmp.not, label %lor.lhs.false, label %hwsq_rd32.exit.if.then_crit_edge

hwsq_rd32.exit.if.then_crit_edge:                 ; preds = %hwsq_rd32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %hwsq_rd32.exit
  %force = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 1
  %16 = ptrtoint ptr %force to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %hwsq_rd32.exit.if.then_crit_edge
  %18 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence2.i, align 4
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %reg, align 4
  %21 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %data3.i, align 4
  %mask3.i = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 4
  %22 = ptrtoint ptr %mask3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not16.i = icmp eq i32 %23, 0
  br i1 %cmp.not16.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %hwsq.i = getelementptr inbounds %struct.hwsq, ptr %ram, i32 0, i32 1
  %addr.i1 = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 2
  %stride.i = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %if.end.i.for.body.i_crit_edge ]
  %mask.017.i = phi i32 [ %23, %for.body.lr.ph.i ], [ %shr.i, %if.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i2

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i2:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwsq.i, align 4
  %26 = ptrtoint ptr %addr.i1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i1, align 4
  %add.i = add i32 %27, %off.018.i
  %28 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data3.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %25, i32 noundef %add.i, i32 noundef %29) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i2, %for.body.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stride.i, align 4
  %add5.i = add i32 %31, %off.018.i
  %shr.i = lshr i32 %mask.017.i, 1
  %cmp.not.i3 = icmp ult i32 %mask.017.i, 2
  br i1 %cmp.not.i3, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwsq_wr32(ptr nocapture noundef readonly %ram, ptr nocapture noundef %reg, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %sequence = getelementptr inbounds %struct.hwsq, ptr %ram, i32 0, i32 2
  %0 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sequence, align 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %reg, align 4
  %data2 = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 5
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %data, ptr %data2, align 4
  %mask3 = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 4
  %4 = ptrtoint ptr %mask3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not16 = icmp eq i32 %5, 0
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hwsq = getelementptr inbounds %struct.hwsq, ptr %ram, i32 0, i32 1
  %addr = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 2
  %stride = getelementptr inbounds %struct.hwsq_reg, ptr %reg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %off.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %if.end.for.body_crit_edge ]
  %mask.017 = phi i32 [ %5, %for.body.lr.ph ], [ %shr, %if.end.for.body_crit_edge ]
  %and = and i32 %mask.017, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwsq, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %add = add i32 %9, %off.018
  %10 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data2, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %7, i32 noundef %add, i32 noundef %11) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stride, align 4
  %add5 = add i32 %13, %off.018
  %shr = lshr i32 %mask.017, 1
  %cmp.not = icmp ult i32 %mask.017, 2
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_ram_gpio(ptr nocapture noundef %hwsq, i8 noundef zeroext %tag, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %func = alloca %struct.dcb_gpio_func, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwsq, align 4
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %gpio1 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio1, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %func) #7
  %6 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dcb_gpio_func, ptr %func, i32 0, i32 2, i32 1
  %8 = call ptr @memset(ptr %func, i32 255, i32 5)
  %call = tail call i32 @nvkm_gpio_get(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %tag, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %val)
  %cmp.not = icmp eq i32 %call, %val
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call2 = call i32 @nvkm_gpio_find(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %tag, i8 noundef zeroext -1, ptr noundef nonnull %func) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %6, align 1
  %conv = zext i8 %10 to i32
  %11 = lshr i32 %conv, 3
  %and = shl nuw nsw i32 %conv, 2
  %shl = and i32 %and, 28
  %arrayidx = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %sequence2.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 2
  %14 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp eq i32 %13, %15
  br i1 %cmp.not.i, label %if.end.hwsq_rd32.exit_crit_edge, label %if.then.i

if.end.hwsq_rd32.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwsq, align 4
  %device1.i = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device1.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri.i, align 4
  %addr.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 5
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data.i, align 4
  br label %hwsq_rd32.exit

hwsq_rd32.exit:                                   ; preds = %if.then.i, %if.end.hwsq_rd32.exit_crit_edge
  %data3.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 5
  %26 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data3.i, align 4
  %shl8 = shl nuw i32 8, %shl
  %and9 = and i32 %27, %shl8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool12.not = icmp eq i32 %val, 0
  %lnot.ext = zext i1 %tobool12.not to i32
  %val.addr.0 = select i1 %tobool10.not, i32 %val, i32 %lnot.ext
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.addr.0)
  %tobool19.not = icmp eq i32 %val.addr.0, 0
  %lnot.ext21 = zext i1 %tobool19.not to i32
  %val.addr.1 = select i1 %tobool17.not, i32 %lnot.ext21, i32 %val.addr.0
  %shl26 = shl nuw nsw i32 3, %shl
  %or = or i32 %val.addr.1, 2
  %shl27 = shl i32 %or, %shl
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sequence2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not.i.i = icmp eq i32 %32, %34
  br i1 %cmp.not.i.i, label %hwsq_rd32.exit.hwsq_rd32.exit.i_crit_edge, label %if.then.i.i

hwsq_rd32.exit.hwsq_rd32.exit.i_crit_edge:        ; preds = %hwsq_rd32.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit.i

if.then.i.i:                                      ; preds = %hwsq_rd32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hwsq, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 2
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %42
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %44 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %data3.i, align 4
  br label %hwsq_rd32.exit.i

hwsq_rd32.exit.i:                                 ; preds = %if.then.i.i, %hwsq_rd32.exit.hwsq_rd32.exit.i_crit_edge
  %45 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data3.i, align 4
  %neg.i = xor i32 %shl26, -1
  %and.i = and i32 %46, %neg.i
  %or.i = or i32 %and.i, %shl27
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %or.i)
  %cmp.not.i49 = icmp eq i32 %46, %or.i
  br i1 %cmp.not.i49, label %lor.lhs.false.i, label %hwsq_rd32.exit.i.if.then.i50_crit_edge

hwsq_rd32.exit.i.if.then.i50_crit_edge:           ; preds = %hwsq_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

lor.lhs.false.i:                                  ; preds = %hwsq_rd32.exit.i
  %force.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 1
  %47 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %force.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.hwsq_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i50_crit_edge

lor.lhs.false.i.if.then.i50_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

lor.lhs.false.i.hwsq_mask.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

if.then.i50:                                      ; preds = %lor.lhs.false.i.if.then.i50_crit_edge, %hwsq_rd32.exit.i.if.then.i50_crit_edge
  %49 = ptrtoint ptr %sequence2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sequence2.i, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i, ptr %data3.i, align 4
  %mask3.i.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 4
  %53 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not16.i.i = icmp eq i32 %54, 0
  br i1 %cmp.not16.i.i, label %if.then.i50.hwsq_mask.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.i50.hwsq_mask.exit_crit_edge:             ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

for.body.lr.ph.i.i:                               ; preds = %if.then.i50
  %hwsq.i.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 1
  %addr.i1.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 2
  %stride.i.i = getelementptr %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 24, i32 %11, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %54, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %hwsq.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hwsq.i.i, align 4
  %57 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %58, %off.018.i.i
  %59 = ptrtoint ptr %data3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data3.i, align 4
  call void @nvkm_hwsq_wr32(ptr noundef %56, i32 noundef %add.i.i, i32 noundef %60) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %61 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %62, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.hwsq_mask.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i.i.hwsq_mask.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

hwsq_mask.exit:                                   ; preds = %if.end.i.i.hwsq_mask.exit_crit_edge, %if.then.i50.hwsq_mask.exit_crit_edge, %lor.lhs.false.i.hwsq_mask.exit_crit_edge
  %hwsq.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 1
  %63 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hwsq.i, align 4
  call void @nvkm_hwsq_nsec(ptr noundef %64, i32 noundef 20000) #7
  br label %cleanup

cleanup:                                          ; preds = %hwsq_mask.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_pll_calc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_sddr2_dll_reset(ptr nocapture noundef %hwsq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %r_mr = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23
  %0 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_mr, align 4
  %sequence2.i.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 2
  %2 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i.i, label %entry.hwsq_rd32.exit.i_crit_edge, label %if.then.i.i

entry.hwsq_rd32.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwsq, align 4
  %device1.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device1.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 2
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %data.i.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 5
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data.i.i, align 4
  br label %hwsq_rd32.exit.i

hwsq_rd32.exit.i:                                 ; preds = %if.then.i.i, %entry.hwsq_rd32.exit.i_crit_edge
  %data3.i.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 5
  %14 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data3.i.i, align 4
  %or.i = or i32 %15, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or.i)
  %cmp.not.i = icmp eq i32 %15, %or.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %hwsq_rd32.exit.i.if.then.i_crit_edge

hwsq_rd32.exit.i.if.then.i_crit_edge:             ; preds = %hwsq_rd32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %hwsq_rd32.exit.i
  %force.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 1
  %16 = ptrtoint ptr %force.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force.i, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.hwsq_mask.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.hwsq_mask.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %hwsq_rd32.exit.i.if.then.i_crit_edge
  %18 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence2.i.i, align 4
  %20 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %r_mr, align 4
  %21 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %data3.i.i, align 4
  %mask3.i.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 4
  %22 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not16.i.i = icmp eq i32 %23, 0
  br i1 %cmp.not16.i.i, label %if.then.i.hwsq_mask.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.i.hwsq_mask.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %hwsq.i.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 1
  %addr.i1.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 2
  %stride.i.i = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %mask.017.i.i = phi i32 [ %23, %for.body.lr.ph.i.i ], [ %shr.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %mask.017.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i2.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i2.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %hwsq.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hwsq.i.i, align 4
  %26 = ptrtoint ptr %addr.i1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i1.i, align 4
  %add.i.i = add i32 %27, %off.018.i.i
  %28 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %25, i32 noundef %add.i.i, i32 noundef %29) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i2.i, %for.body.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stride.i.i, align 4
  %add5.i.i = add i32 %31, %off.018.i.i
  %shr.i.i = lshr i32 %mask.017.i.i, 1
  %cmp.not.i3.i = icmp ult i32 %mask.017.i.i, 2
  br i1 %cmp.not.i3.i, label %if.end.i.i.hwsq_mask.exit_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i.i.hwsq_mask.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit

hwsq_mask.exit:                                   ; preds = %if.end.i.i.hwsq_mask.exit_crit_edge, %if.then.i.hwsq_mask.exit_crit_edge, %lor.lhs.false.i.hwsq_mask.exit_crit_edge
  %32 = ptrtoint ptr %r_mr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r_mr, align 4
  %34 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sequence2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not.i.i11 = icmp eq i32 %33, %35
  br i1 %cmp.not.i.i11, label %hwsq_mask.exit.hwsq_rd32.exit.i21_crit_edge, label %if.then.i.i17

hwsq_mask.exit.hwsq_rd32.exit.i21_crit_edge:      ; preds = %hwsq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_rd32.exit.i21

if.then.i.i17:                                    ; preds = %hwsq_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %hwsq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hwsq, align 4
  %device1.i.i12 = getelementptr inbounds %struct.nvkm_subdev, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device1.i.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device1.i.i12, align 4
  %pri.i.i13 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %pri.i.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pri.i.i13, align 4
  %addr.i.i14 = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 2
  %42 = ptrtoint ptr %addr.i.i14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i14, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %41, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %45 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data3.i.i, align 4
  br label %hwsq_rd32.exit.i21

hwsq_rd32.exit.i21:                               ; preds = %if.then.i.i17, %hwsq_mask.exit.hwsq_rd32.exit.i21_crit_edge
  %46 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data3.i.i, align 4
  %and.i19 = and i32 %47, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and.i19)
  %cmp.not.i20 = icmp eq i32 %47, %and.i19
  br i1 %cmp.not.i20, label %lor.lhs.false.i24, label %hwsq_rd32.exit.i21.if.then.i27_crit_edge

hwsq_rd32.exit.i21.if.then.i27_crit_edge:         ; preds = %hwsq_rd32.exit.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i27

lor.lhs.false.i24:                                ; preds = %hwsq_rd32.exit.i21
  %force.i22 = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 1
  %48 = ptrtoint ptr %force.i22 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %force.i22, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i23 = icmp eq i8 %49, 0
  br i1 %tobool.not.i23, label %lor.lhs.false.i24.hwsq_mask.exit43_crit_edge, label %lor.lhs.false.i24.if.then.i27_crit_edge

lor.lhs.false.i24.if.then.i27_crit_edge:          ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i27

lor.lhs.false.i24.hwsq_mask.exit43_crit_edge:     ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit43

if.then.i27:                                      ; preds = %lor.lhs.false.i24.if.then.i27_crit_edge, %hwsq_rd32.exit.i21.if.then.i27_crit_edge
  %50 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sequence2.i.i, align 4
  %52 = ptrtoint ptr %r_mr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %r_mr, align 4
  %53 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and.i19, ptr %data3.i.i, align 4
  %mask3.i.i25 = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 4
  %54 = ptrtoint ptr %mask3.i.i25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask3.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not16.i.i26 = icmp eq i32 %55, 0
  br i1 %cmp.not16.i.i26, label %if.then.i27.hwsq_mask.exit43_crit_edge, label %for.body.lr.ph.i.i31

if.then.i27.hwsq_mask.exit43_crit_edge:           ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit43

for.body.lr.ph.i.i31:                             ; preds = %if.then.i27
  %hwsq.i.i28 = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 1
  %addr.i1.i29 = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 2
  %stride.i.i30 = getelementptr inbounds %struct.nv50_ramseq, ptr %hwsq, i32 0, i32 23, i32 0, i32 3
  br label %for.body.i.i36

for.body.i.i36:                                   ; preds = %if.end.i.i42.for.body.i.i36_crit_edge, %for.body.lr.ph.i.i31
  %off.018.i.i32 = phi i32 [ 0, %for.body.lr.ph.i.i31 ], [ %add5.i.i39, %if.end.i.i42.for.body.i.i36_crit_edge ]
  %mask.017.i.i33 = phi i32 [ %55, %for.body.lr.ph.i.i31 ], [ %shr.i.i40, %if.end.i.i42.for.body.i.i36_crit_edge ]
  %and.i.i34 = and i32 %mask.017.i.i33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.not.i.i35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.not.i.i35, label %for.body.i.i36.if.end.i.i42_crit_edge, label %if.then.i2.i38

for.body.i.i36.if.end.i.i42_crit_edge:            ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i42

if.then.i2.i38:                                   ; preds = %for.body.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %hwsq.i.i28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwsq.i.i28, align 4
  %58 = ptrtoint ptr %addr.i1.i29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i1.i29, align 4
  %add.i.i37 = add i32 %59, %off.018.i.i32
  %60 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data3.i.i, align 4
  tail call void @nvkm_hwsq_wr32(ptr noundef %57, i32 noundef %add.i.i37, i32 noundef %61) #7
  br label %if.end.i.i42

if.end.i.i42:                                     ; preds = %if.then.i2.i38, %for.body.i.i36.if.end.i.i42_crit_edge
  %62 = ptrtoint ptr %stride.i.i30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stride.i.i30, align 4
  %add5.i.i39 = add i32 %63, %off.018.i.i32
  %shr.i.i40 = lshr i32 %mask.017.i.i33, 1
  %cmp.not.i3.i41 = icmp ult i32 %mask.017.i.i33, 2
  br i1 %cmp.not.i3.i41, label %if.end.i.i42.hwsq_mask.exit43_crit_edge, label %if.end.i.i42.for.body.i.i36_crit_edge

if.end.i.i42.for.body.i.i36_crit_edge:            ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i36

if.end.i.i42.hwsq_mask.exit43_crit_edge:          ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %hwsq_mask.exit43

hwsq_mask.exit43:                                 ; preds = %if.end.i.i42.hwsq_mask.exit43_crit_edge, %if.then.i27.hwsq_mask.exit43_crit_edge, %lor.lhs.false.i24.hwsq_mask.exit43_crit_edge
  %hwsq.i = getelementptr inbounds %struct.hwsq, ptr %hwsq, i32 0, i32 1
  %64 = ptrtoint ptr %hwsq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwsq.i, align 4
  tail call void @nvkm_hwsq_nsec(ptr noundef %65, i32 noundef 24000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_nsec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_setf(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_hwsq_wait(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_find(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_hwsq_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 514, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_fb_vram_rblock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_fb_vram_rblock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 528, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nv50_fb_vram_rblock._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @nv50_fb_vram_rblock._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 536, i32 2}
!15 = !{ptr @nv50_fb_vram_rblock._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nv50_fb_vram_rblock._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nv50_ram_func, !18, !"nv50_ram_func", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 496, i32 1}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 245, i32 4}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nv50_ram_calc._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @nv50_ram_calc._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 255, i32 3}
!27 = !{ptr @nv50_ram_calc._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nv50_ram_calc._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 262, i32 3}
!31 = !{ptr @nv50_ram_calc._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nv50_ram_calc._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 271, i32 4}
!35 = !{ptr @nv50_ram_calc._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @nv50_ram_calc._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 300, i32 3}
!39 = !{ptr @nv50_ram_calc._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nv50_ram_calc._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 142, i32 2}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nv50_ram_timing_calc._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @nv50_ram_timing_calc._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 144, i32 2}
!48 = !{ptr @nv50_ram_timing_calc._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nv50_ram_timing_calc._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 146, i32 2}
!52 = !{ptr @nv50_ram_timing_calc._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nv50_ram_timing_calc._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/ramnv50.c", i32 484, i32 2}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 5410986}
!66 = !{i64 2156332947}
!67 = !{i64 2156333332}
!68 = !{i64 2156333717}
!69 = !{i64 2156334603}
!70 = !{i64 2156324143}
!71 = !{i64 2156324528}
!72 = !{i64 2156324913}
!73 = !{i64 2156327791}
!74 = !{!"auto-init"}
!75 = !{i64 2156297968}
!76 = !{i64 2156271917}
!77 = !{i64 2156282271}
!78 = !{i64 2156282656}
!79 = !{i64 2156283041}
!80 = !{i64 2156283426}
!81 = !{i8 0, i8 2}
