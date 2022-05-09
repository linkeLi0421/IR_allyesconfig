; ModuleID = '/llk/IR_all_yes/arch/arm/mm/cache-l2x0.c_pt.bc'
source_filename = "../arch/arm/mm/cache-l2x0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.l2c_init_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.outer_cache_fns }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@l2x0_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@l2c210_data = internal constant %struct.l2c_init_data { ptr @.str.20, i32 8192, i32 1, ptr null, ptr @l2c_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c_disable, ptr @l2c210_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@l2c220_data = internal constant { %struct.l2c_init_data, [56 x i8] } { %struct.l2c_init_data { ptr @.str.21, i32 8192, i32 1, ptr null, ptr @l2c220_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c220_unlock, %struct.outer_cache_fns { ptr @l2c220_inv_range, ptr @l2c220_clean_range, ptr @l2c220_flush_range, ptr @l2c220_flush_all, ptr @l2c_disable, ptr @l2c220_sync, ptr @l2c_resume, ptr null, ptr null } }, [56 x i8] zeroinitializer }, align 32
@l2c310_init_fns = internal constant %struct.l2c_init_data { ptr @.str.23, i32 8192, i32 8, ptr null, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@l2x0_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,l210-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,l220-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c220_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c310_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-a2-pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_bcm_l2x0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,aurora-outer-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_aurora_with_outer_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,aurora-system-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_aurora_no_outer_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,tauros3-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_tauros3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,bcm11351-a2-pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_bcm_l2x0_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@l2x0_saved_regs = dso_local global { %struct.l2x0_regs, [56 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,pl310-cache\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,io-coherent\00", [16 x i8] zeroinitializer }, align 32
@of_l2c310_coherent_data = internal constant %struct.l2c_init_data { ptr @.str.172, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr null, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@l2x0_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014L2C: platform modifies aux control register: 0x%08x -> 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2x0_of_init\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mm/cache-l2x0.c\00", [39 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry_ptr = internal global ptr @l2x0_of_init._entry, section ".printk_index", align 4
@l2x0_of_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 1794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\011L2C: platform provided aux values match the hardware, so have no effect.  Please remove them.\0A\00", [63 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry_ptr.7 = internal global ptr @l2x0_of_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cache-unified\00", [18 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013L2C: device tree omits to specify unified cache\0A\00", [45 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry_ptr.11 = internal global ptr @l2x0_of_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache-level\00", [20 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013L2C: device tree omits to specify cache-level\0A\00", [47 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry_ptr.15 = internal global ptr @l2x0_of_init._entry.13, section ".printk_index", align 4
@l2x0_of_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013L2C: device tree specifies invalid cache level\0A\00", [46 x i8] zeroinitializer }, align 32
@l2x0_of_init._entry_ptr.18 = internal global ptr @l2x0_of_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm,outer-sync-disable\00", [41 x i8] zeroinitializer }, align 32
@cache_id_part_number_from_dt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L2C-210\00", [24 x i8] zeroinitializer }, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@l2x0_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sync_reg_offset = internal global { i32, [28 x i8] } { i32 1840, [28 x i8] zeroinitializer }, align 32
@l2x0_way_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L2C-220\00", [24 x i8] zeroinitializer }, align 32
@l2x0_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l2x0_lock\00", [22 x i8] zeroinitializer }, align 32
@l2x0_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"L2C-310\00", [24 x i8] zeroinitializer }, align 32
@l2x0_bresp_disable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@l2c310_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016L2C-310 enabling early BRESP for Cortex-A9\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2c310_enable\00", [18 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr = internal global ptr @l2c310_enable._entry, section ".printk_index", align 4
@l2c310_enable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014L2C-310 early BRESP only supported with Cortex-A9\0A\00", [43 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.28 = internal global ptr @l2c310_enable._entry.26, section ".printk_index", align 4
@l2x0_flz_disable = internal global { i1, [31 x i8] } zeroinitializer, align 32
@l2c310_enable.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.25, ptr @.str.4, ptr @.str.30, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache_l2x0\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cortex-A9 ACR=0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@l2c310_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.4, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013L2C-310: full line of zeros enabled in Cortex-A9 but not L2C-310 - invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.33 = internal global ptr @l2c310_enable._entry.31, section ".printk_index", align 4
@l2c310_enable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.4, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013L2C-310: enabling full line of zeros but not enabled in Cortex-A9\0A\00", [59 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.36 = internal global ptr @l2c310_enable._entry.34, section ".printk_index", align 4
@l2c310_enable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.4, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016L2C-310 full line of zeros enabled for Cortex-A9\0A\00", [44 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.39 = internal global ptr @l2c310_enable._entry.37, section ".printk_index", align 4
@l2c310_enable._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.4, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013L2C-310: disabling Cortex-A9 specific feature bits\0A\00", [42 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.42 = internal global ptr @l2c310_enable._entry.40, section ".printk_index", align 4
@l2c310_enable._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.25, ptr @.str.4, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016L2C-310 %s%s prefetch enabled, offset %u lines\0A\00", [46 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.45 = internal global ptr @l2c310_enable._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@l2c310_enable._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.25, ptr @.str.4, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016L2C-310 dynamic clock gating %sabled, standby mode %sabled\0A\00", [34 x i8] zeroinitializer }, align 32
@l2c310_enable._entry_ptr.51 = internal global ptr @l2c310_enable._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm/l2x0:starting\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"588369\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"727915\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"752271\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"753970\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"769419\00", [25 x i8] zeroinitializer }, align 32
@l2c310_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016L2C-310 errat%s\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l2c310_fixup\00", [19 x i8] zeroinitializer }, align 32
@l2c310_fixup._entry_ptr = internal global ptr @l2c310_fixup._entry, section ".printk_index", align 4
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"um\00", [29 x i8] zeroinitializer }, align 32
@l2c310_fixup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.4, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c %s\00", [26 x i8] zeroinitializer }, align 32
@l2c310_fixup._entry_ptr.66 = internal global ptr @l2c310_fixup._entry.64, section ".printk_index", align 4
@l2c310_fixup._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.61, ptr @.str.4, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@l2c310_fixup._entry_ptr.69 = internal global ptr @l2c310_fixup._entry.67, section ".printk_index", align 4
@__l2c_init._entry = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 801, ptr null, ptr null }, align 1
@.str.70 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\011L2C: platform provided aux values permit register corruption.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__l2c_init\00", [21 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr = internal global ptr @__l2c_init._entry, section ".printk_index", align 4
@__l2c_init._entry.72 = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.4, i32 809, ptr null, ptr null }, align 1
@.str.73 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014L2C: DT/platform modifies aux control register: 0x%08x -> 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr.74 = internal global ptr @__l2c_init._entry.72, section ".printk_index", align 4
@__l2c_init._entry.75 = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.4, i32 815, ptr null, ptr null }, align 1
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014L2C: DT/platform tries to modify or specify cache size\0A\00", [38 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr.77 = internal global ptr @__l2c_init._entry.75, section ".printk_index", align 4
@__l2c_init._entry.78 = internal constant %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.4, i32 858, ptr null, ptr null }, align 1
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016L2C: disabling outer sync\0A\00", [35 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr.80 = internal global ptr @__l2c_init._entry.78, section ".printk_index", align 4
@__l2c_init._entry.81 = internal constant %struct.pi_entry { ptr @.str.82, ptr @.str.71, ptr @.str.4, i32 885, ptr null, ptr null }, align 1
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s cache controller enabled, %d ways, %d kB\0A\00", [49 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr.83 = internal global ptr @__l2c_init._entry.81, section ".printk_index", align 4
@__l2c_init._entry.84 = internal constant %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.4, i32 887, ptr null, ptr null }, align 1
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: CACHE_ID 0x%08x, AUX_CTRL 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@__l2c_init._entry_ptr.86 = internal global ptr @__l2c_init._entry.84, section ".printk_index", align 4
@of_l2c210_data = internal constant %struct.l2c_init_data { ptr @.str.20, i32 8192, i32 1, ptr @l2x0_of_parse, ptr @l2c_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c_disable, ptr @l2c210_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_l2c220_data = internal constant %struct.l2c_init_data { ptr @.str.21, i32 8192, i32 1, ptr @l2x0_of_parse, ptr @l2c220_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c220_unlock, %struct.outer_cache_fns { ptr @l2c220_inv_range, ptr @l2c220_clean_range, ptr @l2c220_flush_range, ptr @l2c220_flush_all, ptr @l2c_disable, ptr @l2c220_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_l2c310_data = internal constant %struct.l2c_init_data { ptr @.str.23, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_bcm_l2x0_data = internal constant %struct.l2c_init_data { ptr @.str.166, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr null, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @bcm_inv_range, ptr @bcm_clean_range, ptr @bcm_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_aurora_with_outer_data = internal constant %struct.l2c_init_data { ptr @.str.167, i32 4096, i32 4, ptr @aurora_of_parse, ptr @l2c_enable, ptr @aurora_fixup, ptr @aurora_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @aurora_inv_range, ptr @aurora_clean_range, ptr @aurora_flush_range, ptr @aurora_flush_all, ptr @aurora_disable, ptr @aurora_cache_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_aurora_no_outer_data = internal constant %struct.l2c_init_data { ptr @.str.167, i32 4096, i32 4, ptr @aurora_of_parse, ptr @aurora_enable_no_outer, ptr @aurora_fixup, ptr @aurora_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_tauros3_data = internal constant %struct.l2c_init_data { ptr @.str.171, i32 8192, i32 8, ptr null, ptr @l2c_enable, ptr null, ptr @tauros3_save, ptr @tauros3_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,tag-latency\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,data-latency\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,dirty-latency\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,parity-enable\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm,parity-disable\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm,shared-override\00", [44 x i8] zeroinitializer }, align 32
@l2x0_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013l2x0 of: cache setting yield too high associativity\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l2x0_of_parse\00", [18 x i8] zeroinitializer }, align 32
@l2x0_of_parse._entry_ptr = internal global ptr @l2x0_of_parse._entry, section ".printk_index", align 4
@l2x0_of_parse._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013l2x0 of: %d calculated, max 8\0A\00", [63 x i8] zeroinitializer }, align 32
@l2x0_of_parse._entry_ptr.97 = internal global ptr @l2x0_of_parse._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-size\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cache-sets\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cache-block-size\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cache-line-size\00", [16 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.4, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014L2C OF: no cache block/line size given: falling back to default size %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"l2x0_cache_size_of_parse\00", [39 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr = internal global ptr @l2x0_cache_size_of_parse._entry, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.4, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014L2C OF: DT supplied line size %d bytes does not match hardware line size of %d bytes\0A\00", [40 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.106 = internal global ptr @l2x0_cache_size_of_parse._entry.104, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.4, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013L2C OF: set size %dKB is too large\0A\00", [58 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.109 = internal global ptr @l2x0_cache_size_of_parse._entry.107, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.4, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016L2C OF: override cache size: %d bytes (%dKB)\0A\00", [48 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.112 = internal global ptr @l2x0_cache_size_of_parse._entry.110, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.103, ptr @.str.4, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016L2C OF: override line size: %d bytes\0A\00", [56 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.115 = internal global ptr @l2x0_cache_size_of_parse._entry.113, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.103, ptr @.str.4, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016L2C OF: override way size: %d bytes (%dKB)\0A\00", [50 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.118 = internal global ptr @l2x0_cache_size_of_parse._entry.116, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.103, ptr @.str.4, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016L2C OF: override associativity: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.121 = internal global ptr @l2x0_cache_size_of_parse._entry.119, section ".printk_index", align 4
@l2x0_cache_size_of_parse._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.103, ptr @.str.4, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013L2C OF: cache way size illegal: %dKB is not mapped\0A\00", [42 x i8] zeroinitializer }, align 32
@l2x0_cache_size_of_parse._entry_ptr.124 = internal global ptr @l2x0_cache_size_of_parse._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,filter-ranges\00", [46 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.4, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013L2C-310 OF cache associativity %d invalid, only 8 or 16 permitted\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l2c310_of_parse\00", [16 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr = internal global ptr @l2c310_of_parse._entry, section ".printk_index", align 4
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm,early-bresp-disable\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arm,full-line-zero-disable\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm,double-linefill\00", [44 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.4, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013L2C-310 OF arm,double-linefill property value is missing\0A\00", [36 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.133 = internal global ptr @l2c310_of_parse._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,double-linefill-incr\00", [39 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.127, ptr @.str.4, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013L2C-310 OF arm,double-linefill-incr property value is missing\0A\00", [63 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.137 = internal global ptr @l2c310_of_parse._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,double-linefill-wrap\00", [39 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.127, ptr @.str.4, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013L2C-310 OF arm,double-linefill-wrap property value is missing\0A\00", [63 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.141 = internal global ptr @l2c310_of_parse._entry.139, section ".printk_index", align 4
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm,prefetch-drop\00", [46 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.127, ptr @.str.4, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013L2C-310 OF arm,prefetch-drop property value is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.145 = internal global ptr @l2c310_of_parse._entry.143, section ".printk_index", align 4
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm,prefetch-offset\00", [44 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.127, ptr @.str.4, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013L2C-310 OF arm,prefetch-offset property value is missing\0A\00", [36 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.149 = internal global ptr @l2c310_of_parse._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prefetch-data\00", [18 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.127, ptr @.str.4, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013L2C-310 OF prefetch-data property value is missing\0A\00", [42 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.153 = internal global ptr @l2c310_of_parse._entry.151, section ".printk_index", align 4
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prefetch-instr\00", [17 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.127, ptr @.str.4, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013L2C-310 OF prefetch-instr property value is missing\0A\00", [41 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.157 = internal global ptr @l2c310_of_parse._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arm,dynamic-clock-gating\00", [39 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.127, ptr @.str.4, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013L2C-310 OF dynamic-clock-gating property value is missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.161 = internal global ptr @l2c310_of_parse._entry.159, section ".printk_index", align 4
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,standby-mode\00", [47 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.127, ptr @.str.4, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013L2C-310 OF standby-mode property value is missing or invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@l2c310_of_parse._entry_ptr.165 = internal global ptr @l2c310_of_parse._entry.163, section ".printk_index", align 4
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCM-L2C-310\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Aurora\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cache-id-part\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wt-override\00", [20 x i8] zeroinitializer }, align 32
@l2_wt_override = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"marvell,ecc-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tauros3\00", [24 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"L2C-310 Coherent\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"l2x0_base\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 39, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant [12 x i8] c"l2c220_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 404, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"l2x0_saved_regs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 46, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1785, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1786, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1791, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1794, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1798, i32 33 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1799, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1801, i32 31 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1802, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1805, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1807, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant [29 x i8] c"cache_id_part_number_from_dt\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 930, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 240, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant [10 x i8] c"l2x0_data\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 40, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"sync_reg_offset\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 44, i32 22 }
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"l2x0_way_mask\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 42, i32 12 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 405, i32 10 }
@___asan_gen_.261 = private unnamed_addr constant [10 x i8] c"l2x0_lock\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 41, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant [10 x i8] c"l2x0_size\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 43, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 761, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"l2x0_bresp_disable\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 616, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 618, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"l2x0_flz_disable\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 627, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 630, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 633, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 637, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 640, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 659, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 670, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 677, i32 7 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 694, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 701, i32 17 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 710, i32 18 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 717, i32 17 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 721, i32 17 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 726, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 728, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 729, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 801, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 808, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 815, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 858, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 884, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 886, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1036, i32 27 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1042, i32 33 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1051, i32 27 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1057, i32 32 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1060, i32 39 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1064, i32 32 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1074, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1075, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 954, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 955, i32 27 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 956, i32 27 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 957, i32 27 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 969, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 977, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 994, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 998, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1000, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1001, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1003, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1011, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1153, i32 33 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1175, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1194, i32 32 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1197, i32 32 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1202, i32 33 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1209, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1212, i32 33 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1219, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1222, i32 33 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1229, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1232, i32 33 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1239, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1242, i32 33 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1247, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1250, i32 33 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1261, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1264, i32 33 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1275, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1283, i32 33 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1288, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1290, i32 33 }
@___asan_gen_.602 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1295, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1695, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1522, i32 10 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1493, i32 27 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1497, i32 45 }
@___asan_gen_.620 = private unnamed_addr constant [15 x i8] c"l2_wt_override\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 926, i32 12 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1504, i32 32 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1734, i32 10 }
@___asan_gen_.629 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.630 = private constant [28 x i8] c"../arch/arm/mm/cache-l2x0.c\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1332, i32 10 }
@llvm.compiler.used = appending global [199 x ptr] [ptr @__l2c_init._entry, ptr @__l2c_init._entry.72, ptr @__l2c_init._entry.75, ptr @__l2c_init._entry.78, ptr @__l2c_init._entry.81, ptr @__l2c_init._entry.84, ptr @__l2c_init._entry_ptr, ptr @__l2c_init._entry_ptr.74, ptr @__l2c_init._entry_ptr.77, ptr @__l2c_init._entry_ptr.80, ptr @__l2c_init._entry_ptr.83, ptr @__l2c_init._entry_ptr.86, ptr @l2c310_enable._entry, ptr @l2c310_enable._entry.26, ptr @l2c310_enable._entry.31, ptr @l2c310_enable._entry.34, ptr @l2c310_enable._entry.37, ptr @l2c310_enable._entry.40, ptr @l2c310_enable._entry.43, ptr @l2c310_enable._entry.49, ptr @l2c310_enable._entry_ptr, ptr @l2c310_enable._entry_ptr.28, ptr @l2c310_enable._entry_ptr.33, ptr @l2c310_enable._entry_ptr.36, ptr @l2c310_enable._entry_ptr.39, ptr @l2c310_enable._entry_ptr.42, ptr @l2c310_enable._entry_ptr.45, ptr @l2c310_enable._entry_ptr.51, ptr @l2c310_fixup._entry, ptr @l2c310_fixup._entry.64, ptr @l2c310_fixup._entry.67, ptr @l2c310_fixup._entry_ptr, ptr @l2c310_fixup._entry_ptr.66, ptr @l2c310_fixup._entry_ptr.69, ptr @l2c310_of_parse._entry, ptr @l2c310_of_parse._entry.131, ptr @l2c310_of_parse._entry.135, ptr @l2c310_of_parse._entry.139, ptr @l2c310_of_parse._entry.143, ptr @l2c310_of_parse._entry.147, ptr @l2c310_of_parse._entry.151, ptr @l2c310_of_parse._entry.155, ptr @l2c310_of_parse._entry.159, ptr @l2c310_of_parse._entry.163, ptr @l2c310_of_parse._entry_ptr, ptr @l2c310_of_parse._entry_ptr.133, ptr @l2c310_of_parse._entry_ptr.137, ptr @l2c310_of_parse._entry_ptr.141, ptr @l2c310_of_parse._entry_ptr.145, ptr @l2c310_of_parse._entry_ptr.149, ptr @l2c310_of_parse._entry_ptr.153, ptr @l2c310_of_parse._entry_ptr.157, ptr @l2c310_of_parse._entry_ptr.161, ptr @l2c310_of_parse._entry_ptr.165, ptr @l2x0_cache_size_of_parse._entry, ptr @l2x0_cache_size_of_parse._entry.104, ptr @l2x0_cache_size_of_parse._entry.107, ptr @l2x0_cache_size_of_parse._entry.110, ptr @l2x0_cache_size_of_parse._entry.113, ptr @l2x0_cache_size_of_parse._entry.116, ptr @l2x0_cache_size_of_parse._entry.119, ptr @l2x0_cache_size_of_parse._entry.122, ptr @l2x0_cache_size_of_parse._entry_ptr, ptr @l2x0_cache_size_of_parse._entry_ptr.106, ptr @l2x0_cache_size_of_parse._entry_ptr.109, ptr @l2x0_cache_size_of_parse._entry_ptr.112, ptr @l2x0_cache_size_of_parse._entry_ptr.115, ptr @l2x0_cache_size_of_parse._entry_ptr.118, ptr @l2x0_cache_size_of_parse._entry_ptr.121, ptr @l2x0_cache_size_of_parse._entry_ptr.124, ptr @l2x0_of_init._entry, ptr @l2x0_of_init._entry.13, ptr @l2x0_of_init._entry.16, ptr @l2x0_of_init._entry.5, ptr @l2x0_of_init._entry.9, ptr @l2x0_of_init._entry_ptr, ptr @l2x0_of_init._entry_ptr.11, ptr @l2x0_of_init._entry_ptr.15, ptr @l2x0_of_init._entry_ptr.18, ptr @l2x0_of_init._entry_ptr.7, ptr @l2x0_of_parse._entry, ptr @l2x0_of_parse._entry.95, ptr @l2x0_of_parse._entry_ptr, ptr @l2x0_of_parse._entry_ptr.97, ptr @l2x0_base, ptr @l2c220_data, ptr @l2x0_saved_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @cache_id_part_number_from_dt, ptr @.str.20, ptr @l2x0_data, ptr @sync_reg_offset, ptr @l2x0_way_mask, ptr @.str.21, ptr @l2x0_lock, ptr @.str.22, ptr @l2x0_size, ptr @.str.23, ptr @l2x0_bresp_disable, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @l2x0_flz_disable, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @l2_wt_override, ptr @.str.170, ptr @.str.171, ptr @.str.172], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c220_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_saved_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_id_part_number_from_dt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_reg_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_way_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_bresp_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_flz_disable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_enable._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_fixup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_fixup._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_of_parse._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2x0_cache_size_of_parse._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2c310_of_parse._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2_wt_override to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @l2x0_init(ptr noundef %base, i32 noundef %aux_val, i32 noundef %aux_mask) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %base, ptr @l2x0_base, align 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !329
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %and = and i32 %1, 960
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and)
  %switch.selectcmp = icmp eq i32 %and, 128
  %switch.select = select i1 %switch.selectcmp, ptr @l2c220_data, ptr @l2c210_data
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %switch.selectcmp9 = icmp eq i32 %and, 192
  %switch.select10 = select i1 %switch.selectcmp9, ptr @l2c310_init_fns, ptr %switch.select
  %save = getelementptr inbounds %struct.l2c_init_data, ptr %switch.select10, i32 0, i32 6
  %2 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %save, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr @l2x0_base, align 4
  tail call void %3(ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call fastcc i32 @__l2c_init(ptr noundef nonnull %switch.select10, i32 noundef %aux_val, i32 noundef %aux_mask, i32 noundef %1, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__l2c_init(ptr noundef %data, i32 noundef %aux_val, i32 noundef %aux_mask, i32 noundef %cache_id, i1 noundef zeroext %nosync) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fns = alloca %struct.outer_cache_fns, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fns) #8
  %call = tail call ptr @kmemdup(ptr noundef %data, i32 noundef 72, i32 noundef 3264) #8
  store ptr %call, ptr @l2x0_data, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %aux_mask, %aux_val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and7 = and i32 %2, %aux_mask
  %or = or i32 %and7, %aux_val
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %or)
  %cmp.not = icmp eq i32 %2, %or
  br i1 %cmp.not, label %if.end4.if.end14_crit_edge, label %do.end11

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %2, i32 noundef %or) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end4.if.end14_crit_edge
  %and15 = and i32 %cache_id, 960
  %3 = add nsw i32 %and15, -64
  %4 = lshr exact i32 %3, 6
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end14.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %if.end14.sw.bb30_crit_edge
    i32 1, label %if.end14.sw.bb30_crit_edge116
    i32 3, label %sw.bb32
  ]

if.end14.sw.bb30_crit_edge116:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end14.sw.bb30_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end14
  %neg = xor i32 %aux_mask, -1
  %or16 = or i32 %neg, %aux_val
  %and17 = and i32 %or16, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %sw.bb.if.end25_crit_edge, label %do.end22

sw.bb.if.end25_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end22:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %sw.bb.if.end25_crit_edge
  %and26 = and i32 %or, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %. = select i1 %tobool27.not, i32 8, i32 16
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end14.sw.bb30_crit_edge, %if.end14.sw.bb30_crit_edge116
  %shr = lshr i32 %or, 13
  %and31 = and i32 %shr, 15
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %shr33 = lshr i32 %or, 13
  %and34 = and i32 %shr33, 15
  %add = add nuw nsw i32 %and34, 1
  %shr35 = lshr i32 %add, 2
  %shl = shl nuw nsw i32 2, %shr35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30, %if.end25, %if.end14.sw.epilog_crit_edge
  %ways.0 = phi i32 [ %shl, %sw.bb32 ], [ %and31, %sw.bb30 ], [ %., %if.end25 ], [ 8, %if.end14.sw.epilog_crit_edge ]
  %notmask = shl nsw i32 -1, %ways.0
  %sub = xor i32 %notmask, -1
  store i32 %sub, ptr @l2x0_way_mask, align 4
  %and37 = lshr i32 %or, 17
  %shr38 = and i32 %and37, 7
  %way_size_0 = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %way_size_0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %way_size_0, align 4
  %shl39 = shl i32 %7, %shr38
  %mul = mul i32 %shl39, %ways.0
  store i32 %mul, ptr @l2x0_size, align 4
  %outer_cache = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 9
  %8 = call ptr @memcpy(ptr %fns, ptr %outer_cache, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %write_sec = getelementptr inbounds %struct.outer_cache_fns, ptr %fns, i32 0, i32 7
  %10 = ptrtoint ptr %write_sec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %write_sec, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  %configure = getelementptr inbounds %struct.outer_cache_fns, ptr %fns, i32 0, i32 8
  %12 = ptrtoint ptr %configure to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %configure, align 4
  %fixup = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 5
  %13 = ptrtoint ptr %fixup to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fixup, align 4
  %tobool40.not = icmp eq ptr %14, null
  br i1 %tobool40.not, label %sw.epilog.if.end43_crit_edge, label %if.then41

sw.epilog.if.end43_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load ptr, ptr @l2x0_base, align 4
  call void %14(ptr noundef %15, i32 noundef %cache_id, ptr noundef nonnull %fns) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %sw.epilog.if.end43_crit_edge
  br i1 %nosync, label %do.end48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  %sync = getelementptr inbounds %struct.outer_cache_fns, ptr %fns, i32 0, i32 5
  %16 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sync, align 4
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end43.if.end51_crit_edge
  %17 = load ptr, ptr @l2x0_base, align 4
  %add.ptr53 = getelementptr i8, ptr %17, i32 256
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #8, !srcloc !329
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool57.not = icmp eq i32 %19, 0
  br i1 %tobool57.not, label %if.then58, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %or, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %enable = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 4
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable, align 4
  %22 = load ptr, ptr @l2x0_base, align 4
  %num_lock = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %num_lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_lock, align 4
  call void %21(ptr noundef %22, i32 noundef %24) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end51.if.end59_crit_edge
  %25 = call ptr @memcpy(ptr @outer_cache, ptr %fns, i32 36)
  %save = getelementptr inbounds %struct.l2c_init_data, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %save, align 4
  %tobool60.not = icmp eq ptr %27, null
  br i1 %tobool60.not, label %if.end59.if.end63_crit_edge, label %if.then61

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load ptr, ptr @l2x0_base, align 4
  call void %27(ptr noundef %28) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59.if.end63_crit_edge
  %29 = load ptr, ptr @l2x0_base, align 4
  %add.ptr65 = getelementptr i8, ptr %29, i32 260
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !329
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %34 = load i32, ptr @l2x0_size, align 4
  %shr72 = lshr i32 %34, 10
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %33, i32 noundef %ways.0, i32 noundef %shr72) #12
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %36, i32 noundef %cache_id, i32 noundef %31) #12
  %37 = load ptr, ptr @l2x0_base, align 4
  call void @l2x0_pmu_register(ptr noundef %37, i32 noundef %cache_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fns) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l2x0_of_init(i32 noundef %aux_val, i32 noundef %aux_mask) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %aux_val.addr = alloca i32, align 4
  %aux_mask.addr = alloca i32, align 4
  %res = alloca %struct.resource, align 4
  %cache_level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %aux_val.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %aux_val, ptr %aux_val.addr, align 4
  %1 = ptrtoint ptr %aux_mask.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %aux_mask, ptr %aux_mask.addr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache_level) #8
  %4 = ptrtoint ptr %cache_level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %cache_level, align 4
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @l2x0_ids, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %8
  %call6 = call ptr @ioremap(i32 noundef %6, i32 noundef %add.i) #8
  store ptr %call6, ptr @l2x0_base, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res, align 4
  store i32 %10, ptr @l2x0_saved_regs, align 4
  %call11 = call ptr @of_match_node(ptr noundef nonnull @l2x0_ids, ptr noundef nonnull %call.i) #8
  %data12 = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %11 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data12, align 4
  %call13 = call i32 @of_device_is_compatible(ptr noundef nonnull %call.i, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end9.if.end17_crit_edge, label %land.lhs.true

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i111 = call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i111, null
  %spec.select = select i1 %tobool.i.not, ptr %12, ptr @of_l2c310_coherent_data
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end9.if.end17_crit_edge
  %data.0 = phi ptr [ %12, %if.end9.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  %13 = load ptr, ptr @l2x0_base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 260
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %aux_mask.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aux_mask.addr, align 4
  %and = and i32 %15, %17
  %18 = ptrtoint ptr %aux_val.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aux_val.addr, align 4
  %or = or i32 %and, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %or)
  %cmp.not = icmp eq i32 %15, %or
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %or) #12
  br label %if.end34

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp24.not = icmp eq i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp26.not = icmp eq i32 %19, 0
  %or.cond = select i1 %cmp24.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.else.if.end34_crit_edge, label %do.end30

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %if.else.if.end34_crit_edge, %do.end
  %call.i112 = call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %tobool.i113.not = icmp eq ptr %call.i112, null
  br i1 %tobool.i113.not, label %do.end39, label %if.end34.if.end42_crit_edge

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.end34.if.end42_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12, ptr noundef nonnull %cache_level, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool44.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool44.not, label %if.end42.if.end51_crit_edge, label %do.end48

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end42.if.end51_crit_edge
  %20 = ptrtoint ptr %cache_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cache_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp52.not = icmp eq i32 %21, 2
  br i1 %cmp52.not, label %if.end51.if.end59_crit_edge, label %do.end56

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.end51.if.end59_crit_edge
  %call.i114 = call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %tobool.i115 = icmp ne ptr %call.i114, null
  %save = getelementptr inbounds %struct.l2c_init_data, ptr %data.0, i32 0, i32 6
  %22 = ptrtoint ptr %save to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %save, align 4
  %tobool61.not = icmp eq ptr %23, null
  br i1 %tobool61.not, label %if.end59.if.end64_crit_edge, label %if.then62

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load ptr, ptr @l2x0_base, align 4
  call void %23(ptr noundef %24) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %25 = load ptr, ptr @l2x0_base, align 4
  %add.ptr66 = getelementptr i8, ptr %25, i32 256
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #8, !srcloc !329
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool70.not = icmp eq i32 %27, 0
  br i1 %tobool70.not, label %if.then71, label %if.end64.if.end76_crit_edge

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then71:                                        ; preds = %if.end64
  %of_parse = getelementptr inbounds %struct.l2c_init_data, ptr %data.0, i32 0, i32 3
  %28 = ptrtoint ptr %of_parse to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_parse, align 4
  %tobool72.not = icmp eq ptr %29, null
  br i1 %tobool72.not, label %if.then71.if.end76_crit_edge, label %if.then73

if.then71.if.end76_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then73:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  call void %29(ptr noundef nonnull %call.i, ptr noundef nonnull %aux_val.addr, ptr noundef nonnull %aux_mask.addr) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %if.then71.if.end76_crit_edge, %if.end64.if.end76_crit_edge
  %30 = load i32, ptr @cache_id_part_number_from_dt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool77.not = icmp eq i32 %30, 0
  br i1 %tobool77.not, label %if.else79, label %if.end76.if.end84_crit_edge

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.else79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %31 = load ptr, ptr @l2x0_base, align 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !329
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.end76.if.end84_crit_edge
  %cache_id.0 = phi i32 [ %33, %if.else79 ], [ %30, %if.end76.if.end84_crit_edge ]
  %34 = ptrtoint ptr %aux_val.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %aux_val.addr, align 4
  %36 = ptrtoint ptr %aux_mask.addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aux_mask.addr, align 4
  %call86 = call fastcc i32 @__l2c_init(ptr noundef %data.0, i32 noundef %35, i32 noundef %37, i32 noundef %cache_id.0, i1 noundef zeroext %tobool.i115) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call86, %if.end84 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache_level) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_enable(ptr noundef %base, i32 noundef %num_lock) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %0(ptr noundef nonnull @l2x0_saved_regs) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @l2x0_data, align 4
  %configure = getelementptr inbounds %struct.l2c_init_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configure, align 4
  tail call void %3(ptr noundef %base) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr @l2x0_data, align 4
  %unlock = getelementptr inbounds %struct.l2c_init_data, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unlock, align 4
  tail call void %6(ptr noundef %base, i32 noundef %num_lock) #8
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !330
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end.do.end14_crit_edge
  %add.ptr = getelementptr i8, ptr %base, i32 1916
  %8 = load i32, ptr @l2x0_way_mask, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !331
  %10 = load i32, ptr @l2x0_way_mask, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %and5.i.i = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not6.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not6.i.i, label %do.end14.__l2c_op_way.exit_crit_edge, label %do.end14.do.end.i.i_crit_edge

do.end14.do.end.i.i_crit_edge:                    ; preds = %do.end14
  br label %do.end.i.i

do.end14.__l2c_op_way.exit_crit_edge:             ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.end14.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %and.i.i = and i32 %14, %10
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__l2c_op_way.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c_op_way.exit_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

__l2c_op_way.exit:                                ; preds = %do.end.i.i.__l2c_op_way.exit_crit_edge, %do.end14.__l2c_op_way.exit_crit_edge
  %15 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr15 = getelementptr i8, ptr %base, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #8, !srcloc !331
  %16 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr16 = getelementptr i8, ptr %base, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !329
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not6.i = icmp eq i32 %18, 0
  br i1 %tobool.not6.i, label %__l2c_op_way.exit.l2c_wait_mask.exit_crit_edge, label %__l2c_op_way.exit.do.end.i_crit_edge

__l2c_op_way.exit.do.end.i_crit_edge:             ; preds = %__l2c_op_way.exit
  br label %do.end.i

__l2c_op_way.exit.l2c_wait_mask.exit_crit_edge:   ; preds = %__l2c_op_way.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %__l2c_op_way.exit.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !329
  %20 = and i32 %19, 16777216
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.end.i.l2c_wait_mask.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.l2c_wait_mask.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

l2c_wait_mask.exit:                               ; preds = %do.end.i.l2c_wait_mask.exit_crit_edge, %__l2c_op_way.exit.l2c_wait_mask.exit_crit_edge
  br i1 %tobool10.not, label %if.then26, label %l2c_wait_mask.exit.do.body28_crit_edge

l2c_wait_mask.exit.do.body28_crit_edge:           ; preds = %l2c_wait_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body28

if.then26:                                        ; preds = %l2c_wait_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %l2c_wait_mask.exit.do.body28_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !334
  %and.i.i57 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i57)
  %tobool36.not = icmp eq i32 %and.i.i57, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !335

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #8, !srcloc !336
  %add.ptr.i = getelementptr i8, ptr %base, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %22)
  %cmp.i = icmp eq i32 %22, 16777216
  br i1 %cmp.i, label %do.end43.l2c_write_sec.exit_crit_edge, label %if.end.i

do.end43.l2c_write_sec.exit_crit_edge:            ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit

if.end.i:                                         ; preds = %do.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(i32 noundef 1, i32 noundef 256) #8
  br label %l2c_write_sec.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !331
  br label %l2c_write_sec.exit

l2c_write_sec.exit:                               ; preds = %if.else.i, %if.then1.i, %do.end43.l2c_write_sec.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_save(ptr nocapture noundef readnone %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_configure(ptr noundef %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %base, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i = icmp eq i32 %2, %0
  br i1 %cmp.i, label %entry.l2c_write_sec.exit_crit_edge, label %if.end.i

entry.l2c_write_sec.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(i32 noundef %0, i32 noundef 260) #8
  br label %l2c_write_sec.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !331
  br label %l2c_write_sec.exit

l2c_write_sec.exit:                               ; preds = %if.else.i, %if.then1.i, %entry.l2c_write_sec.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_unlock(ptr noundef %base, i32 noundef %num) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp9.not = icmp eq i32 %num, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 2304
  %add.ptr2 = getelementptr i8, ptr %base, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.010, 3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #8, !srcloc !331
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #8, !srcloc !331
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c210_inv_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %and = and i32 %start, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and1 = and i32 %start, -32
  %1 = tail call i32 @llvm.bswap.i32(i32 %and1)
  %add.ptr = getelementptr i8, ptr %0, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !331
  %add = add i32 %and1, 32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %start.addr.0 = phi i32 [ %add, %if.then ], [ %start, %entry.if.end_crit_edge ]
  %and2 = and i32 %end, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and5 = and i32 %end, -32
  %2 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %add.ptr6 = getelementptr i8, ptr %0, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #8, !srcloc !331
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %end.addr.0 = phi i32 [ %and5, %if.then4 ], [ %end, %if.end.if.end7_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %0, i32 1904
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0, i32 %end.addr.0)
  %cmp3.i = icmp ult i32 %start.addr.0, %end.addr.0
  br i1 %cmp3.i, label %if.end7.while.body.i_crit_edge, label %if.end7.__l2c210_op_pa_range.exit_crit_edge

if.end7.__l2c210_op_pa_range.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  %start.addr.04.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %start.addr.0, %if.end7.while.body.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %3) #8, !srcloc !331
  %add.i = add i32 %start.addr.04.i, 32
  %cmp.i = icmp ult i32 %add.i, %end.addr.0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__l2c210_op_pa_range.exit_crit_edge

while.body.i.__l2c210_op_pa_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__l2c210_op_pa_range.exit:                        ; preds = %while.body.i.__l2c210_op_pa_range.exit_crit_edge, %if.end7.__l2c210_op_pa_range.exit_crit_edge
  %4 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c210_clean_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %and = and i32 %start, -32
  %add.ptr = getelementptr i8, ptr %0, i32 1968
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %end)
  %cmp3.i = icmp ult i32 %and, %end
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.__l2c210_op_pa_range.exit_crit_edge

entry.__l2c210_op_pa_range.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %start.addr.04.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %and, %entry.while.body.i_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !331
  %add.i = add i32 %start.addr.04.i, 32
  %cmp.i = icmp ult i32 %add.i, %end
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__l2c210_op_pa_range.exit_crit_edge

while.body.i.__l2c210_op_pa_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__l2c210_op_pa_range.exit:                        ; preds = %while.body.i.__l2c210_op_pa_range.exit_crit_edge, %entry.__l2c210_op_pa_range.exit_crit_edge
  %2 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c210_flush_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %and = and i32 %start, -32
  %add.ptr = getelementptr i8, ptr %0, i32 2032
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %end)
  %cmp3.i = icmp ult i32 %and, %end
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.__l2c210_op_pa_range.exit_crit_edge

entry.__l2c210_op_pa_range.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %start.addr.04.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %and, %entry.while.body.i_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !331
  %add.i = add i32 %start.addr.04.i, 32
  %cmp.i = icmp ult i32 %add.i, %end
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__l2c210_op_pa_range.exit_crit_edge

while.body.i.__l2c210_op_pa_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__l2c210_op_pa_range.exit:                        ; preds = %while.body.i.__l2c210_op_pa_range.exit_crit_edge, %entry.__l2c210_op_pa_range.exit_crit_edge
  %2 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c210_flush_all() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !334
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.body13, label %do.end20, !prof !335

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #8, !srcloc !337
  unreachable

do.end20:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %0, i32 2044
  %2 = load i32, ptr @l2x0_way_mask, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !331
  %4 = load i32, ptr @l2x0_way_mask, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %and5.i.i = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not6.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not6.i.i, label %do.end20.__l2c_op_way.exit_crit_edge, label %do.end20.do.end.i.i_crit_edge

do.end20.do.end.i.i_crit_edge:                    ; preds = %do.end20
  br label %do.end.i.i

do.end20.__l2c_op_way.exit_crit_edge:             ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.end20.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and.i.i = and i32 %8, %4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__l2c_op_way.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c_op_way.exit_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

__l2c_op_way.exit:                                ; preds = %do.end.i.i.__l2c_op_way.exit_crit_edge, %do.end20.__l2c_op_way.exit_crit_edge
  %9 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  tail call void @l2x0_pmu_suspend() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %1() #8
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.l2c_write_sec.exit_crit_edge, label %if.end.i

entry.l2c_write_sec.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(i32 noundef 0, i32 noundef 256) #8
  br label %l2c_write_sec.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  br label %l2c_write_sec.exit

l2c_write_sec.exit:                               ; preds = %if.else.i, %if.then1.i, %entry.l2c_write_sec.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c210_sync() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %1 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c_resume() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 256
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load ptr, ptr @l2x0_data, align 4
  %num_lock = getelementptr inbounds %struct.l2c_init_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lock, align 4
  tail call void @l2c_enable(ptr noundef %0, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @l2x0_pmu_resume() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2x0_pmu_suspend() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2x0_pmu_resume() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_enable(ptr noundef %base, i32 noundef %num_lock) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %or = or i32 %0, 67108864
  store i32 %or, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  tail call void @l2c_enable(ptr noundef %base, i32 noundef %num_lock)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_unlock(ptr noundef %base, i32 noundef %num_lock) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 260
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %1 = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lock)
  %cmp9.not.i = icmp eq i32 %num_lock, 0
  %or.cond = or i1 %cmp9.not.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %base, i32 2304
  %add.ptr2.i = getelementptr i8, ptr %base, i32 2308
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.010.i, 3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #8, !srcloc !331
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !331
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_lock
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_inv_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %or = or i32 %end, %start
  %and = and i32 %or, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %and1 = and i32 %start, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %start, -32
  %1 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %add.ptr = getelementptr i8, ptr %0, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !331
  %add = add i32 %and4, 32
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %start.addr.0 = phi i32 [ %add, %if.then3 ], [ %start, %if.then.if.end_crit_edge ]
  %and5 = and i32 %end, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  %and8 = and i32 %end, -32
  %add.ptr9 = getelementptr i8, ptr %0, i32 2032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !329
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not6.i = icmp eq i32 %3, 0
  br i1 %tobool.not6.i, label %if.then7.l2c_wait_mask.exit_crit_edge, label %if.then7.do.end.i_crit_edge

if.then7.do.end.i_crit_edge:                      ; preds = %if.then7
  br label %do.end.i

if.then7.l2c_wait_mask.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then7.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !329
  %5 = and i32 %4, 16777216
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i.l2c_wait_mask.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.l2c_wait_mask.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

l2c_wait_mask.exit:                               ; preds = %do.end.i.l2c_wait_mask.exit_crit_edge, %if.then7.l2c_wait_mask.exit_crit_edge
  %6 = tail call i32 @llvm.bswap.i32(i32 %and8)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #8, !srcloc !331
  br label %if.end12

if.end12:                                         ; preds = %l2c_wait_mask.exit, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %end.addr.0 = phi i32 [ %and8, %l2c_wait_mask.exit ], [ %end, %if.end.if.end12_crit_edge ], [ %end, %entry.if.end12_crit_edge ]
  %start.addr.1 = phi i32 [ %start.addr.0, %l2c_wait_mask.exit ], [ %start.addr.0, %if.end.if.end12_crit_edge ], [ %start, %entry.if.end12_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %0, i32 1904
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.1, i32 %end.addr.0)
  %cmp33.i = icmp ult i32 %start.addr.1, %end.addr.0
  br i1 %cmp33.i, label %if.end12.while.body.i_crit_edge, label %if.end12.l2c220_op_pa_range.exit_crit_edge

if.end12.l2c220_op_pa_range.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

if.end12.while.body.i_crit_edge:                  ; preds = %if.end12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end12.while.body.i_crit_edge
  %start.addr.035.i = phi i32 [ %start.addr.1.lcssa.i, %if.end.i.while.body.i_crit_edge ], [ %start.addr.1, %if.end12.while.body.i_crit_edge ]
  %flags.addr.034.i = phi i32 [ %flags.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %call, %if.end12.while.body.i_crit_edge ]
  %sub.i = sub i32 %end.addr.0, %start.addr.035.i
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #8
  %add.i = add i32 %7, %start.addr.035.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.035.i, i32 %add.i)
  %cmp331.i = icmp ult i32 %start.addr.035.i, %add.i
  br i1 %cmp331.i, label %while.body.i.while.body4.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body4.i_crit_edge:             ; preds = %while.body.i
  br label %while.body4.i

while.body4.i:                                    ; preds = %l2c_wait_mask.exit.i.while.body4.i_crit_edge, %while.body.i.while.body4.i_crit_edge
  %start.addr.132.i = phi i32 [ %add5.i, %l2c_wait_mask.exit.i.while.body4.i_crit_edge ], [ %start.addr.035.i, %while.body.i.while.body4.i_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !329
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not6.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not6.i.i, label %while.body4.i.l2c_wait_mask.exit.i_crit_edge, label %while.body4.i.do.end.i.i_crit_edge

while.body4.i.do.end.i.i_crit_edge:               ; preds = %while.body4.i
  br label %do.end.i.i

while.body4.i.l2c_wait_mask.exit.i_crit_edge:     ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.body4.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !329
  %11 = and i32 %10, 16777216
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.l2c_wait_mask.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

l2c_wait_mask.exit.i:                             ; preds = %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, %while.body4.i.l2c_wait_mask.exit.i_crit_edge
  %12 = tail call i32 @llvm.bswap.i32(i32 %start.addr.132.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #8, !srcloc !331
  %add5.i = add i32 %start.addr.132.i, 32
  %cmp3.i = icmp ult i32 %add5.i, %add.i
  br i1 %cmp3.i, label %l2c_wait_mask.exit.i.while.body4.i_crit_edge, label %l2c_wait_mask.exit.i.while.end.i_crit_edge

l2c_wait_mask.exit.i.while.end.i_crit_edge:       ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

l2c_wait_mask.exit.i.while.body4.i_crit_edge:     ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i

while.end.i:                                      ; preds = %l2c_wait_mask.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %start.addr.1.lcssa.i = phi i32 [ %start.addr.035.i, %while.body.i.while.end.i_crit_edge ], [ %add5.i, %l2c_wait_mask.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end.addr.0)
  %cmp6.i = icmp ult i32 %add.i, %end.addr.0
  br i1 %cmp6.i, label %do.body.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.034.i) #8
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %while.end.i.if.end.i_crit_edge
  %flags.addr.1.i = phi i32 [ %call.i, %do.body.i ], [ %flags.addr.034.i, %while.end.i.if.end.i_crit_edge ]
  %cmp.i = icmp ult i32 %start.addr.1.lcssa.i, %end.addr.0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.l2c220_op_pa_range.exit_crit_edge

if.end.i.l2c220_op_pa_range.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

l2c220_op_pa_range.exit:                          ; preds = %if.end.i.l2c220_op_pa_range.exit_crit_edge, %if.end12.l2c220_op_pa_range.exit_crit_edge
  %flags.addr.0.lcssa.i = phi i32 [ %call, %if.end12.l2c220_op_pa_range.exit_crit_edge ], [ %flags.addr.1.i, %if.end.i.l2c220_op_pa_range.exit_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !329
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not6.i40 = icmp eq i32 %14, 0
  br i1 %tobool.not6.i40, label %l2c220_op_pa_range.exit.l2c_wait_mask.exit45_crit_edge, label %l2c220_op_pa_range.exit.do.end.i43_crit_edge

l2c220_op_pa_range.exit.do.end.i43_crit_edge:     ; preds = %l2c220_op_pa_range.exit
  br label %do.end.i43

l2c220_op_pa_range.exit.l2c_wait_mask.exit45_crit_edge: ; preds = %l2c220_op_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit45

do.end.i43:                                       ; preds = %do.end.i43.do.end.i43_crit_edge, %l2c220_op_pa_range.exit.do.end.i43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !329
  %16 = and i32 %15, 16777216
  %tobool.not.i42 = icmp eq i32 %16, 0
  br i1 %tobool.not.i42, label %do.end.i43.l2c_wait_mask.exit45_crit_edge, label %do.end.i43.do.end.i43_crit_edge

do.end.i43.do.end.i43_crit_edge:                  ; preds = %do.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i43

do.end.i43.l2c_wait_mask.exit45_crit_edge:        ; preds = %do.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit45

l2c_wait_mask.exit45:                             ; preds = %do.end.i43.l2c_wait_mask.exit45_crit_edge, %l2c220_op_pa_range.exit.l2c_wait_mask.exit45_crit_edge
  %add.ptr.i = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not6.i.i46 = icmp eq i32 %18, 0
  br i1 %tobool.not6.i.i46, label %l2c_wait_mask.exit45.__l2c220_cache_sync.exit_crit_edge, label %l2c_wait_mask.exit45.do.end.i.i48_crit_edge

l2c_wait_mask.exit45.do.end.i.i48_crit_edge:      ; preds = %l2c_wait_mask.exit45
  br label %do.end.i.i48

l2c_wait_mask.exit45.__l2c220_cache_sync.exit_crit_edge: ; preds = %l2c_wait_mask.exit45
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c220_cache_sync.exit

do.end.i.i48:                                     ; preds = %do.end.i.i48.do.end.i.i48_crit_edge, %l2c_wait_mask.exit45.do.end.i.i48_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %20 = and i32 %19, 16777216
  %tobool.not.i.i47 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i47, label %do.end.i.i48.__l2c220_cache_sync.exit_crit_edge, label %do.end.i.i48.do.end.i.i48_crit_edge

do.end.i.i48.do.end.i.i48_crit_edge:              ; preds = %do.end.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i48

do.end.i.i48.__l2c220_cache_sync.exit_crit_edge:  ; preds = %do.end.i.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c220_cache_sync.exit

__l2c220_cache_sync.exit:                         ; preds = %do.end.i.i48.__l2c220_cache_sync.exit_crit_edge, %l2c_wait_mask.exit45.__l2c220_cache_sync.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.0.lcssa.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_clean_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %and = and i32 %start, -32
  %sub = sub i32 %end, %and
  %1 = load i32, ptr @l2x0_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp.not = icmp ult i32 %sub, %1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %0, i32 1980
  %2 = load i32, ptr @l2x0_way_mask, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !331
  %4 = load i32, ptr @l2x0_way_mask, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %and5.i.i.i = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not6.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not6.i.i.i, label %if.then.__l2c_op_way.exit.i_crit_edge, label %if.then.do.end.i.i.i_crit_edge

if.then.do.end.i.i.i_crit_edge:                   ; preds = %if.then
  br label %do.end.i.i.i

if.then.__l2c_op_way.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %if.then.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and.i.i.i = and i32 %8, %4
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

do.end.i.i.i.__l2c_op_way.exit.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

__l2c_op_way.exit.i:                              ; preds = %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, %if.then.__l2c_op_way.exit.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not6.i.i11.i = icmp eq i32 %10, 0
  br i1 %tobool.not6.i.i11.i, label %__l2c_op_way.exit.i.cleanup_crit_edge, label %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge

__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge:     ; preds = %__l2c_op_way.exit.i
  br label %do.end.i.i13.i

__l2c_op_way.exit.i.cleanup_crit_edge:            ; preds = %__l2c_op_way.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i13.i:                                   ; preds = %do.end.i.i13.i.do.end.i.i13.i_crit_edge, %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %12 = and i32 %11, 16777216
  %tobool.not.i.i12.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i12.i, label %do.end.i.i13.i.cleanup_crit_edge, label %do.end.i.i13.i.do.end.i.i13.i_crit_edge

do.end.i.i13.i.do.end.i.i13.i_crit_edge:          ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i13.i

do.end.i.i13.i.cleanup_crit_edge:                 ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %0, i32 1968
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %end)
  %cmp33.i = icmp ult i32 %and, %end
  br i1 %cmp33.i, label %do.body.while.body.i_crit_edge, label %do.body.l2c220_op_pa_range.exit_crit_edge

do.body.l2c220_op_pa_range.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %start.addr.035.i = phi i32 [ %start.addr.1.lcssa.i, %if.end.i.while.body.i_crit_edge ], [ %and, %do.body.while.body.i_crit_edge ]
  %flags.addr.034.i = phi i32 [ %flags.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %call, %do.body.while.body.i_crit_edge ]
  %sub.i = sub i32 %end, %start.addr.035.i
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #8
  %add.i = add i32 %13, %start.addr.035.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.035.i, i32 %add.i)
  %cmp331.i = icmp ult i32 %start.addr.035.i, %add.i
  br i1 %cmp331.i, label %while.body.i.while.body4.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body4.i_crit_edge:             ; preds = %while.body.i
  br label %while.body4.i

while.body4.i:                                    ; preds = %l2c_wait_mask.exit.i.while.body4.i_crit_edge, %while.body.i.while.body4.i_crit_edge
  %start.addr.132.i = phi i32 [ %add5.i, %l2c_wait_mask.exit.i.while.body4.i_crit_edge ], [ %start.addr.035.i, %while.body.i.while.body4.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not6.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not6.i.i, label %while.body4.i.l2c_wait_mask.exit.i_crit_edge, label %while.body4.i.do.end.i.i_crit_edge

while.body4.i.do.end.i.i_crit_edge:               ; preds = %while.body4.i
  br label %do.end.i.i

while.body4.i.l2c_wait_mask.exit.i_crit_edge:     ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.body4.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %17 = and i32 %16, 16777216
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.l2c_wait_mask.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

l2c_wait_mask.exit.i:                             ; preds = %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, %while.body4.i.l2c_wait_mask.exit.i_crit_edge
  %18 = tail call i32 @llvm.bswap.i32(i32 %start.addr.132.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !331
  %add5.i = add i32 %start.addr.132.i, 32
  %cmp3.i = icmp ult i32 %add5.i, %add.i
  br i1 %cmp3.i, label %l2c_wait_mask.exit.i.while.body4.i_crit_edge, label %l2c_wait_mask.exit.i.while.end.i_crit_edge

l2c_wait_mask.exit.i.while.end.i_crit_edge:       ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

l2c_wait_mask.exit.i.while.body4.i_crit_edge:     ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i

while.end.i:                                      ; preds = %l2c_wait_mask.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %start.addr.1.lcssa.i = phi i32 [ %start.addr.035.i, %while.body.i.while.end.i_crit_edge ], [ %add5.i, %l2c_wait_mask.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end)
  %cmp6.i = icmp ult i32 %add.i, %end
  br i1 %cmp6.i, label %do.body.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.034.i) #8
  %call.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %while.end.i.if.end.i_crit_edge
  %flags.addr.1.i = phi i32 [ %call.i20, %do.body.i ], [ %flags.addr.034.i, %while.end.i.if.end.i_crit_edge ]
  %cmp.i = icmp ult i32 %start.addr.1.lcssa.i, %end
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.l2c220_op_pa_range.exit_crit_edge

if.end.i.l2c220_op_pa_range.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

l2c220_op_pa_range.exit:                          ; preds = %if.end.i.l2c220_op_pa_range.exit_crit_edge, %do.body.l2c220_op_pa_range.exit_crit_edge
  %flags.addr.0.lcssa.i = phi i32 [ %call, %do.body.l2c220_op_pa_range.exit_crit_edge ], [ %flags.addr.1.i, %if.end.i.l2c220_op_pa_range.exit_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %0, i32 2032
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !329
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not6.i = icmp eq i32 %20, 0
  br i1 %tobool.not6.i, label %l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge, label %l2c220_op_pa_range.exit.do.end.i_crit_edge

l2c220_op_pa_range.exit.do.end.i_crit_edge:       ; preds = %l2c220_op_pa_range.exit
  br label %do.end.i

l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge: ; preds = %l2c220_op_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %l2c220_op_pa_range.exit.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !329
  %22 = and i32 %21, 16777216
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.end.i.l2c_wait_mask.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.l2c_wait_mask.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

l2c_wait_mask.exit:                               ; preds = %do.end.i.l2c_wait_mask.exit_crit_edge, %l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge
  %add.ptr.i22 = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #8, !srcloc !331
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !329
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not6.i.i23 = icmp eq i32 %24, 0
  br i1 %tobool.not6.i.i23, label %l2c_wait_mask.exit.cleanup_crit_edge, label %l2c_wait_mask.exit.do.end.i.i25_crit_edge

l2c_wait_mask.exit.do.end.i.i25_crit_edge:        ; preds = %l2c_wait_mask.exit
  br label %do.end.i.i25

l2c_wait_mask.exit.cleanup_crit_edge:             ; preds = %l2c_wait_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i25:                                     ; preds = %do.end.i.i25.do.end.i.i25_crit_edge, %l2c_wait_mask.exit.do.end.i.i25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !329
  %26 = and i32 %25, 16777216
  %tobool.not.i.i24 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i24, label %do.end.i.i25.cleanup_crit_edge, label %do.end.i.i25.do.end.i.i25_crit_edge

do.end.i.i25.do.end.i.i25_crit_edge:              ; preds = %do.end.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i25

do.end.i.i25.cleanup_crit_edge:                   ; preds = %do.end.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i25.cleanup_crit_edge, %l2c_wait_mask.exit.cleanup_crit_edge, %do.end.i.i13.i.cleanup_crit_edge, %__l2c_op_way.exit.i.cleanup_crit_edge
  %flags.addr.0.lcssa.i.sink = phi i32 [ %call, %__l2c_op_way.exit.i.cleanup_crit_edge ], [ %flags.addr.0.lcssa.i, %l2c_wait_mask.exit.cleanup_crit_edge ], [ %flags.addr.0.lcssa.i, %do.end.i.i25.cleanup_crit_edge ], [ %call, %do.end.i.i13.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.0.lcssa.i.sink) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_flush_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %and = and i32 %start, -32
  %sub = sub i32 %end, %and
  %1 = load i32, ptr @l2x0_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp.not = icmp ult i32 %sub, %1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %0, i32 2044
  %2 = load i32, ptr @l2x0_way_mask, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !331
  %4 = load i32, ptr @l2x0_way_mask, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %and5.i.i.i = and i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not6.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not6.i.i.i, label %if.then.__l2c_op_way.exit.i_crit_edge, label %if.then.do.end.i.i.i_crit_edge

if.then.do.end.i.i.i_crit_edge:                   ; preds = %if.then
  br label %do.end.i.i.i

if.then.__l2c_op_way.exit.i_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %if.then.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and.i.i.i = and i32 %8, %4
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

do.end.i.i.i.__l2c_op_way.exit.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

__l2c_op_way.exit.i:                              ; preds = %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, %if.then.__l2c_op_way.exit.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not6.i.i11.i = icmp eq i32 %10, 0
  br i1 %tobool.not6.i.i11.i, label %__l2c_op_way.exit.i.cleanup_crit_edge, label %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge

__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge:     ; preds = %__l2c_op_way.exit.i
  br label %do.end.i.i13.i

__l2c_op_way.exit.i.cleanup_crit_edge:            ; preds = %__l2c_op_way.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i13.i:                                   ; preds = %do.end.i.i13.i.do.end.i.i13.i_crit_edge, %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %12 = and i32 %11, 16777216
  %tobool.not.i.i12.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i12.i, label %do.end.i.i13.i.cleanup_crit_edge, label %do.end.i.i13.i.do.end.i.i13.i_crit_edge

do.end.i.i13.i.do.end.i.i13.i_crit_edge:          ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i13.i

do.end.i.i13.i.cleanup_crit_edge:                 ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %0, i32 2032
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %end)
  %cmp33.i = icmp ult i32 %and, %end
  br i1 %cmp33.i, label %do.body.while.body.i_crit_edge, label %do.body.l2c220_op_pa_range.exit_crit_edge

do.body.l2c220_op_pa_range.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %start.addr.035.i = phi i32 [ %start.addr.1.lcssa.i, %if.end.i.while.body.i_crit_edge ], [ %and, %do.body.while.body.i_crit_edge ]
  %flags.addr.034.i = phi i32 [ %flags.addr.1.i, %if.end.i.while.body.i_crit_edge ], [ %call, %do.body.while.body.i_crit_edge ]
  %sub.i = sub i32 %end, %start.addr.035.i
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #8
  %add.i = add i32 %13, %start.addr.035.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.035.i, i32 %add.i)
  %cmp331.i = icmp ult i32 %start.addr.035.i, %add.i
  br i1 %cmp331.i, label %while.body.i.while.body4.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body4.i_crit_edge:             ; preds = %while.body.i
  br label %while.body4.i

while.body4.i:                                    ; preds = %l2c_wait_mask.exit.i.while.body4.i_crit_edge, %while.body.i.while.body4.i_crit_edge
  %start.addr.132.i = phi i32 [ %add5.i, %l2c_wait_mask.exit.i.while.body4.i_crit_edge ], [ %start.addr.035.i, %while.body.i.while.body4.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not6.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not6.i.i, label %while.body4.i.l2c_wait_mask.exit.i_crit_edge, label %while.body4.i.do.end.i.i_crit_edge

while.body4.i.do.end.i.i_crit_edge:               ; preds = %while.body4.i
  br label %do.end.i.i

while.body4.i.l2c_wait_mask.exit.i_crit_edge:     ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %while.body4.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %17 = and i32 %16, 16777216
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.l2c_wait_mask.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit.i

l2c_wait_mask.exit.i:                             ; preds = %do.end.i.i.l2c_wait_mask.exit.i_crit_edge, %while.body4.i.l2c_wait_mask.exit.i_crit_edge
  %18 = tail call i32 @llvm.bswap.i32(i32 %start.addr.132.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !331
  %add5.i = add i32 %start.addr.132.i, 32
  %cmp3.i = icmp ult i32 %add5.i, %add.i
  br i1 %cmp3.i, label %l2c_wait_mask.exit.i.while.body4.i_crit_edge, label %l2c_wait_mask.exit.i.while.end.i_crit_edge

l2c_wait_mask.exit.i.while.end.i_crit_edge:       ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

l2c_wait_mask.exit.i.while.body4.i_crit_edge:     ; preds = %l2c_wait_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body4.i

while.end.i:                                      ; preds = %l2c_wait_mask.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %start.addr.1.lcssa.i = phi i32 [ %start.addr.035.i, %while.body.i.while.end.i_crit_edge ], [ %add5.i, %l2c_wait_mask.exit.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end)
  %cmp6.i = icmp ult i32 %add.i, %end
  br i1 %cmp6.i, label %do.body.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.034.i) #8
  %call.i20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %while.end.i.if.end.i_crit_edge
  %flags.addr.1.i = phi i32 [ %call.i20, %do.body.i ], [ %flags.addr.034.i, %while.end.i.if.end.i_crit_edge ]
  %cmp.i = icmp ult i32 %start.addr.1.lcssa.i, %end
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.l2c220_op_pa_range.exit_crit_edge

if.end.i.l2c220_op_pa_range.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_pa_range.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

l2c220_op_pa_range.exit:                          ; preds = %if.end.i.l2c220_op_pa_range.exit_crit_edge, %do.body.l2c220_op_pa_range.exit_crit_edge
  %flags.addr.0.lcssa.i = phi i32 [ %call, %do.body.l2c220_op_pa_range.exit_crit_edge ], [ %flags.addr.1.i, %if.end.i.l2c220_op_pa_range.exit_crit_edge ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not6.i = icmp eq i32 %20, 0
  br i1 %tobool.not6.i, label %l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge, label %l2c220_op_pa_range.exit.do.end.i_crit_edge

l2c220_op_pa_range.exit.do.end.i_crit_edge:       ; preds = %l2c220_op_pa_range.exit
  br label %do.end.i

l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge: ; preds = %l2c220_op_pa_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %l2c220_op_pa_range.exit.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %22 = and i32 %21, 16777216
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.end.i.l2c_wait_mask.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.l2c_wait_mask.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_wait_mask.exit

l2c_wait_mask.exit:                               ; preds = %do.end.i.l2c_wait_mask.exit_crit_edge, %l2c220_op_pa_range.exit.l2c_wait_mask.exit_crit_edge
  %add.ptr.i22 = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 0) #8, !srcloc !331
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !329
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not6.i.i23 = icmp eq i32 %24, 0
  br i1 %tobool.not6.i.i23, label %l2c_wait_mask.exit.cleanup_crit_edge, label %l2c_wait_mask.exit.do.end.i.i25_crit_edge

l2c_wait_mask.exit.do.end.i.i25_crit_edge:        ; preds = %l2c_wait_mask.exit
  br label %do.end.i.i25

l2c_wait_mask.exit.cleanup_crit_edge:             ; preds = %l2c_wait_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i.i25:                                     ; preds = %do.end.i.i25.do.end.i.i25_crit_edge, %l2c_wait_mask.exit.do.end.i.i25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !329
  %26 = and i32 %25, 16777216
  %tobool.not.i.i24 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i24, label %do.end.i.i25.cleanup_crit_edge, label %do.end.i.i25.do.end.i.i25_crit_edge

do.end.i.i25.do.end.i.i25_crit_edge:              ; preds = %do.end.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i25

do.end.i.i25.cleanup_crit_edge:                   ; preds = %do.end.i.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i25.cleanup_crit_edge, %l2c_wait_mask.exit.cleanup_crit_edge, %do.end.i.i13.i.cleanup_crit_edge, %__l2c_op_way.exit.i.cleanup_crit_edge
  %flags.addr.0.lcssa.i.sink = phi i32 [ %call, %__l2c_op_way.exit.i.cleanup_crit_edge ], [ %flags.addr.0.lcssa.i, %l2c_wait_mask.exit.cleanup_crit_edge ], [ %flags.addr.0.lcssa.i, %do.end.i.i25.cleanup_crit_edge ], [ %call, %do.end.i.i13.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.addr.0.lcssa.i.sink) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_flush_all() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %add.ptr.i = getelementptr i8, ptr %0, i32 2044
  %1 = load i32, ptr @l2x0_way_mask, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !331
  %3 = load i32, ptr @l2x0_way_mask, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %and5.i.i.i = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not6.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not6.i.i.i, label %entry.__l2c_op_way.exit.i_crit_edge, label %entry.do.end.i.i.i_crit_edge

entry.do.end.i.i.i_crit_edge:                     ; preds = %entry
  br label %do.end.i.i.i

entry.__l2c_op_way.exit.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %entry.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and.i.i.i = and i32 %7, %3
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

do.end.i.i.i.__l2c_op_way.exit.i_crit_edge:       ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit.i

__l2c_op_way.exit.i:                              ; preds = %do.end.i.i.i.__l2c_op_way.exit.i_crit_edge, %entry.__l2c_op_way.exit.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not6.i.i11.i = icmp eq i32 %9, 0
  br i1 %tobool.not6.i.i11.i, label %__l2c_op_way.exit.i.l2c220_op_way.exit_crit_edge, label %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge

__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge:     ; preds = %__l2c_op_way.exit.i
  br label %do.end.i.i13.i

__l2c_op_way.exit.i.l2c220_op_way.exit_crit_edge: ; preds = %__l2c_op_way.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_way.exit

do.end.i.i13.i:                                   ; preds = %do.end.i.i13.i.do.end.i.i13.i_crit_edge, %__l2c_op_way.exit.i.do.end.i.i13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %11 = and i32 %10, 16777216
  %tobool.not.i.i12.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i12.i, label %do.end.i.i13.i.l2c220_op_way.exit_crit_edge, label %do.end.i.i13.i.do.end.i.i13.i_crit_edge

do.end.i.i13.i.do.end.i.i13.i_crit_edge:          ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i13.i

do.end.i.i13.i.l2c220_op_way.exit_crit_edge:      ; preds = %do.end.i.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c220_op_way.exit

l2c220_op_way.exit:                               ; preds = %do.end.i.i13.i.l2c220_op_way.exit_crit_edge, %__l2c_op_way.exit.i.l2c220_op_way.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c220_sync() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not6.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not6.i.i, label %entry.__l2c220_cache_sync.exit_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.__l2c220_cache_sync.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c220_cache_sync.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %4 = and i32 %3, 16777216
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__l2c220_cache_sync.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c220_cache_sync.exit_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c220_cache_sync.exit

__l2c220_cache_sync.exit:                         ; preds = %do.end.i.i.__l2c220_cache_sync.exit_crit_edge, %entry.__l2c220_cache_sync.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_enable(ptr noundef %base, i32 noundef %num_lock) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !329
  %1 = lshr i32 %0, 24
  %and = and i32 %1, 63
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #13, !srcloc !339
  %and.i = and i32 %2, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568336
  %3 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp2 = icmp ugt i32 %and, 3
  br i1 %cmp2, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  br i1 %cmp, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %.b157 = load i1, ptr @l2x0_bresp_disable, align 1
  br i1 %.b157, label %land.lhs.true.if.else_crit_edge, label %if.end17.thread

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end17.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %3, 1073741824
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %land.lhs.true19

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %and7 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else.if.end17_crit_edge, label %do.end12

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  %and15 = and i32 %3, -1073741825
  br label %if.end17

if.end17:                                         ; preds = %do.end12, %if.else.if.end17_crit_edge, %entry.if.end17_crit_edge
  %aux.0 = phi i32 [ %and15, %do.end12 ], [ %3, %if.else.if.end17_crit_edge ], [ %3, %entry.if.end17_crit_edge ]
  br i1 %cmp, label %if.end17.land.lhs.true19_crit_edge, label %if.end17.if.else74_crit_edge

if.end17.if.else74_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else74

if.end17.land.lhs.true19_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end17.land.lhs.true19_crit_edge, %if.end17.thread
  %aux.0161 = phi i32 [ %or, %if.end17.thread ], [ %aux.0, %if.end17.land.lhs.true19_crit_edge ]
  %.b155156 = load i1, ptr @l2x0_flz_disable, align 1
  br i1 %.b155156, label %land.lhs.true19.if.else74_crit_edge, label %if.then21

land.lhs.true19.if.else74_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else74

if.then21:                                        ; preds = %land.lhs.true19
  %add.ptr23 = getelementptr i8, ptr %base, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !329
  %5 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !340
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l2c310_enable.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l2c310_enable, %if.then34)) #8
          to label %do.end37 [label %if.then34], !srcloc !341

if.then34:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l2c310_enable.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.30, i32 noundef %5) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %if.then21
  %and38 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %6 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool42.not = icmp eq i32 %6, 0
  %or.cond = select i1 %tobool39.not, i1 %tobool42.not, i1 false
  br i1 %or.cond, label %do.end46, label %do.end37.if.end49_crit_edge

do.end37.if.end49_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end46:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %do.end37.if.end49_crit_edge
  %and50 = and i32 %aux.0161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %brmerge = select i1 %tobool51.not, i1 true, i1 %tobool39.not
  br i1 %brmerge, label %if.end49.if.end61_crit_edge, label %do.end58

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %if.end49.if.end61_crit_edge
  br i1 %tobool51.not, label %land.lhs.true64, label %if.end61.if.end85_crit_edge

if.end61.if.end85_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

land.lhs.true64:                                  ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool65.not = icmp eq ptr %7, null
  br i1 %tobool65.not, label %if.then66, label %land.lhs.true64.if.end85_crit_edge

land.lhs.true64.if.end85_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  %or67 = or i32 %aux.0161, 1
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %if.end85

if.else74:                                        ; preds = %land.lhs.true19.if.else74_crit_edge, %if.end17.if.else74_crit_edge
  %aux.0160 = phi i32 [ %aux.0161, %land.lhs.true19.if.else74_crit_edge ], [ %aux.0, %if.end17.if.else74_crit_edge ]
  %and75 = and i32 %aux.0160, 1073741825
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else74.if.end85_crit_edge, label %do.end80

if.else74.if.end85_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.end80:                                         ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  %and83 = and i32 %aux.0160, -1073741826
  br label %if.end85

if.end85:                                         ; preds = %do.end80, %if.else74.if.end85_crit_edge, %if.then66, %land.lhs.true64.if.end85_crit_edge, %if.end61.if.end85_crit_edge
  %aux.2 = phi i32 [ %and83, %do.end80 ], [ %aux.0160, %if.else74.if.end85_crit_edge ], [ %aux.0161, %if.end61.if.end85_crit_edge ], [ %aux.0161, %land.lhs.true64.if.end85_crit_edge ], [ %or67, %if.then66 ]
  %or86 = or i32 %aux.2, 67108864
  store i32 %or86, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  tail call void @l2c_enable(ptr noundef %base, i32 noundef %num_lock)
  %add.ptr88 = getelementptr i8, ptr %base, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #8, !srcloc !329
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and91 = and i32 %9, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end85.if.end109_crit_edge, label %if.then93

if.end85.if.end109_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then93:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr95 = getelementptr i8, ptr %base, i32 3936
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #8, !srcloc !329
  %11 = lshr i32 %10, 24
  %and102 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cond = select i1 %tobool103.not, ptr @.str.47, ptr @.str.46
  %and104 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %cond106 = select i1 %tobool105.not, ptr @.str.47, ptr @.str.48
  %and107 = and i32 %11, 31
  %add = add nuw nsw i32 %and107, 1
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %cond, ptr noundef nonnull %cond106, i32 noundef %add) #12
  br label %if.end109

if.end109:                                        ; preds = %if.then93, %if.end85.if.end109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp110 = icmp ugt i32 %and, 4
  br i1 %cmp110, label %if.then111, label %if.end109.if.end127_crit_edge

if.end109.if.end127_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr113 = getelementptr i8, ptr %base, i32 3968
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #8, !srcloc !329
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and120 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  %cond122 = select i1 %tobool121.not, ptr @.str.53, ptr @.str.52
  %and123 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  %cond125 = select i1 %tobool124.not, ptr @.str.53, ptr @.str.52
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %cond122, ptr noundef nonnull %cond125) #12
  br label %if.end127

if.end127:                                        ; preds = %if.then111, %if.end109.if.end127_crit_edge
  %and128 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end127.if.end132_crit_edge, label %if.then130

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 120, ptr noundef nonnull @.str.54, i1 noundef zeroext true, ptr noundef nonnull @l2c310_starting_cpu, ptr noundef nonnull @l2c310_dying_cpu, i1 noundef zeroext false) #8
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127.if.end132_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_fixup(ptr nocapture noundef readnone %base, i32 noundef %cache_id, ptr nocapture noundef %fns) #0 section ".init.text" align 64 {
entry:
  %errata = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cache_id, 63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %errata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp ult i32 %and, 4
  %0 = call ptr @memset(ptr %errata, i32 255, i32 32)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %fns to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fns, align 4
  %cmp1 = icmp eq ptr %2, @l2c210_inv_range
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %fns to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @l2c310_inv_range_erratum, ptr %fns, align 4
  %flush_range = getelementptr inbounds %struct.outer_cache_fns, ptr %fns, i32 0, i32 2
  %4 = ptrtoint ptr %flush_range to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @l2c310_flush_range_erratum, ptr %flush_range, align 4
  %5 = ptrtoint ptr %errata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.55, ptr %errata, align 4
  br label %if.then29

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp5 = icmp ult i32 %and, 6
  br i1 %cmp5, label %if.then6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flush_all = getelementptr inbounds %struct.outer_cache_fns, ptr %fns, i32 0, i32 3
  %6 = ptrtoint ptr %flush_all to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @l2c310_flush_all_erratum, ptr %flush_all, align 4
  %7 = ptrtoint ptr %errata to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.56, ptr %errata, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %n.1 = phi i32 [ 1, %if.then6 ], [ 0, %if.end.if.end9_crit_edge ]
  %8 = add nsw i32 %and, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %if.then13, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %10 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %and14 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.then13.if.end20_crit_edge, label %if.then15

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %10, -1073741825
  store i32 %and16, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %inc17 = add nuw nsw i32 %n.1, 1
  %arrayidx18 = getelementptr [8 x ptr], ptr %errata, i32 0, i32 %n.1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.57, ptr %arrayidx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then13.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %n.3 = phi i32 [ %n.1, %if.end9.if.end20_crit_edge ], [ %inc17, %if.then15 ], [ %n.1, %if.then13.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp21 = icmp eq i32 %and, 5
  br i1 %cmp21, label %if.then22, label %if.end20.if.then29_crit_edge

if.end20.if.then29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1856, ptr @sync_reg_offset, align 4
  %inc23 = add nuw nsw i32 %n.3, 1
  %arrayidx24 = getelementptr [8 x ptr], ptr %errata, i32 0, i32 %n.3
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.58, ptr %arrayidx24, align 4
  br label %if.then29

if.then29:                                        ; preds = %if.then22, %if.end20.if.then29_crit_edge, %if.then, %land.lhs.true.if.then29_crit_edge
  %n.4.sink = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.then29_crit_edge ], [ %inc23, %if.then22 ], [ %n.3, %if.end20.if.then29_crit_edge ]
  %arrayidx27 = getelementptr [8 x ptr], ptr %errata, i32 0, i32 %n.4.sink
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.59, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.4.sink)
  %cmp30.not = icmp eq i32 %n.4.sink, 0
  %cond = select i1 %cmp30.not, ptr @.str.63, ptr @.str.62
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %cond) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end34.do.end34_crit_edge, %if.then29
  %i.081 = phi i32 [ 0, %if.then29 ], [ %inc38, %do.end34.do.end34_crit_edge ]
  %arrayidx36 = getelementptr [8 x ptr], ptr %errata, i32 0, i32 %i.081
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %15) #12
  %inc38 = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %i.081, %n.4.sink
  br i1 %exitcond.not, label %do.end41, label %do.end34.do.end34_crit_edge

