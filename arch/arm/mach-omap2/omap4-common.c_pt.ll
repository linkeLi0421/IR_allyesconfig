; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap4-common.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap4-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }

@dram_sync = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sram_sync = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_omap4_common__288_146___omap4_sram_init3 = internal global ptr @__omap4_sram_init, section ".initcall3.init", align 4
@dram_sync_size = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dram_sync_paddr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_barriers_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016OMAP4: Map %pa to %p for dram barrier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap_barriers_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/mach-omap2/omap4-common.c\00", [61 x i8] zeroinitializer }, align 32
@omap_barriers_init._entry_ptr = internal global ptr @omap_barriers_init._entry, section ".printk_index", align 4
@soc_mb = external dso_local local_unnamed_addr global ptr, align 4
@gic_dist_base_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@twd_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gic_timer_retrigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: lost localtimer interrupt\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gic_timer_retrigger\00", [44 x i8] zeroinitializer }, align 32
@gic_timer_retrigger._entry_ptr = internal global ptr @gic_timer_retrigger._entry, section ".printk_index", align 4
@l2cache_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap4_l2c310_write_sec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@omap4_l2c310_write_sec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016OMAP L2C310: ROM does not support power control setting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap4_l2c310_write_sec\00", [41 x i8] zeroinitializer }, align 32
@omap4_l2c310_write_sec._entry_ptr = internal global ptr @omap4_l2c310_write_sec._entry, section ".printk_index", align 4
@omap4_l2c310_write_sec.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OMAP L2C310: ignoring write to reg 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@sar_ram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@intc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@intc_node = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_gic_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013No WUGEN found in DT, system will misbehave.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_gic_of_init\00", [47 x i8] zeroinitializer }, align 32
@omap_gic_of_init._entry_ptr = internal global ptr @omap_gic_of_init._entry, section ".printk_index", align 4
@omap_gic_of_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013UPDATE YOUR DEVICE TREE!\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_gic_of_init._entry_ptr.13 = internal global ptr @omap_gic_of_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,cortex-a9-gic\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm,cortex-a9-twd-timer\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,omap4-mpu\00", [19 x i8] zeroinitializer }, align 32
@omap4_sram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s:Unable to allocate sram needed to handle errata I688\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap4_sram_init\00", [16 x i8] zeroinitializer }, align 32
@omap4_sram_init._entry_ptr = internal global ptr @omap4_sram_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@omap4_sram_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s:Unable to get sram pool needed to handle errata I688\0A\00", [37 x i8] zeroinitializer }, align 32
@omap4_sram_init._entry_ptr.22 = internal global ptr @omap4_sram_init._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 260, i64 3904, i64 3936, i64 3968]
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"dram_sync\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 55, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"sram_sync\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 55, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"dram_sync_size\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"dram_sync_paddr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 56, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 166, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"gic_dist_base_addr\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 45, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"twd_base\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 46, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 202, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"l2cache_base\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 41, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 241, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 245, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"sar_ram_base\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 44, i32 22 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"intc_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 293, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"intc_node\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 299, i32 28 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 307, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 308, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 315, i32 43 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 319, i32 43 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 133, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 135, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 137, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [38 x i8] c"../arch/arm/mach-omap2/omap4-common.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 139, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__initcall__kmod_omap4_common__288_146___omap4_sram_init3, ptr @__omap4_sram_init, ptr @gic_timer_retrigger._entry, ptr @gic_timer_retrigger._entry_ptr, ptr @omap4_l2c310_write_sec._entry, ptr @omap4_l2c310_write_sec._entry_ptr, ptr @omap4_sram_init._entry, ptr @omap4_sram_init._entry.20, ptr @omap4_sram_init._entry_ptr, ptr @omap4_sram_init._entry_ptr.22, ptr @omap_barriers_init._entry, ptr @omap_barriers_init._entry_ptr, ptr @omap_gic_of_init._entry, ptr @omap_gic_of_init._entry.11, ptr @omap_gic_of_init._entry_ptr, ptr @omap_gic_of_init._entry_ptr.13, ptr @dram_sync, ptr @sram_sync, ptr @dram_sync_size, ptr @dram_sync_paddr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gic_dist_base_addr, ptr @twd_base, ptr @.str.3, ptr @.str.4, ptr @l2cache_base, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sar_ram_base, ptr @intc_match, ptr @intc_node, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_sync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_sync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_sync_size to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dram_sync_paddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_barriers_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_dist_base_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twd_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_timer_retrigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2cache_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_l2c310_write_sec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sar_ram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gic_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gic_of_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_sram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_sram_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_interconnect_sync() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dram_sync, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr @sram_sync, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %0) #7, !srcloc !77
  %3 = load ptr, ptr @dram_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #7, !srcloc !78
  %4 = load ptr, ptr @sram_sync, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !77
  %6 = load ptr, ptr @sram_sync, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap4_sram_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @omap4_sram_init() #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_sram_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i1 = tail call i32 @omap_rev() #7
  %and.i2 = and i32 %call.i1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i2)
  %cmp.i3.not = icmp eq i32 %and.i2, 84
  br i1 %cmp.i3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %call8 = tail call ptr @of_gen_pool_get(ptr noundef %call3, ptr noundef nonnull @.str.19, i32 noundef 0) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.else

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call8, i32 0, i32 3
  %0 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call8, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call8, i32 noundef 4096, ptr noundef %1, ptr noundef %3, ptr noundef null) #7
  %4 = inttoptr i32 %call.i.i to ptr
  store ptr %4, ptr @sram_sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end13, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_barrier_reserve_memblock() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @dram_sync_size, align 4
  %call = tail call i32 @arm_memblock_steal(i32 noundef 1048576, i32 noundef 1048576) #7
  store i32 %call, ptr @dram_sync_paddr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_memblock_steal(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_barriers_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %dram_io_desc = alloca [1 x %struct.map_desc], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dram_io_desc) #7
  %0 = getelementptr inbounds %struct.map_desc, ptr %dram_io_desc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.map_desc, ptr %dram_io_desc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.map_desc, ptr %dram_io_desc, i32 0, i32 3
  %3 = ptrtoint ptr %dram_io_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -27262976, ptr %dram_io_desc, align 4
  %4 = load i32, ptr @dram_sync_paddr, align 4
  %shr = lshr i32 %4, 12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %0, align 4
  %.b = load i1, ptr @dram_sync_size, align 4
  %6 = select i1 %.b, i32 1048576, i32 0
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15, ptr %2, align 4
  call void @iotable_init(ptr noundef nonnull %dram_io_desc, i32 noundef 1) #7
  %9 = ptrtoint ptr %dram_io_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dram_io_desc, align 4
  %11 = inttoptr i32 %10 to ptr
  store ptr %11, ptr @dram_sync, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @dram_sync_paddr, ptr noundef %11) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @soc_mb to i32))
  store ptr @omap4_mb, ptr @soc_mb, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dram_io_desc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_mb() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dram_sync, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 0) #7, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_dist_disable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gic_dist_base_addr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 0) #7, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_dist_enable() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gic_dist_base_addr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %0, i32 16777216) #7, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gic_dist_base_addr, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #7, !srcloc !77
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_timer_retrigger() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twd_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 12
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !77
  %2 = load ptr, ptr @gic_dist_base_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %2, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !77
  %4 = load ptr, ptr @twd_base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !77
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %7 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %do.end, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %entry
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  %8 = load ptr, ptr @twd_base, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #7, !srcloc !78
  %and13 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %do.end.if.end18_crit_edge

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load ptr, ptr @twd_base, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #7, !srcloc !78
  %or = or i32 %6, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = load ptr, ptr @twd_base, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #7, !srcloc !78
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_l2cache_base() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2cache_base, align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_l2c310_write_sec(i32 noundef %val, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %land.end22 [
    i32 256, label %entry.sw.epilog_crit_edge
    i32 260, label %sw.bb1
    i32 3904, label %sw.bb2
    i32 3936, label %sw.bb3
    i32 3968, label %land.end
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b68 = load i1, ptr @omap4_l2c310_write_sec.__already_done, align 1
  br i1 %.b68, label %land.end.cleanup_crit_edge, label %if.then, !prof !80

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @omap4_l2c310_write_sec.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

land.end22:                                       ; preds = %entry
  %.b6769 = load i1, ptr @omap4_l2c310_write_sec.__already_done.7, align 1
  br i1 %.b6769, label %land.end22.cleanup_crit_edge, label %if.then29, !prof !80

land.end22.cleanup_crit_edge:                     ; preds = %land.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %land.end22
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @omap4_l2c310_write_sec.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 245, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %reg) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %smc_op.0 = phi i32 [ 275, %sw.bb3 ], [ 256, %sw.bb2 ], [ 265, %sw.bb1 ], [ 258, %entry.sw.epilog_crit_edge ]
  tail call void @omap_smc1(i32 noundef %smc_op.0, i32 noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then29, %land.end22.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_l2_cache_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 1210327040, i32 noundef 4096) #7
  store ptr %call, ptr @l2cache_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !81

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 256, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %. = phi i32 [ -12, %do.end ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sar_ram_base, align 4
  ret ptr %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_sar_ram_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %entry
  %call.i34 = tail call i32 @omap_rev() #7
  %and.i35 = and i32 %call.i34, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i35)
  %cmp.i36.not = icmp eq i32 %and.i35, 84
  br i1 %cmp.i36.not, label %if.else.if.end5_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %sar_base.0 = phi i32 [ 1244815360, %entry.if.end5_crit_edge ], [ 1256349696, %if.else.if.end5_crit_edge ]
  %call6 = tail call ptr @ioremap(i32 noundef %sar_base.0, i32 noundef 16384) #7
  store ptr %call6, ptr @sar_ram_base, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end5.cleanup_crit_edge, !prof !81

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gic_of_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @intc_match, ptr noundef null) #7
  store ptr %call.i, ptr @intc_node, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %entry.if.end33_crit_edge, !prof !81

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #7
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end, %entry.if.end33_crit_edge
  %call.i112 = tail call i32 @omap_rev() #7
  %shr.mask.i = and i32 %call.i112, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1147142144
  br i1 %cmp.i.not, label %if.end37, label %if.end33.skip_errata_init_crit_edge

