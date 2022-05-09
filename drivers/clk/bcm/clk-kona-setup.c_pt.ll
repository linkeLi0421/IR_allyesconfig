; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-kona-setup.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-kona-setup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ccu_data = type { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [0 x %struct.kona_clk] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.43 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.43 = type { ptr }
%struct.peri_clk_data = type { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [0 x ptr] }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_div = type { %union.anon.44, i32 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@kona_dt_ccu_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: no valid CCU registers found for %pOFn\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kona_dt_ccu_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/bcm/clk-kona-setup.c\00", [63 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr = internal global ptr @kona_dt_ccu_setup._entry, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: address range too large for %pOFn\0A\00", [55 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.5 = internal global ptr @kona_dt_ccu_setup._entry.3, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: ccu data not valid for %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.8 = internal global ptr @kona_dt_ccu_setup._entry.6, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: unable to map CCU registers for %pOFn\0A\00", [51 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.11 = internal global ptr @kona_dt_ccu_setup._entry.9, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: error adding ccu %pOFn as provider (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.14 = internal global ptr @kona_dt_ccu_setup._entry.12, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Broadcom %pOFn initialization had errors\0A\00", [52 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.17 = internal global ptr @kona_dt_ccu_setup._entry.15, section ".printk_index", align 4
@kona_dt_ccu_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Broadcom %pOFn setup aborted\0A\00", [32 x i8] zeroinitializer }, align 32
@kona_dt_ccu_setup._entry_ptr.20 = internal global ptr @kona_dt_ccu_setup._entry.18, section ".printk_index", align 4
@ccu_data_offsets_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: bad policy enable offset for %s (%u > %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ccu_data_offsets_valid\00", [41 x i8] zeroinitializer }, align 32
@ccu_data_offsets_valid._entry_ptr = internal global ptr @ccu_data_offsets_valid._entry, section ".printk_index", align 4
@ccu_data_offsets_valid._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: bad policy control offset for %s (%u > %u)\0A\00", [46 x i8] zeroinitializer }, align 32
@ccu_data_offsets_valid._entry_ptr.25 = internal global ptr @ccu_data_offsets_valid._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"policy enable\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"policy control GO\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"policy control ATL\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"policy control AC\00", [46 x i8] zeroinitializer }, align 32
@bit_posn_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: bad %s bit for %s (%u > %u)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bit_posn_valid\00", [17 x i8] zeroinitializer }, align 32
@bit_posn_valid._entry_ptr = internal global ptr @bit_posn_valid._entry, section ".printk_index", align 4
@kona_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: clock type %d invalid for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kona_clk_setup\00", [17 x i8] zeroinitializer }, align 32
@kona_clk_setup._entry_ptr = internal global ptr @kona_clk_setup._entry, section ".printk_index", align 4
@kona_clk_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: clock data invalid for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@kona_clk_setup._entry_ptr.36 = internal global ptr @kona_clk_setup._entry.34, section ".printk_index", align 4
@kona_clk_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: error registering clock %s (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@kona_clk_setup._entry_ptr.39 = internal global ptr @kona_clk_setup._entry.37, section ".printk_index", align 4
@clk_sel_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: error processing parent clocks for %s (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sel_setup\00", [18 x i8] zeroinitializer }, align 32
@clk_sel_setup._entry_ptr = internal global ptr @clk_sel_setup._entry, section ".printk_index", align 4
@parent_process.parent_names = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parent_process.parent_sel = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parent_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: too many parents (%u > %u)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parent_process\00", [17 x i8] zeroinitializer }, align 32
@parent_process._entry_ptr = internal global ptr @parent_process._entry, section ".printk_index", align 4
@kona_clk_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: unrecognized clock type (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kona_clk_valid\00", [17 x i8] zeroinitializer }, align 32
@kona_clk_valid._entry_ptr = internal global ptr @kona_clk_valid._entry, section ".printk_index", align 4
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selector\00", [23 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: multiple parents but no selector for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"peri_clk_data_valid\00", [44 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry_ptr = internal global ptr @peri_clk_data_valid._entry, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"divider\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pre-divider\00", [20 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.49, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: pre-divider but no divider for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry_ptr.54 = internal global ptr @peri_clk_data_valid._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: ignoring trigger for %s (not needed)\0A\00", [52 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry_ptr.59 = internal global ptr @peri_clk_data_valid._entry.57, section ".printk_index", align 4
@peri_clk_data_valid._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.49, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: pre-trigger but no trigger for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry_ptr.62 = internal global ptr @peri_clk_data_valid._entry.60, section ".printk_index", align 4
@peri_clk_data_valid._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.49, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: required trigger missing for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@peri_clk_data_valid._entry_ptr.65 = internal global ptr @peri_clk_data_valid._entry.63, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: bad policy offset for %s (%u > %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"peri_clk_data_offsets_valid\00", [36 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr = internal global ptr @peri_clk_data_offsets_valid._entry, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: bad gate offset for %s (%u > %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.70 = internal global ptr @peri_clk_data_offsets_valid._entry.68, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: bad hysteresis offset for %s (%u > %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.73 = internal global ptr @peri_clk_data_offsets_valid._entry.71, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: hysteresis but no gate for %s\0A\00", [59 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.76 = internal global ptr @peri_clk_data_offsets_valid._entry.74, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: bad divider offset for %s (%u > %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.79 = internal global ptr @peri_clk_data_offsets_valid._entry.77, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: bad pre-divider offset for %s (%u > %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.82 = internal global ptr @peri_clk_data_offsets_valid._entry.80, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.67, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: bad selector offset for %s (%u > %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.85 = internal global ptr @peri_clk_data_offsets_valid._entry.83, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.67, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: bad trigger offset for %s (%u > %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.88 = internal global ptr @peri_clk_data_offsets_valid._entry.86, section ".printk_index", align 4
@peri_clk_data_offsets_valid._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.67, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: bad pre-trigger offset for %s (%u > %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@peri_clk_data_offsets_valid._entry_ptr.91 = internal global ptr @peri_clk_data_offsets_valid._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gate status\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gate enable\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gate hw/sw select\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hysteresis enable\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hysteresis value\00", [47 x i8] zeroinitializer }, align 32
@sel_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: bad selector for %s (%u needs > %u bits)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sel_valid\00", [22 x i8] zeroinitializer }, align 32
@sel_valid._entry_ptr = internal global ptr @sel_valid._entry, section ".printk_index", align 4
@sel_valid._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: ignoring selector for %s (no parents)\0A\00", [51 x i8] zeroinitializer }, align 32
@sel_valid._entry_ptr.102 = internal global ptr @sel_valid._entry.100, section ".printk_index", align 4
@bitfield_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: bad %s field width 0 for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bitfield_valid\00", [17 x i8] zeroinitializer }, align 32
@bitfield_valid._entry_ptr = internal global ptr @bitfield_valid._entry, section ".printk_index", align 4
@bitfield_valid._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: bad %s for %s (%u + %u > %u)\0A\00", [60 x i8] zeroinitializer }, align 32
@bitfield_valid._entry_ptr.107 = internal global ptr @bitfield_valid._entry.105, section ".printk_index", align 4
@div_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: bad %s fixed value 0 for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"div_valid\00", [22 x i8] zeroinitializer }, align 32
@div_valid._entry_ptr = internal global ptr @div_valid._entry, section ".printk_index", align 4
@div_valid._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: bad %s fraction width for %s (%u > %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@div_valid._entry_ptr.112 = internal global ptr @div_valid._entry.110, section ".printk_index", align 4
@of_clk_kona_onecell_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_clk_kona_onecell_get\00", [40 x i8] zeroinitializer }, align 32
@of_clk_kona_onecell_get._entry_ptr = internal global ptr @of_clk_kona_onecell_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 811, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 818, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 826, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 832, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 851, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 857, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 862, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 35, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 41, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 223, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 227, i32 39 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 230, i32 40 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 233, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 185, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 719, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 726, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 735, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 634, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [13 x i8] c"parent_names\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 538, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant [11 x i8] c"parent_sel\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 539, i32 14 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 568, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 500, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 439, i32 23 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 443, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 452, i32 23 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 456, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 459, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 466, i32 25 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 475, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 480, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 484, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 101, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 111, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 118, i32 5 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 125, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 132, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 141, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 151, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 160, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 169, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 241, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 256, i32 40 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 260, i32 37 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 265, i32 7 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 278, i32 36 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 281, i32 37 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 312, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 319, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 205, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 210, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 341, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 353, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.425 = private constant [36 x i8] c"../drivers/clk/bcm/clk-kona-setup.c\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 790, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @bit_posn_valid._entry, ptr @bit_posn_valid._entry_ptr, ptr @bitfield_valid._entry, ptr @bitfield_valid._entry.105, ptr @bitfield_valid._entry_ptr, ptr @bitfield_valid._entry_ptr.107, ptr @ccu_data_offsets_valid._entry, ptr @ccu_data_offsets_valid._entry.23, ptr @ccu_data_offsets_valid._entry_ptr, ptr @ccu_data_offsets_valid._entry_ptr.25, ptr @clk_sel_setup._entry, ptr @clk_sel_setup._entry_ptr, ptr @div_valid._entry, ptr @div_valid._entry.110, ptr @div_valid._entry_ptr, ptr @div_valid._entry_ptr.112, ptr @kona_clk_setup._entry, ptr @kona_clk_setup._entry.34, ptr @kona_clk_setup._entry.37, ptr @kona_clk_setup._entry_ptr, ptr @kona_clk_setup._entry_ptr.36, ptr @kona_clk_setup._entry_ptr.39, ptr @kona_clk_valid._entry, ptr @kona_clk_valid._entry_ptr, ptr @kona_dt_ccu_setup._entry, ptr @kona_dt_ccu_setup._entry.12, ptr @kona_dt_ccu_setup._entry.15, ptr @kona_dt_ccu_setup._entry.18, ptr @kona_dt_ccu_setup._entry.3, ptr @kona_dt_ccu_setup._entry.6, ptr @kona_dt_ccu_setup._entry.9, ptr @kona_dt_ccu_setup._entry_ptr, ptr @kona_dt_ccu_setup._entry_ptr.11, ptr @kona_dt_ccu_setup._entry_ptr.14, ptr @kona_dt_ccu_setup._entry_ptr.17, ptr @kona_dt_ccu_setup._entry_ptr.20, ptr @kona_dt_ccu_setup._entry_ptr.5, ptr @kona_dt_ccu_setup._entry_ptr.8, ptr @of_clk_kona_onecell_get._entry, ptr @of_clk_kona_onecell_get._entry_ptr, ptr @parent_process._entry, ptr @parent_process._entry_ptr, ptr @peri_clk_data_offsets_valid._entry, ptr @peri_clk_data_offsets_valid._entry.68, ptr @peri_clk_data_offsets_valid._entry.71, ptr @peri_clk_data_offsets_valid._entry.74, ptr @peri_clk_data_offsets_valid._entry.77, ptr @peri_clk_data_offsets_valid._entry.80, ptr @peri_clk_data_offsets_valid._entry.83, ptr @peri_clk_data_offsets_valid._entry.86, ptr @peri_clk_data_offsets_valid._entry.89, ptr @peri_clk_data_offsets_valid._entry_ptr, ptr @peri_clk_data_offsets_valid._entry_ptr.70, ptr @peri_clk_data_offsets_valid._entry_ptr.73, ptr @peri_clk_data_offsets_valid._entry_ptr.76, ptr @peri_clk_data_offsets_valid._entry_ptr.79, ptr @peri_clk_data_offsets_valid._entry_ptr.82, ptr @peri_clk_data_offsets_valid._entry_ptr.85, ptr @peri_clk_data_offsets_valid._entry_ptr.88, ptr @peri_clk_data_offsets_valid._entry_ptr.91, ptr @peri_clk_data_valid._entry, ptr @peri_clk_data_valid._entry.52, ptr @peri_clk_data_valid._entry.57, ptr @peri_clk_data_valid._entry.60, ptr @peri_clk_data_valid._entry.63, ptr @peri_clk_data_valid._entry_ptr, ptr @peri_clk_data_valid._entry_ptr.54, ptr @peri_clk_data_valid._entry_ptr.59, ptr @peri_clk_data_valid._entry_ptr.62, ptr @peri_clk_data_valid._entry_ptr.65, ptr @sel_valid._entry, ptr @sel_valid._entry.100, ptr @sel_valid._entry_ptr, ptr @sel_valid._entry_ptr.102, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @parent_process.parent_names, ptr @parent_process.parent_sel, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_dt_ccu_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_data_offsets_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_data_offsets_valid._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bit_posn_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_clk_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_clk_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sel_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_process.parent_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_process.parent_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parent_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_clk_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_valid._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_valid._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_valid._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_valid._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clk_data_offsets_valid._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_valid._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitfield_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitfield_valid._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_valid._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_kona_onecell_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kona_dt_ccu_setup(ptr noundef %ccu, ptr noundef %node) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 0, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %node) #10
  br label %out_err

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  %range10 = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 7
  %5 = ptrtoint ptr %range10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %range10, align 4
  %policy.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3
  %sub.i.i = add i32 %add.i, -4
  %and.i.i = and i32 %sub.i.i, -4
  %6 = ptrtoint ptr %policy.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %policy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i.i, label %if.end.if.end18_crit_edge, label %if.then.i.i

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and.i.i)
  %cmp3.i.i = icmp ugt i32 %7, %and.i.i
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %name.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %8 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i.i, align 4
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %9, i32 noundef %7, i32 noundef %and.i.i) #10
  br label %do.end15

if.end.i.i:                                       ; preds = %if.then.i.i
  %control.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i.i)
  %cmp8.i.i = icmp ugt i32 %11, %and.i.i
  %name14.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 6
  %12 = ptrtoint ptr %name14.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name14.i.i, align 4
  br i1 %cmp8.i.i, label %do.end12.i.i, label %if.then1.i

do.end12.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, ptr noundef %13, i32 noundef %11, i32 noundef %and.i.i) #10
  br label %do.end15

if.then1.i:                                       ; preds = %if.end.i.i
  %bit.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %15)
  %cmp.i.i.i = icmp ugt i32 %15, 31
  br i1 %cmp.i.i.i, label %bit_posn_valid.exit.i.i, label %if.end.i9.i

bit_posn_valid.exit.i.i:                          ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, ptr noundef %13, i32 noundef %15, i32 noundef 31) #10
  br label %do.end15

if.end.i9.i:                                      ; preds = %if.then1.i
  %go_bit.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %go_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %go_bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %17)
  %cmp.i19.i.i = icmp ugt i32 %17, 31
  br i1 %cmp.i19.i.i, label %bit_posn_valid.exit22.i.i, label %if.end5.i.i

bit_posn_valid.exit22.i.i:                        ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27, ptr noundef %13, i32 noundef %17, i32 noundef 31) #10
  br label %do.end15

if.end5.i.i:                                      ; preds = %if.end.i9.i
  %atl_bit.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3, i32 1, i32 2
  %18 = ptrtoint ptr %atl_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %atl_bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %19)
  %cmp.i23.i.i = icmp ugt i32 %19, 31
  br i1 %cmp.i23.i.i, label %bit_posn_valid.exit26.i.i, label %if.end8.i.i

bit_posn_valid.exit26.i.i:                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef %13, i32 noundef %19, i32 noundef 31) #10
  br label %do.end15

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %ac_bit.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 3, i32 1, i32 3
  %20 = ptrtoint ptr %ac_bit.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ac_bit.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %21)
  %cmp.i27.i.i = icmp ugt i32 %21, 31
  br i1 %cmp.i27.i.i, label %ccu_policy_valid.exit.i, label %if.end8.i.i.if.end18_crit_edge

if.end8.i.i.if.end18_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

ccu_policy_valid.exit.i:                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef %13, i32 noundef %21, i32 noundef 31) #10
  br label %do.end15

do.end15:                                         ; preds = %ccu_policy_valid.exit.i, %bit_posn_valid.exit26.i.i, %bit_posn_valid.exit22.i.i, %bit_posn_valid.exit.i.i, %do.end12.i.i, %do.end.i.i
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %node) #10
  br label %out_err

if.end18:                                         ; preds = %if.end8.i.i.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %22 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %res, align 4
  %24 = ptrtoint ptr %range10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %range10, align 4
  %call20 = call ptr @ioremap(i32 noundef %23, i32 noundef %25) #7
  %26 = ptrtoint ptr %ccu to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call20, ptr %ccu, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef %node) #10
  br label %out_err

