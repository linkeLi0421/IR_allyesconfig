; ModuleID = '/llk/IR_all_yes/arch/arm/mach-bcm/platsmp-brcmstb.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/platsmp-brcmstb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,brahma-b15\00", [16 x i8] zeroinitializer }, align 32
@brcmstb_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @brcmstb_cpu_ctrl_setup, ptr null, ptr @brcmstb_boot_secondary, ptr @brcmstb_cpu_kill, ptr @brcmstb_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_brcmstb_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @brcmstb_smp_ops }, section "__cpu_method_of_table", align 4
@__pcpu_unique_per_cpu_sw_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@per_cpu_sw_state = weak dso_local global i32 0, section ".data..percpu..shared_aligned", align 128
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcm,brcmstb-smpboot\00", [43 x i8] zeroinitializer }, align 32
@brcmstb_cpu_ctrl_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013can't find compatible node %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmstb_cpu_ctrl_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arch/arm/mach-bcm/platsmp-brcmstb.c\00", [60 x i8] zeroinitializer }, align 32
@brcmstb_cpu_ctrl_setup._entry_ptr = internal global ptr @brcmstb_cpu_ctrl_setup._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syscon-cpu\00", [21 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013can't find phandle %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setup_hifcpubiuctrl_regs\00", [39 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr = internal global ptr @setup_hifcpubiuctrl_regs._entry, section ".printk_index", align 4
@cpubiuctrl_block = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@setup_hifcpubiuctrl_regs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013iomap failed for cpubiuctrl_block\0A\00", [59 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr.10 = internal global ptr @setup_hifcpubiuctrl_regs._entry.8, section ".printk_index", align 4
@cpu0_pwr_zone_ctrl_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_hifcpubiuctrl_regs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.4, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013failed to read 1st entry from %s property (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr.13 = internal global ptr @setup_hifcpubiuctrl_regs._entry.11, section ".printk_index", align 4
@cpu_rst_cfg_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_hifcpubiuctrl_regs._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.4, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013failed to read 2nd entry from %s property (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr.16 = internal global ptr @setup_hifcpubiuctrl_regs._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syscon-cont\00", [20 x i8] zeroinitializer }, align 32
@setup_hifcont_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.18, ptr @.str.4, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup_hifcont_regs\00", [45 x i8] zeroinitializer }, align 32
@setup_hifcont_regs._entry_ptr = internal global ptr @setup_hifcont_regs._entry, section ".printk_index", align 4
@hif_cont_block = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@setup_hifcont_regs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013iomap failed for hif_cont_block\0A\00", [61 x i8] zeroinitializer }, align 32
@setup_hifcont_regs._entry_ptr.21 = internal global ptr @setup_hifcont_regs._entry.19, section ".printk_index", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ZONE_MEM_PWR_STATE_MASK set timeout\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ZONE_DPG_PWR_STATE_MASK set timeout\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@brcmstb_cpu_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014SMP: refusing to power off CPU0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmstb_cpu_kill\00", [47 x i8] zeroinitializer }, align 32
@brcmstb_cpu_kill._entry_ptr = internal global ptr @brcmstb_cpu_kill._entry, section ".printk_index", align 4
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ZONE_MEM_PWR_STATE_MASK clear timeout\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ZONE_DPG_PWR_STATE_MASK clear timeout\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 371, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 328, i32 9 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 331, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 253, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 257, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"cpubiuctrl_block\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 52, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 264, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"cpu0_pwr_zone_ctrl_reg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 54, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 272, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"cpu_rst_cfg_reg\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 55, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 281, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 298, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 302, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"hif_cont_block\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 53, i32 22 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 309, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 173, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 178, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 215, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 229, i32 9 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [39 x i8] c"../arch/arm/mach-bcm/platsmp-brcmstb.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 234, i32 9 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__cpu_method_of_table_brcmstb_smp, ptr @brcmstb_cpu_ctrl_setup._entry, ptr @brcmstb_cpu_ctrl_setup._entry_ptr, ptr @brcmstb_cpu_kill._entry, ptr @brcmstb_cpu_kill._entry_ptr, ptr @setup_hifcont_regs._entry, ptr @setup_hifcont_regs._entry.19, ptr @setup_hifcont_regs._entry_ptr, ptr @setup_hifcont_regs._entry_ptr.21, ptr @setup_hifcpubiuctrl_regs._entry, ptr @setup_hifcpubiuctrl_regs._entry.11, ptr @setup_hifcpubiuctrl_regs._entry.14, ptr @setup_hifcpubiuctrl_regs._entry.8, ptr @setup_hifcpubiuctrl_regs._entry_ptr, ptr @setup_hifcpubiuctrl_regs._entry_ptr.10, ptr @setup_hifcpubiuctrl_regs._entry_ptr.13, ptr @setup_hifcpubiuctrl_regs._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cpubiuctrl_block, ptr @.str.9, ptr @cpu0_pwr_zone_ctrl_reg, ptr @.str.12, ptr @cpu_rst_cfg_reg, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @hif_cont_block, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_cpu_ctrl_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_block to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu0_pwr_zone_ctrl_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_rst_cfg_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcont_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_cont_block to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcont_regs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_cpu_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_cpu_ctrl_setup(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_put_node_crit_edge

if.end.out_put_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_put_node

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @setup_hifcont_regs(ptr noundef nonnull %call) #12
  br label %out_put_node

out_put_node:                                     ; preds = %if.end5, %if.end.out_put_node_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out_put_node, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpubiuctrl_block, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @hif_cont_block, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %0, i32 %2
  %arrayidx.i.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i = shl i32 %4, 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !77
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr @cpubiuctrl_block, align 4
  %8 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i6 = getelementptr i8, ptr %7, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i8 = shl i32 %10, 2
  %add.ptr1.i.i.i9 = getelementptr i8, ptr %add.ptr.i.i.i6, i32 %mul.i.i.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i9) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %12 = and i32 %11, 16777215
  %13 = or i32 %12, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i9, i32 %13) #8, !srcloc !80
  %14 = load ptr, ptr @cpubiuctrl_block, align 4
  %15 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %14, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i15.i = shl i32 %17, 2
  %add.ptr1.i.i16.i = getelementptr i8, ptr %add.ptr.i.i13.i, i32 %mul.i.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i16.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i16.i, i32 %19) #8, !srcloc !80
  %20 = load ptr, ptr @cpubiuctrl_block, align 4
  %21 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %20, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i20.i = shl i32 %23, 2
  %add.ptr1.i.i21.i = getelementptr i8, ptr %add.ptr.i.i18.i, i32 %mul.i.i20.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i21.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %25 = or i32 %24, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i21.i, i32 %25) #8, !srcloc !80
  %26 = load ptr, ptr @cpubiuctrl_block, align 4
  %27 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %26, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i25.i = shl i32 %29, 2
  %add.ptr1.i.i26.i = getelementptr i8, ptr %add.ptr.i.i23.i, i32 %mul.i.i25.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i26.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %31 = or i32 %30, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i26.i, i32 %31) #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -50, %32
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.then2
  %33 = load ptr, ptr @cpubiuctrl_block, align 4
  %34 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i.i = shl i32 %36, 2
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i.i) #8, !srcloc !77
  %38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i.not.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i.not.i, label %do.cond.i.i, label %do.body.i.i.if.end.i_crit_edge