do.end34.do.end34_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %errata) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_save(ptr noundef %base) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  store i32 %2, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %base, i32 264
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  %add.ptr2 = getelementptr i8, ptr %base, i32 268
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !329
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  %add.ptr6 = getelementptr i8, ptr %base, i32 3076
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !329
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %add.ptr10 = getelementptr i8, ptr %base, i32 3072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !329
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  store i32 %10, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !329
  %12 = lshr i32 %11, 24
  %and = and i32 %12, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %if.end, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end:                                           ; preds = %entry
  %add.ptr18 = getelementptr i8, ptr %base, i32 3936
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !329
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp21.not = icmp eq i32 %and, 4
  br i1 %cmp21.not, label %if.end.if.end27_crit_edge, label %if.then22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24 = getelementptr i8, ptr %base, i32 3968
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !329
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  store i32 %16, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_configure(ptr noundef %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i.i = icmp eq i32 %2, %0
  br i1 %cmp.i.i, label %entry.l2c_configure.exit_crit_edge, label %if.end.i.i

entry.l2c_configure.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_configure.exit

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(i32 noundef %0, i32 noundef 260) #8
  br label %l2c_configure.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !331
  br label %l2c_configure.exit

l2c_configure.exit:                               ; preds = %if.else.i.i, %if.then1.i.i, %entry.l2c_configure.exit_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %base, i32 264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp eq i32 %7, %5
  br i1 %cmp.i, label %l2c_configure.exit.l2c_write_sec.exit_crit_edge, label %if.end.i

l2c_configure.exit.l2c_write_sec.exit_crit_edge:  ; preds = %l2c_configure.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit

if.end.i:                                         ; preds = %l2c_configure.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(i32 noundef %5, i32 noundef 264) #8
  br label %l2c_write_sec.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !331
  br label %l2c_write_sec.exit

l2c_write_sec.exit:                               ; preds = %if.else.i, %if.then1.i, %l2c_configure.exit.l2c_write_sec.exit_crit_edge
  %10 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  %add.ptr.i12 = getelementptr i8, ptr %base, i32 268
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !329
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i13 = icmp eq i32 %12, %10
  br i1 %cmp.i13, label %l2c_write_sec.exit.l2c_write_sec.exit18_crit_edge, label %if.end.i15

l2c_write_sec.exit.l2c_write_sec.exit18_crit_edge: ; preds = %l2c_write_sec.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit18

if.end.i15:                                       ; preds = %l2c_write_sec.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i14 = icmp eq ptr %13, null
  br i1 %tobool.not.i14, label %if.else.i17, label %if.then1.i16

if.then1.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(i32 noundef %10, i32 noundef 268) #8
  br label %l2c_write_sec.exit18

if.else.i17:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %14) #8, !srcloc !331
  br label %l2c_write_sec.exit18