if.end29:                                         ; preds = %if.end18
  %call30 = call ptr @of_node_get(ptr noundef %node) #7
  %node31 = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 4
  %27 = ptrtoint ptr %node31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call30, ptr %node31, align 4
  %clk_num = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 5
  %28 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3295.not = icmp eq i32 %29, 0
  br i1 %cmp3295.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %ccu33 = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 2
  %30 = ptrtoint ptr %ccu33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ccu33, align 4
  %tobool34.not = icmp eq ptr %31, null
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %if.end36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096
  %init_data1.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 1
  %type.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 3
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cond.i = icmp eq i32 %33, 3
  br i1 %cond.i, label %sw.bb.i, label %do.end.i

sw.bb.i:                                          ; preds = %if.end36
  %u.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 4
  %34 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %u.i, align 4
  %flags.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 1, i32 6
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %flags.i.i, align 4
  %clocks.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %35, i32 0, i32 8
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i, %sw.bb.i
  %clock.0.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i ], [ %clocks.i.i, %sw.bb.i ]
  %bad_count.0.i.i.i.i = phi i32 [ %bad_count.1.i.i.i.i, %for.inc.i.i.i.i ], [ 0, %sw.bb.i ]
  %37 = ptrtoint ptr %clock.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clock.0.i.i.i.i, align 4
  %magicptr.i.i.i.i = ptrtoint ptr %38 to i32
  %39 = zext i32 %magicptr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i.i.i.i, label %for.cond.i.i.i.i.for.inc.i.i.i.i_crit_edge [
    i32 0, label %for.end.i.i.i.i
    i32 -1, label %if.then2.i.i.i.i
  ]

for.cond.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i.i.i = add i32 %bad_count.0.i.i.i.i, 1
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i, %for.cond.i.i.i.i.for.inc.i.i.i.i_crit_edge
  %bad_count.1.i.i.i.i = phi i32 [ %inc.i.i.i.i, %if.then2.i.i.i.i ], [ %bad_count.0.i.i.i.i, %for.cond.i.i.i.i.for.inc.i.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i.i = getelementptr ptr, ptr %clock.0.i.i.i.i, i32 1
  br label %for.cond.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.cond.i.i.i.i
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %clock.0.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %clocks.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = ashr i32 %sub.ptr.sub.i.i.i.i, 2
  %sub.i.i.i.i = sub i32 %sub.ptr.div.i.i.i.i, %bad_count.0.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i.i, i32 %bad_count.0.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %sub.ptr.div.i.i.i.i, %bad_count.0.i.i.i.i
  br i1 %tobool4.not.i.i.i.i, label %for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge, label %if.end6.i.i.i.i

for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %peri_clk_setup.exit.thread.i

if.end6.i.i.i.i:                                  ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %sub.i.i.i.i)
  %cmp7.i.i.i.i = icmp ugt i32 %sub.i.i.i.i, 255
  br i1 %cmp7.i.i.i.i, label %do.end.i.i.i.i, label %if.end10.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %sub.i.i.i.i, i32 noundef 255) #10
  br label %peri_clk_setup.exit.i