do.body.i.i.if.end.i_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %39
  %cmp5.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp5.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.cond.i.i
  %40 = load ptr, ptr @cpubiuctrl_block, align 4
  %41 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i22.i.i = getelementptr i8, ptr %40, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i24.i.i = shl i32 %43, 2
  %add.ptr1.i.i25.i.i = getelementptr i8, ptr %add.ptr.i.i22.i.i, i32 %mul.i.i24.i.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i25.i.i) #8, !srcloc !77
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool11.not.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool11.not.i.not.i, label %if.then.i, label %do.end.i.i.if.end.i_crit_edge

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22) #13
  unreachable

if.end.i:                                         ; preds = %do.end.i.i.if.end.i_crit_edge, %do.body.i.i.if.end.i_crit_edge
  %46 = load ptr, ptr @cpubiuctrl_block, align 4
  %47 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %46, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i31.i = shl i32 %49, 2
  %add.ptr1.i.i32.i = getelementptr i8, ptr %add.ptr.i.i29.i, i32 %mul.i.i31.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i32.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %51 = or i32 %50, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i32.i, i32 %51) #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i35.i = sub i32 -50, %52
  br label %do.body.i41.i

do.body.i41.i:                                    ; preds = %do.cond.i44.i.do.body.i41.i_crit_edge, %if.end.i
  %53 = load ptr, ptr @cpubiuctrl_block, align 4
  %54 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i36.i = getelementptr i8, ptr %53, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i.i37.i = shl i32 %56, 2
  %add.ptr1.i.i.i38.i = getelementptr i8, ptr %add.ptr.i.i.i36.i, i32 %mul.i.i.i37.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i38.i) #8, !srcloc !77
  %58 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool2.not.i40.not.i = icmp eq i32 %58, 0
  br i1 %tobool2.not.i40.not.i, label %do.cond.i44.i, label %do.body.i41.i.brcmstb_cpu_power_on.exit_crit_edge