l2c_write_sec.exit18:                             ; preds = %if.else.i17, %if.then1.i16, %l2c_write_sec.exit.l2c_write_sec.exit18_crit_edge
  %15 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %add.ptr.i19 = getelementptr i8, ptr %base, i32 3076
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !329
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i20 = icmp eq i32 %17, %15
  br i1 %cmp.i20, label %l2c_write_sec.exit18.l2c_write_sec.exit25_crit_edge, label %if.end.i22

l2c_write_sec.exit18.l2c_write_sec.exit25_crit_edge: ; preds = %l2c_write_sec.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit25

if.end.i22:                                       ; preds = %l2c_write_sec.exit18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i21 = icmp eq ptr %18, null
  br i1 %tobool.not.i21, label %if.else.i24, label %if.then1.i23

if.then1.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(i32 noundef %15, i32 noundef 3076) #8
  br label %l2c_write_sec.exit25

if.else.i24:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %19) #8, !srcloc !331
  br label %l2c_write_sec.exit25

l2c_write_sec.exit25:                             ; preds = %if.else.i24, %if.then1.i23, %l2c_write_sec.exit18.l2c_write_sec.exit25_crit_edge
  %20 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  %add.ptr.i26 = getelementptr i8, ptr %base, i32 3072
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #8, !srcloc !329
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.i27 = icmp eq i32 %22, %20
  br i1 %cmp.i27, label %l2c_write_sec.exit25.l2c_write_sec.exit32_crit_edge, label %if.end.i29