if.end10.i.i.i.i:                                 ; preds = %if.end6.i.i.i.i
  %40 = shl nuw nsw i32 %sub.i.i.i.i, 2
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3264) #11
  store ptr %call8.i.i.i.i.i, ptr @parent_process.parent_names, align 4
  %tobool12.not106.i.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool12.not106.i.i.i.i, label %if.end10.i.i.i.i.peri_clk_setup.exit.i_crit_edge, label %if.end7.i92.i.i.i.i

if.end10.i.i.i.i.peri_clk_setup.exit.i_crit_edge: ; preds = %if.end10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %peri_clk_setup.exit.i

if.end7.i92.i.i.i.i:                              ; preds = %if.end10.i.i.i.i
  %call8.i91.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3264) #11
  store ptr %call8.i91.i.i.i.i, ptr @parent_process.parent_sel, align 4
  %tobool17.not.i.i.i.i = icmp eq ptr %call8.i91.i.i.i.i, null
  br i1 %tobool17.not.i.i.i.i, label %if.then18.i.i.i.i, label %for.cond21.preheader.i.i.i.i

for.cond21.preheader.i.i.i.i:                     ; preds = %if.end7.i92.i.i.i.i
  %cmp22101.not.i.i.i.i = icmp eq ptr %clock.0.i.i.i.i, %clocks.i.i
  br i1 %cmp22101.not.i.i.i.i, label %for.cond21.preheader.i.i.i.i.parent_process.exit.i.i.i_crit_edge, label %for.body23.preheader.i.i.i.i

for.cond21.preheader.i.i.i.i.parent_process.exit.i.i.i_crit_edge: ; preds = %for.cond21.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parent_process.exit.i.i.i

for.body23.preheader.i.i.i.i:                     ; preds = %for.cond21.preheader.i.i.i.i
  %umax.i.i.i.i = call i32 @llvm.umax.i32(i32 %sub.ptr.div.i.i.i.i, i32 1) #7
  br label %for.body23.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %if.end7.i92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load ptr, ptr @parent_process.parent_names, align 4
  call void @kfree(ptr noundef %41) #7
  br label %peri_clk_setup.exit.i

for.body23.i.i.i.i:                               ; preds = %for.inc31.i.i.i.i.for.body23.i.i.i.i_crit_edge, %for.body23.preheader.i.i.i.i
  %j.0104.i.i.i.i = phi i32 [ %j.1.i.i.i.i, %for.inc31.i.i.i.i.for.body23.i.i.i.i_crit_edge ], [ 0, %for.body23.preheader.i.i.i.i ]
  %i.0102.i.i.i.i = phi i32 [ %inc32.i.i.i.i, %for.inc31.i.i.i.i.for.body23.i.i.i.i_crit_edge ], [ 0, %for.body23.preheader.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %clocks.i.i, i32 %i.0102.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %cmp24.not.i.i.i.i = icmp eq ptr %43, inttoptr (i32 -1 to ptr)
  br i1 %cmp24.not.i.i.i.i, label %for.body23.i.i.i.i.for.inc31.i.i.i.i_crit_edge, label %if.then25.i.i.i.i

for.body23.i.i.i.i.for.inc31.i.i.i.i_crit_edge:   ; preds = %for.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.i.i.i

if.then25.i.i.i.i:                                ; preds = %for.body23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = load ptr, ptr @parent_process.parent_names, align 4
  %arrayidx27.i.i.i.i = getelementptr ptr, ptr %44, i32 %j.0104.i.i.i.i
  %45 = ptrtoint ptr %arrayidx27.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %arrayidx27.i.i.i.i, align 4
  %arrayidx28.i.i.i.i = getelementptr i32, ptr %call8.i91.i.i.i.i, i32 %j.0104.i.i.i.i
  %46 = ptrtoint ptr %arrayidx28.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0102.i.i.i.i, ptr %arrayidx28.i.i.i.i, align 4
  %inc29.i.i.i.i = add i32 %j.0104.i.i.i.i, 1
  br label %for.inc31.i.i.i.i

for.inc31.i.i.i.i:                                ; preds = %if.then25.i.i.i.i, %for.body23.i.i.i.i.for.inc31.i.i.i.i_crit_edge
  %j.1.i.i.i.i = phi i32 [ %inc29.i.i.i.i, %if.then25.i.i.i.i ], [ %j.0104.i.i.i.i, %for.body23.i.i.i.i.for.inc31.i.i.i.i_crit_edge ]
  %inc32.i.i.i.i = add nuw i32 %i.0102.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc32.i.i.i.i, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc31.i.i.i.i.parent_process.exit.i.i.i_crit_edge, label %for.inc31.i.i.i.i.for.body23.i.i.i.i_crit_edge

for.inc31.i.i.i.i.for.body23.i.i.i.i_crit_edge:   ; preds = %for.inc31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23.i.i.i.i

for.inc31.i.i.i.i.parent_process.exit.i.i.i_crit_edge: ; preds = %for.inc31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parent_process.exit.i.i.i

parent_process.exit.i.i.i:                        ; preds = %for.inc31.i.i.i.i.parent_process.exit.i.i.i_crit_edge, %for.cond21.preheader.i.i.i.i.parent_process.exit.i.i.i_crit_edge
  %47 = load ptr, ptr @parent_process.parent_names, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call8.i91.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %parent_process.exit.i.i.i.peri_clk_setup.exit.i_crit_edge, label %parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge

parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge: ; preds = %parent_process.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %peri_clk_setup.exit.thread.i

parent_process.exit.i.i.i.peri_clk_setup.exit.i_crit_edge: ; preds = %parent_process.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %peri_clk_setup.exit.i

peri_clk_setup.exit.thread.i:                     ; preds = %parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge, %for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge
  %retval.0.i30.i.i.i = phi ptr [ %call8.i91.i.i.i.i, %parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ], [ null, %for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ]
  %parent_count.029.i.i.i = phi i32 [ %sub.i.i.i.i, %parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ], [ 0, %for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ]
  %parent_names.028.i.i.i = phi ptr [ %47, %parent_process.exit.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ], [ null, %for.end.i.i.i.i.peri_clk_setup.exit.thread.i_crit_edge ]
  %parent_names4.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 1, i32 2
  %48 = ptrtoint ptr %parent_names4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %parent_names.028.i.i.i, ptr %parent_names4.i.i.i, align 4
  %conv.i.i.i = trunc i32 %parent_count.029.i.i.i to i8
  %num_parents.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.096, i32 1, i32 5
  %49 = ptrtoint ptr %num_parents.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i.i, ptr %num_parents.i.i.i, align 4
  %parent_count5.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %35, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %parent_count5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %parent_count.029.i.i.i, ptr %parent_count5.i.i.i, align 4
  %parent_sel6.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %35, i32 0, i32 7, i32 4
  %51 = ptrtoint ptr %parent_sel6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i30.i.i.i, ptr %parent_sel6.i.i.i, align 4
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cond.i.i = icmp eq i32 %53, 3
  br i1 %cond.i.i, label %do.end7.i.i.i.i, label %do.end.i.i91

peri_clk_setup.exit.i:                            ; preds = %parent_process.exit.i.i.i.peri_clk_setup.exit.i_crit_edge, %if.then18.i.i.i.i, %if.end10.i.i.i.i.peri_clk_setup.exit.i_crit_edge, %do.end.i.i.i.i
  %retval.0.i21.i.i.i = phi ptr [ %call8.i91.i.i.i.i, %parent_process.exit.i.i.i.peri_clk_setup.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.i.i.i.i.peri_clk_setup.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then18.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %do.end.i.i.i.i ]
  %54 = ptrtoint ptr %retval.0.i21.i.i.i to i32
  %55 = ptrtoint ptr %init_data1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_data1.i, align 4
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef %56, i32 noundef %54) #10
  br label %for.inc

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %init_data1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_data1.i, align 4
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %33, ptr noundef %58) #10
  br label %for.inc

do.end7.i.i.i.i:                                  ; preds = %peri_clk_setup.exit.thread.i
  %59 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %u.i, align 4
  %61 = ptrtoint ptr %init_data1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_data1.i, align 4
  %63 = ptrtoint ptr %ccu33 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ccu33, align 4
  %range9.i.i.i.i = getelementptr inbounds %struct.ccu_data, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %range9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %range9.i.i.i.i, align 4
  %sub.i.i.i1.i = add i32 %66, -4
  %and.i.i.i.i = and i32 %sub.i.i.i1.i, -4
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp11.not.i.i.i.i = icmp ne i32 %68, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %and.i.i.i.i)
  %cmp14.i.i.i.i = icmp ugt i32 %68, %and.i.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp11.not.i.i.i.i, i1 %cmp14.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %do.end18.i.i.i.i, label %if.end21.i.i.i.i

do.end18.i.i.i.i:                                 ; preds = %do.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %68, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end21.i.i.i.i:                                 ; preds = %do.end7.i.i.i.i
  %hyst23.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 2
  %flags.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i.i.i, align 4
  %and24.i.i.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i.i.i)
  %tobool25.not.i.i.i.i = icmp eq i32 %and24.i.i.i.i, 0
  br i1 %tobool25.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then26.i.i.i.i

if.then26.i.i.i.i:                                ; preds = %if.end21.i.i.i.i
  %gate22.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 1
  %71 = ptrtoint ptr %gate22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gate22.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %and.i.i.i.i)
  %cmp28.i.i.i.i = icmp ugt i32 %72, %and.i.i.i.i
  br i1 %cmp28.i.i.i.i, label %do.end32.i.i.i.i, label %if.end36.i.i.i.i

do.end32.i.i.i.i:                                 ; preds = %if.then26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %72, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end36.i.i.i.i:                                 ; preds = %if.then26.i.i.i.i
  %73 = ptrtoint ptr %hyst23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hyst23.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp38.not.i.i.i.i = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %and.i.i.i.i)
  %cmp41.i.i.i.i = icmp ugt i32 %74, %and.i.i.i.i
  %or.cond210.i.i.i.i = select i1 %cmp38.not.i.i.i.i, i1 %cmp41.i.i.i.i, i1 false
  br i1 %or.cond210.i.i.i.i, label %do.end45.i.i.i.i, label %if.end36.i.i.i.i.if.end60.i.i.i.i_crit_edge

