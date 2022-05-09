; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-oxnas.c_pt.bc'
source_filename = "../drivers/clk/clk-oxnas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.oxnas_stdclk_data = type { ptr, ptr, i32, ptr, i32 }
%struct.clk_oxnas_gate = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_oxnas__170_253_oxnas_stdclk_driver_init6 = internal global ptr @oxnas_stdclk_driver_init, section ".initcall6.init", align 4
@oxnas_stdclk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @oxnas_stdclk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @oxnas_stdclk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"oxnas-stdclk\00", [19 x i8] zeroinitializer }, align 32
@oxnas_stdclk_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox810se-stdclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ox810se_stdclk_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"oxsemi,ox820-stdclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ox820_stdclk_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@oxnas_stdclk_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to have parent regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"oxnas_stdclk_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/clk-oxnas.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@oxnas_stdclk_probe._entry_ptr = internal global ptr @oxnas_stdclk_probe._entry, section ".printk_index", align 4
@ox810se_stdclk_data = internal global { %struct.oxnas_stdclk_data, [44 x i8] } { %struct.oxnas_stdclk_data { ptr @ox810se_hw_onecell_data, ptr @ox810se_gates, i32 9, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ox820_stdclk_data = internal global { %struct.oxnas_stdclk_data, [44 x i8] } { %struct.oxnas_stdclk_data { ptr @ox820_hw_onecell_data, ptr @ox820_gates, i32 14, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ox810se_gates = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @ox810se_leon, ptr @ox810se_dma_sgdma, ptr @ox810se_cipher, ptr @ox810se_sata, ptr @ox810se_audio, ptr @ox810se_usbmph, ptr @ox810se_etha, ptr @ox810se_pciea, ptr @ox810se_nand], [60 x i8] zeroinitializer }, align 32
@ox810se_leon = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_dma_sgdma = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, i32 1, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_cipher = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, i32 2, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_sata = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, i32 4, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_audio = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, i32 5, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_usbmph = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 }, i32 6, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_etha = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, i32 7, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_pciea = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, i32 8, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_nand = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, i32 9, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox810se_hw_onecell_data = internal global { { i32, [9 x ptr] }, [56 x i8] } { { i32, [9 x ptr] } { i32 9, [9 x ptr] [ptr @ox810se_leon, ptr @ox810se_dma_sgdma, ptr @ox810se_cipher, ptr @ox810se_sata, ptr @ox810se_audio, ptr @ox810se_usbmph, ptr @ox810se_etha, ptr @ox810se_pciea, ptr @ox810se_nand] }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox810se_leon\00", [19 x i8] zeroinitializer }, align 32
@oxnas_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @oxnas_clk_gate_enable, ptr @oxnas_clk_gate_disable, ptr @oxnas_clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@osc_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.8], [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"oscillator\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ox810se_dma_sgdma\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ox810se_cipher\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.11, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox810se_sata\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.13, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ox810se_audio\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.15, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ox810se_usbmph\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox810se_etha\00", [19 x i8] zeroinitializer }, align 32
@eth_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.19, ptr @oxnas_clk_gate_ops, ptr @eth_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gmacclk\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ox810se_pciea\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.22, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox810se_nand\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.24, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@ox820_gates = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @ox820_leon, ptr @ox820_dma_sgdma, ptr @ox820_cipher, ptr @ox820_sd, ptr @ox820_sata, ptr @ox820_audio, ptr @ox820_usbmph, ptr @ox820_etha, ptr @ox820_pciea, ptr @ox820_nand, ptr @ox820_etha, ptr @ox820_pciea, ptr @ox820_ref600, ptr @ox820_usbdev], [40 x i8] zeroinitializer }, align 32
@ox820_leon = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_dma_sgdma = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 }, i32 1, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_cipher = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, i32 2, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_sd = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, i32 3, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_sata = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, i32 4, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_audio = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, i32 5, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_usbmph = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, i32 6, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_etha = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, i32 7, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_pciea = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, i32 8, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_nand = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, i32 9, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_pcieb = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 }, i32 11, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_ethb = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 }, i32 10, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_ref600 = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, i32 12, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_usbdev = internal global { %struct.clk_oxnas_gate, [44 x i8] } { %struct.clk_oxnas_gate { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, i32 13, ptr null }, [44 x i8] zeroinitializer }, align 32
@ox820_hw_onecell_data = internal global { { i32, [16 x ptr] }, [60 x i8] } { { i32, [16 x ptr] } { i32 14, [16 x ptr] [ptr null, ptr null, ptr @ox820_leon, ptr @ox820_dma_sgdma, ptr @ox820_cipher, ptr @ox820_sd, ptr @ox820_sata, ptr @ox820_audio, ptr @ox820_usbmph, ptr @ox820_etha, ptr @ox820_pciea, ptr @ox820_nand, ptr @ox820_pcieb, ptr @ox820_ethb, ptr @ox820_ref600, ptr @ox820_usbdev] }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ox820_leon\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.27, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ox820_dma_sgdma\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox820_cipher\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.31, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ox820_sd\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.33, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ox820_sata\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ox820_audio\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.37, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox820_usbmph\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.39, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ox820_etha\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.41, ptr @oxnas_clk_gate_ops, ptr @eth_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ox820_pciea\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.43, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ox820_nand\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.45, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ox820_pcieb\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.47, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ox820_ethb\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.49, ptr @oxnas_clk_gate_ops, ptr @eth_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox820_ref600\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.51, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ox820_usbdev\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.53, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr null, ptr null, i8 1, i32 12 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"oxnas_stdclk_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 245, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 248, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"oxnas_stdclk_dt_ids\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 202, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 224, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"ox810se_stdclk_data\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 190, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"ox820_stdclk_data\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 196, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"ox810se_gates\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 111, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"ox810se_leon\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"ox810se_dma_sgdma\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"ox810se_cipher\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"ox810se_sata\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"ox810se_audio\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"ox810se_usbmph\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"ox810se_etha\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"ox810se_pciea\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"ox810se_nand\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [24 x i8] c"ox810se_hw_onecell_data\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 155, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 101, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"oxnas_clk_gate_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 75, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"osc_parents\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 81, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 82, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 102, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 103, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 104, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 105, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 106, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 107, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"eth_parents\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 85, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 86, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 108, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 109, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"ox820_gates\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 138, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"ox820_leon\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"ox820_dma_sgdma\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"ox820_cipher\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"ox820_sd\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [11 x i8] c"ox820_sata\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"ox820_audio\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"ox820_usbmph\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"ox820_etha\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"ox820_pciea\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [11 x i8] c"ox820_nand\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"ox820_pcieb\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"ox820_ethb\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"ox820_ref600\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"ox820_usbdev\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [22 x i8] c"ox820_hw_onecell_data\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 170, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 123, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 124, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 125, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 126, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 127, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 128, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 129, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 130, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 131, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 132, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 134, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 133, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 135, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [27 x i8] c"../drivers/clk/clk-oxnas.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 136, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__initcall__kmod_clk_oxnas__170_253_oxnas_stdclk_driver_init6, ptr @oxnas_stdclk_probe._entry, ptr @oxnas_stdclk_probe._entry_ptr, ptr @oxnas_stdclk_driver, ptr @.str, ptr @oxnas_stdclk_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ox810se_stdclk_data, ptr @ox820_stdclk_data, ptr @ox810se_gates, ptr @ox810se_leon, ptr @ox810se_dma_sgdma, ptr @ox810se_cipher, ptr @ox810se_sata, ptr @ox810se_audio, ptr @ox810se_usbmph, ptr @ox810se_etha, ptr @ox810se_pciea, ptr @ox810se_nand, ptr @ox810se_hw_onecell_data, ptr @.str.7, ptr @oxnas_clk_gate_ops, ptr @osc_parents, ptr @.compoundliteral, ptr @.str.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @eth_parents, ptr @.compoundliteral.20, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @ox820_gates, ptr @ox820_leon, ptr @ox820_dma_sgdma, ptr @ox820_cipher, ptr @ox820_sd, ptr @ox820_sata, ptr @ox820_audio, ptr @ox820_usbmph, ptr @ox820_etha, ptr @ox820_pciea, ptr @ox820_nand, ptr @ox820_pcieb, ptr @ox820_ethb, ptr @ox820_ref600, ptr @ox820_usbdev, ptr @ox820_hw_onecell_data, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_stdclk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_stdclk_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_stdclk_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_stdclk_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_stdclk_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_gates to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_leon to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_dma_sgdma to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_cipher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_sata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_audio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_usbmph to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_etha to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_pciea to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_nand to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox810se_hw_onecell_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxnas_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_gates to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_leon to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_dma_sgdma to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_cipher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_sd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_sata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_audio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_usbmph to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_etha to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_pciea to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_nand to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_pcieb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_ethb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_ref600 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_usbdev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ox820_hw_onecell_data to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_stdclk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @oxnas_stdclk_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_stdclk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @oxnas_stdclk_dt_ids, ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %call3 = tail call ptr @of_get_parent(ptr noundef %1) #5
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %call3) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %ngates = getelementptr inbounds %struct.oxnas_stdclk_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ngates to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp57.not = icmp eq i32 %5, 0
  br i1 %cmp57.not, label %for.cond.preheader.for.cond11.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond11.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gates = getelementptr inbounds %struct.oxnas_stdclk_data, ptr %3, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