l2c_write_sec.exit25.l2c_write_sec.exit32_crit_edge: ; preds = %l2c_write_sec.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit32

if.end.i29:                                       ; preds = %l2c_write_sec.exit25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i28 = icmp eq ptr %23, null
  br i1 %tobool.not.i28, label %if.else.i31, label %if.then1.i30

if.then1.i30:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(i32 noundef %20, i32 noundef 3072) #8
  br label %l2c_write_sec.exit32

if.else.i31:                                      ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %24) #8, !srcloc !331
  br label %l2c_write_sec.exit32

l2c_write_sec.exit32:                             ; preds = %if.else.i31, %if.then1.i30, %l2c_write_sec.exit25.l2c_write_sec.exit32_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !329
  %26 = lshr i32 %25, 24
  %and = and i32 %26, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %if.then, label %l2c_write_sec.exit32.if.end3_crit_edge

l2c_write_sec.exit32.if.end3_crit_edge:           ; preds = %l2c_write_sec.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %l2c_write_sec.exit32
  %27 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %add.ptr.i33 = getelementptr i8, ptr %base, i32 3936
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #8, !srcloc !329
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.i34 = icmp eq i32 %29, %27
  br i1 %cmp.i34, label %if.then.if.end_crit_edge, label %if.end.i36

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i36:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i35 = icmp eq ptr %30, null
  br i1 %tobool.not.i35, label %if.else.i38, label %if.then1.i37