if.end36.i.i.i.i.if.end60.i.i.i.i_crit_edge:      ; preds = %if.end36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i.i.i

do.end45.i.i.i.i:                                 ; preds = %if.end36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %74, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.else.i.i.i.i:                                  ; preds = %if.end21.i.i.i.i
  %75 = ptrtoint ptr %hyst23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hyst23.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp52.not.i.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp52.not.i.i.i.i, label %if.else.i.i.i.i.if.end60.i.i.i.i_crit_edge, label %do.end56.i.i.i.i

if.else.i.i.i.i.if.end60.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i.i.i.i

do.end56.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call58.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.67, ptr noundef %62) #10
  br label %do.end8.i

if.end60.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.if.end60.i.i.i.i_crit_edge, %if.end36.i.i.i.i.if.end60.i.i.i.i_crit_edge
  %flags62.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 6, i32 1
  %77 = ptrtoint ptr %flags62.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags62.i.i.i.i, align 8
  %and63.i.i.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i.i.i.i)
  %tobool64.not.i.i.i.i = icmp eq i32 %and63.i.i.i.i, 0
  br i1 %tobool64.not.i.i.i.i, label %if.end60.i.i.i.i.if.end78.i.i.i.i_crit_edge, label %if.then65.i.i.i.i

if.end60.i.i.i.i.if.end78.i.i.i.i_crit_edge:      ; preds = %if.end60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i.i.i.i

if.then65.i.i.i.i:                                ; preds = %if.end60.i.i.i.i
  %div61.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 6
  %79 = ptrtoint ptr %div61.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %div61.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %and.i.i.i.i)
  %cmp68.i.i.i.i = icmp ugt i32 %80, %and.i.i.i.i
  br i1 %cmp68.i.i.i.i, label %do.end72.i.i.i.i, label %if.then65.i.i.i.i.if.end78.i.i.i.i_crit_edge

if.then65.i.i.i.i.if.end78.i.i.i.i_crit_edge:     ; preds = %if.then65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i.i.i.i

do.end72.i.i.i.i:                                 ; preds = %if.then65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call76.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %80, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end78.i.i.i.i:                                 ; preds = %if.then65.i.i.i.i.if.end78.i.i.i.i_crit_edge, %if.end60.i.i.i.i.if.end78.i.i.i.i_crit_edge
  %flags79.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %flags79.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags79.i.i.i.i, align 8
  %and80.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i.i.i.i)
  %tobool81.not.i.i.i.i = icmp eq i32 %and80.i.i.i.i, 0
  br i1 %tobool81.not.i.i.i.i, label %if.end78.i.i.i.i.if.end95.i.i.i.i_crit_edge, label %if.then82.i.i.i.i

if.end78.i.i.i.i.if.end95.i.i.i.i_crit_edge:      ; preds = %if.end78.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i.i.i.i

if.then82.i.i.i.i:                                ; preds = %if.end78.i.i.i.i
  %pre_div.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 4
  %83 = ptrtoint ptr %pre_div.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pre_div.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %and.i.i.i.i)
  %cmp85.i.i.i.i = icmp ugt i32 %84, %and.i.i.i.i
  br i1 %cmp85.i.i.i.i, label %do.end89.i.i.i.i, label %if.then82.i.i.i.i.if.end95.i.i.i.i_crit_edge

if.then82.i.i.i.i.if.end95.i.i.i.i_crit_edge:     ; preds = %if.then82.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i.i.i.i

do.end89.i.i.i.i:                                 ; preds = %if.then82.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call93.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %84, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end95.i.i.i.i:                                 ; preds = %if.then82.i.i.i.i.if.end95.i.i.i.i_crit_edge, %if.end78.i.i.i.i.if.end95.i.i.i.i_crit_edge
  %width.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 2
  %85 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %width.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp97.not.i.i.i.i = icmp eq i32 %86, 0
  br i1 %cmp97.not.i.i.i.i, label %if.end95.i.i.i.i.if.end109.i.i.i.i_crit_edge, label %if.then98.i.i.i.i

if.end95.i.i.i.i.if.end109.i.i.i.i_crit_edge:     ; preds = %if.end95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i.i.i.i

if.then98.i.i.i.i:                                ; preds = %if.end95.i.i.i.i
  %sel96.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7
  %87 = ptrtoint ptr %sel96.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sel96.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %and.i.i.i.i)
  %cmp100.i.i.i.i = icmp ugt i32 %88, %and.i.i.i.i
  br i1 %cmp100.i.i.i.i, label %do.end104.i.i.i.i, label %if.then98.i.i.i.i.if.end109.i.i.i.i_crit_edge

if.then98.i.i.i.i.if.end109.i.i.i.i_crit_edge:    ; preds = %if.then98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i.i.i.i

do.end104.i.i.i.i:                                ; preds = %if.then98.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call107.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %88, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end109.i.i.i.i:                                ; preds = %if.then98.i.i.i.i.if.end109.i.i.i.i_crit_edge, %if.end95.i.i.i.i.if.end109.i.i.i.i_crit_edge
  %flags111.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 5, i32 2
  %89 = ptrtoint ptr %flags111.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags111.i.i.i.i, align 4
  %and112.i.i.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i.i.i)
  %tobool113.not.i.i.i.i = icmp eq i32 %and112.i.i.i.i, 0
  br i1 %tobool113.not.i.i.i.i, label %if.end109.i.i.i.i.if.end125.i.i.i.i_crit_edge, label %if.then114.i.i.i.i

if.end109.i.i.i.i.if.end125.i.i.i.i_crit_edge:    ; preds = %if.end109.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i.i.i.i

if.then114.i.i.i.i:                               ; preds = %if.end109.i.i.i.i
  %trig110.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 5
  %91 = ptrtoint ptr %trig110.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %trig110.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %and.i.i.i.i)
  %cmp116.i.i.i.i = icmp ugt i32 %92, %and.i.i.i.i
  br i1 %cmp116.i.i.i.i, label %do.end120.i.i.i.i, label %if.then114.i.i.i.i.if.end125.i.i.i.i_crit_edge

if.then114.i.i.i.i.if.end125.i.i.i.i_crit_edge:   ; preds = %if.then114.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i.i.i.i

do.end120.i.i.i.i:                                ; preds = %if.then114.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call123.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %92, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end125.i.i.i.i:                                ; preds = %if.then114.i.i.i.i.if.end125.i.i.i.i_crit_edge, %if.end109.i.i.i.i.if.end125.i.i.i.i_crit_edge
  %flags126.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 3, i32 2
  %93 = ptrtoint ptr %flags126.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags126.i.i.i.i, align 4
  %and127.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i.i.i)
  %tobool128.not.i.i.i.i = icmp eq i32 %and127.i.i.i.i, 0
  br i1 %tobool128.not.i.i.i.i, label %if.end125.i.i.i.i.if.end9.i.i.i_crit_edge, label %if.then129.i.i.i.i

if.end125.i.i.i.i.if.end9.i.i.i_crit_edge:        ; preds = %if.end125.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i.i

if.then129.i.i.i.i:                               ; preds = %if.end125.i.i.i.i
  %pre_trig.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 3
  %95 = ptrtoint ptr %pre_trig.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pre_trig.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %and.i.i.i.i)
  %cmp131.i.i.i.i = icmp ugt i32 %96, %and.i.i.i.i
  br i1 %cmp131.i.i.i.i, label %do.end135.i.i.i.i, label %if.then129.i.i.i.i.if.end9.i.i.i_crit_edge

if.then129.i.i.i.i.if.end9.i.i.i_crit_edge:       ; preds = %if.then129.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i.i

do.end135.i.i.i.i:                                ; preds = %if.then129.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call138.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.67, ptr noundef %62, i32 noundef %96, i32 noundef %and.i.i.i.i) #10
  br label %do.end8.i

if.end9.i.i.i:                                    ; preds = %if.then129.i.i.i.i.if.end9.i.i.i_crit_edge, %if.end125.i.i.i.i.if.end9.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp12.not.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp12.not.i.i.i, label %if.end9.i.i.i.if.end15.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end9.i.i.i.if.end15.i.i.i_crit_edge:           ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end9.i.i.i
  %bit.i.i.i.i = getelementptr inbounds %struct.bcm_clk_policy, ptr %60, i32 0, i32 1
  %97 = ptrtoint ptr %bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %98)
  %cmp.i.i.i.i.i = icmp ugt i32 %98, 31
  br i1 %cmp.i.i.i.i.i, label %policy_valid.exit.i.i.i, label %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i.i

policy_valid.exit.i.i.i:                          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.92, ptr noundef %62, i32 noundef %98, i32 noundef 31) #10
  br label %do.end8.i

if.end15.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end15.i.i.i_crit_edge, %if.end9.i.i.i.if.end15.i.i.i_crit_edge
  br i1 %tobool25.not.i.i.i.i, label %if.end15.i.i.i.if.end21.i.i.i_crit_edge, label %land.lhs.true18.i.i.i

if.end15.i.i.i.if.end21.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i.i

land.lhs.true18.i.i.i:                            ; preds = %if.end15.i.i.i
  %status_bit.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %status_bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status_bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %100)
  %cmp.i.i166.i.i.i = icmp ugt i32 %100, 31
  br i1 %cmp.i.i166.i.i.i, label %bit_posn_valid.exit.i.i.i.i, label %if.end.i.i.i.i

bit_posn_valid.exit.i.i.i.i:                      ; preds = %land.lhs.true18.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i167.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.93, ptr noundef %62, i32 noundef %100, i32 noundef 31) #10
  br label %do.end8.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true18.i.i.i
  %and.i169.i.i.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i169.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i, label %if.then1.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %en_bit.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 1, i32 2
  %101 = ptrtoint ptr %en_bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %en_bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %102)
  %cmp.i1.i.i.i.i = icmp ugt i32 %102, 31
  br i1 %cmp.i1.i.i.i.i, label %bit_posn_valid.exit4.i.i.i.i, label %if.end4.i.i.i.i

