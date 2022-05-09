; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra20_das.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra20_das.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra20_das_connect_dap_to_dac\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra20_das_connect_dap_to_dac\09\09\09\09"
module asm "\09.long\09__crc_tegra20_das_connect_dap_to_dac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dap_to_dac:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dap_to_dac\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dap_to_dac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra20_das_connect_dap_to_dap\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra20_das_connect_dap_to_dap\09\09\09\09"
module asm "\09.long\09__crc_tegra20_das_connect_dap_to_dap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dap_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dap_to_dap\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dap_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tegra20_das_connect_dac_to_dap\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra20_das_connect_dac_to_dap\09\09\09\09"
module asm "\09.long\09__crc_tegra20_das_connect_dac_to_dap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra20_das_connect_dac_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra20_das_connect_dac_to_dap\22\09\09\09\09\09"
module asm "__kstrtabns_tegra20_das_connect_dac_to_dap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra20_das = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@das = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_tegra20_das_connect_dap_to_dac = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dap_to_dac = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dap_to_dac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dap_to_dac to i32), ptr @__kstrtab_tegra20_das_connect_dap_to_dac, ptr @__kstrtabns_tegra20_das_connect_dap_to_dac }, section "___ksymtab_gpl+tegra20_das_connect_dap_to_dac", align 4
@__kstrtab_tegra20_das_connect_dap_to_dap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dap_to_dap = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dap_to_dap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dap_to_dap to i32), ptr @__kstrtab_tegra20_das_connect_dap_to_dap, ptr @__kstrtabns_tegra20_das_connect_dap_to_dap }, section "___ksymtab_gpl+tegra20_das_connect_dap_to_dap", align 4
@__kstrtab_tegra20_das_connect_dac_to_dap = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra20_das_connect_dac_to_dap = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra20_das_connect_dac_to_dap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra20_das_connect_dac_to_dap to i32), ptr @__kstrtab_tegra20_das_connect_dac_to_dap, ptr @__kstrtabns_tegra20_das_connect_dac_to_dap }, section "___ksymtab_gpl+tegra20_das_connect_dac_to_dap", align 4
@__initcall__kmod_snd_soc_tegra20_das__238_207_tegra20_das_driver_init6 = internal global ptr @tegra20_das_driver_init, section ".initcall6.init", align 4
@tegra20_das_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra20_das_probe, ptr @tegra20_das_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra20_das_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra20_das_driver_exit = internal global ptr @tegra20_das_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [63 x i8] c"snd_soc_tegra20_das.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [51 x i8] c"snd_soc_tegra20_das.description=Tegra20 DAS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [61 x i8] c"snd_soc_tegra20_das.file=sound/soc/tegra/snd-soc-tegra20-das\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [32 x i8] c"snd_soc_tegra20_das.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [47 x i8] c"snd_soc_tegra20_das.alias=platform:tegra20-das\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra20-das\00", [20 x i8] zeroinitializer }, align 32
@tegra20_das_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-das\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra20_das_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra20_das_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra20_das_wr_rd_reg, ptr @tegra20_das_wr_rd_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 72, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"tegra20_das:142:(&tegra20_das_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra20_das_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/tegra/tegra20_das.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry_ptr = internal global ptr @tegra20_das_probe._entry, section ".printk_index", align 4
@tegra20_das_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't set up DAS DAP connection\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry_ptr.9 = internal global ptr @tegra20_das_probe._entry.7, section ".printk_index", align 4
@tegra20_das_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't set up DAS DAC connection\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry_ptr.12 = internal global ptr @tegra20_das_probe._entry.10, section ".printk_index", align 4
@tegra20_das_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry_ptr.14 = internal global ptr @tegra20_das_probe._entry.13, section ".printk_index", align 4
@tegra20_das_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra20_das_probe._entry_ptr.16 = internal global ptr @tegra20_das_probe._entry.15, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"das\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 20, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"tegra20_das_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 199, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 203, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"tegra20_das_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 194, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"tegra20_das_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 110, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 141, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 144, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 152, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 158, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 165, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private constant [33 x i8] c"../sound/soc/tegra/tegra20_das.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 171, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_tegra20_das_driver_exit, ptr @__initcall__kmod_snd_soc_tegra20_das__238_207_tegra20_das_driver_init6, ptr @__ksymtab_tegra20_das_connect_dac_to_dap, ptr @__ksymtab_tegra20_das_connect_dap_to_dac, ptr @__ksymtab_tegra20_das_connect_dap_to_dap, ptr @tegra20_das_driver_exit, ptr @tegra20_das_probe._entry, ptr @tegra20_das_probe._entry.10, ptr @tegra20_das_probe._entry.13, ptr @tegra20_das_probe._entry.15, ptr @tegra20_das_probe._entry.7, ptr @tegra20_das_probe._entry_ptr, ptr @tegra20_das_probe._entry_ptr.12, ptr @tegra20_das_probe._entry_ptr.14, ptr @tegra20_das_probe._entry_ptr.16, ptr @tegra20_das_probe._entry_ptr.9, ptr @das, ptr @tegra20_das_driver, ptr @.str, ptr @tegra20_das_of_match, ptr @tegra20_das_probe._key, ptr @tegra20_das_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_das_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dap_to_dac(i32 noundef %dap, i32 noundef %dac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @das, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %dap, 2
  %regmap.i = getelementptr inbounds %struct.tegra20_das, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %mul, i32 noundef %dac) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dap_to_dap(i32 noundef %dap, i32 noundef %otherdap, i32 noundef %master, i32 noundef %sdata1rx, i32 noundef %sdata2rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @das, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %dap, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdata2rx)
  %tobool1.not = icmp eq i32 %sdata2rx, 0
  %shl3 = select i1 %tobool1.not, i32 0, i32 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdata1rx)
  %tobool4.not = icmp eq i32 %sdata1rx, 0
  %shl9 = select i1 %tobool4.not, i32 0, i32 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %master)
  %tobool11.not = icmp eq i32 %master, 0
  %shl16 = select i1 %tobool11.not, i32 0, i32 -2147483648
  %or = or i32 %shl16, %otherdap
  %or10 = or i32 %or, %shl9
  %or17 = or i32 %or10, %shl3
  %regmap.i = getelementptr inbounds %struct.tegra20_das, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %mul, i32 noundef %or17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra20_das_connect_dac_to_dap(i32 noundef %dac, i32 noundef %dap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @das, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %dac, 2
  %add = add i32 %mul, 64
  %shl1 = shl i32 %dap, 24
  %or = or i32 %shl1, %dap
  %shl2 = shl i32 %dap, 28
  %or3 = or i32 %or, %shl2
  %regmap.i = getelementptr inbounds %struct.tegra20_das, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %add, i32 noundef %or3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_das_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_das_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_das_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra20_das_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_das_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @das, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  store ptr %call.i, ptr @das, align 4
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.err_crit_edge, label %if.end3

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call6 to i32
  br label %err

if.end10:                                         ; preds = %if.end3
  %call12 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call6, ptr noundef nonnull @tegra20_das_regmap_config, ptr noundef nonnull @tegra20_das_probe._key, ptr noundef nonnull @.str.1) #6
  %3 = load ptr, ptr @das, align 4
  %regmap = getelementptr inbounds %struct.tegra20_das, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i68 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %5 = load ptr, ptr @das, align 4
  %regmap17 = getelementptr inbounds %struct.tegra20_das, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap17, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %err