if.then1.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %30(i32 noundef %27, i32 noundef 3936) #8
  br label %if.end

if.else.i38:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %31) #8, !srcloc !331
  br label %if.end

if.end:                                           ; preds = %if.else.i38, %if.then1.i37, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1 = icmp ugt i32 %and, 4
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %32 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  %add.ptr.i40 = getelementptr i8, ptr %base, i32 3968
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #8, !srcloc !329
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp.i41 = icmp eq i32 %34, %32
  br i1 %cmp.i41, label %if.then2.if.end3_crit_edge, label %if.end.i43

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end.i43:                                       ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i42 = icmp eq ptr %35, null
  br i1 %tobool.not.i42, label %if.else.i45, label %if.then1.i44

if.then1.i44:                                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %35(i32 noundef %32, i32 noundef 3968) #8
  br label %if.end3

if.else.i45:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #10
  %36 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %36) #8, !srcloc !331
  br label %if.end3

if.end3:                                          ; preds = %if.else.i45, %if.then1.i44, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge, %l2c_write_sec.exit32.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_unlock(ptr noundef %base, i32 noundef %num_lock) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 260
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %1 = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lock)
  %cmp9.not.i = icmp eq i32 %num_lock, 0
  %or.cond = or i1 %cmp9.not.i, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %base, i32 2304
  %add.ptr2.i = getelementptr i8, ptr %base, i32 2308
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.010.i, 3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #8, !srcloc !331
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !331
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_lock
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !340
  %and1 = and i32 %1, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %and1) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @l2x0_base, align 4
  tail call void @l2x0_pmu_suspend() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %3() #8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %if.end.l2c_disable.exit_crit_edge, label %if.end.i.i

if.end.l2c_disable.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_disable.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(i32 noundef 0, i32 noundef 256) #8
  br label %l2c_disable.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %l2c_disable.exit

l2c_disable.exit:                                 ; preds = %if.else.i.i, %if.then1.i.i, %if.end.l2c_disable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_resume() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.l2c_resume.exit_crit_edge

entry.l2c_resume.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_resume.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load ptr, ptr @l2x0_data, align 4
  %num_lock.i = getelementptr inbounds %struct.l2c_init_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %num_lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_lock.i, align 4
  tail call void @l2c_enable(ptr noundef %0, i32 noundef %5) #8
  br label %l2c_resume.exit

l2c_resume.exit:                                  ; preds = %if.then.i, %entry.l2c_resume.exit_crit_edge
  tail call void @l2x0_pmu_resume() #8
  %6 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %l2c_resume.exit.if.end_crit_edge, label %if.then

l2c_resume.exit.if.end_crit_edge:                 ; preds = %l2c_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %l2c_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !340
  %or2 = or i32 %7, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %or2) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  br label %if.end

if.end:                                           ; preds = %if.then, %l2c_resume.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2c310_starting_cpu(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !340
  %or2 = or i32 %0, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %or2) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2c310_dying_cpu(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !340
  %and = and i32 %0, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %and) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_inv_range_erratum(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %or = or i32 %end, %start
  %and = and i32 %or, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 3904
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 50331648
  br i1 %cmp.i.i, label %if.then.l2c_set_debug.exit_crit_edge, label %if.end.i.i

if.then.l2c_set_debug.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %2(i32 noundef 3, i32 noundef 3904) #8
  br label %l2c_set_debug.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #8, !srcloc !331
  br label %l2c_set_debug.exit

l2c_set_debug.exit:                               ; preds = %if.else.i.i, %if.then1.i.i, %if.then.l2c_set_debug.exit_crit_edge
  %and1 = and i32 %start, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %l2c_set_debug.exit.if.end_crit_edge, label %if.then3

l2c_set_debug.exit.if.end_crit_edge:              ; preds = %l2c_set_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %l2c_set_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i32 %start, -32
  %3 = tail call i32 @llvm.bswap.i32(i32 %and4)
  %add.ptr = getelementptr i8, ptr %0, i32 1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !331
  %add.ptr5 = getelementptr i8, ptr %0, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !331
  %add = add i32 %and4, 32
  br label %if.end

if.end:                                           ; preds = %if.then3, %l2c_set_debug.exit.if.end_crit_edge
  %start.addr.0 = phi i32 [ %add, %if.then3 ], [ %start, %l2c_set_debug.exit.if.end_crit_edge ]
  %and6 = and i32 %end, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %end, -32
  %4 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %add.ptr10 = getelementptr i8, ptr %0, i32 1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #8, !srcloc !331
  %add.ptr11 = getelementptr i8, ptr %0, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #8, !srcloc !331
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %end.addr.0 = phi i32 [ %and9, %if.then8 ], [ %end, %if.end.if.end12_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i42 = icmp eq i32 %5, 0
  br i1 %cmp.i.i42, label %if.end12.l2c_set_debug.exit47_crit_edge, label %if.end.i.i44

if.end12.l2c_set_debug.exit47_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit47

if.end.i.i44:                                     ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i43 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i43, label %if.else.i.i46, label %if.then1.i.i45

if.then1.i.i45:                                   ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(i32 noundef 0, i32 noundef 3904) #8
  br label %l2c_set_debug.exit47

if.else.i.i46:                                    ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %l2c_set_debug.exit47

l2c_set_debug.exit47:                             ; preds = %if.else.i.i46, %if.then1.i.i45, %if.end12.l2c_set_debug.exit47_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call) #8
  br label %if.end21

if.end21:                                         ; preds = %l2c_set_debug.exit47, %entry.if.end21_crit_edge
  %end.addr.1 = phi i32 [ %end.addr.0, %l2c_set_debug.exit47 ], [ %end, %entry.if.end21_crit_edge ]
  %start.addr.1 = phi i32 [ %start.addr.0, %l2c_set_debug.exit47 ], [ %start, %entry.if.end21_crit_edge ]
  %add.ptr22 = getelementptr i8, ptr %0, i32 1904
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.1, i32 %end.addr.1)
  %cmp3.i = icmp ult i32 %start.addr.1, %end.addr.1
  br i1 %cmp3.i, label %if.end21.while.body.i_crit_edge, label %if.end21.__l2c210_op_pa_range.exit_crit_edge

if.end21.__l2c210_op_pa_range.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

if.end21.while.body.i_crit_edge:                  ; preds = %if.end21
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end21.while.body.i_crit_edge
  %start.addr.04.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ %start.addr.1, %if.end21.while.body.i_crit_edge ]
  %7 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %7) #8, !srcloc !331
  %add.i = add i32 %start.addr.04.i, 32
  %cmp.i = icmp ult i32 %add.i, %end.addr.1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.__l2c210_op_pa_range.exit_crit_edge

while.body.i.__l2c210_op_pa_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c210_op_pa_range.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

__l2c210_op_pa_range.exit:                        ; preds = %while.body.i.__l2c210_op_pa_range.exit_crit_edge, %if.end21.__l2c210_op_pa_range.exit_crit_edge
  %8 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_flush_range_erratum(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp168 = icmp ult i32 %start, %end
  br i1 %cmp168, label %while.body.lr.ph, label %entry.do.body32_crit_edge

entry.do.body32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 3904
  %add.ptr = getelementptr i8, ptr %0, i32 1968
  %add.ptr10 = getelementptr i8, ptr %0, i32 1904
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %start.addr.070 = phi i32 [ %start, %while.body.lr.ph ], [ %start.addr.1.lcssa, %if.end.while.body_crit_edge ]
  %flags.069 = phi i32 [ %call, %while.body.lr.ph ], [ %flags.1, %if.end.while.body_crit_edge ]
  %sub = sub i32 %end, %start.addr.070
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %add = add i32 %1, %start.addr.070
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 50331648
  br i1 %cmp.i.i, label %while.body.l2c_set_debug.exit_crit_edge, label %if.end.i.i

while.body.l2c_set_debug.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(i32 noundef 3, i32 noundef 3904) #8
  br label %l2c_set_debug.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #8, !srcloc !331
  br label %l2c_set_debug.exit

l2c_set_debug.exit:                               ; preds = %if.else.i.i, %if.then1.i.i, %while.body.l2c_set_debug.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.070, i32 %add)
  %cmp766 = icmp ult i32 %start.addr.070, %add
  br i1 %cmp766, label %l2c_set_debug.exit.while.body9_crit_edge, label %l2c_set_debug.exit.while.end_crit_edge

l2c_set_debug.exit.while.end_crit_edge:           ; preds = %l2c_set_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

l2c_set_debug.exit.while.body9_crit_edge:         ; preds = %l2c_set_debug.exit
  br label %while.body9

while.body9:                                      ; preds = %while.body9.while.body9_crit_edge, %l2c_set_debug.exit.while.body9_crit_edge
  %start.addr.167 = phi i32 [ %add11, %while.body9.while.body9_crit_edge ], [ %start.addr.070, %l2c_set_debug.exit.while.body9_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %start.addr.167)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !331
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #8, !srcloc !331
  %add11 = add i32 %start.addr.167, 32
  %cmp7 = icmp ult i32 %add11, %add
  br i1 %cmp7, label %while.body9.while.body9_crit_edge, label %while.body9.while.end_crit_edge

while.body9.while.end_crit_edge:                  ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body9.while.body9_crit_edge:                ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body9

while.end:                                        ; preds = %while.body9.while.end_crit_edge, %l2c_set_debug.exit.while.end_crit_edge
  %start.addr.1.lcssa = phi i32 [ %start.addr.070, %l2c_set_debug.exit.while.end_crit_edge ], [ %add11, %while.body9.while.end_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i60 = icmp eq i32 %5, 0
  br i1 %cmp.i.i60, label %while.end.l2c_set_debug.exit65_crit_edge, label %if.end.i.i62

while.end.l2c_set_debug.exit65_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit65

if.end.i.i62:                                     ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i61 = icmp eq ptr %6, null
  br i1 %tobool.not.i.i61, label %if.else.i.i64, label %if.then1.i.i63

if.then1.i.i63:                                   ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(i32 noundef 0, i32 noundef 3904) #8
  br label %l2c_set_debug.exit65

if.else.i.i64:                                    ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %l2c_set_debug.exit65

l2c_set_debug.exit65:                             ; preds = %if.else.i.i64, %if.then1.i.i63, %while.end.l2c_set_debug.exit65_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %end)
  %cmp12 = icmp ult i32 %add, %end
  br i1 %cmp12, label %do.body14, label %l2c_set_debug.exit65.if.end_crit_edge

l2c_set_debug.exit65.if.end_crit_edge:            ; preds = %l2c_set_debug.exit65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body14:                                        ; preds = %l2c_set_debug.exit65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.069) #8
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  br label %if.end

if.end:                                           ; preds = %do.body14, %l2c_set_debug.exit65.if.end_crit_edge
  %flags.1 = phi i32 [ %call28, %do.body14 ], [ %flags.069, %l2c_set_debug.exit65.if.end_crit_edge ]
  %cmp1 = icmp ult i32 %start.addr.1.lcssa, %end
  br i1 %cmp1, label %if.end.while.body_crit_edge, label %if.end.do.body32_crit_edge

if.end.do.body32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body32:                                        ; preds = %if.end.do.body32_crit_edge, %entry.do.body32_crit_edge
  %flags.0.lcssa = phi i32 [ %call, %entry.do.body32_crit_edge ], [ %flags.1, %if.end.do.body32_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %flags.0.lcssa) #8
  %7 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_flush_all_erratum() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 3904
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 50331648
  br i1 %cmp.i.i, label %entry.l2c_set_debug.exit_crit_edge, label %if.end.i.i

entry.l2c_set_debug.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %2(i32 noundef 3, i32 noundef 3904) #8
  br label %l2c_set_debug.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #8, !srcloc !331
  br label %l2c_set_debug.exit

l2c_set_debug.exit:                               ; preds = %if.else.i.i, %if.then1.i.i, %entry.l2c_set_debug.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %0, i32 2044
  %3 = load i32, ptr @l2x0_way_mask, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !331
  %5 = load i32, ptr @l2x0_way_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and5.i.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not6.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not6.i.i, label %l2c_set_debug.exit.__l2c_op_way.exit_crit_edge, label %l2c_set_debug.exit.do.end.i.i_crit_edge

l2c_set_debug.exit.do.end.i.i_crit_edge:          ; preds = %l2c_set_debug.exit
  br label %do.end.i.i

l2c_set_debug.exit.__l2c_op_way.exit_crit_edge:   ; preds = %l2c_set_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %l2c_set_debug.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %and.i.i = and i32 %9, %5
  %tobool.not.i.i13 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i13, label %do.end.i.i.__l2c_op_way.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c_op_way.exit_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

__l2c_op_way.exit:                                ; preds = %do.end.i.i.__l2c_op_way.exit_crit_edge, %l2c_set_debug.exit.__l2c_op_way.exit_crit_edge
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i15 = icmp eq i32 %10, 0
  br i1 %cmp.i.i15, label %__l2c_op_way.exit.l2c_set_debug.exit20_crit_edge, label %if.end.i.i17

__l2c_op_way.exit.l2c_set_debug.exit20_crit_edge: ; preds = %__l2c_op_way.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_set_debug.exit20

if.end.i.i17:                                     ; preds = %__l2c_op_way.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i16, label %if.else.i.i19, label %if.then1.i.i18

if.then1.i.i18:                                   ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(i32 noundef 0, i32 noundef 3904) #8
  br label %l2c_set_debug.exit20

if.else.i.i19:                                    ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %l2c_set_debug.exit20