bit_posn_valid.exit4.i.i.i.i:                     ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i2.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.94, ptr noundef %62, i32 noundef %102, i32 noundef 31) #10
  br label %do.end8.i

if.end4.i.i.i.i:                                  ; preds = %if.then1.i.i.i.i
  %and6.i.i.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i, label %if.end4.i.i.i.i.if.end21.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.end4.i.i.i.i.if.end21.i.i.i_crit_edge:         ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end4.i.i.i.i
  %hw_sw_sel_bit.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 1, i32 3
  %103 = ptrtoint ptr %hw_sw_sel_bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hw_sw_sel_bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %104)
  %cmp.i5.i.i.i.i = icmp ugt i32 %104, 31
  br i1 %cmp.i5.i.i.i.i, label %bit_posn_valid.exit8.i.i.i.i, label %if.then8.i.i.i.i.if.end21.i.i.i_crit_edge

if.then8.i.i.i.i.if.end21.i.i.i_crit_edge:        ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i.i

bit_posn_valid.exit8.i.i.i.i:                     ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.95, ptr noundef %62, i32 noundef %104, i32 noundef 31) #10
  br label %do.end8.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %and14.i.i.i.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i.i)
  %tobool15.not.i.i.i.i = icmp eq i32 %and14.i.i.i.i, 0
  br i1 %tobool15.not.i.i.i.i, label %do.body22.i.i.i.i, label %do.body.i.i.i.i.if.end21.i.i.i_crit_edge, !prof !207

do.body.i.i.i.i.if.end21.i.i.i_crit_edge:         ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i.i

do.body22.i.i.i.i:                                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona-setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #7, !srcloc !208
  unreachable

if.end21.i.i.i:                                   ; preds = %do.body.i.i.i.i.if.end21.i.i.i_crit_edge, %if.then8.i.i.i.i.if.end21.i.i.i_crit_edge, %if.end4.i.i.i.i.if.end21.i.i.i_crit_edge, %if.end15.i.i.i.if.end21.i.i.i_crit_edge
  %105 = ptrtoint ptr %hyst23.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hyst23.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp24.not.i.i.i = icmp eq i32 %106, 0
  br i1 %cmp24.not.i.i.i, label %if.end21.i.i.i.if.end28.i.i.i_crit_edge, label %land.lhs.true25.i.i.i

if.end21.i.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %if.end21.i.i.i
  %en_bit.i171.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %en_bit.i171.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %en_bit.i171.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %108)
  %cmp.i.i172.i.i.i = icmp ugt i32 %108, 31
  br i1 %cmp.i.i172.i.i.i, label %hyst_valid.exit.thread.i.i.i, label %if.end.i175.i.i.i

hyst_valid.exit.thread.i.i.i:                     ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i173.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.96, ptr noundef %62, i32 noundef %108, i32 noundef 31) #10
  br label %do.end8.i

if.end.i175.i.i.i:                                ; preds = %land.lhs.true25.i.i.i
  %val_bit.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 2, i32 2
  %109 = ptrtoint ptr %val_bit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val_bit.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %110)
  %cmp.i6.i.i.i.i = icmp ugt i32 %110, 31
  br i1 %cmp.i6.i.i.i.i, label %hyst_valid.exit.i.i.i, label %if.end.i175.i.i.i.if.end28.i.i.i_crit_edge

if.end.i175.i.i.i.if.end28.i.i.i_crit_edge:       ; preds = %if.end.i175.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i.i

hyst_valid.exit.i.i.i:                            ; preds = %if.end.i175.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.97, ptr noundef %62, i32 noundef %110, i32 noundef 31) #10
  br label %do.end8.i

if.end28.i.i.i:                                   ; preds = %if.end.i175.i.i.i.if.end28.i.i.i_crit_edge, %if.end21.i.i.i.if.end28.i.i.i_crit_edge
  br i1 %cmp97.not.i.i.i.i, label %if.else.i.i.i, label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end28.i.i.i
  %shift.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 1
  %111 = ptrtoint ptr %shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %shift.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %112, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i.i.i.i.i)
  %cmp.i.i180.i.i.i = icmp ugt i32 %add.i.i.i.i.i, 32
  br i1 %cmp.i.i180.i.i.i, label %do.end4.i.i.i.i.i, label %if.end.i182.i.i.i

do.end4.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.47, ptr noundef %62, i32 noundef %112, i32 noundef %86, i32 noundef 32) #10
  br label %do.end8.i

if.end.i182.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  %parent_count.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 3
  %113 = ptrtoint ptr %parent_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %parent_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i181.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool.not.i181.i.i.i, label %do.end12.i.i.i.i, label %if.then1.i185.i.i.i

if.then1.i185.i.i.i:                              ; preds = %if.end.i182.i.i.i
  %parent_sel.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 4
  %115 = ptrtoint ptr %parent_sel.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %parent_sel.i.i.i.i, align 4
  %sub.i183.i.i.i = add i32 %114, -1
  %arrayidx.i.i.i3.i = getelementptr i32, ptr %116, i32 %sub.i183.i.i.i
  %117 = ptrtoint ptr %arrayidx.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i.i.i3.i, align 4
  %.highbits.i.i.i.i = lshr i32 %118, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits.i.i.i.i)
  %cmp.not.i184.i.i.i = icmp eq i32 %.highbits.i.i.i.i, 0
  br i1 %cmp.not.i184.i.i.i, label %if.then1.i185.i.i.i.if.end42.i.i.i_crit_edge, label %cleanup.i.i.i.i

if.then1.i185.i.i.i.if.end42.i.i.i_crit_edge:     ; preds = %if.then1.i185.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.then1.i185.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef %62, i32 noundef %118, i32 noundef %86) #10
  br label %do.end8.i

do.end12.i.i.i.i:                                 ; preds = %if.end.i182.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, ptr noundef %62) #10
  %119 = ptrtoint ptr %width.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %width.i.i.i.i, align 4
  %parent_sel16.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 4
  %120 = ptrtoint ptr %parent_sel16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parent_sel16.i.i.i.i, align 4
  call void @kfree(ptr noundef %121) #7
  %122 = ptrtoint ptr %parent_sel16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %parent_sel16.i.i.i.i, align 4
  br label %if.end42.i.i.i

if.else.i.i.i:                                    ; preds = %if.end28.i.i.i
  %parent_count.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 7, i32 3
  %123 = ptrtoint ptr %parent_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %parent_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp35.i.i.i = icmp ugt i32 %124, 1
  br i1 %cmp35.i.i.i, label %do.end39.i.i.i, label %if.else.i.i.i.if.end42.i.i.i_crit_edge

if.else.i.i.i.if.end42.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i.i

do.end39.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef %62) #10
  br label %do.end8.i

if.end42.i.i.i:                                   ; preds = %if.else.i.i.i.if.end42.i.i.i_crit_edge, %do.end12.i.i.i.i, %if.then1.i185.i.i.i.if.end42.i.i.i_crit_edge
  %pre_div44.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 4
  %125 = ptrtoint ptr %flags62.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags62.i.i.i.i, align 8
  %and46.i.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %and46.i.i.i, 0
  br i1 %tobool47.not.i.i.i, label %if.else60.i.i.i, label %if.then48.i.i.i

if.then48.i.i.i:                                  ; preds = %if.end42.i.i.i
  %div43.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 6
  %call49.i.i.i = call fastcc zeroext i1 @div_valid(ptr noundef %div43.i.i.i, ptr noundef nonnull @.str.50, ptr noundef %62) #7
  br i1 %call49.i.i.i, label %if.end51.i.i.i, label %if.then48.i.i.i.do.end8.i_crit_edge

if.then48.i.i.i.do.end8.i_crit_edge:              ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

if.end51.i.i.i:                                   ; preds = %if.then48.i.i.i
  %127 = ptrtoint ptr %flags79.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags79.i.i.i.i, align 8
  %and53.i.i.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %and53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %if.end51.i.i.i.if.end71.i.i.i_crit_edge, label %if.then55.i.i.i

if.end51.i.i.i.if.end71.i.i.i_crit_edge:          ; preds = %if.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i.i.i

if.then55.i.i.i:                                  ; preds = %if.end51.i.i.i
  %call56.i.i.i = call fastcc zeroext i1 @div_valid(ptr noundef %pre_div44.i.i.i, ptr noundef nonnull @.str.51, ptr noundef %62) #7
  br i1 %call56.i.i.i, label %if.then55.i.i.i.if.end71.i.i.i_crit_edge, label %if.then55.i.i.i.do.end8.i_crit_edge

if.then55.i.i.i.do.end8.i_crit_edge:              ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

if.then55.i.i.i.if.end71.i.i.i_crit_edge:         ; preds = %if.then55.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i.i.i

if.else60.i.i.i:                                  ; preds = %if.end42.i.i.i
  %129 = ptrtoint ptr %flags79.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags79.i.i.i.i, align 8
  %and62.i.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i.i)
  %tobool63.not.i.i.i = icmp eq i32 %and62.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %if.else60.i.i.i.if.end71.i.i.i_crit_edge, label %do.end67.i.i.i

if.else60.i.i.i.if.end71.i.i.i_crit_edge:         ; preds = %if.else60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i.i.i

do.end67.i.i.i:                                   ; preds = %if.else60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call69.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.49, ptr noundef %62) #10
  br label %do.end8.i

if.end71.i.i.i:                                   ; preds = %if.else60.i.i.i.if.end71.i.i.i_crit_edge, %if.then55.i.i.i.if.end71.i.i.i_crit_edge, %if.end51.i.i.i.if.end71.i.i.i_crit_edge
  %131 = ptrtoint ptr %flags111.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags111.i.i.i.i, align 4
  %and74.i.i.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i.i)
  %tobool75.not.i.i.i = icmp eq i32 %and74.i.i.i, 0
  br i1 %tobool75.not.i.i.i, label %if.else98.i.i.i, label %if.then76.i.i.i