do.body.i41.i.brcmstb_cpu_power_on.exit_crit_edge: ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmstb_cpu_power_on.exit

do.cond.i44.i:                                    ; preds = %do.body.i41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub.i42.i = add i32 %add.neg.i35.i, %59
  %cmp5.i43.i = icmp slt i32 %sub.i42.i, 0
  br i1 %cmp5.i43.i, label %do.cond.i44.i.do.body.i41.i_crit_edge, label %do.end.i51.i

do.cond.i44.i.do.body.i41.i_crit_edge:            ; preds = %do.cond.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i41.i

do.end.i51.i:                                     ; preds = %do.cond.i44.i
  %60 = load ptr, ptr @cpubiuctrl_block, align 4
  %61 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i22.i45.i = getelementptr i8, ptr %60, i32 %61
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i24.i46.i = shl i32 %63, 2
  %add.ptr1.i.i25.i47.i = getelementptr i8, ptr %add.ptr.i.i22.i45.i, i32 %mul.i.i24.i46.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i25.i47.i) #8, !srcloc !77
  %65 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool11.not.i49.not.i = icmp eq i32 %65, 0
  br i1 %tobool11.not.i49.not.i, label %if.then3.i, label %do.end.i51.i.brcmstb_cpu_power_on.exit_crit_edge

do.end.i51.i.brcmstb_cpu_power_on.exit_crit_edge: ; preds = %do.end.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmstb_cpu_power_on.exit

if.then3.i:                                       ; preds = %do.end.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.23) #13
  unreachable

brcmstb_cpu_power_on.exit:                        ; preds = %do.end.i51.i.brcmstb_cpu_power_on.exit_crit_edge, %do.body.i41.i.brcmstb_cpu_power_on.exit_crit_edge
  %66 = load ptr, ptr @cpubiuctrl_block, align 4
  %67 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %66, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i56.i = shl i32 %69, 2
  %add.ptr1.i.i57.i = getelementptr i8, ptr %add.ptr.i.i54.i, i32 %mul.i.i56.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i57.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %71 = and i32 %70, -1073741825
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i57.i, i32 %71) #8, !srcloc !80
  %72 = load ptr, ptr @cpubiuctrl_block, align 4
  %73 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i58.i = getelementptr i8, ptr %72, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i60.i = shl i32 %75, 2
  %add.ptr1.i.i61.i = getelementptr i8, ptr %add.ptr.i.i58.i, i32 %mul.i.i60.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i61.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %77 = or i32 %76, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i61.i, i32 %77) #8, !srcloc !80
  br label %if.end3

if.end3:                                          ; preds = %brcmstb_cpu_power_on.exit, %if.end.if.end3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %79, ptrtoint (ptr @per_cpu_sw_state to i32)
  %80 = inttoptr i32 %add.i.i to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %80, align 4
  %82 = load i32, ptr %arrayidx.i.i, align 4
  %add5.i.i = add i32 %82, ptrtoint (ptr @per_cpu_sw_state to i32)
  %83 = inttoptr i32 %add5.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %84(ptr noundef %83, i32 noundef 4) #8
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %add5.i.i) #8
  %add.ptr.i.i.i10 = getelementptr i8, ptr %83, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i.i10 to i32
  %call1.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i.i, label %if.end3.brcmstb_cpu_boot.exit_crit_edge, label %if.then.i.i.i.i

if.end3.brcmstb_cpu_boot.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmstb_cpu_boot.exit

if.then.i.i.i.i:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %86(i32 noundef %call.i.i.i, i32 noundef %call1.i.i.i) #8
  br label %brcmstb_cpu_boot.exit