l2c_set_debug.exit20:                             ; preds = %if.else.i.i19, %if.then1.i.i18, %__l2c_op_way.exit.l2c_set_debug.exit20_crit_edge
  %12 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2x0_pmu_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2x0_of_parse(ptr noundef %np, ptr nocapture noundef %aux_val, ptr nocapture noundef %aux_mask) #0 section ".init.text" align 64 {
entry:
  %data = alloca [2 x i32], align 8
  %tag = alloca i32, align 4
  %dirty = alloca i32, align 4
  %assoc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tag) #8
  %1 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dirty) #8
  %2 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dirty, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assoc) #8
  %3 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %assoc, align 4, !annotation !344
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.87, ptr noundef nonnull %tag, i32 noundef 1, i32 noundef 0) #8
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %sub = shl i32 %5, 6
  %shl = add i32 %sub, -64
  %mask.0 = select i1 %tobool.not, i32 0, i32 448
  %val.0 = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.88, ptr noundef nonnull %data, i32 noundef 2, i32 noundef 0) #8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end16_crit_edge, label %if.then6

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %mask.0, 63
  %sub9 = add i32 %7, -1
  %sub12 = shl i32 %9, 3
  %shl13 = add i32 %sub12, -8
  %or14 = or i32 %val.0, %sub9
  %or15 = or i32 %or14, %shl13
  br label %if.end16

if.end16:                                         ; preds = %if.then6, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %mask.1 = phi i32 [ %or7, %if.then6 ], [ %mask.0, %land.lhs.true.if.end16_crit_edge ], [ %mask.0, %entry.if.end16_crit_edge ]
  %val.1 = phi i32 [ %or15, %if.then6 ], [ %val.0, %land.lhs.true.if.end16_crit_edge ], [ %val.0, %entry.if.end16_crit_edge ]
  %call.i.i91 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.89, ptr noundef nonnull %dirty, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  %or20 = or i32 %mask.1, 3584
  %sub21 = shl i32 %11, 9
  %shl22 = add i32 %sub21, -512
  %mask.2 = select i1 %tobool18.not, i32 %mask.1, i32 %or20
  %or23 = select i1 %tobool18.not, i32 0, i32 %shl22
  %val.2 = or i32 %or23, %val.1
  %call.i92 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.90, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i92, null
  br i1 %tobool.i.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %mask.2, -2097153
  %or27 = or i32 %val.2, 2097152
  br label %if.end32

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i93 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.91, ptr noundef null) #8
  %tobool.i94.not = icmp eq ptr %call.i93, null
  %and30 = and i32 %mask.2, -2097153
  %spec.select = select i1 %tobool.i94.not, i32 %mask.2, i32 %and30
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %mask.3 = phi i32 [ %and, %if.then26 ], [ %spec.select, %if.else ]
  %val.3 = phi i32 [ %or27, %if.then26 ], [ %val.2, %if.else ]
  %call.i95 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.92, ptr noundef null) #8
  %tobool.i96.not = icmp eq ptr %call.i95, null
  %and35 = and i32 %mask.3, -4194305
  %or36 = or i32 %val.3, 4194304
  %mask.4 = select i1 %tobool.i96.not, i32 %mask.3, i32 %and35
  %val.4 = select i1 %tobool.i96.not, i32 %val.3, i32 %or36
  %call38 = call fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %np, ptr noundef %aux_val, ptr noundef %aux_mask, ptr noundef nonnull %assoc, i32 noundef 262144) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp = icmp ugt i32 %13, 8
  br i1 %cmp, label %do.end, label %if.else49

do.end:                                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #12
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %13) #12
  br label %if.end53

if.else49:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %or50 = or i32 %mask.4, 122880
  %shl51 = shl nuw nsw i32 %13, 13
  %or52 = or i32 %shl51, %val.4
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %do.end
  %mask.5 = phi i32 [ %mask.4, %do.end ], [ %or50, %if.else49 ]
  %val.5 = phi i32 [ %val.4, %do.end ], [ %or52, %if.else49 ]
  %neg = xor i32 %mask.5, -1
  %14 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aux_val, align 4
  %and54 = and i32 %15, %neg
  %or55 = or i32 %and54, %val.5
  store i32 %or55, ptr %aux_val, align 4
  %16 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aux_mask, align 4
  %and57 = and i32 %17, %neg
  store i32 %and57, ptr %aux_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end32.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dirty) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tag) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %np, ptr nocapture noundef %aux_val, ptr nocapture noundef %aux_mask, ptr nocapture noundef %associativity, i32 noundef %max_way_size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cache_size = alloca i32, align 4
  %sets = alloca i32, align 4
  %block_size = alloca i32, align 4
  %line_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cache_size) #8
  %0 = ptrtoint ptr %cache_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cache_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sets) #8
  %1 = ptrtoint ptr %sets to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sets, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_size) #8
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %block_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %line_size) #8
  %3 = ptrtoint ptr %line_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %line_size, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.98, ptr noundef nonnull %cache_size, i32 noundef 1, i32 noundef 0) #8
  %call.i.i102 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.99, ptr noundef nonnull %sets, i32 noundef 1, i32 noundef 0) #8
  %call.i.i103 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.100, ptr noundef nonnull %block_size, i32 noundef 1, i32 noundef 0) #8
  %call.i.i104 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.101, ptr noundef nonnull %line_size, i32 noundef 1, i32 noundef 0) #8
  %4 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %sets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %10 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %if.end11.thread, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %line_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %line_size, align 4
  br label %if.end11

if.end11.thread:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef 32) #12
  %13 = ptrtoint ptr %line_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %line_size, align 4
  br label %if.end18

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %14 = phi i32 [ %11, %if.then8 ], [ %9, %if.end.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp.not = icmp eq i32 %14, 32
  br i1 %cmp.not, label %if.end11.if.end18_crit_edge, label %do.end15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %14, i32 noundef 32) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end11.if.end18_crit_edge, %if.end11.thread
  %15 = ptrtoint ptr %sets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sets, align 4
  %17 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %line_size, align 4
  %mul = mul i32 %18, %16
  %19 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cache_size, align 4
  %div = udiv i32 %20, %mul
  %21 = ptrtoint ptr %associativity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %associativity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %max_way_size)
  %cmp19 = icmp ugt i32 %mul, %max_way_size
  br i1 %cmp19, label %do.end23, label %do.end29

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %mul) #12
  br label %cleanup

do.end29:                                         ; preds = %if.end18
  %shr = lshr i32 %20, 10
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %20, i32 noundef %shr) #12
  %22 = ptrtoint ptr %line_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line_size, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %23) #12
  %shr41 = lshr i32 %mul, 10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %mul, i32 noundef %shr41) #12
  %24 = ptrtoint ptr %associativity to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %associativity, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %tobool.not.i.i = icmp ult i32 %mul, 1024
  %26 = call i32 @llvm.ctlz.i32(i32 %shr41, i1 true) #8, !range !345
  %sub.i.op.i = xor i32 %26, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %27 = add nsw i32 %sub.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %27)
  %28 = icmp ult i32 %27, -6
  br i1 %28, label %do.end67, label %if.end70

do.end67:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %mul) #12
  br label %cleanup

if.end70:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %sub58 = shl nuw nsw i32 %sub.i, 17
  %shl = add nsw i32 %sub58, -393216
  %29 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aux_val, align 4
  %and = and i32 %30, -917505
  %or72 = or i32 %and, %shl
  store i32 %or72, ptr %aux_val, align 4
  %31 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aux_mask, align 4
  %and74 = and i32 %32, -917505
  store i32 %and74, ptr %aux_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end67, %do.end23, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ -22, %do.end67 ], [ 0, %if.end70 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %line_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sets) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cache_size) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2c310_of_parse(ptr noundef %np, ptr nocapture noundef %aux_val, ptr nocapture noundef %aux_mask) #0 section ".init.text" align 64 {
entry:
  %data = alloca [3 x i32], align 4
  %tag = alloca [3 x i32], align 4
  %filter = alloca [2 x i32], align 8
  %assoc = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #8
  %0 = call ptr @memset(ptr %data, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tag) #8
  %1 = call ptr @memset(ptr %tag, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #8
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %filter, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %assoc) #8
  %3 = ptrtoint ptr %assoc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %assoc, align 4, !annotation !344
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !344
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.87, ptr noundef nonnull %tag, i32 noundef 3, i32 noundef 0) #8
  %5 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds [3 x i32], ptr %tag, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr inbounds [3 x i32], ptr %tag, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %sub = shl i32 %6, 4
  %shl = add i32 %sub, -16
  %sub8 = shl i32 %8, 8
  %shl9 = add i32 %sub8, -256
  %or = or i32 %shl9, %shl
  %sub11 = add i32 %10, -1
  %or13 = or i32 %or, %sub11
  store i32 %or13, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i328 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.88, ptr noundef nonnull %data, i32 noundef 3, i32 noundef 0) #8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not = icmp eq i32 %12, 0
  br i1 %tobool17.not, label %if.end.if.end36_crit_edge, label %land.lhs.true18

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true18:                                  ; preds = %if.end
  %arrayidx19 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end36_crit_edge, label %land.lhs.true21

land.lhs.true18.if.end36_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %arrayidx22 = getelementptr inbounds [3 x i32], ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end36_crit_edge, label %if.then24

land.lhs.true21.if.end36_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %sub26 = shl i32 %12, 4
  %shl27 = add i32 %sub26, -16
  %sub29 = shl i32 %14, 8
  %shl30 = add i32 %sub29, -256
  %or31 = or i32 %shl30, %shl27
  %sub33 = add i32 %16, -1
  %or35 = or i32 %or31, %sub33
  store i32 %or35, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then24, %land.lhs.true21.if.end36_crit_edge, %land.lhs.true18.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %call.i329 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.125, ptr noundef nonnull %filter, i32 noundef 2, i32 noundef 0) #8
  %arrayidx39 = getelementptr inbounds [2 x i32], ptr %filter, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool40.not = icmp eq i32 %18, 0
  br i1 %tobool40.not, label %if.end36.if.end48_crit_edge, label %if.then41

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %filter, align 8
  %add = add i32 %18, 1048575
  %add44 = add i32 %add, %20
  %and = and i32 %add44, -1048576
  store i32 %and, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %and46 = and i32 %20, -1048576
  %or47 = or i32 %and46, 1
  store i32 %or47, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %if.end36.if.end48_crit_edge
  %call49 = call fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %np, ptr noundef %aux_val, ptr noundef %aux_mask, ptr noundef nonnull %assoc, i32 noundef 524288) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then51:                                        ; preds = %if.end48
  %21 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %assoc, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %22, label %do.end [
    i32 16, label %sw.bb
    i32 8, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aux_val, align 4
  %and52 = and i32 %25, -122881
  %or53 = or i32 %and52, 65536
  store i32 %or53, ptr %aux_val, align 4
  %26 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aux_mask, align 4
  %and54 = and i32 %27, -122881
  store i32 %and54, ptr %aux_mask, align 4
  br label %if.end59

sw.bb55:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aux_val, align 4
  %and56 = and i32 %29, -122881
  store i32 %and56, ptr %aux_val, align 4
  %30 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aux_mask, align 4
  %and57 = and i32 %31, -122881
  store i32 %and57, ptr %aux_mask, align 4
  br label %if.end59

do.end:                                           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %22) #12
  br label %if.end59

if.end59:                                         ; preds = %do.end, %sw.bb55, %sw.bb, %if.end48.if.end59_crit_edge
  %call.i330 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.92, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i330, null
  br i1 %tobool.i.not, label %if.end59.if.end64_crit_edge, label %if.then61

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aux_val, align 4
  %or62 = or i32 %33, 4194304
  store i32 %or62, ptr %aux_val, align 4
  %34 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %aux_mask, align 4
  %and63 = and i32 %35, -4194305
  store i32 %and63, ptr %aux_mask, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end59.if.end64_crit_edge
  %call.i331 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.90, ptr noundef null) #8
  %tobool.i332.not = icmp eq ptr %call.i331, null
  br i1 %tobool.i332.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aux_val, align 4
  %or67 = or i32 %37, 2097152
  br label %if.end74.sink.split

if.else:                                          ; preds = %if.end64
  %call.i333 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.91, ptr noundef null) #8
  %tobool.i334.not = icmp eq ptr %call.i333, null
  br i1 %tobool.i334.not, label %if.else.if.end74_crit_edge, label %if.then70

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %aux_val, align 4
  %and71 = and i32 %39, -2097153
  br label %if.end74.sink.split

if.end74.sink.split:                              ; preds = %if.then70, %if.then66
  %and71.sink = phi i32 [ %and71, %if.then70 ], [ %or67, %if.then66 ]
  %40 = ptrtoint ptr %aux_val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and71.sink, ptr %aux_val, align 4
  %41 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %aux_mask, align 4
  %and72 = and i32 %42, -2097153
  store i32 %and72, ptr %aux_mask, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.else.if.end74_crit_edge
  %call.i335 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.128, ptr noundef null) #8
  %tobool.i336.not = icmp eq ptr %call.i335, null
  br i1 %tobool.i336.not, label %if.end74.if.end77_crit_edge, label %if.then76

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @l2x0_bresp_disable, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end74.if.end77_crit_edge
  %call.i337 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.129, ptr noundef null) #8
  %tobool.i338.not = icmp eq ptr %call.i337, null
  br i1 %tobool.i338.not, label %if.end77.if.end80_crit_edge, label %if.then79

if.end77.if.end80_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @l2x0_flz_disable, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end77.if.end80_crit_edge
  %43 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.130, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %44 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %44, label %do.end94 [
    i32 0, label %if.then82
    i32 -22, label %if.end80.if.end98_crit_edge
  ]

if.end80.if.end98_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then82:                                        ; preds = %if.end80
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool83.not = icmp eq i32 %47, 0
  br i1 %tobool83.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %or85 = or i32 %43, 1073741824
  br label %if.end98

if.else86:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %and87 = and i32 %43, -1073741825
  br label %if.end98

do.end94:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #12
  br label %if.end98

if.end98:                                         ; preds = %do.end94, %if.else86, %if.then84, %if.end80.if.end98_crit_edge
  %prefetch.0 = phi i32 [ %or85, %if.then84 ], [ %and87, %if.else86 ], [ %43, %do.end94 ], [ %43, %if.end80.if.end98_crit_edge ]
  %call.i.i339 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.134, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %48 = call i32 @llvm.smin.i32(i32 %call.i.i339, i32 0) #8
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %48, label %do.end113 [
    i32 0, label %if.then101
    i32 -22, label %if.end98.if.end117_crit_edge
  ]

if.end98.if.end117_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then101:                                       ; preds = %if.end98
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool102.not = icmp eq i32 %51, 0
  br i1 %tobool102.not, label %if.else105, label %if.then103

if.then103:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %or104 = or i32 %prefetch.0, 8388608
  br label %if.end117

if.else105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  %and106 = and i32 %prefetch.0, -8388609
  br label %if.end117

do.end113:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #12
  br label %if.end117

if.end117:                                        ; preds = %do.end113, %if.else105, %if.then103, %if.end98.if.end117_crit_edge
  %prefetch.1 = phi i32 [ %or104, %if.then103 ], [ %and106, %if.else105 ], [ %prefetch.0, %do.end113 ], [ %prefetch.0, %if.end98.if.end117_crit_edge ]
  %call.i.i340 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.138, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %52 = call i32 @llvm.smin.i32(i32 %call.i.i340, i32 0) #8
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %52, label %do.end132 [
    i32 0, label %if.then120
    i32 -22, label %if.end117.if.end136_crit_edge
  ]

if.end117.if.end136_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then120:                                       ; preds = %if.end117
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not = icmp eq i32 %55, 0
  br i1 %tobool121.not, label %if.then122, label %if.else124

if.then122:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %or123 = or i32 %prefetch.1, 134217728
  br label %if.end136

if.else124:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %and125 = and i32 %prefetch.1, -134217729
  br label %if.end136

do.end132:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #12
  br label %if.end136

if.end136:                                        ; preds = %do.end132, %if.else124, %if.then122, %if.end117.if.end136_crit_edge
  %prefetch.2 = phi i32 [ %and125, %if.else124 ], [ %or123, %if.then122 ], [ %prefetch.1, %do.end132 ], [ %prefetch.1, %if.end117.if.end136_crit_edge ]
  %call.i.i341 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.142, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %56 = call i32 @llvm.smin.i32(i32 %call.i.i341, i32 0) #8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %56, label %do.end151 [
    i32 0, label %if.then139
    i32 -22, label %if.end136.if.end155_crit_edge
  ]

if.end136.if.end155_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then139:                                       ; preds = %if.end136
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool140.not = icmp eq i32 %59, 0
  br i1 %tobool140.not, label %if.else143, label %if.then141

if.then141:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  %or142 = or i32 %prefetch.2, 16777216
  br label %if.end155

if.else143:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  %and144 = and i32 %prefetch.2, -16777217
  br label %if.end155

do.end151:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #12
  br label %if.end155

if.end155:                                        ; preds = %do.end151, %if.else143, %if.then141, %if.end136.if.end155_crit_edge
  %prefetch.3 = phi i32 [ %or142, %if.then141 ], [ %and144, %if.else143 ], [ %prefetch.2, %do.end151 ], [ %prefetch.2, %if.end136.if.end155_crit_edge ]
  %call.i.i342 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.146, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %60 = call i32 @llvm.smin.i32(i32 %call.i.i342, i32 0) #8
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %60, label %do.end167 [
    i32 0, label %if.then158
    i32 -22, label %if.end155.if.end171_crit_edge
  ]

if.end155.if.end171_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %and159 = and i32 %prefetch.3, -32
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val, align 4
  %and160 = and i32 %63, 31
  %or161 = or i32 %and160, %and159
  br label %if.end171

do.end167:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #12
  br label %if.end171

if.end171:                                        ; preds = %do.end167, %if.then158, %if.end155.if.end171_crit_edge
  %prefetch.4 = phi i32 [ %or161, %if.then158 ], [ %prefetch.3, %do.end167 ], [ %prefetch.3, %if.end155.if.end171_crit_edge ]
  %call.i.i343 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.150, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %64 = call i32 @llvm.smin.i32(i32 %call.i.i343, i32 0) #8
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %64, label %do.end189 [
    i32 0, label %if.then174
    i32 -22, label %if.end171.if.end193_crit_edge
  ]

if.end171.if.end193_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then174:                                       ; preds = %if.end171
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool175.not = icmp eq i32 %67, 0
  br i1 %tobool175.not, label %if.else179, label %if.then176

if.then176:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %or177 = or i32 %prefetch.4, 268435456
  %68 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %aux_val, align 4
  %or178 = or i32 %69, 268435456
  br label %if.end182

if.else179:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %and180 = and i32 %prefetch.4, -268435457
  %70 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %aux_val, align 4
  %and181 = and i32 %71, -268435457
  br label %if.end182

if.end182:                                        ; preds = %if.else179, %if.then176
  %storemerge326 = phi i32 [ %and181, %if.else179 ], [ %or178, %if.then176 ]
  %prefetch.5 = phi i32 [ %and180, %if.else179 ], [ %or177, %if.then176 ]
  %72 = ptrtoint ptr %aux_val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %storemerge326, ptr %aux_val, align 4
  %73 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %aux_mask, align 4
  %and183 = and i32 %74, -268435457
  store i32 %and183, ptr %aux_mask, align 4
  br label %if.end193