if.then76.i.i.i:                                  ; preds = %if.end71.i.i.i
  %bit.i186.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %60, i32 0, i32 5, i32 1
  %133 = ptrtoint ptr %bit.i186.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bit.i186.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %134)
  %cmp.i.i187.i.i.i = icmp ugt i32 %134, 31
  br i1 %cmp.i.i187.i.i.i, label %trig_valid.exit.i.i.i, label %if.end87.i.i.i

trig_valid.exit.i.i.i:                            ; preds = %if.then76.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i188.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.55, ptr noundef %62, i32 noundef %134, i32 noundef 31) #10
  br label %do.end8.i

if.end87.i.i.i:                                   ; preds = %if.then76.i.i.i
  %135 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %u.i, align 4
  %137 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %138)
  %cmp.not.i6.i.i = icmp eq i32 %138, 3
  br i1 %cmp.not.i6.i.i, label %if.end.i.i4.i, label %if.end87.i.i.i.do.end92.i.i.i_crit_edge

if.end87.i.i.i.do.end92.i.i.i_crit_edge:          ; preds = %if.end87.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92.i.i.i

if.end.i.i4.i:                                    ; preds = %if.end87.i.i.i
  %parent_count.i7.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %136, i32 0, i32 7, i32 3
  %139 = ptrtoint ptr %parent_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %parent_count.i7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.i.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i4.i.if.end4.i.i.i_crit_edge, label %land.lhs.true.i9.i.i

if.end.i.i4.i.if.end4.i.i.i_crit_edge:            ; preds = %if.end.i.i4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

land.lhs.true.i9.i.i:                             ; preds = %if.end.i.i4.i
  %width.i8.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %136, i32 0, i32 7, i32 2
  %141 = ptrtoint ptr %width.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %width.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp2.not.i.i.i = icmp eq i32 %142, 0
  br i1 %cmp2.not.i.i.i, label %land.lhs.true.i9.i.i.if.end4.i.i.i_crit_edge, label %land.lhs.true.i9.i.i.if.end119.i.i.i_crit_edge

land.lhs.true.i9.i.i.if.end119.i.i.i_crit_edge:   ; preds = %land.lhs.true.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i.i

land.lhs.true.i9.i.i.if.end4.i.i.i_crit_edge:     ; preds = %land.lhs.true.i9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %land.lhs.true.i9.i.i.if.end4.i.i.i_crit_edge, %if.end.i.i4.i.if.end4.i.i.i_crit_edge
  %flags.i10.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %136, i32 0, i32 6, i32 1
  %143 = ptrtoint ptr %flags.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags.i10.i.i, align 8
  %and.i11.i.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and.i11.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end4.i.i.i.do.end92.i.i.i_crit_edge, label %if.end8.i.i.i

if.end4.i.i.i.do.end92.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %and10.i.i.i = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end8.i.i.i.if.end119.i.i.i_crit_edge, label %clk_requires_trigger.exit.i.i

if.end8.i.i.i.if.end119.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i.i

clk_requires_trigger.exit.i.i:                    ; preds = %if.end8.i.i.i
  %flags14.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %136, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %flags14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %flags14.i.i.i, align 8
  %147 = and i32 %146, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %clk_requires_trigger.exit.i.i.if.end119.i.i.i_crit_edge, label %clk_requires_trigger.exit.i.i.do.end92.i.i.i_crit_edge

clk_requires_trigger.exit.i.i.do.end92.i.i.i_crit_edge: ; preds = %clk_requires_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92.i.i.i

clk_requires_trigger.exit.i.i.if.end119.i.i.i_crit_edge: ; preds = %clk_requires_trigger.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i.i

do.end92.i.i.i:                                   ; preds = %clk_requires_trigger.exit.i.i.do.end92.i.i.i_crit_edge, %if.end4.i.i.i.do.end92.i.i.i_crit_edge, %if.end87.i.i.i.do.end92.i.i.i_crit_edge
  %call94.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.49, ptr noundef %62) #10
  %149 = ptrtoint ptr %flags111.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags111.i.i.i.i, align 4
  %and96.i.i.i = and i32 %150, -2
  store i32 %and96.i.i.i, ptr %flags111.i.i.i.i, align 4
  br label %if.end119.i.i.i

if.else98.i.i.i:                                  ; preds = %if.end71.i.i.i
  %151 = ptrtoint ptr %flags126.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags126.i.i.i.i, align 8
  %and101.i.i.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i.i)
  %tobool102.not.i.i.i = icmp eq i32 %and101.i.i.i, 0
  br i1 %tobool102.not.i.i.i, label %if.else109.i.i.i, label %do.end106.i.i.i

do.end106.i.i.i:                                  ; preds = %if.else98.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call108.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.49, ptr noundef %62) #10
  br label %do.end8.i

if.else109.i.i.i:                                 ; preds = %if.else98.i.i.i
  %153 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %u.i, align 4
  %155 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %156)
  %cmp.not.i199.i.i.i = icmp eq i32 %156, 3
  br i1 %cmp.not.i199.i.i.i, label %if.end.i202.i.i.i, label %if.else109.i.i.i.do.body2.i212.i.i.i_crit_edge

if.else109.i.i.i.do.body2.i212.i.i.i_crit_edge:   ; preds = %if.else109.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i212.i.i.i

if.end.i202.i.i.i:                                ; preds = %if.else109.i.i.i
  %parent_count.i200.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %154, i32 0, i32 7, i32 3
  %157 = ptrtoint ptr %parent_count.i200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %parent_count.i200.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i201.i.i.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i201.i.i.i, label %if.end.i202.i.i.i.if.end4.i206.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.i202.i.i.i.if.end4.i206.i.i.i_crit_edge:   ; preds = %if.end.i202.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i206.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i202.i.i.i
  %width.i203.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %154, i32 0, i32 7, i32 2
  %159 = ptrtoint ptr %width.i203.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %width.i203.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp2.not.i.i.i.i = icmp eq i32 %160, 0
  br i1 %cmp2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.if.end4.i206.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.do.end114.i.i.i_crit_edge

land.lhs.true.i.i.i.i.do.end114.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

land.lhs.true.i.i.i.i.if.end4.i206.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i206.i.i.i

if.end4.i206.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.if.end4.i206.i.i.i_crit_edge, %if.end.i202.i.i.i.if.end4.i206.i.i.i_crit_edge
  %flags.i204.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %154, i32 0, i32 6, i32 1
  %161 = ptrtoint ptr %flags.i204.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags.i204.i.i.i, align 8
  %and.i205.i.i.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205.i.i.i)
  %tobool6.not.i.i.i.i = icmp eq i32 %and.i205.i.i.i, 0
  br i1 %tobool6.not.i.i.i.i, label %if.end4.i206.i.i.i.if.end119.i.i.i_crit_edge, label %if.end8.i.i.i.i

if.end4.i206.i.i.i.if.end119.i.i.i_crit_edge:     ; preds = %if.end4.i206.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end4.i206.i.i.i
  %and10.i.i.i.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i.i)
  %tobool11.not.i.i.i.i = icmp eq i32 %and10.i.i.i.i, 0
  br i1 %tobool11.not.i.i.i.i, label %if.end8.i.i.i.i.do.end114.i.i.i_crit_edge, label %clk_requires_trigger.exit.i.i.i

if.end8.i.i.i.i.do.end114.i.i.i_crit_edge:        ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

clk_requires_trigger.exit.i.i.i:                  ; preds = %if.end8.i.i.i.i
  %flags14.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %154, i32 0, i32 4, i32 1
  %163 = ptrtoint ptr %flags14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flags14.i.i.i.i, align 8
  %165 = and i32 %164, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %clk_requires_trigger.exit.i.i.i.do.end114.i.i.i_crit_edge, label %clk_requires_trigger.exit.i.i.i.if.end119.i.i.i_crit_edge

clk_requires_trigger.exit.i.i.i.if.end119.i.i.i_crit_edge: ; preds = %clk_requires_trigger.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i.i.i

clk_requires_trigger.exit.i.i.i.do.end114.i.i.i_crit_edge: ; preds = %clk_requires_trigger.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end114.i.i.i

do.end114.i.i.i:                                  ; preds = %clk_requires_trigger.exit.i.i.i.do.end114.i.i.i_crit_edge, %if.end8.i.i.i.i.do.end114.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end114.i.i.i_crit_edge
  %call116.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.49, ptr noundef %62) #10
  br label %do.end8.i

if.end119.i.i.i:                                  ; preds = %clk_requires_trigger.exit.i.i.i.if.end119.i.i.i_crit_edge, %if.end4.i206.i.i.i.if.end119.i.i.i_crit_edge, %do.end92.i.i.i, %clk_requires_trigger.exit.i.i.if.end119.i.i.i_crit_edge, %if.end8.i.i.i.if.end119.i.i.i_crit_edge, %land.lhs.true.i9.i.i.if.end119.i.i.i_crit_edge
  %167 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %.pr.i.i.i = load i32, ptr %type.i, align 4
  %168 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i.i.i)
  %cmp.not.i211.i.i.i = icmp eq i32 %.pr.i.i.i, 3
  br i1 %cmp.not.i211.i.i.i, label %do.end7.i215.i.i.i, label %if.end119.i.i.i.do.body2.i212.i.i.i_crit_edge, !prof !209

if.end119.i.i.i.do.body2.i212.i.i.i_crit_edge:    ; preds = %if.end119.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2.i212.i.i.i

do.body2.i212.i.i.i:                              ; preds = %if.end119.i.i.i.do.body2.i212.i.i.i_crit_edge, %if.else109.i.i.i.do.body2.i212.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-kona-setup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #7, !srcloc !210
  unreachable