if.end33.skip_errata_init_crit_edge:              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_errata_init

if.end37:                                         ; preds = %if.end33
  %call38 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14) #7
  %call39 = tail call ptr @of_iomap(ptr noundef %call38, i32 noundef 0) #7
  store ptr %call39, ptr @gic_dist_base_addr, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end59, label %if.end37.if.end65_crit_edge, !prof !81

if.end37.if.end65_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

do.end59:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end37.if.end65_crit_edge
  %call73 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15) #7
  %call74 = tail call ptr @of_iomap(ptr noundef %call73, i32 noundef 0) #7
  store ptr %call74, ptr @twd_base, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %do.end94, label %if.end65.skip_errata_init_crit_edge, !prof !81

if.end65.skip_errata_init_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_errata_init

do.end94:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 321, i32 noundef 9, ptr noundef null) #7
  br label %skip_errata_init

skip_errata_init:                                 ; preds = %do.end94, %if.end65.skip_errata_init_crit_edge, %if.end33.skip_errata_init_crit_edge
  tail call void @irqchip_init() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_omap4_common__288_146___omap4_sram_init3, !1, !"__initcall__kmod_omap4_common__288_146___omap4_sram_init3", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 146, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 166, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_barriers_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_barriers_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 202, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gic_timer_retrigger._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @gic_timer_retrigger._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 241, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @omap4_l2c310_write_sec._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap4_l2c310_write_sec._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 245, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 307, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap_gic_of_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @omap_gic_of_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 308, i32 3}