do.end189:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #12
  br label %if.end193

if.end193:                                        ; preds = %do.end189, %if.end182, %if.end171.if.end193_crit_edge
  %prefetch.6 = phi i32 [ %prefetch.5, %if.end182 ], [ %prefetch.4, %do.end189 ], [ %prefetch.4, %if.end171.if.end193_crit_edge ]
  %call.i.i344 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.154, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %75 = call i32 @llvm.smin.i32(i32 %call.i.i344, i32 0) #8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %75, label %do.end211 [
    i32 0, label %if.then196
    i32 -22, label %if.end193.if.end215_crit_edge
  ]

if.end193.if.end215_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end215

if.then196:                                       ; preds = %if.end193
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool197.not = icmp eq i32 %78, 0
  br i1 %tobool197.not, label %if.else201, label %if.then198

if.then198:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %or199 = or i32 %prefetch.6, 536870912
  %79 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %aux_val, align 4
  %or200 = or i32 %80, 536870912
  br label %if.end204

if.else201:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  %and202 = and i32 %prefetch.6, -536870913
  %81 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %aux_val, align 4
  %and203 = and i32 %82, -536870913
  br label %if.end204

if.end204:                                        ; preds = %if.else201, %if.then198
  %storemerge = phi i32 [ %and203, %if.else201 ], [ %or200, %if.then198 ]
  %prefetch.7 = phi i32 [ %and202, %if.else201 ], [ %or199, %if.then198 ]
  %83 = ptrtoint ptr %aux_val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge, ptr %aux_val, align 4
  %84 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %aux_mask, align 4
  %and205 = and i32 %85, -536870913
  store i32 %and205, ptr %aux_mask, align 4
  br label %if.end215

do.end211:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #12
  br label %if.end215

if.end215:                                        ; preds = %do.end211, %if.end204, %if.end193.if.end215_crit_edge
  %prefetch.8 = phi i32 [ %prefetch.7, %if.end204 ], [ %prefetch.6, %do.end211 ], [ %prefetch.6, %if.end193.if.end215_crit_edge ]
  store i32 %prefetch.8, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %86 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  %or217 = or i32 %86, 3
  %call.i.i345 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.158, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %87 = call i32 @llvm.smin.i32(i32 %call.i.i345, i32 0) #8
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %87, label %do.end230 [
    i32 0, label %if.then220
    i32 -22, label %if.end215.if.end234_crit_edge
  ]

if.end215.if.end234_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool221.not = icmp eq i32 %90, 0
  %and223 = and i32 %or217, -3
  %spec.select = select i1 %tobool221.not, i32 %and223, i32 %or217
  br label %if.end234

do.end230:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  br label %if.end234

if.end234:                                        ; preds = %do.end230, %if.then220, %if.end215.if.end234_crit_edge
  %power.0 = phi i32 [ %or217, %do.end230 ], [ %spec.select, %if.then220 ], [ %or217, %if.end215.if.end234_crit_edge ]
  %call.i.i346 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.162, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  %91 = call i32 @llvm.smin.i32(i32 %call.i.i346, i32 0) #8
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %91, label %do.end247 [
    i32 0, label %if.then237
    i32 -22, label %if.end234.if.end251_crit_edge
  ]

if.end234.if.end251_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

if.then237:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool238.not = icmp eq i32 %94, 0
  %and240 = and i32 %power.0, -2
  %spec.select327 = select i1 %tobool238.not, i32 %and240, i32 %power.0
  br label %if.end251

do.end247:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  %call249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #12
  br label %if.end251

if.end251:                                        ; preds = %do.end247, %if.then237, %if.end234.if.end251_crit_edge
  %power.1 = phi i32 [ %power.0, %do.end247 ], [ %spec.select327, %if.then237 ], [ %power.0, %if.end234.if.end251_crit_edge ]
  store i32 %power.1, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %assoc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tag) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_inv_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %start)
  %cmp = icmp ult i32 %start, 1073741824
  br i1 %cmp, label %do.body2, label %do.end7, !prof !335

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1611, 0\0A.popsection", ""() #8, !srcloc !346
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp8.not = icmp ugt i32 %end, %start
  br i1 %cmp8.not, label %if.end16, label %do.end7.cleanup_crit_edge, !prof !347

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %start)
  %cmp1.i.i = icmp ugt i32 %start, -1073741825
  %add.i = add i32 %start, 1073741824
  %add1.i = xor i32 %start, -2147483648
  %retval.0.i = select i1 %cmp1.i.i, i32 %add1.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %end)
  %cmp1.i.i42 = icmp ugt i32 %end, -1073741825
  %add.i43 = add i32 %end, 1073741824
  %add1.i44 = xor i32 %end, -2147483648
  %retval.0.i45 = select i1 %cmp1.i.i42, i32 %add1.i44, i32 %add.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %end)
  %cmp1.i = icmp ult i32 %end, -1073741824
  %or.cond = or i1 %cmp1.i.i, %cmp1.i
  br i1 %or.cond, label %if.then30, label %if.end31, !prof !348

if.then30:                                        ; preds = %if.end16
  %0 = load ptr, ptr @l2x0_base, align 4
  %and.i = and i32 %retval.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then30.if.end.i_crit_edge, label %if.then.i

if.then30.if.end.i_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %retval.0.i, -32
  %1 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #8
  %add.ptr.i = getelementptr i8, ptr %0, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #8, !srcloc !331
  %add.i48 = add i32 %and1.i, 32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then30.if.end.i_crit_edge
  %start.addr.0.i = phi i32 [ %add.i48, %if.then.i ], [ %retval.0.i, %if.then30.if.end.i_crit_edge ]
  %and2.i = and i32 %retval.0.i45, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %retval.0.i45, -32
  %2 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #8
  %add.ptr6.i = getelementptr i8, ptr %0, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %2) #8, !srcloc !331
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %end.addr.0.i = phi i32 [ %and5.i, %if.then4.i ], [ %retval.0.i45, %if.end.i.if.end7.i_crit_edge ]
  %add.ptr8.i = getelementptr i8, ptr %0, i32 1904
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.0.i, i32 %end.addr.0.i)
  %cmp3.i.i = icmp ult i32 %start.addr.0.i, %end.addr.0.i
  br i1 %cmp3.i.i, label %if.end7.i.while.body.i.i_crit_edge, label %if.end7.i.l2c210_inv_range.exit_crit_edge

if.end7.i.l2c210_inv_range.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_inv_range.exit

if.end7.i.while.body.i.i_crit_edge:               ; preds = %if.end7.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end7.i.while.body.i.i_crit_edge
  %start.addr.04.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %start.addr.0.i, %if.end7.i.while.body.i.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %3) #8, !srcloc !331
  %add.i.i = add i32 %start.addr.04.i.i, 32
  %cmp.i.i = icmp ult i32 %add.i.i, %end.addr.0.i
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.l2c210_inv_range.exit_crit_edge

while.body.i.i.l2c210_inv_range.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_inv_range.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

l2c210_inv_range.exit:                            ; preds = %while.body.i.i.l2c210_inv_range.exit_crit_edge, %if.end7.i.l2c210_inv_range.exit_crit_edge
  %4 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @l2c210_inv_range(i32 noundef %retval.0.i, i32 noundef -1)
  tail call void @l2c210_inv_range(i32 noundef 1073741824, i32 noundef %retval.0.i45)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %l2c210_inv_range.exit, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_clean_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %start)
  %cmp = icmp ult i32 %start, 1073741824
  br i1 %cmp, label %do.body2, label %do.end7, !prof !335

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #8, !srcloc !349
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp8.not = icmp ugt i32 %end, %start
  br i1 %cmp8.not, label %if.end16, label %do.end7.cleanup_crit_edge, !prof !347

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %start)
  %cmp1.i.i = icmp ugt i32 %start, -1073741825
  %add.i = add i32 %start, 1073741824
  %add1.i = xor i32 %start, -2147483648
  %retval.0.i = select i1 %cmp1.i.i, i32 %add1.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %end)
  %cmp1.i.i42 = icmp ugt i32 %end, -1073741825
  %add.i43 = add i32 %end, 1073741824
  %add1.i44 = xor i32 %end, -2147483648
  %retval.0.i45 = select i1 %cmp1.i.i42, i32 %add1.i44, i32 %add.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %end)
  %cmp1.i = icmp ult i32 %end, -1073741824
  %or.cond = or i1 %cmp1.i.i, %cmp1.i
  %0 = load ptr, ptr @l2x0_base, align 4
  %and.i = and i32 %retval.0.i, -32
  %add.ptr.i = getelementptr i8, ptr %0, i32 1968
  br i1 %or.cond, label %if.then30, label %if.end16.while.body.i.i53_crit_edge, !prof !348

if.end16.while.body.i.i53_crit_edge:              ; preds = %if.end16
  br label %while.body.i.i53

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %retval.0.i45)
  %cmp3.i.i = icmp ult i32 %and.i, %retval.0.i45
  br i1 %cmp3.i.i, label %if.then30.while.body.i.i_crit_edge, label %if.then30.l2c210_clean_range.exit_crit_edge

if.then30.l2c210_clean_range.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_clean_range.exit

if.then30.while.body.i.i_crit_edge:               ; preds = %if.then30
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then30.while.body.i.i_crit_edge
  %start.addr.04.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %and.i, %if.then30.while.body.i.i_crit_edge ]
  %1 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #8, !srcloc !331
  %add.i.i = add i32 %start.addr.04.i.i, 32
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i45
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.l2c210_clean_range.exit_crit_edge

while.body.i.i.l2c210_clean_range.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_clean_range.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

l2c210_clean_range.exit:                          ; preds = %while.body.i.i.l2c210_clean_range.exit_crit_edge, %if.then30.l2c210_clean_range.exit_crit_edge
  %2 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %cleanup

while.body.i.i53:                                 ; preds = %while.body.i.i53, %if.end16.while.body.i.i53_crit_edge
  %start.addr.04.i.i50 = phi i32 [ %add.i.i51, %while.body.i.i53 ], [ %and.i, %if.end16.while.body.i.i53_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i.i50) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !331
  %add.i.i51 = add i32 %start.addr.04.i.i50, 32
  br label %while.body.i.i53

cleanup:                                          ; preds = %l2c210_clean_range.exit, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_flush_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %start)
  %cmp = icmp ult i32 %start, 1073741824
  br i1 %cmp, label %do.body2, label %do.end7, !prof !335

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1665, 0\0A.popsection", ""() #8, !srcloc !350
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %end, i32 %start)
  %cmp8.not = icmp ugt i32 %end, %start
  br i1 %cmp8.not, label %if.end16, label %do.end7.cleanup_crit_edge, !prof !347

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %do.end7
  %sub = sub i32 %end, %start
  %0 = load i32, ptr @l2x0_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %0)
  %cmp17.not = icmp ult i32 %sub, %0
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %1() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %start)
  %cmp1.i.i = icmp ugt i32 %start, -1073741825
  %add.i = add i32 %start, 1073741824
  %add1.i = xor i32 %start, -2147483648
  %retval.0.i = select i1 %cmp1.i.i, i32 %add1.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %end)
  %cmp1.i.i47 = icmp ugt i32 %end, -1073741825
  %add.i48 = add i32 %end, 1073741824
  %add1.i49 = xor i32 %end, -2147483648
  %retval.0.i50 = select i1 %cmp1.i.i47, i32 %add1.i49, i32 %add.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %end)
  %cmp1.i = icmp ult i32 %end, -1073741824
  %or.cond = or i1 %cmp1.i.i, %cmp1.i
  %2 = load ptr, ptr @l2x0_base, align 4
  %and.i = and i32 %retval.0.i, -32
  %add.ptr.i = getelementptr i8, ptr %2, i32 2032
  br i1 %or.cond, label %if.then33, label %if.end19.while.body.i.i58_crit_edge, !prof !348

if.end19.while.body.i.i58_crit_edge:              ; preds = %if.end19
  br label %while.body.i.i58

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %retval.0.i50)
  %cmp3.i.i = icmp ult i32 %and.i, %retval.0.i50
  br i1 %cmp3.i.i, label %if.then33.while.body.i.i_crit_edge, label %if.then33.l2c210_flush_range.exit_crit_edge

if.then33.l2c210_flush_range.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_flush_range.exit

if.then33.while.body.i.i_crit_edge:               ; preds = %if.then33
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then33.while.body.i.i_crit_edge
  %start.addr.04.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %and.i, %if.then33.while.body.i.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !331
  %add.i.i = add i32 %start.addr.04.i.i, 32
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i50
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.l2c210_flush_range.exit_crit_edge

while.body.i.i.l2c210_flush_range.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c210_flush_range.exit

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

l2c210_flush_range.exit:                          ; preds = %while.body.i.i.l2c210_flush_range.exit_crit_edge, %if.then33.l2c210_flush_range.exit_crit_edge
  %4 = load i32, ptr @sync_reg_offset, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !331
  br label %cleanup

while.body.i.i58:                                 ; preds = %while.body.i.i58, %if.end19.while.body.i.i58_crit_edge
  %start.addr.04.i.i55 = phi i32 [ %add.i.i56, %while.body.i.i58 ], [ %and.i, %if.end19.while.body.i.i58_crit_edge ]
  %5 = tail call i32 @llvm.bswap.i32(i32 %start.addr.04.i.i55) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !331
  %add.i.i56 = add i32 %start.addr.04.i.i55, 32
  br label %while.body.i.i58

cleanup:                                          ; preds = %l2c210_flush_range.exit, %if.then18, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aurora_of_parse(ptr noundef %np, ptr nocapture noundef %aux_val, ptr nocapture noundef %aux_mask) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.168, ptr noundef nonnull @cache_id_part_number_from_dt, i32 noundef 1, i32 noundef 0) #8
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.169, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %conv = zext i1 %tobool.i to i32
  store i32 %conv, ptr @l2_wt_override, align 4
  %spec.select = select i1 %tobool.i, i32 402653186, i32 402653184
  %spec.select33 = select i1 %tobool.i, i32 402653187, i32 402653184
  %call.i35 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.170, ptr noundef null) #8
  %tobool.i36.not = icmp eq ptr %call.i35, null
  %or5 = or i32 %spec.select33, 1048576
  %or6 = or i32 %spec.select, 1048576
  %val.1 = select i1 %tobool.i36.not, i32 %spec.select, i32 %or6
  %mask.1 = select i1 %tobool.i36.not, i32 %spec.select33, i32 %or5
  %call.i37 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.90, ptr noundef null) #8
  %tobool.i38.not = icmp eq ptr %call.i37, null
  br i1 %tobool.i38.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %mask.1, 2097152
  %or11 = or i32 %val.1, 2097152
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i39 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.91, ptr noundef null) #8
  %tobool.i40.not = icmp eq ptr %call.i39, null
  %or14 = or i32 %mask.1, 2097152
  %spec.select34 = select i1 %tobool.i40.not, i32 %mask.1, i32 %or14
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %val.2 = phi i32 [ %or11, %if.then9 ], [ %val.1, %if.else ]
  %mask.2 = phi i32 [ %or10, %if.then9 ], [ %spec.select34, %if.else ]
  %neg = xor i32 %mask.2, -1
  %0 = ptrtoint ptr %aux_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aux_val, align 4
  %and = and i32 %1, %neg
  %or17 = or i32 %and, %val.2
  store i32 %or17, ptr %aux_val, align 4
  %2 = ptrtoint ptr %aux_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aux_mask, align 4
  %and19 = and i32 %3, %neg
  store i32 %and19, ptr %aux_mask, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @aurora_fixup(ptr nocapture noundef readnone %base, i32 noundef %cache_id, ptr nocapture noundef readnone %fns) #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1792, ptr @sync_reg_offset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_save(ptr noundef %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 256
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  store i32 %1, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 8), align 4
  %add.ptr2 = getelementptr i8, ptr %base, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !329
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_inv_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %start, -32
  %add.i = add i32 %end, 31
  %and1.i = and i32 %add.i, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and1.i)
  %cmp22.i = icmp ult i32 %and.i, %and1.i
  br i1 %cmp22.i, label %while.body.lr.ph.i, label %entry.aurora_pa_range.exit_crit_edge

entry.aurora_pa_range.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %aurora_pa_range.exit

while.body.lr.ph.i:                               ; preds = %entry
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 1824
  %add.ptr4.i = getelementptr i8, ptr %0, i32 1908
  %add.ptr13.i = getelementptr i8, ptr %0, i32 1792
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.addr.023.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %2, %while.body.i.while.body.i_crit_edge ]
  %add.i.i = add i32 %start.addr.023.i, 1024
  %1 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 %and1.i) #8
  %add3.i.i = add i32 %start.addr.023.i, 4096
  %and.i.i = and i32 %add3.i.i, -4096
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %and.i.i) #8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %start.addr.023.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #8, !srcloc !331
  %sub.i = add i32 %2, -32
  %4 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %4) #8, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call3.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #8, !srcloc !331
  %cmp.i = icmp ult i32 %2, %and1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.aurora_pa_range.exit_crit_edge

while.body.i.aurora_pa_range.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aurora_pa_range.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

aurora_pa_range.exit:                             ; preds = %while.body.i.aurora_pa_range.exit_crit_edge, %entry.aurora_pa_range.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_clean_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @l2_wt_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %and.i = and i32 %start, -32
  %add.i = add i32 %end, 31
  %and1.i = and i32 %add.i, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and1.i)
  %cmp22.i = icmp ult i32 %and.i, %and1.i
  br i1 %cmp22.i, label %while.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %1 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1824
  %add.ptr4.i = getelementptr i8, ptr %1, i32 1972
  %add.ptr13.i = getelementptr i8, ptr %1, i32 1792
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.addr.023.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %3, %while.body.i.while.body.i_crit_edge ]
  %add.i.i = add i32 %start.addr.023.i, 1024
  %2 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 %and1.i) #8
  %add3.i.i = add i32 %start.addr.023.i, 4096
  %and.i.i = and i32 %add3.i.i, -4096
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %and.i.i) #8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %start.addr.023.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !331
  %sub.i = add i32 %3, -32
  %5 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call3.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #8, !srcloc !331
  %cmp.i = icmp ult i32 %3, %and1.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_flush_range(i32 noundef %start, i32 noundef %end) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @l2_wt_override, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %and.i3 = and i32 %start, -32
  %add.i4 = add i32 %end, 31
  %and1.i5 = and i32 %add.i4, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i3, i32 %and1.i5)
  %cmp22.i6 = icmp ult i32 %and.i3, %and1.i5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp22.i6, label %while.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %1 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1824
  %add.ptr4.i = getelementptr i8, ptr %1, i32 1908
  %add.ptr13.i = getelementptr i8, ptr %1, i32 1792
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.addr.023.i = phi i32 [ %and.i3, %while.body.lr.ph.i ], [ %3, %while.body.i.while.body.i_crit_edge ]
  %add.i.i = add i32 %start.addr.023.i, 1024
  %2 = tail call i32 @llvm.umin.i32(i32 %add.i.i, i32 %and1.i5) #8
  %add3.i.i = add i32 %start.addr.023.i, 4096
  %and.i.i = and i32 %add3.i.i, -4096
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 %and.i.i) #8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %start.addr.023.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !331
  %sub.i = add i32 %3, -32
  %5 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %5) #8, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call3.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #8, !srcloc !331
  %cmp.i = icmp ult i32 %3, %and1.i5
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end_crit_edge

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.else:                                          ; preds = %entry
  br i1 %cmp22.i6, label %while.body.lr.ph.i10, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph.i10:                             ; preds = %if.else
  %6 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 1824
  %add.ptr4.i8 = getelementptr i8, ptr %6, i32 2036
  %add.ptr13.i9 = getelementptr i8, ptr %6, i32 1792
  br label %while.body.i18