do.end7.i215.i.i.i:                               ; preds = %if.end119.i.i.i
  %flags.i213.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %169, i32 0, i32 6, i32 1
  %170 = ptrtoint ptr %flags.i213.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags.i213.i.i.i, align 8
  %and.i214.i.i.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214.i.i.i)
  %tobool9.not.i.i.i.i = icmp eq i32 %and.i214.i.i.i, 0
  br i1 %tobool9.not.i.i.i.i, label %do.end7.i215.i.i.i.if.end12.i_crit_edge, label %lor.lhs.false.i.i.i.i

do.end7.i215.i.i.i.if.end12.i_crit_edge:          ; preds = %do.end7.i215.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

lor.lhs.false.i.i.i.i:                            ; preds = %do.end7.i215.i.i.i
  %flags11.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %169, i32 0, i32 4, i32 1
  %172 = ptrtoint ptr %flags11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags11.i.i.i.i, align 8
  %and12.i.i.i.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i.i)
  %tobool13.not.i.i.i.i = icmp eq i32 %and12.i.i.i.i, 0
  br i1 %tobool13.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.end12.i_crit_edge, label %if.end15.i.i.i.i

lor.lhs.false.i.i.i.i.if.end12.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end15.i.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i
  %and19.i.i.i.i = and i32 %171, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i.i)
  %tobool20.not.i.i.i.i = icmp eq i32 %and19.i.i.i.i, 0
  %and23.i.i.i.i = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and23.i.i.i.i, 0
  %or.cond.i216.i.i.i = select i1 %tobool20.not.i.i.i.i, i1 %tobool24.not.i.i.i.i, i1 false
  br i1 %or.cond.i216.i.i.i, label %kona_clk_valid.exit.i, label %if.end15.i.i.i.i.if.end12.i_crit_edge

if.end15.i.i.i.i.if.end12.i_crit_edge:            ; preds = %if.end15.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

do.end.i.i91:                                     ; preds = %peri_clk_setup.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %53) #10
  br label %do.end8.i

kona_clk_valid.exit.i:                            ; preds = %if.end15.i.i.i.i
  %frac_width.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %169, i32 0, i32 6, i32 0, i32 0, i32 3
  %174 = ptrtoint ptr %frac_width.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %frac_width.i.i.i.i, align 4
  %frac_width29.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %169, i32 0, i32 4, i32 0, i32 0, i32 3
  %176 = ptrtoint ptr %frac_width29.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %frac_width29.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %177, %175
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add.i.i.i.i)
  %cmp30.i.i.i.i = icmp ult i32 %add.i.i.i.i, 33
  br i1 %cmp30.i.i.i.i, label %kona_clk_valid.exit.i.if.end12.i_crit_edge, label %kona_clk_valid.exit.i.do.end8.i_crit_edge

kona_clk_valid.exit.i.do.end8.i_crit_edge:        ; preds = %kona_clk_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i

kona_clk_valid.exit.i.if.end12.i_crit_edge:       ; preds = %kona_clk_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

do.end8.i:                                        ; preds = %kona_clk_valid.exit.i.do.end8.i_crit_edge, %do.end.i.i91, %do.end114.i.i.i, %do.end106.i.i.i, %trig_valid.exit.i.i.i, %do.end67.i.i.i, %if.then55.i.i.i.do.end8.i_crit_edge, %if.then48.i.i.i.do.end8.i_crit_edge, %do.end39.i.i.i, %cleanup.i.i.i.i, %do.end4.i.i.i.i.i, %hyst_valid.exit.i.i.i, %hyst_valid.exit.thread.i.i.i, %bit_posn_valid.exit8.i.i.i.i, %bit_posn_valid.exit4.i.i.i.i, %bit_posn_valid.exit.i.i.i.i, %policy_valid.exit.i.i.i, %do.end135.i.i.i.i, %do.end120.i.i.i.i, %do.end104.i.i.i.i, %do.end89.i.i.i.i, %do.end72.i.i.i.i, %do.end56.i.i.i.i, %do.end45.i.i.i.i, %do.end32.i.i.i.i, %do.end18.i.i.i.i
  %178 = ptrtoint ptr %init_data1.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %init_data1.i, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef %179) #10
  br label %out_teardown.i

if.end12.i:                                       ; preds = %kona_clk_valid.exit.i.if.end12.i_crit_edge, %if.end15.i.i.i.i.if.end12.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end12.i_crit_edge, %do.end7.i215.i.i.i.if.end12.i_crit_edge
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %arrayidx, i32 0, i32 2
  %180 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %init_data1.i, ptr %init.i, align 4
  %call14.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.for.inc_crit_edge, label %do.end19.i

if.end12.i.for.inc_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %init_data1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %init_data1.i, align 4
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, ptr noundef %182, i32 noundef %call14.i) #10
  br label %out_teardown.i

out_teardown.i:                                   ; preds = %do.end19.i, %do.end8.i
  %183 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %184)
  %cond.i6.i = icmp eq i32 %184, 3
  br i1 %cond.i6.i, label %sw.bb.i.i, label %out_teardown.i.bcm_clk_teardown.exit.i_crit_edge

out_teardown.i.bcm_clk_teardown.exit.i_crit_edge: ; preds = %out_teardown.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_clk_teardown.exit.i

sw.bb.i.i:                                        ; preds = %out_teardown.i
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %u.i, align 4
  %parent_sel.i.i.i7.i = getelementptr inbounds %struct.peri_clk_data, ptr %186, i32 0, i32 7, i32 4
  %187 = ptrtoint ptr %parent_sel.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %parent_sel.i.i.i7.i, align 4
  call void @kfree(ptr noundef %188) #7
  %189 = ptrtoint ptr %parent_sel.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr null, ptr %parent_sel.i.i.i7.i, align 4
  %parent_count.i.i.i8.i = getelementptr inbounds %struct.peri_clk_data, ptr %186, i32 0, i32 7, i32 3
  %190 = ptrtoint ptr %parent_count.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %parent_count.i.i.i8.i, align 4
  %191 = ptrtoint ptr %num_parents.i.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %num_parents.i.i.i, align 4
  %192 = ptrtoint ptr %parent_names4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %parent_names4.i.i.i, align 4
  call void @kfree(ptr noundef %193) #7
  %194 = ptrtoint ptr %parent_names4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %parent_names4.i.i.i, align 4
  br label %bcm_clk_teardown.exit.i

bcm_clk_teardown.exit.i:                          ; preds = %sw.bb.i.i, %out_teardown.i.bcm_clk_teardown.exit.i_crit_edge
  %195 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %u.i, align 4
  %196 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %type.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %bcm_clk_teardown.exit.i, %if.end12.i.for.inc_crit_edge, %do.end.i, %peri_clk_setup.exit.i, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.096, 1
  %197 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %clk_num, align 4
  %cmp32 = icmp ult i32 %inc, %198
  br i1 %cmp32, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end29.for.end_crit_edge
  %call40 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_kona_onecell_get, ptr noundef %ccu) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end48, label %do.end45

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef %node, i32 noundef %call40) #10
  br label %out_err

if.end48:                                         ; preds = %for.end
  %call49 = call zeroext i1 @kona_ccu_init(ptr noundef %ccu) #10
  br i1 %call49, label %if.end48.cleanup_crit_edge, label %if.end48.cleanup.sink.split_crit_edge

if.end48.cleanup.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_err:                                          ; preds = %do.end45, %do.end26, %do.end15, %do.end
  %199 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ccu, align 4
  %tobool.not.i = icmp eq ptr %200, null
  br i1 %tobool.not.i, label %out_err.cleanup.sink.split_crit_edge, label %if.end.i92

out_err.cleanup.sink.split_crit_edge:             ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i92:                                       ; preds = %out_err
  %node.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 4
  %201 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %node.i, align 4
  call void @of_clk_del_provider(ptr noundef %202) #7
  %clk_num.i.i = getelementptr inbounds %struct.ccu_data, ptr %ccu, i32 0, i32 5
  %203 = ptrtoint ptr %clk_num.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %clk_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp4.not.i.i = icmp eq i32 %204, 0
  br i1 %cmp4.not.i.i, label %if.end.i92.ccu_clks_teardown.exit.i_crit_edge, label %if.end.i92.for.body.i.i_crit_edge

if.end.i92.for.body.i.i_crit_edge:                ; preds = %if.end.i92
  br label %for.body.i.i

if.end.i92.ccu_clks_teardown.exit.i_crit_edge:    ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccu_clks_teardown.exit.i

for.body.i.i:                                     ; preds = %kona_clk_teardown.exit.i.i.for.body.i.i_crit_edge, %if.end.i92.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %kona_clk_teardown.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i92.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i
  %tobool.not.i.i.i93 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i.i93, label %for.body.i.i.kona_clk_teardown.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.kona_clk_teardown.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kona_clk_teardown.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @clk_hw_unregister(ptr noundef nonnull %arrayidx.i.i) #7
  %type.i.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i, i32 3
  %205 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %206)
  %cond.i.i.i.i = icmp eq i32 %206, 3
  br i1 %cond.i.i.i.i, label %sw.bb.i.i.i.i, label %if.end.i.i.i.bcm_clk_teardown.exit.i.i.i_crit_edge

if.end.i.i.i.bcm_clk_teardown.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_clk_teardown.exit.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i, i32 4
  %207 = ptrtoint ptr %u.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %u.i.i.i.i, align 4
  %parent_sel.i.i.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %208, i32 0, i32 7, i32 4
  %209 = ptrtoint ptr %parent_sel.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %parent_sel.i.i.i.i.i.i, align 4
  call void @kfree(ptr noundef %210) #7
  %211 = ptrtoint ptr %parent_sel.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %parent_sel.i.i.i.i.i.i, align 4
  %parent_count.i.i.i.i.i.i = getelementptr inbounds %struct.peri_clk_data, ptr %208, i32 0, i32 7, i32 3
  %212 = ptrtoint ptr %parent_count.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %parent_count.i.i.i.i.i.i, align 4
  %num_parents.i.i.i.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i, i32 1, i32 5
  %213 = ptrtoint ptr %num_parents.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %num_parents.i.i.i.i.i.i, align 4
  %parent_names.i.i.i.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i, i32 1, i32 2
  %214 = ptrtoint ptr %parent_names.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %parent_names.i.i.i.i.i.i, align 4
  call void @kfree(ptr noundef %215) #7
  %216 = ptrtoint ptr %parent_names.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %parent_names.i.i.i.i.i.i, align 4
  br label %bcm_clk_teardown.exit.i.i.i