for.cond11.preheader:                             ; preds = %for.body.for.cond11.preheader_crit_edge, %for.cond.preheader.for.cond11.preheader_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1259.not = icmp eq i32 %10, 0
  br i1 %cmp1259.not, label %for.cond11.preheader.for.end29_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.for.end29_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end29

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %gates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gates, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.058
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %regmap10 = getelementptr inbounds %struct.clk_oxnas_gate, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %regmap10, align 4
  %inc = add nuw i32 %i.058, 1
  %16 = ptrtoint ptr %ngates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ngates, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond11.preheader_crit_edge

for.body.for.cond11.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond11.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body13:                                       ; preds = %for.inc27.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %18 = phi ptr [ %22, %for.inc27.for.body13_crit_edge ], [ %8, %for.cond11.preheader.for.body13_crit_edge ]
  %i.160 = phi i32 [ %inc28, %for.inc27.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  %arrayidx15 = getelementptr %struct.clk_hw_onecell_data, ptr %18, i32 0, i32 1, i32 %i.160
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %for.body13.for.inc27_crit_edge, label %if.end18

for.body13.for.inc27_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc27

if.end18:                                         ; preds = %for.body13
  %call23 = tail call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end18.for.inc27_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.for.inc27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc27

for.inc27:                                        ; preds = %if.end18.for.inc27_crit_edge, %for.body13.for.inc27_crit_edge
  %inc28 = add nuw i32 %i.160, 1
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %cmp12 = icmp ult i32 %inc28, %24
  br i1 %cmp12, label %for.inc27.for.body13_crit_edge, label %for.inc27.for.end29_crit_edge

for.inc27.for.end29_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end29

for.inc27.for.body13_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

for.end29:                                        ; preds = %for.inc27.for.end29_crit_edge, %for.cond11.preheader.for.end29_crit_edge
  %.lcssa = phi ptr [ %8, %for.cond11.preheader.for.end29_crit_edge ], [ %22, %for.inc27.for.end29_crit_edge ]
  %call31 = tail call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %.lcssa) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.end18.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call31, %for.end29 ], [ -19, %entry.cleanup_crit_edge ], [ %call23, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_clk_gate_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %bit = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %3
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 44, i32 noundef %shl) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxnas_clk_gate_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %bit = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %3
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 48, i32 noundef %shl) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxnas_clk_gate_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !116
  %regmap = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %bit = getelementptr inbounds %struct.clk_oxnas_gate, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %6
  %and = and i32 %shl, %4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_clk_oxnas__170_253_oxnas_stdclk_driver_init6, !1, !"__initcall__kmod_clk_oxnas__170_253_oxnas_stdclk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-oxnas.c", i32 253, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-oxnas.c", i32 248, i32 11}