if.end19:                                         ; preds = %if.end10
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %err

if.end27:                                         ; preds = %if.end19
  %call.i.i = tail call i32 @regmap_write(ptr noundef %call12, i32 noundef 0, i32 noundef 0) #6
  %9 = load ptr, ptr @das, align 4
  %tobool.not.i69 = icmp eq ptr %9, null
  br i1 %tobool.not.i69, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %err

if.end35:                                         ; preds = %if.end27
  %regmap.i.i70 = getelementptr inbounds %struct.tegra20_das, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i.i70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i70, align 4
  %call.i.i71 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 64, i32 noundef 0) #6
  %12 = load ptr, ptr @das, align 4
  %tobool.not.i74 = icmp eq ptr %12, null
  br i1 %tobool.not.i74, label %do.end41, label %if.end43

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %err

if.end43:                                         ; preds = %if.end35
  %regmap.i.i75 = getelementptr inbounds %struct.tegra20_das, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i.i75 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i75, align 4
  %call.i.i76 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8, i32 noundef 2) #6
  %15 = load ptr, ptr @das, align 4
  %tobool.not.i80 = icmp eq ptr %15, null
  br i1 %tobool.not.i80, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %err

if.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i.i81 = getelementptr inbounds %struct.tegra20_das, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i.i81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i81, align 4
  %call.i.i82 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 72, i32 noundef 570425346) #6
  %18 = load ptr, ptr @das, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %do.end49, %do.end41, %do.end33, %do.end25, %do.end, %if.then8, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %2, %if.then8 ], [ %8, %do.end ], [ -19, %do.end25 ], [ -19, %do.end33 ], [ -19, %do.end41 ], [ -19, %do.end49 ], [ -12, %if.end.err_crit_edge ]
  store ptr null, ptr @das, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end51 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra20_das_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @das, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @das, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra20_das_wr_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %reg)
  %cmp = icmp ult i32 %reg, 17
  %0 = add i32 %reg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %1 = icmp ult i32 %0, 9
  %retval.0 = or i1 %cmp, %1
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_tegra20_das_connect_dap_to_dac, !1, !"__ksymtab_tegra20_das_connect_dap_to_dac", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra20_das.c", i32 51, i32 1}
!2 = !{ptr @__ksymtab_tegra20_das_connect_dap_to_dap, !3, !"__ksymtab_tegra20_das_connect_dap_to_dap", i1 false, i1 false}
!3 = !{!"../sound/soc/tegra/tegra20_das.c", i32 73, i32 1}
!4 = !{ptr @__ksymtab_tegra20_das_connect_dac_to_dap, !5, !"__ksymtab_tegra20_das_connect_dac_to_dap", i1 false, i1 false}
!5 = !{!"../sound/soc/tegra/tegra20_das.c", i32 93, i32 1}
!6 = !{ptr @__initcall__kmod_snd_soc_tegra20_das__238_207_tegra20_das_driver_init6, !7, !"__initcall__kmod_snd_soc_tegra20_das__238_207_tegra20_das_driver_init6", i1 false, i1 false}
!7 = !{!"../sound/soc/tegra/tegra20_das.c", i32 207, i32 1}
!8 = !{ptr @__exitcall_tegra20_das_driver_exit, !7, !"__exitcall_tegra20_das_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../sound/soc/tegra/tegra20_das.c", i32 209, i32 1}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../sound/soc/tegra/tegra20_das.c", i32 210, i32 1}
!13 = !{ptr @__UNIQUE_ID_file241, !14, !"__UNIQUE_ID_file241", i1 false, i1 false}
!14 = !{!"../sound/soc/tegra/tegra20_das.c", i32 211, i32 1}
!15 = !{ptr @__UNIQUE_ID_license242, !14, !"__UNIQUE_ID_license242", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias243, !17, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!17 = !{!"../sound/soc/tegra/tegra20_das.c", i32 212, i32 1}
!18 = !{ptr @das, !19, !"das", i1 false, i1 false}
!19 = !{!"../sound/soc/tegra/tegra20_das.c", i32 20, i32 28}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/tegra/tegra20_das.c", i32 203, i32 11}
!22 = !{ptr @tegra20_das_driver, !23, !"tegra20_das_driver", i1 false, i1 false}
!23 = !{!"../sound/soc/tegra/tegra20_das.c", i32 199, i32 31}
!24 = !{ptr @tegra20_das_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../sound/soc/tegra/tegra20_das.c", i32 141, i32 16}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/tegra/tegra20_das.c", i32 144, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra20_das_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra20_das_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/tegra/tegra20_das.c", i32 152, i32 3}
!37 = !{ptr @tegra20_das_probe._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra20_das_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/tegra/tegra20_das.c", i32 158, i32 3}
!41 = !{ptr @tegra20_das_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra20_das_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tegra20_das_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../sound/soc/tegra/tegra20_das.c", i32 165, i32 3}
!45 = !{ptr @tegra20_das_probe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @tegra20_das_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../sound/soc/tegra/tegra20_das.c", i32 171, i32 3}
!48 = !{ptr @tegra20_das_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @tegra20_das_regmap_config, !50, !"tegra20_das_regmap_config", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra20_das.c", i32 110, i32 35}
!51 = !{ptr @tegra20_das_of_match, !52, !"tegra20_das_of_match", i1 false, i1 false}
!52 = !{!"../sound/soc/tegra/tegra20_das.c", i32 194, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