bcm_clk_teardown.exit.i.i.i:                      ; preds = %sw.bb.i.i.i.i, %if.end.i.i.i.bcm_clk_teardown.exit.i.i.i_crit_edge
  %u1.i.i.i.i = getelementptr %struct.ccu_data, ptr %ccu, i32 0, i32 8, i32 %i.05.i.i, i32 4
  %217 = ptrtoint ptr %u1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %u1.i.i.i.i, align 4
  %218 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %type.i.i.i.i, align 4
  br label %kona_clk_teardown.exit.i.i

kona_clk_teardown.exit.i.i:                       ; preds = %bcm_clk_teardown.exit.i.i.i, %for.body.i.i.kona_clk_teardown.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %219 = ptrtoint ptr %clk_num.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %clk_num.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %220
  br i1 %cmp.i.i, label %kona_clk_teardown.exit.i.i.for.body.i.i_crit_edge, label %kona_clk_teardown.exit.i.i.ccu_clks_teardown.exit.i_crit_edge

kona_clk_teardown.exit.i.i.ccu_clks_teardown.exit.i_crit_edge: ; preds = %kona_clk_teardown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ccu_clks_teardown.exit.i

kona_clk_teardown.exit.i.i.for.body.i.i_crit_edge: ; preds = %kona_clk_teardown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

ccu_clks_teardown.exit.i:                         ; preds = %kona_clk_teardown.exit.i.i.ccu_clks_teardown.exit.i_crit_edge, %if.end.i92.ccu_clks_teardown.exit.i_crit_edge
  %221 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %node.i, align 4
  call void @of_node_put(ptr noundef %222) #7
  %223 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %node.i, align 4
  %224 = ptrtoint ptr %ccu to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ccu, align 4
  call void @iounmap(ptr noundef %225) #7
  %226 = ptrtoint ptr %ccu to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %ccu, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %ccu_clks_teardown.exit.i, %out_err.cleanup.sink.split_crit_edge, %if.end48.cleanup.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %if.end48.cleanup.sink.split_crit_edge ], [ @.str.19, %out_err.cleanup.sink.split_crit_edge ], [ @.str.19, %ccu_clks_teardown.exit.i ]
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink, ptr noundef %node) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end48.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_kona_onecell_get(ptr nocapture noundef readonly %clkspec, ptr noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %clk_num = getelementptr inbounds %struct.ccu_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2 = getelementptr %struct.ccu_data, ptr %data, i32 0, i32 8, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %arrayidx2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @kona_ccu_init(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @div_valid(ptr nocapture noundef readonly %div, ptr noundef %field_name, ptr noundef %clock_name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.bcm_clk_div, ptr %div, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef %field_name, ptr noundef %clock_name) #10
  br label %return

if.end2:                                          ; preds = %entry
  %shift = getelementptr inbounds %struct.anon.45, ptr %div, i32 0, i32 1
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %width = getelementptr inbounds %struct.anon.45, ptr %div, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef %field_name, ptr noundef %clock_name) #10
  br label %return

if.end.i:                                         ; preds = %if.end2
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 32
  br i1 %cmp.i, label %do.end4.i, label %if.end7

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, ptr noundef %field_name, ptr noundef %clock_name, i32 noundef %5, i32 noundef %7, i32 noundef 32) #10
  br label %return

if.end7:                                          ; preds = %if.end.i
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and9 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true:                                    ; preds = %if.end7
  %frac_width = getelementptr inbounds %struct.anon.45, ptr %div, i32 0, i32 3
  %10 = ptrtoint ptr %frac_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frac_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not = icmp eq i32 %11, 0
  br i1 %cmp12.not, label %land.lhs.true.return_crit_edge, label %if.then13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then13:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp18 = icmp ugt i32 %11, %13
  br i1 %cmp18, label %do.end21, label %if.then13.return_crit_edge

if.then13.return_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, ptr noundef %field_name, ptr noundef %clock_name, i32 noundef %11, i32 noundef %13) #10
  br label %return

return:                                           ; preds = %do.end21, %if.then13.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end7.return_crit_edge, %do.end4.i, %do.end.i, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end21 ], [ true, %if.then.return_crit_edge ], [ true, %if.then13.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end7.return_crit_edge ], [ false, %do.end4.i ], [ false, %do.end.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !97, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 811, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @kona_dt_ccu_setup._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @kona_dt_ccu_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 818, i32 3}
!8 = !{ptr @kona_dt_ccu_setup._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @kona_dt_ccu_setup._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 826, i32 3}
!12 = !{ptr @kona_dt_ccu_setup._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @kona_dt_ccu_setup._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 832, i32 3}
!16 = !{ptr @kona_dt_ccu_setup._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @kona_dt_ccu_setup._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 851, i32 3}
!20 = !{ptr @kona_dt_ccu_setup._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @kona_dt_ccu_setup._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 857, i32 3}
!24 = !{ptr @kona_dt_ccu_setup._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @kona_dt_ccu_setup._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 862, i32 2}
!28 = !{ptr @kona_dt_ccu_setup._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @kona_dt_ccu_setup._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 35, i32 4}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ccu_data_offsets_valid._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ccu_data_offsets_valid._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 41, i32 4}
!37 = !{ptr @ccu_data_offsets_valid._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ccu_data_offsets_valid._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 223, i32 35}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 227, i32 39}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 230, i32 40}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 233, i32 39}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 185, i32 3}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bit_posn_valid._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bit_posn_valid._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 719, i32 3}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @kona_clk_setup._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @kona_clk_setup._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 726, i32 3}
!59 = !{ptr @kona_clk_setup._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @kona_clk_setup._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 735, i32 3}
!63 = !{ptr @kona_clk_setup._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @kona_clk_setup._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 634, i32 3}
!67 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @clk_sel_setup._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @clk_sel_setup._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @parent_process.parent_names, !71, !"parent_names", i1 false, i1 false}
!71 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 538, i32 22}
!72 = !{ptr @parent_process.parent_sel, !73, !"parent_sel", i1 false, i1 false}
!73 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 539, i32 14}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 568, i32 3}
!76 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @parent_process._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @parent_process._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 500, i32 3}
!81 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @kona_clk_valid._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @kona_clk_valid._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 430, i32 45}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 439, i32 23}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 443, i32 3}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @peri_clk_data_valid._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @peri_clk_data_valid._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 452, i32 23}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 456, i32 28}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 459, i32 3}
!99 = !{ptr @peri_clk_data_valid._entry.52, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @peri_clk_data_valid._entry_ptr.54, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 466, i32 25}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 470, i32 26}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 475, i32 4}
!107 = !{ptr @peri_clk_data_valid._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @peri_clk_data_valid._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 480, i32 3}
!111 = !{ptr @peri_clk_data_valid._entry.60, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @peri_clk_data_valid._entry_ptr.62, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 484, i32 3}
!115 = !{ptr @peri_clk_data_valid._entry.63, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @peri_clk_data_valid._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 101, i32 4}
!119 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @peri_clk_data_offsets_valid._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @peri_clk_data_offsets_valid._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 111, i32 4}
!124 = !{ptr @peri_clk_data_offsets_valid._entry.68, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.70, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 118, i32 5}
!128 = !{ptr @peri_clk_data_offsets_valid._entry.71, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.73, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 125, i32 3}
!132 = !{ptr @peri_clk_data_offsets_valid._entry.74, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.76, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.78, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 132, i32 4}
!136 = !{ptr @peri_clk_data_offsets_valid._entry.77, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.79, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.81, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 141, i32 4}
!140 = !{ptr @peri_clk_data_offsets_valid._entry.80, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.82, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 151, i32 4}
!144 = !{ptr @peri_clk_data_offsets_valid._entry.83, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.85, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 160, i32 4}
!148 = !{ptr @peri_clk_data_offsets_valid._entry.86, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.88, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.90, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 169, i32 4}
!152 = !{ptr @peri_clk_data_offsets_valid._entry.89, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @peri_clk_data_offsets_valid._entry_ptr.91, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 241, i32 35}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 256, i32 40}
!158 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 260, i32 37}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 265, i32 7}
!162 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 278, i32 36}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 281, i32 37}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 312, i32 4}
!168 = !{ptr @.str.99, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @sel_valid._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @sel_valid._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 319, i32 3}
!173 = !{ptr @sel_valid._entry.100, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @sel_valid._entry_ptr.102, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.103, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 205, i32 3}
!177 = !{ptr @.str.104, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @bitfield_valid._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @bitfield_valid._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.106, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 210, i32 3}
!182 = !{ptr @bitfield_valid._entry.105, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @bitfield_valid._entry_ptr.107, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.108, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 341, i32 4}
!186 = !{ptr @.str.109, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @div_valid._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @div_valid._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.111, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 353, i32 4}
!191 = !{ptr @div_valid._entry.110, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @div_valid._entry_ptr.112, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/bcm/clk-kona-setup.c", i32 790, i32 3}
!195 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @of_clk_kona_onecell_get._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @of_clk_kona_onecell_get._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{i64 2152964161, i64 2152964658, i64 2152964198, i64 2152964254, i64 2152964288, i64 2152964312, i64 2152964353, i64 2152964374, i64 2152964402, i64 2152964436}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2152973495, i64 2152973992, i64 2152973532, i64 2152973588, i64 2152973622, i64 2152973646, i64 2152973687, i64 2152973708, i64 2152973736, i64 2152973770}