!4 = !{ptr @oxnas_stdclk_driver, !5, !"oxnas_stdclk_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-oxnas.c", i32 245, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-oxnas.c", i32 224, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @oxnas_stdclk_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @oxnas_stdclk_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @oxnas_stdclk_dt_ids, !15, !"oxnas_stdclk_dt_ids", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-oxnas.c", i32 202, i32 34}
!16 = !{ptr @ox810se_stdclk_data, !17, !"ox810se_stdclk_data", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-oxnas.c", i32 190, i32 33}
!18 = !{ptr @ox810se_hw_onecell_data, !19, !"ox810se_hw_onecell_data", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-oxnas.c", i32 155, i32 35}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-oxnas.c", i32 101, i32 8}
!22 = !{ptr @ox810se_leon, !21, !"ox810se_leon", i1 false, i1 false}
!23 = !{ptr @oxnas_clk_gate_ops, !24, !"oxnas_clk_gate_ops", i1 false, i1 false}
!24 = !{!"../drivers/clk/clk-oxnas.c", i32 75, i32 29}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/clk-oxnas.c", i32 82, i32 2}
!27 = !{ptr @osc_parents, !28, !"osc_parents", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-oxnas.c", i32 81, i32 26}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-oxnas.c", i32 102, i32 8}
!31 = !{ptr @ox810se_dma_sgdma, !30, !"ox810se_dma_sgdma", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-oxnas.c", i32 103, i32 8}
!34 = !{ptr @ox810se_cipher, !33, !"ox810se_cipher", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-oxnas.c", i32 104, i32 8}
!37 = !{ptr @ox810se_sata, !36, !"ox810se_sata", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-oxnas.c", i32 105, i32 8}
!40 = !{ptr @ox810se_audio, !39, !"ox810se_audio", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-oxnas.c", i32 106, i32 8}
!43 = !{ptr @ox810se_usbmph, !42, !"ox810se_usbmph", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-oxnas.c", i32 107, i32 8}
!46 = !{ptr @ox810se_etha, !45, !"ox810se_etha", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-oxnas.c", i32 86, i32 2}
!49 = !{ptr @eth_parents, !50, !"eth_parents", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-oxnas.c", i32 85, i32 26}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-oxnas.c", i32 108, i32 8}
!53 = !{ptr @ox810se_pciea, !52, !"ox810se_pciea", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-oxnas.c", i32 109, i32 8}
!56 = !{ptr @ox810se_nand, !55, !"ox810se_nand", i1 false, i1 false}
!57 = !{ptr @ox810se_gates, !58, !"ox810se_gates", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-oxnas.c", i32 111, i32 31}
!59 = !{ptr @ox820_stdclk_data, !60, !"ox820_stdclk_data", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-oxnas.c", i32 196, i32 33}
!61 = !{ptr @ox820_hw_onecell_data, !62, !"ox820_hw_onecell_data", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-oxnas.c", i32 170, i32 35}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-oxnas.c", i32 123, i32 8}
!65 = !{ptr @ox820_leon, !64, !"ox820_leon", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/clk-oxnas.c", i32 124, i32 8}
!68 = !{ptr @ox820_dma_sgdma, !67, !"ox820_dma_sgdma", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-oxnas.c", i32 125, i32 8}
!71 = !{ptr @ox820_cipher, !70, !"ox820_cipher", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-oxnas.c", i32 126, i32 8}
!74 = !{ptr @ox820_sd, !73, !"ox820_sd", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-oxnas.c", i32 127, i32 8}
!77 = !{ptr @ox820_sata, !76, !"ox820_sata", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-oxnas.c", i32 128, i32 8}
!80 = !{ptr @ox820_audio, !79, !"ox820_audio", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/clk-oxnas.c", i32 129, i32 8}
!83 = !{ptr @ox820_usbmph, !82, !"ox820_usbmph", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-oxnas.c", i32 130, i32 8}
!86 = !{ptr @ox820_etha, !85, !"ox820_etha", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-oxnas.c", i32 131, i32 8}
!89 = !{ptr @ox820_pciea, !88, !"ox820_pciea", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-oxnas.c", i32 132, i32 8}
!92 = !{ptr @ox820_nand, !91, !"ox820_nand", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/clk-oxnas.c", i32 134, i32 8}
!95 = !{ptr @ox820_pcieb, !94, !"ox820_pcieb", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-oxnas.c", i32 133, i32 8}
!98 = !{ptr @ox820_ethb, !97, !"ox820_ethb", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-oxnas.c", i32 135, i32 8}
!101 = !{ptr @ox820_ref600, !100, !"ox820_ref600", i1 false, i1 false}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/clk-oxnas.c", i32 136, i32 8}
!104 = !{ptr @ox820_usbdev, !103, !"ox820_usbdev", i1 false, i1 false}
!105 = !{ptr @ox820_gates, !106, !"ox820_gates", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-oxnas.c", i32 138, i32 31}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