brcmstb_cpu_boot.exit:                            ; preds = %if.then.i.i.i.i, %if.end3.brcmstb_cpu_boot.exit_crit_edge
  %call.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #8
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i.i, align 4
  %mul.i.i = shl i32 %88, 3
  %89 = load ptr, ptr @hif_cont_block, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %89, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #8, !srcloc !80
  %90 = tail call i32 @llvm.bswap.i32(i32 %call.i) #8
  %91 = load ptr, ptr @hif_cont_block, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %91, i32 4
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %90) #8, !srcloc !80
  %92 = load ptr, ptr @cpubiuctrl_block, align 4
  %93 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 %93
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !77
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #8
  %96 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i.i, align 4
  %shl2.i.i = shl nuw i32 1, %97
  %neg.i.i = xor i32 %shl2.i.i, -1
  %and.i.i = and i32 %95, %neg.i.i
  %98 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #8
  %99 = load ptr, ptr @cpubiuctrl_block, align 4
  %100 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %add.ptr3.i4.i = getelementptr i8, ptr %99, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i4.i, i32 %98) #8, !srcloc !80
  br label %return

return:                                           ; preds = %brcmstb_cpu_boot.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %brcmstb_cpu_boot.exit ], [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_cpu_kill(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp eq i32 %cpu, 0
  br i1 %cmp, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %while.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %return

while.cond:                                       ; preds = %per_cpu_sw_state_rd.exit.while.cond_crit_edge, %while.cond.preheader
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @per_cpu_sw_state to i32)
  %2 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %while.cond.per_cpu_sw_state_rd.exit_crit_edge, label %if.then.i.i

while.cond.per_cpu_sw_state_rd.exit_crit_edge:    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %per_cpu_sw_state_rd.exit

if.then.i.i:                                      ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %4(ptr noundef %2, i32 noundef 4) #8
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %add.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef %5) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.per_cpu_sw_state_rd.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.per_cpu_sw_state_rd.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %per_cpu_sw_state_rd.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(i32 noundef %call.i.i, i32 noundef %call1.i.i) #8
  br label %per_cpu_sw_state_rd.exit

per_cpu_sw_state_rd.exit:                         ; preds = %if.then.i.i.i, %if.then.i.i.per_cpu_sw_state_rd.exit_crit_edge, %while.cond.per_cpu_sw_state_rd.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %7(ptr noundef %2, i32 noundef 4) #8
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %9, ptrtoint (ptr @per_cpu_sw_state to i32)
  %10 = inttoptr i32 %add5.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %while.end, label %per_cpu_sw_state_rd.exit.while.cond_crit_edge

per_cpu_sw_state_rd.exit.while.cond_crit_edge:    ; preds = %per_cpu_sw_state_rd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %per_cpu_sw_state_rd.exit
  %13 = load ptr, ptr @cpubiuctrl_block, align 4
  %14 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %13, i32 %14
  %arrayidx.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %16, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i22, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %18 = or i32 %17, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %18) #8, !srcloc !80
  %19 = load ptr, ptr @cpubiuctrl_block, align 4
  %20 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %19, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i25 = shl i32 %22, 2
  %add.ptr1.i.i26 = getelementptr i8, ptr %add.ptr.i.i23, i32 %mul.i.i25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i26) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %24 = and i32 %23, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i26, i32 %24) #8, !srcloc !80
  %25 = load ptr, ptr @cpubiuctrl_block, align 4
  %26 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %25, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i29 = shl i32 %28, 2
  %add.ptr1.i.i30 = getelementptr i8, ptr %add.ptr.i.i27, i32 %mul.i.i29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i30) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %30 = and i32 %29, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i30, i32 %30) #8, !srcloc !80
  %31 = load ptr, ptr @cpubiuctrl_block, align 4
  %32 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %31, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i34 = shl i32 %34, 2
  %add.ptr1.i.i35 = getelementptr i8, ptr %add.ptr.i.i32, i32 %mul.i.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i35) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %36 = or i32 %35, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i35, i32 %36) #8, !srcloc !80
  %37 = load ptr, ptr @cpubiuctrl_block, align 4
  %38 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i39 = shl i32 %40, 2
  %add.ptr1.i.i40 = getelementptr i8, ptr %add.ptr.i.i37, i32 %mul.i.i39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i40) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %42 = and i32 %41, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i40, i32 %42) #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %43
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %while.end
  %44 = load ptr, ptr @cpubiuctrl_block, align 4
  %45 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i.i = shl i32 %47, 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #8, !srcloc !77
  %49 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.not.i.not = icmp eq i32 %49, 0
  br i1 %tobool2.not.i.not, label %do.body.i.if.end5_crit_edge, label %do.cond.i