while.body.i18:                                   ; preds = %while.body.i18.while.body.i18_crit_edge, %while.body.lr.ph.i10
  %start.addr.023.i11 = phi i32 [ %and.i3, %while.body.lr.ph.i10 ], [ %8, %while.body.i18.while.body.i18_crit_edge ]
  %add.i.i12 = add i32 %start.addr.023.i11, 1024
  %7 = tail call i32 @llvm.umin.i32(i32 %add.i.i12, i32 %and1.i5) #8
  %add3.i.i13 = add i32 %start.addr.023.i11, 4096
  %and.i.i14 = and i32 %add3.i.i13, -4096
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %and.i.i14) #8
  %call3.i15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %start.addr.023.i11) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %9) #8, !srcloc !331
  %sub.i16 = add i32 %8, -32
  %10 = tail call i32 @llvm.bswap.i32(i32 %sub.i16) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i8, i32 %10) #8, !srcloc !331
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call3.i15) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i9, i32 0) #8, !srcloc !331
  %cmp.i17 = icmp ult i32 %8, %and1.i5
  br i1 %cmp.i17, label %while.body.i18.while.body.i18_crit_edge, label %while.body.i18.if.end_crit_edge

while.body.i18.if.end_crit_edge:                  ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i18.while.body.i18_crit_edge:          ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i18

if.end:                                           ; preds = %while.body.i18.if.end_crit_edge, %if.else.if.end_crit_edge, %while.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_flush_all() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %add.ptr = getelementptr i8, ptr %0, i32 2044
  %1 = load i32, ptr @l2x0_way_mask, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !331
  %3 = load i32, ptr @l2x0_way_mask, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %and5.i.i = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not6.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not6.i.i, label %entry.__l2c_op_way.exit_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.__l2c_op_way.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and.i.i = and i32 %7, %3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__l2c_op_way.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c_op_way.exit_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

__l2c_op_way.exit:                                ; preds = %do.end.i.i.__l2c_op_way.exit_crit_edge, %entry.__l2c_op_way.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call) #8
  %add.ptr10 = getelementptr i8, ptr %0, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #8
  %add.ptr = getelementptr i8, ptr %0, i32 2044
  %1 = load i32, ptr @l2x0_way_mask, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !331
  %3 = load i32, ptr @l2x0_way_mask, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %and5.i.i = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not6.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not6.i.i, label %entry.__l2c_op_way.exit_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  br label %do.end.i.i

entry.__l2c_op_way.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !333
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %and.i.i = and i32 %7, %3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.__l2c_op_way.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i.__l2c_op_way.exit_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__l2c_op_way.exit

__l2c_op_way.exit:                                ; preds = %do.end.i.i.__l2c_op_way.exit_crit_edge, %entry.__l2c_op_way.exit_crit_edge
  %add.ptr1 = getelementptr i8, ptr %0, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #8, !srcloc !331
  %add.ptr.i = getelementptr i8, ptr %0, i32 256
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %__l2c_op_way.exit.l2c_write_sec.exit_crit_edge, label %if.end.i

__l2c_op_way.exit.l2c_write_sec.exit_crit_edge:   ; preds = %__l2c_op_way.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_write_sec.exit

if.end.i:                                         ; preds = %__l2c_op_way.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(i32 noundef 0, i32 noundef 256) #8
  br label %l2c_write_sec.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !331
  br label %l2c_write_sec.exit

l2c_write_sec.exit:                               ; preds = %if.else.i, %if.then1.i, %__l2c_op_way.exit.l2c_write_sec.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_cache_sync() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !331
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aurora_enable_no_outer(ptr noundef %base, i32 noundef %num_lock) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c2, 0", "=r"() #8, !srcloc !352
  %or = or i32 %0, 256
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c2, 0", "r"(i32 %or) #8, !srcloc !353
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  tail call void @l2c_enable(ptr noundef %base, i32 noundef %num_lock)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tauros3_save(ptr noundef %base) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @l2x0_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  store i32 %2, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %base, i32 2080
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !329
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 9), align 4
  %add.ptr2 = getelementptr i8, ptr %base, i32 3936
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !329
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  store i32 %6, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tauros3_configure(ptr noundef %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !329
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp.i.i = icmp eq i32 %2, %0
  br i1 %cmp.i.i, label %entry.l2c_configure.exit_crit_edge, label %if.end.i.i

entry.l2c_configure.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %l2c_configure.exit

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(i32 noundef %0, i32 noundef 260) #8
  br label %l2c_configure.exit

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #8, !srcloc !331
  br label %l2c_configure.exit

l2c_configure.exit:                               ; preds = %if.else.i.i, %if.then1.i.i, %entry.l2c_configure.exit_crit_edge
  %5 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 9), align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %base, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !331
  %7 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr1 = getelementptr i8, ptr %base, i32 3936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %8) #8, !srcloc !331
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !122, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !229, !231, !233, !234, !235, !236, !238, !240, !242, !244, !245, !246, !248, !250, !251, !252, !254, !256, !257, !258, !260, !262, !263, !264, !266, !268, !269, !270, !272, !274, !275, !276, !278, !280, !281, !282, !284, !286, !287, !288, !290, !292, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1785, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1786, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1791, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @l2x0_of_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @l2x0_of_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1794, i32 3}
!12 = !{ptr @l2x0_of_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @l2x0_of_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1798, i32 33}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1799, i32 3}
!18 = !{ptr @l2x0_of_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @l2x0_of_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1801, i32 31}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1802, i32 3}
!24 = !{ptr @l2x0_of_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @l2x0_of_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1805, i32 3}
!28 = !{ptr @l2x0_of_init._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @l2x0_of_init._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1807, i32 37}
!32 = !{ptr @l2x0_base, !33, !"l2x0_base", i1 false, i1 false}
!33 = !{!"../arch/arm/mm/cache-l2x0.c", i32 39, i32 22}
!34 = !{ptr @l2x0_saved_regs, !35, !"l2x0_saved_regs", i1 false, i1 false}
!35 = !{!"../arch/arm/mm/cache-l2x0.c", i32 46, i32 18}
!36 = !{ptr @cache_id_part_number_from_dt, !37, !"cache_id_part_number_from_dt", i1 false, i1 false}
!37 = !{!"../arch/arm/mm/cache-l2x0.c", i32 930, i32 12}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mm/cache-l2x0.c", i32 240, i32 10}
!40 = !{ptr @l2c210_data, !41, !"l2c210_data", i1 false, i1 false}
!41 = !{!"../arch/arm/mm/cache-l2x0.c", i32 239, i32 35}
!42 = !{ptr @l2x0_data, !43, !"l2x0_data", i1 false, i1 false}
!43 = !{!"../arch/arm/mm/cache-l2x0.c", i32 40, i32 36}
!44 = !{ptr @l2x0_way_mask, !45, !"l2x0_way_mask", i1 false, i1 false}
!45 = !{!"../arch/arm/mm/cache-l2x0.c", i32 42, i32 12}
!46 = !{ptr @sync_reg_offset, !47, !"sync_reg_offset", i1 false, i1 false}
!47 = !{!"../arch/arm/mm/cache-l2x0.c", i32 44, i32 22}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mm/cache-l2x0.c", i32 405, i32 10}
!50 = !{ptr @l2c220_data, !51, !"l2c220_data", i1 false, i1 false}
!51 = !{!"../arch/arm/mm/cache-l2x0.c", i32 404, i32 35}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mm/cache-l2x0.c", i32 41, i32 8}
!54 = !{ptr @l2x0_lock, !53, !"l2x0_lock", i1 false, i1 false}
!55 = !{ptr @l2x0_size, !56, !"l2x0_size", i1 false, i1 false}
!56 = !{!"../arch/arm/mm/cache-l2x0.c", i32 43, i32 12}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mm/cache-l2x0.c", i32 761, i32 10}
!59 = !{ptr @l2c310_init_fns, !60, !"l2c310_init_fns", i1 false, i1 false}
!60 = !{!"../arch/arm/mm/cache-l2x0.c", i32 760, i32 35}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mm/cache-l2x0.c", i32 616, i32 4}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @l2c310_enable._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @l2c310_enable._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mm/cache-l2x0.c", i32 618, i32 4}
!68 = !{ptr @l2c310_enable._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @l2c310_enable._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mm/cache-l2x0.c", i32 627, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @l2c310_enable.__UNIQUE_ID_ddebug231, !71, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mm/cache-l2x0.c", i32 630, i32 4}
!76 = !{ptr @l2c310_enable._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @l2c310_enable._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mm/cache-l2x0.c", i32 633, i32 4}
!80 = !{ptr @l2c310_enable._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @l2c310_enable._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mm/cache-l2x0.c", i32 637, i32 4}
!84 = !{ptr @l2c310_enable._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @l2c310_enable._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mm/cache-l2x0.c", i32 640, i32 3}
!88 = !{ptr @l2c310_enable._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @l2c310_enable._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mm/cache-l2x0.c", i32 659, i32 3}
!92 = !{ptr @l2c310_enable._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @l2c310_enable._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mm/cache-l2x0.c", i32 670, i32 3}
!99 = !{ptr @l2c310_enable._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @l2c310_enable._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mm/cache-l2x0.c", i32 677, i32 7}
!105 = distinct !{null, !106, !"l2x0_bresp_disable", i1 false, i1 false}
!106 = !{!"../arch/arm/mm/cache-l2x0.c", i32 48, i32 13}
!107 = distinct !{null, !108, !"l2x0_flz_disable", i1 false, i1 false}
!108 = !{!"../arch/arm/mm/cache-l2x0.c", i32 49, i32 13}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mm/cache-l2x0.c", i32 694, i32 17}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../arch/arm/mm/cache-l2x0.c", i32 701, i32 17}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../arch/arm/mm/cache-l2x0.c", i32 710, i32 18}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mm/cache-l2x0.c", i32 717, i32 17}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../arch/arm/mm/cache-l2x0.c", i32 721, i32 17}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mm/cache-l2x0.c", i32 726, i32 3}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @l2c310_fixup._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @l2c310_fixup._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mm/cache-l2x0.c", i32 728, i32 4}
!128 = !{ptr @l2c310_fixup._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @l2c310_fixup._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mm/cache-l2x0.c", i32 729, i32 3}
!132 = !{ptr @l2c310_fixup._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @l2c310_fixup._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../arch/arm/mm/cache-l2x0.c", i32 801, i32 3}
!136 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__l2c_init._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @__l2c_init._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../arch/arm/mm/cache-l2x0.c", i32 808, i32 3}
!141 = !{ptr @__l2c_init._entry.72, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @__l2c_init._entry_ptr.74, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../arch/arm/mm/cache-l2x0.c", i32 815, i32 4}
!145 = !{ptr @__l2c_init._entry.75, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @__l2c_init._entry_ptr.77, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../arch/arm/mm/cache-l2x0.c", i32 858, i32 3}
!149 = !{ptr @__l2c_init._entry.78, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @__l2c_init._entry_ptr.80, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.82, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/mm/cache-l2x0.c", i32 884, i32 2}
!153 = !{ptr @__l2c_init._entry.81, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @__l2c_init._entry_ptr.83, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../arch/arm/mm/cache-l2x0.c", i32 886, i32 2}
!157 = !{ptr @__l2c_init._entry.84, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @__l2c_init._entry_ptr.86, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @l2x0_ids, !160, !"l2x0_ids", i1 false, i1 false}
!160 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1748, i32 34}
!161 = !{ptr @of_l2c210_data, !162, !"of_l2c210_data", i1 false, i1 false}
!162 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1086, i32 35}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1036, i32 27}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1042, i32 33}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1051, i32 27}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1057, i32 32}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1060, i32 39}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1064, i32 32}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1074, i32 3}
!177 = !{ptr @.str.94, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @l2x0_of_parse._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @l2x0_of_parse._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.96, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1075, i32 3}
!182 = !{ptr @l2x0_of_parse._entry.95, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @l2x0_of_parse._entry_ptr.97, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../arch/arm/mm/cache-l2x0.c", i32 954, i32 27}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../arch/arm/mm/cache-l2x0.c", i32 955, i32 27}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../arch/arm/mm/cache-l2x0.c", i32 956, i32 27}
!190 = !{ptr @.str.101, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../arch/arm/mm/cache-l2x0.c", i32 957, i32 27}
!192 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../arch/arm/mm/cache-l2x0.c", i32 969, i32 4}
!194 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @l2x0_cache_size_of_parse._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @l2x0_cache_size_of_parse._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.105, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../arch/arm/mm/cache-l2x0.c", i32 977, i32 3}
!199 = !{ptr @l2x0_cache_size_of_parse._entry.104, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.106, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../arch/arm/mm/cache-l2x0.c", i32 994, i32 3}
!203 = !{ptr @l2x0_cache_size_of_parse._entry.107, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.109, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../arch/arm/mm/cache-l2x0.c", i32 998, i32 2}
!207 = !{ptr @l2x0_cache_size_of_parse._entry.110, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.112, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1000, i32 2}
!211 = !{ptr @l2x0_cache_size_of_parse._entry.113, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.115, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.117, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1001, i32 2}
!215 = !{ptr @l2x0_cache_size_of_parse._entry.116, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.118, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.120, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1003, i32 2}
!219 = !{ptr @l2x0_cache_size_of_parse._entry.119, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.121, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.123, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1011, i32 3}
!223 = !{ptr @l2x0_cache_size_of_parse._entry.122, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @l2x0_cache_size_of_parse._entry_ptr.124, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @of_l2c220_data, !226, !"of_l2c220_data", i1 false, i1 false}
!226 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1106, i32 35}
!227 = !{ptr @of_l2c310_data, !228, !"of_l2c310_data", i1 false, i1 false}
!228 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1301, i32 35}
!229 = !{ptr @.str.125, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1153, i32 33}
!231 = !{ptr @.str.126, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1175, i32 4}
!233 = !{ptr @.str.127, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @l2c310_of_parse._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @l2c310_of_parse._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.128, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1194, i32 32}
!238 = !{ptr @.str.129, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1197, i32 32}
!240 = !{ptr @.str.130, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1202, i32 33}
!242 = !{ptr @.str.132, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1209, i32 3}
!244 = !{ptr @l2c310_of_parse._entry.131, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @l2c310_of_parse._entry_ptr.133, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.134, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1212, i32 33}
!248 = !{ptr @.str.136, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1219, i32 3}
!250 = !{ptr @l2c310_of_parse._entry.135, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @l2c310_of_parse._entry_ptr.137, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.138, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1222, i32 33}
!254 = !{ptr @.str.140, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1229, i32 3}
!256 = !{ptr @l2c310_of_parse._entry.139, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @l2c310_of_parse._entry_ptr.141, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.142, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1232, i32 33}
!260 = !{ptr @.str.144, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1239, i32 3}
!262 = !{ptr @l2c310_of_parse._entry.143, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @l2c310_of_parse._entry_ptr.145, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.146, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1242, i32 33}
!266 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1247, i32 3}
!268 = !{ptr @l2c310_of_parse._entry.147, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @l2c310_of_parse._entry_ptr.149, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.150, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1250, i32 33}
!272 = !{ptr @.str.152, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1261, i32 3}
!274 = !{ptr @l2c310_of_parse._entry.151, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @l2c310_of_parse._entry_ptr.153, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.154, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1264, i32 33}
!278 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1275, i32 3}
!280 = !{ptr @l2c310_of_parse._entry.155, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @l2c310_of_parse._entry_ptr.157, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.158, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1283, i32 33}
!284 = !{ptr @.str.160, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1288, i32 3}
!286 = !{ptr @l2c310_of_parse._entry.159, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @l2c310_of_parse._entry_ptr.161, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.162, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1290, i32 33}
!290 = !{ptr @.str.164, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1295, i32 3}
!292 = !{ptr @l2c310_of_parse._entry.163, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @l2c310_of_parse._entry_ptr.165, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.166, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1695, i32 10}
!296 = !{ptr @of_bcm_l2x0_data, !297, !"of_bcm_l2x0_data", i1 false, i1 false}
!297 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1694, i32 35}
!298 = !{ptr @.str.167, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1522, i32 10}
!300 = !{ptr @of_aurora_with_outer_data, !301, !"of_aurora_with_outer_data", i1 false, i1 false}
!301 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1521, i32 35}
!302 = !{ptr @.str.168, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1493, i32 27}
!304 = !{ptr @.str.169, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1497, i32 45}
!306 = !{ptr @.str.170, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1504, i32 32}
!308 = !{ptr @l2_wt_override, !309, !"l2_wt_override", i1 false, i1 false}
!309 = !{!"../arch/arm/mm/cache-l2x0.c", i32 926, i32 12}
!310 = !{ptr @of_aurora_no_outer_data, !311, !"of_aurora_no_outer_data", i1 false, i1 false}
!311 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1542, i32 35}
!312 = !{ptr @.str.171, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1734, i32 10}
!314 = !{ptr @of_tauros3_data, !315, !"of_tauros3_data", i1 false, i1 false}
!315 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1733, i32 35}
!316 = !{ptr @.str.172, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1332, i32 10}
!318 = !{ptr @of_l2c310_coherent_data, !319, !"of_l2c310_coherent_data", i1 false, i1 false}
!319 = !{!"../arch/arm/mm/cache-l2x0.c", i32 1331, i32 35}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{i64 4855469}
!330 = !{i64 919271, i64 919332}
!331 = !{i64 4855051}
!332 = !{i64 2153992907}
!333 = !{i64 2153992749}
!334 = !{i64 922003}
!335 = !{!"branch_weights", i32 1, i32 2000}
!336 = !{i64 922288}
!337 = !{i64 2153998996, i64 2153999485, i64 2153999033, i64 2153999089, i64 2153999123, i64 2153999147, i64 2153999188, i64 2153999209, i64 2153999237, i64 2153999271}
!338 = !{i64 2153995988}
!339 = !{i64 2153977726}
!340 = !{i64 6482736}
!341 = !{i64 2148338406, i64 2148338411, i64 2148338424, i64 2148338468, i64 2148338502, i64 2148338523}
!342 = !{i64 6482870}
!343 = !{i64 2153968233}
!344 = !{!"auto-init"}
!345 = !{i32 0, i32 33}
!346 = !{i64 2154106171, i64 2154106661, i64 2154106208, i64 2154106264, i64 2154106298, i64 2154106322, i64 2154106363, i64 2154106384, i64 2154106412, i64 2154106446}
!347 = !{!"branch_weights", i32 2000, i32 1}
!348 = !{!"branch_weights", i32 4001, i32 1}
!349 = !{i64 2154107947, i64 2154108437, i64 2154107984, i64 2154108040, i64 2154108074, i64 2154108098, i64 2154108139, i64 2154108160, i64 2154108188, i64 2154108222}
!350 = !{i64 2154109723, i64 2154110213, i64 2154109760, i64 2154109816, i64 2154109850, i64 2154109874, i64 2154109915, i64 2154109936, i64 2154109964, i64 2154109998}
!351 = !{i64 2154103462}
!352 = !{i64 40612}
!353 = !{i64 40712}
!354 = !{i64 2154104609}
