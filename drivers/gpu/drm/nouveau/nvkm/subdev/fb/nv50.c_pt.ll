; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fb_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i8, ptr }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i32, ptr, ptr, ptr, ptr }
%struct.nv50_fb_func = type { ptr, ptr, i32 }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_fb = type { ptr, %struct.nvkm_fb, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.146, %struct.anon.147, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.146 = type { %struct.mutex, %struct.nvkm_mm }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.147 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@nv50_fb_ = internal constant { %struct.nvkm_fb_func, [56 x i8] } { %struct.nvkm_fb_func { ptr @nv50_fb_dtor, ptr @nv50_fb_tags, ptr @nv50_fb_oneinit, ptr @nv50_fb_init, ptr null, ptr null, ptr null, ptr @nv50_fb_intr, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @nv50_fb_ram_new, i8 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv50_fb = internal constant { %struct.nv50_fb_func, [20 x i8] } { %struct.nv50_fb_func { ptr @nv50_ram_new, ptr @nv20_fb_tags, i32 460799 }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vm_engine = internal constant { [14 x %struct.nvkm_enum], [72 x i8] } { [14 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.13, ptr @vm_pfifo_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.14, ptr @vm_bar_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [72 x i8] zeroinitializer }, align 32
@vm_fault = internal constant { [10 x %struct.nvkm_enum], [56 x i8] } { [10 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.32, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.34, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.35, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [56 x i8] zeroinitializer }, align 32
@vm_client = internal constant { [16 x %struct.nvkm_enum], [64 x i8] } { [16 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.37, ptr @vm_dispatch_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.39, ptr @vm_ccache_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.42, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.44, ptr @vm_prop_subclients, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [64 x i8] zeroinitializer }, align 32
@nv50_fb_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"%s: trapped %s at %02x%04x%04x on channel %d [%08x %s] engine %02x [%s] client %02x [%s] subclient %02x [%s] reason %08x [%s]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv50_fb_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_fb_intr._entry_ptr = internal global ptr @nv50_fb_intr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PGRAPH\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PVP\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PEEPHOLE\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PFIFO\00", [26 x i8] zeroinitializer }, align 32
@vm_pfifo_subclients = internal constant { [3 x %struct.nvkm_enum], [36 x i8] } { [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BAR\00", [28 x i8] zeroinitializer }, align 32
@vm_bar_subclients = internal constant { [3 x %struct.nvkm_enum], [36 x i8] } { [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PMSPPP\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PMPEG\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PBSP\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCRYPT\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCOUNTER\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SEMAPHORE_BG\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCE0\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PMU\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PUSHBUF\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SEMAPHORE\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FB\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PT_NOT_PRESENT\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PT_TOO_SHORT\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAGE_NOT_PRESENT\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAGE_SYSTEM_ONLY\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PAGE_READ_ONLY\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NULL_DMAOBJ\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WRONG_MEMTYPE\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VRAM_LIMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMAOBJ_LIMIT\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STRMOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISPATCH\00", [23 x i8] zeroinitializer }, align 32
@vm_dispatch_subclients = internal constant { [8 x %struct.nvkm_enum], [32 x i8] } { [8 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PFIFO_WRITE\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CCACHE\00", [25 x i8] zeroinitializer }, align 32
@vm_ccache_subclients = internal constant { [4 x %struct.nvkm_enum], [48 x i8] } { [4 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLIPID\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PFIFO_READ\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VFETCH\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEXTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PROP\00", [27 x i8] zeroinitializer }, align 32
@vm_prop_subclients = internal constant { [14 x %struct.nvkm_enum], [72 x i8] } { [14 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.60, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.61, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.62, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.64, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.65, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.66, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.68, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PDAEMON\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GRCTX\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NOTIFY\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUERY\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COND\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"M2M_IN\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M2M_OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"M2M_NOTIFY\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CB\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TIC\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TSC\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT0\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT1\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT2\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT3\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT4\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT5\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT6\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RT7\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZETA\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOCAL\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GLOBAL\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"STACK\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DST2D\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 170, i64 172]
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"nv50_fb_\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 254, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [8 x i8] c"nv50_fb\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 278, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"vm_engine\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 104, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"vm_fault\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 121, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"vm_client\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 85, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 182, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 105, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 106, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 107, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 108, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"vm_pfifo_subclients\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 73, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 109, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"vm_bar_subclients\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 79, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 110, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 111, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 112, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 113, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 114, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 115, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 116, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 117, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 74, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 75, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 80, i32 16 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 81, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 122, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 123, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 124, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 125, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 126, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 127, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 128, i32 16 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 129, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 130, i32 16 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 86, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 87, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant [23 x i8] c"vm_dispatch_subclients\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 38, i32 31 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 88, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 89, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"vm_ccache_subclients\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 49, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 91, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 92, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 93, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 94, i32 16 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 95, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"vm_prop_subclients\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 56, i32 31 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 100, i32 16 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 39, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 40, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 41, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 42, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 43, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 44, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 45, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 50, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 51, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 52, i32 16 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 57, i32 16 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 58, i32 16 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 59, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 60, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 61, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 62, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 63, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 64, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 65, i32 16 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 66, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 67, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 68, i32 16 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 69, i32 16 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @nv50_fb_intr._entry, ptr @nv50_fb_intr._entry_ptr, ptr @nv50_fb_, ptr @nv50_fb, ptr @vm_engine, ptr @vm_fault, ptr @vm_client, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vm_pfifo_subclients, ptr @.str.14, ptr @vm_bar_subclients, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @vm_dispatch_subclients, ptr @.str.38, ptr @.str.39, ptr @vm_ccache_subclients, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @vm_prop_subclients, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb_ to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_engine to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_fault to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_client to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fb_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_pfifo_subclients to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_bar_subclients to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_dispatch_subclients to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_ccache_subclients to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_prop_subclients to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fb_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 532) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.nv50_fb, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_fb_ctor(ptr noundef nonnull @nv50_fb_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %base) #5
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %pfb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base, ptr %pfb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fb_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fb_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 532) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_fb_new_.exit_crit_edge, label %if.end.i

entry.nv50_fb_new_.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv50_fb_new_.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.nv50_fb, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @nvkm_fb_ctor(ptr noundef nonnull @nv50_fb_, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %base.i) #5
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nv50_fb, ptr %call7.i.i.i, align 8
  %2 = ptrtoint ptr %pfb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base.i, ptr %pfb, align 4
  br label %nv50_fb_new_.exit

nv50_fb_new_.exit:                                ; preds = %if.end.i, %entry.nv50_fb_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.nv50_fb_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_fb_dtor(ptr noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %r100c08_page = getelementptr i8, ptr %base, i32 520
  %0 = ptrtoint ptr %r100c08_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r100c08_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %r100c08 = getelementptr i8, ptr %base, i32 524
  %6 = ptrtoint ptr %r100c08 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r100c08, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %7, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %r100c08_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r100c08_page, align 4
  tail call void @__free_pages(ptr noundef %9, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fb_tags(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tags = getelementptr inbounds %struct.nv50_fb_func, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %base) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fb_oneinit(ptr nocapture noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %r100c08_page = getelementptr i8, ptr %base, i32 520
  %2 = ptrtoint ptr %r100c08_page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %r100c08_page, align 4
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %call5 = tail call i32 @dma_map_page_attrs(ptr noundef %4, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #5
  %r100c08 = getelementptr i8, ptr %base, i32 524
  %5 = ptrtoint ptr %r100c08 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %r100c08, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp.i.not = icmp eq i32 %call5, -1
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -14, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_fb_init(ptr nocapture noundef readonly %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %device2 = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %r100c08 = getelementptr i8, ptr %base, i32 524
  %2 = ptrtoint ptr %r100c08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r100c08, align 4
  %shr = lshr i32 %3, 8
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 1051656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %shr) #5, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %trap = getelementptr inbounds %struct.nv50_fb_func, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %trap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trap, align 4
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #5, !srcloc !163
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_fb_intr(ptr noundef %base) #0 align 64 {
entry:
  %chan = alloca ptr, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device3 = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %fifo4 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fifo4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flags, align 4, !annotation !165
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 1051792
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %7, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %and7) #5, !srcloc !163
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 1051796
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or.1 = or i32 %and7, 16777216
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr9.1 = getelementptr i8, ptr %14, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1, i32 %or.1) #5, !srcloc !163
  %15 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri, align 4
  %add.ptr12.1 = getelementptr i8, ptr %16, i32 1051796
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.1) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or.2 = or i32 %and7, 33554432
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr9.2 = getelementptr i8, ptr %19, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2, i32 %or.2) #5, !srcloc !163
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr12.2 = getelementptr i8, ptr %21, i32 1051796
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.2) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or.3 = or i32 %and7, 50331648
  %23 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri, align 4
  %add.ptr9.3 = getelementptr i8, ptr %24, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.3, i32 %or.3) #5, !srcloc !163
  %25 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri, align 4
  %add.ptr12.3 = getelementptr i8, ptr %26, i32 1051796
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.3) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or.4 = or i32 %and7, 67108864
  %28 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pri, align 4
  %add.ptr9.4 = getelementptr i8, ptr %29, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.4, i32 %or.4) #5, !srcloc !163
  %30 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri, align 4
  %add.ptr12.4 = getelementptr i8, ptr %31, i32 1051796
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.4) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %or.5 = or i32 %and7, 83886080
  %33 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pri, align 4
  %add.ptr9.5 = getelementptr i8, ptr %34, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.5, i32 %or.5) #5, !srcloc !163
  %35 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pri, align 4
  %add.ptr12.5 = getelementptr i8, ptr %36, i32 1051796
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.5) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %or18 = or i32 %and7, -2147483648
  %38 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pri, align 4
  %add.ptr20 = getelementptr i8, ptr %39, i32 1051792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %or18) #5, !srcloc !163
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chipset, align 4
  %.fr = freeze i32 %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %.fr)
  %cmp21 = icmp ult i32 %.fr, 163
  br i1 %cmp21, label %if.end.if.then27_crit_edge, label %switch.early.test

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

switch.early.test:                                ; preds = %if.end
  %42 = zext i32 %.fr to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.fr, label %if.else [
    i32 172, label %switch.early.test.if.then27_crit_edge
    i32 170, label %switch.early.test.if.then27_crit_edge206
  ]

switch.early.test.if.then27_crit_edge206:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

switch.early.test.if.then27_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then27:                                        ; preds = %switch.early.test.if.then27_crit_edge, %switch.early.test.if.then27_crit_edge206, %if.end.if.then27_crit_edge
  %and29 = and i32 %12, 15
  %and31 = lshr i32 %12, 4
  %shr32 = and i32 %and31, 15
  %and35 = lshr i32 %12, 8
  %shr36 = and i32 %and35, 15
  %and39 = lshr i32 %12, 12
  %shr40 = and i32 %and39, 15
  br label %if.end58

if.else:                                          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  %and47 = lshr i32 %12, 8
  %and51 = lshr i32 %12, 16
  %shr56 = lshr i32 %12, 24
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then27
  %st0.0.in = phi i32 [ %and29, %if.then27 ], [ %12, %if.else ]
  %st1.0.in = phi i32 [ %shr32, %if.then27 ], [ %and47, %if.else ]
  %st2.0.in = phi i32 [ %shr36, %if.then27 ], [ %and51, %if.else ]
  %st3.0.in = phi i32 [ %shr40, %if.then27 ], [ %shr56, %if.else ]
  %43 = shl i32 %22, 28
  %44 = shl i32 %17, 12
  %shl63 = or i32 %44, %43
  %conv64 = and i32 %st0.0.in, 255
  %call65 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_engine, i32 noundef %conv64) #5
  %conv66 = and i32 %st1.0.in, 255
  %call67 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_fault, i32 noundef %conv66) #5
  %conv68 = and i32 %st2.0.in, 255
  %call69 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @vm_client, i32 noundef %conv68) #5
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end58.if.else76_crit_edge, label %land.lhs.true

if.end58.if.else76_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else76

land.lhs.true:                                    ; preds = %if.end58
  %data = getelementptr inbounds %struct.nvkm_enum, ptr %call69, i32 0, i32 2
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %tobool71.not = icmp eq ptr %46, null
  br i1 %tobool71.not, label %land.lhs.true.if.else76_crit_edge, label %land.lhs.true.if.end87.sink.split_crit_edge

land.lhs.true.if.end87.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split

land.lhs.true.if.else76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else76

if.else76:                                        ; preds = %land.lhs.true.if.else76_crit_edge, %if.end58.if.else76_crit_edge
  %tobool77.not = icmp eq ptr %call65, null
  br i1 %tobool77.not, label %if.else76.if.end87_crit_edge, label %land.lhs.true78

if.else76.if.end87_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

land.lhs.true78:                                  ; preds = %if.else76
  %data79 = getelementptr inbounds %struct.nvkm_enum, ptr %call65, i32 0, i32 2
  %47 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data79, align 4
  %tobool80.not = icmp eq ptr %48, null
  br i1 %tobool80.not, label %land.lhs.true78.if.end87_crit_edge, label %land.lhs.true78.if.end87.sink.split_crit_edge

land.lhs.true78.if.end87.sink.split_crit_edge:    ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.sink.split

land.lhs.true78.if.end87_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.end87.sink.split:                              ; preds = %land.lhs.true78.if.end87.sink.split_crit_edge, %land.lhs.true.if.end87.sink.split_crit_edge
  %.sink = phi ptr [ %46, %land.lhs.true.if.end87.sink.split_crit_edge ], [ %48, %land.lhs.true78.if.end87.sink.split_crit_edge ]
  %call84 = tail call ptr @nvkm_enum_find(ptr noundef nonnull %.sink, i32 noundef %st3.0.in) #5
  br label %if.end87

if.end87:                                         ; preds = %if.end87.sink.split, %land.lhs.true78.if.end87_crit_edge, %if.else76.if.end87_crit_edge
  %sc.0 = phi ptr [ null, %land.lhs.true78.if.end87_crit_edge ], [ null, %if.else76.if.end87_crit_edge ], [ %call84, %if.end87.sink.split ]
  %conv88 = zext i32 %shl63 to i64
  %call89 = call ptr @nvkm_fifo_chan_inst(ptr noundef %3, i64 noundef %conv88, ptr noundef nonnull %flags) #5
  %49 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call89, ptr %chan, align 4
  %debug = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp91.not = icmp eq i32 %51, 0
  br i1 %cmp91.not, label %if.end87.if.end145_crit_edge, label %do.end96

if.end87.if.end145_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.end96:                                         ; preds = %if.end87
  %52 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_fb, ptr %base, i32 0, i32 1, i32 4
  %and99 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %cond = select i1 %tobool100.not, ptr @.str.7, ptr @.str.6
  %and102 = and i32 %37, 255
  %and104 = and i32 %32, 65535
  %and106 = and i32 %27, 65535
  %tobool107.not = icmp eq ptr %call89, null
  br i1 %tobool107.not, label %do.end96.cond.end115_crit_edge, label %cond.true111

do.end96.cond.end115_crit_edge:                   ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end115

cond.true111:                                     ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #7
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call89, i32 0, i32 5
  %56 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %chid, align 8
  %conv108 = zext i16 %57 to i32
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %call89, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client, align 4
  %name112 = getelementptr inbounds %struct.nvkm_client, ptr %59, i32 0, i32 1
  br label %cond.end115

cond.end115:                                      ; preds = %cond.true111, %do.end96.cond.end115_crit_edge
  %cond109203 = phi i32 [ %conv108, %cond.true111 ], [ -1, %do.end96.cond.end115_crit_edge ]
  %cond116 = phi ptr [ %name112, %cond.true111 ], [ @.str.8, %do.end96.cond.end115_crit_edge ]
  %tobool118.not = icmp eq ptr %call65, null
  br i1 %tobool118.not, label %cond.end115.cond.end122_crit_edge, label %cond.true119

cond.end115.cond.end122_crit_edge:                ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end122

cond.true119:                                     ; preds = %cond.end115
  call void @__sanitizer_cov_trace_pc() #7
  %name120 = getelementptr inbounds %struct.nvkm_enum, ptr %call65, i32 0, i32 1
  %60 = ptrtoint ptr %name120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name120, align 4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true119, %cond.end115.cond.end122_crit_edge
  %cond123 = phi ptr [ %61, %cond.true119 ], [ @.str.9, %cond.end115.cond.end122_crit_edge ]
  br i1 %tobool70.not, label %cond.end122.cond.end129_crit_edge, label %cond.true126

cond.end122.cond.end129_crit_edge:                ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end129

cond.true126:                                     ; preds = %cond.end122
  call void @__sanitizer_cov_trace_pc() #7
  %name127 = getelementptr inbounds %struct.nvkm_enum, ptr %call69, i32 0, i32 1
  %62 = ptrtoint ptr %name127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name127, align 4
  br label %cond.end129

cond.end129:                                      ; preds = %cond.true126, %cond.end122.cond.end129_crit_edge
  %cond130 = phi ptr [ %63, %cond.true126 ], [ @.str.9, %cond.end122.cond.end129_crit_edge ]
  %tobool132.not = icmp eq ptr %sc.0, null
  br i1 %tobool132.not, label %cond.end129.cond.end136_crit_edge, label %cond.true133

cond.end129.cond.end136_crit_edge:                ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end136

cond.true133:                                     ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #7
  %name134 = getelementptr inbounds %struct.nvkm_enum, ptr %sc.0, i32 0, i32 1
  %64 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name134, align 4
  br label %cond.end136

cond.end136:                                      ; preds = %cond.true133, %cond.end129.cond.end136_crit_edge
  %cond137 = phi ptr [ %65, %cond.true133 ], [ @.str.9, %cond.end129.cond.end136_crit_edge ]
  %tobool139.not = icmp eq ptr %call67, null
  br i1 %tobool139.not, label %cond.end136.cond.end143_crit_edge, label %cond.true140

cond.end136.cond.end143_crit_edge:                ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end143

cond.true140:                                     ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #7
  %name141 = getelementptr inbounds %struct.nvkm_enum, ptr %call67, i32 0, i32 1
  %66 = ptrtoint ptr %name141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name141, align 4
  br label %cond.end143

cond.end143:                                      ; preds = %cond.true140, %cond.end136.cond.end143_crit_edge
  %cond144 = phi ptr [ %67, %cond.true140 ], [ @.str.9, %cond.end136.cond.end143_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %and102, i32 noundef %and104, i32 noundef %and106, i32 noundef %cond109203, i32 noundef %shl63, ptr noundef %cond116, i32 noundef %conv64, ptr noundef %cond123, i32 noundef %conv68, ptr noundef %cond130, i32 noundef %st3.0.in, ptr noundef %cond137, i32 noundef %conv66, ptr noundef %cond144) #9
  br label %if.end145

if.end145:                                        ; preds = %cond.end143, %if.end87.if.end145_crit_edge
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %3, i32 noundef %69, ptr noundef nonnull %chan) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fb_ram_new(ptr noundef %base, ptr noundef %pram) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %base, ptr noundef %pram) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ram_new(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_fb_tags(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.named.register.sp = !{!152}
!llvm.module.flags = !{!153, !154, !155, !156, !157, !158, !159, !160}
!llvm.ident = !{!161}

!0 = !{ptr @nv50_fb_, !1, !"nv50_fb_", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 254, i32 1}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 182, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv50_fb_intr._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_fb_intr._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 105, i32 16}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 106, i32 16}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 107, i32 16}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 108, i32 16}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 109, i32 16}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 110, i32 16}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 111, i32 16}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 112, i32 16}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 113, i32 16}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 114, i32 16}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 115, i32 16}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 116, i32 16}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 117, i32 16}
!42 = !{ptr @vm_engine, !43, !"vm_engine", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 104, i32 31}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 74, i32 16}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 75, i32 16}
!48 = !{ptr @vm_pfifo_subclients, !49, !"vm_pfifo_subclients", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 73, i32 31}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 80, i32 16}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 81, i32 16}
!54 = !{ptr @vm_bar_subclients, !55, !"vm_bar_subclients", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 79, i32 31}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 122, i32 16}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 123, i32 16}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 124, i32 16}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 125, i32 16}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 126, i32 16}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 127, i32 16}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 128, i32 16}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 129, i32 16}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 130, i32 16}
!74 = !{ptr @vm_fault, !75, !"vm_fault", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 121, i32 31}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 86, i32 16}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 87, i32 16}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 88, i32 16}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 89, i32 16}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 91, i32 16}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 92, i32 16}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 93, i32 16}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 94, i32 16}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 95, i32 16}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 100, i32 16}
!96 = !{ptr @vm_client, !97, !"vm_client", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 85, i32 31}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 39, i32 16}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 40, i32 16}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 41, i32 16}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 42, i32 16}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 43, i32 16}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 44, i32 16}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 45, i32 16}
!112 = !{ptr @vm_dispatch_subclients, !113, !"vm_dispatch_subclients", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 38, i32 31}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 50, i32 16}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 51, i32 16}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 52, i32 16}
!120 = !{ptr @vm_ccache_subclients, !121, !"vm_ccache_subclients", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 49, i32 31}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 57, i32 16}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 58, i32 16}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 59, i32 16}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 60, i32 16}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 61, i32 16}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 62, i32 16}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 63, i32 16}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 64, i32 16}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 65, i32 16}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 66, i32 16}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 67, i32 16}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 68, i32 16}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 69, i32 16}
!148 = !{ptr @vm_prop_subclients, !149, !"vm_prop_subclients", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 56, i32 31}
!150 = !{ptr @nv50_fb, !151, !"nv50_fb", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/nv50.c", i32 278, i32 1}
!152 = !{!"sp"}
!153 = !{i32 1, !"wchar_size", i32 2}
!154 = !{i32 1, !"min_enum_size", i32 4}
!155 = !{i32 8, !"branch-target-enforcement", i32 0}
!156 = !{i32 8, !"sign-return-address", i32 0}
!157 = !{i32 8, !"sign-return-address-all", i32 0}
!158 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!159 = !{i32 7, !"uwtable", i32 1}
!160 = !{i32 7, !"frame-pointer", i32 2}
!161 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!162 = !{i64 2156278996}
!163 = !{i64 5397371}
!164 = !{i64 2156279423}
!165 = !{!"auto-init"}
!166 = !{i64 5397789}
!167 = !{i64 2156269362}
!168 = !{i64 2156269710}
!169 = !{i64 2156270169}
!170 = !{i64 2156270523}