do.body.i.if.end5_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %50
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %do.cond.i.do.body.i_crit_edge, label %do.end.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %51 = load ptr, ptr @cpubiuctrl_block, align 4
  %52 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %51, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i24.i = shl i32 %54, 2
  %add.ptr1.i.i25.i = getelementptr i8, ptr %add.ptr.i.i22.i, i32 %mul.i.i24.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i25.i) #8, !srcloc !77
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool11.not.i.not = icmp eq i32 %56, 0
  br i1 %tobool11.not.i.not, label %do.end.i.if.end5_crit_edge, label %if.then4

do.end.i.if.end5_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.26) #13
  unreachable

if.end5:                                          ; preds = %do.end.i.if.end5_crit_edge, %do.body.i.if.end5_crit_edge
  %57 = load ptr, ptr @cpubiuctrl_block, align 4
  %58 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %57, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i44 = shl i32 %60, 2
  %add.ptr1.i.i45 = getelementptr i8, ptr %add.ptr.i.i42, i32 %mul.i.i44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i45) #8, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %62 = and i32 %61, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i45, i32 %62) #8, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i48 = sub i32 -50, %63
  br label %do.body.i55

do.body.i55:                                      ; preds = %do.cond.i58.do.body.i55_crit_edge, %if.end5
  %64 = load ptr, ptr @cpubiuctrl_block, align 4
  %65 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %64, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i.i50 = shl i32 %67, 2
  %add.ptr1.i.i.i51 = getelementptr i8, ptr %add.ptr.i.i.i49, i32 %mul.i.i.i50
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i51) #8, !srcloc !77
  %69 = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool2.not.i53.not = icmp eq i32 %69, 0
  br i1 %tobool2.not.i53.not, label %do.body.i55.do.body10_crit_edge, label %do.cond.i58

do.body.i55.do.body10_crit_edge:                  ; preds = %do.body.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.cond.i58:                                      ; preds = %do.body.i55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i56 = add i32 %add.neg.i48, %70
  %cmp5.i57 = icmp slt i32 %sub.i56, 0
  br i1 %cmp5.i57, label %do.cond.i58.do.body.i55_crit_edge, label %do.end.i66

do.cond.i58.do.body.i55_crit_edge:                ; preds = %do.cond.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i55

do.end.i66:                                       ; preds = %do.cond.i58
  %71 = load ptr, ptr @cpubiuctrl_block, align 4
  %72 = load i32, ptr @cpu0_pwr_zone_ctrl_reg, align 4
  %add.ptr.i.i22.i59 = getelementptr i8, ptr %71, i32 %72
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i24.i60 = shl i32 %74, 2
  %add.ptr1.i.i25.i61 = getelementptr i8, ptr %add.ptr.i.i22.i59, i32 %mul.i.i24.i60
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i25.i61) #8, !srcloc !77
  %76 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool11.not.i63.not = icmp eq i32 %76, 0
  br i1 %tobool11.not.i63.not, label %do.end.i66.do.body10_crit_edge, label %if.then8

do.end.i66.do.body10_crit_edge:                   ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

if.then8:                                         ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.27) #13
  unreachable

do.body10:                                        ; preds = %do.end.i66.do.body10_crit_edge, %do.body.i55.do.body10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %77 = load ptr, ptr @cpubiuctrl_block, align 4
  %78 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %add.ptr.i = getelementptr i8, ptr %77, i32 %78
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !77
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  %shl2.i = shl nuw i32 1, %82
  %or.i69 = or i32 %shl2.i, %80
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i69) #8
  %84 = load ptr, ptr @cpubiuctrl_block, align 4
  %85 = load i32, ptr @cpu_rst_cfg_reg, align 4
  %add.ptr3.i = getelementptr i8, ptr %84, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %83) #8, !srcloc !80
  br label %return