!29 = !{ptr @omap_gic_of_init._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @omap_gic_of_init._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 315, i32 43}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 319, i32 43}
!35 = !{ptr @l2cache_base, !36, !"l2cache_base", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 41, i32 22}
!37 = !{ptr @sar_ram_base, !38, !"sar_ram_base", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 44, i32 22}
!39 = !{ptr @gic_dist_base_addr, !40, !"gic_dist_base_addr", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 45, i32 22}
!41 = !{ptr @twd_base, !42, !"twd_base", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 46, i32 22}
!43 = !{ptr @dram_sync, !44, !"dram_sync", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 55, i32 22}
!45 = !{ptr @sram_sync, !46, !"sram_sync", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 55, i32 34}
!47 = !{ptr @dram_sync_paddr, !48, !"dram_sync_paddr", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 56, i32 20}
!49 = distinct !{null, !50, !"dram_sync_size", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 57, i32 12}
!51 = !{ptr @intc_node, !52, !"intc_node", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 299, i32 28}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 133, i32 43}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 135, i32 3}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @omap4_sram_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @omap4_sram_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 137, i32 34}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 139, i32 3}
!64 = !{ptr @omap4_sram_init._entry.20, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @omap4_sram_init._entry_ptr.22, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @intc_match, !67, !"intc_match", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/omap4-common.c", i32 293, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 1253058}
!78 = !{i64 1252640}
!79 = !{i64 2155858378}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{!"branch_weights", i32 1, i32 2000}