return:                                           ; preds = %do.body10, %do.end
  ret i32 1
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_cpu_die(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, ptrtoint (ptr @per_cpu_sw_state to i32)
  %2 = inttoptr i32 %add.i to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %4, ptrtoint (ptr @per_cpu_sw_state to i32)
  %5 = inttoptr i32 %add5.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %6(ptr noundef %5, i32 noundef 4) #8
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %add5.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef %7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %entry.per_cpu_sw_state_wr.exit_crit_edge, label %if.then.i.i.i

entry.per_cpu_sw_state_wr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %per_cpu_sw_state_wr.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(i32 noundef %call.i.i, i32 noundef %call1.i.i) #8
  br label %per_cpu_sw_state_wr.exit

per_cpu_sw_state_wr.exit:                         ; preds = %if.then.i.i.i, %entry.per_cpu_sw_state_wr.exit_crit_edge
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !86
  br label %while.body

while.body:                                       ; preds = %while.body, %per_cpu_sw_state_wr.exit
  br label %while.body
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #8
  store ptr %call2, ptr @cpubiuctrl_block, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef nonnull @cpu0_pwr_zone_ctrl_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, i32 noundef %call11) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %call20 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.5, i32 noundef 2, ptr noundef nonnull @cpu_rst_cfg_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, i32 noundef %call20) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end19.cleanup_crit_edge, %do.end16, %do.end7, %do.end
  %retval.0.i47 = phi ptr [ %2, %do.end16 ], [ %2, %do.end25 ], [ %2, %if.end19.cleanup_crit_edge ], [ %2, %do.end7 ], [ null, %do.end ]
  %rc.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end25 ], [ 0, %if.end19.cleanup_crit_edge ], [ -22, %do.end7 ], [ -22, %do.end ]
  call void @of_node_put(ptr noundef %retval.0.i47) #8
  ret i32 %rc.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_hifcont_regs(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call2 = call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #8
  store ptr %call2, ptr @hif_cont_block, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0.i3 = phi ptr [ %2, %if.end.cleanup_crit_edge ], [ %2, %do.end7 ], [ null, %do.end ]
  call void @of_node_put(ptr noundef %retval.0.i3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 371, i32 1}
!2 = !{ptr @__cpu_method_of_table_brcmstb_smp, !1, !"__cpu_method_of_table_brcmstb_smp", i1 false, i1 false}
!3 = !{ptr @__pcpu_unique_per_cpu_sw_state, !4, !"__pcpu_unique_per_cpu_sw_state", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 65, i32 8}
!5 = !{ptr @per_cpu_sw_state, !4, !"per_cpu_sw_state", i1 false, i1 false}
!6 = !{ptr @brcmstb_smp_ops, !7, !"brcmstb_smp_ops", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 362, i32 36}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 328, i32 9}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 331, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @brcmstb_cpu_ctrl_setup._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @brcmstb_cpu_ctrl_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 253, i32 9}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 257, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @setup_hifcpubiuctrl_regs._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 264, i32 3}
!25 = !{ptr @setup_hifcpubiuctrl_regs._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 272, i32 3}
!29 = !{ptr @setup_hifcpubiuctrl_regs._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 281, i32 3}
!33 = !{ptr @setup_hifcpubiuctrl_regs._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @cpubiuctrl_block, !36, !"cpubiuctrl_block", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 52, i32 22}
!37 = !{ptr @cpu0_pwr_zone_ctrl_reg, !38, !"cpu0_pwr_zone_ctrl_reg", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 54, i32 12}
!39 = !{ptr @cpu_rst_cfg_reg, !40, !"cpu_rst_cfg_reg", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 55, i32 12}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 298, i32 9}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 302, i32 3}
!45 = !{ptr @setup_hifcont_regs._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @setup_hifcont_regs._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 309, i32 3}
!49 = !{ptr @setup_hifcont_regs._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @setup_hifcont_regs._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @hif_cont_block, !52, !"hif_cont_block", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 53, i32 22}
!53 = distinct !{null, !54, !"hif_cont_reg", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 56, i32 12}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 173, i32 9}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 178, i32 9}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 215, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @brcmstb_cpu_kill._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @brcmstb_cpu_kill._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 229, i32 9}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-bcm/platsmp-brcmstb.c", i32 234, i32 9}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2983444}
!78 = !{i64 2154271043}
!79 = !{i64 2154271920}
!80 = !{i64 2983026}
!81 = !{i64 2154272829}
!82 = !{i64 2154273708}
!83 = !{i64 2154267962}
!84 = !{i64 2154278053}
!85 = !{i64 2154275701, i64 2154275718, i64 2154275748, i64 2154275796, i64 2154275839, i64 2154275887, i64 2154275901, i64 2154275951, i64 2154275999, i64 2154276057, i64 2154276105, i64 2154276119, i64 2154276133}
!86 = !{i64 2154276353}
