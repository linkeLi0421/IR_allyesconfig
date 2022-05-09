; ModuleID = '/llk/IR_all_yes/drivers/clk/baikal-t1/clk-ccu-div.c_pt.bc'
source_filename = "../drivers/clk/baikal-t1/clk-ccu-div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ccu_div_info = type { i32, ptr, ptr, i32, i32, %union.anon.43, i32, i32 }
%union.anon.43 = type { i32 }
%struct.ccu_div_rst_map = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.ccu_div_init_data = type { i32, ptr, ptr, i32, ptr, ptr, i32, %union.anon.45, i32, i32 }
%union.anon.45 = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ccu_div_data = type { ptr, ptr, i32, ptr, ptr, i32, ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ccu_div = type { %struct.clk_hw, i32, i32, ptr, %struct.spinlock, %union.anon.44, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.44 = type { i32 }

@__of_table_ccu_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-ccu-axi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccu_div_init }, section "__clk_of_table", align 4
@__of_table_ccu_sys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-ccu-sys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccu_div_init }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"baikal,bt1-ccu-axi\00", [45 x i8] zeroinitializer }, align 32
@axi_info = internal constant { [11 x %struct.ccu_div_info], [64 x i8] } { [11 x %struct.ccu_div_info] [%struct.ccu_div_info { i32 0, ptr @.str.5, ptr @.str.6, i32 48, i32 0, %union.anon.43 { i32 4 }, i32 2048, i32 16 }, %struct.ccu_div_info { i32 1, ptr @.str.7, ptr @.str.8, i32 52, i32 0, %union.anon.43 { i32 4 }, i32 2049, i32 16 }, %struct.ccu_div_info { i32 2, ptr @.str.9, ptr @.str.8, i32 56, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 3, ptr @.str.10, ptr @.str.11, i32 60, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 4, ptr @.str.12, ptr @.str.11, i32 64, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 5, ptr @.str.13, ptr @.str.11, i32 68, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 6, ptr @.str.14, ptr @.str.6, i32 72, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 7, ptr @.str.15, ptr @.str.6, i32 76, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 8, ptr @.str.16, ptr @.str.8, i32 80, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 9, ptr @.str.17, ptr @.str.8, i32 84, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }, %struct.ccu_div_info { i32 10, ptr @.str.18, ptr @.str.11, i32 88, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 16 }], [64 x i8] zeroinitializer }, align 32
@axi_rst_map = internal constant { [11 x %struct.ccu_div_rst_map], [40 x i8] } { [11 x %struct.ccu_div_rst_map] [%struct.ccu_div_rst_map zeroinitializer, %struct.ccu_div_rst_map { i32 1, i32 1 }, %struct.ccu_div_rst_map { i32 2, i32 2 }, %struct.ccu_div_rst_map { i32 3, i32 3 }, %struct.ccu_div_rst_map { i32 4, i32 4 }, %struct.ccu_div_rst_map { i32 5, i32 5 }, %struct.ccu_div_rst_map { i32 6, i32 6 }, %struct.ccu_div_rst_map { i32 7, i32 7 }, %struct.ccu_div_rst_map { i32 8, i32 8 }, %struct.ccu_div_rst_map { i32 9, i32 9 }, %struct.ccu_div_rst_map { i32 10, i32 10 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"baikal,bt1-ccu-sys\00", [45 x i8] zeroinitializer }, align 32
@sys_info = internal constant { [19 x %struct.ccu_div_info], [128 x i8] } { [19 x %struct.ccu_div_info] [%struct.ccu_div_info { i32 0, ptr @.str.19, ptr @.str.8, i32 96, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 26 }, %struct.ccu_div_info { i32 1, ptr @.str.20, ptr @.str.6, i32 100, i32 0, %union.anon.43 { i32 5 }, i32 2048, i32 16 }, %struct.ccu_div_info { i32 2, ptr @.str.21, ptr @.str.11, i32 104, i32 1, %union.anon.43 { i32 5 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 3, ptr @.str.22, ptr @.str.11, i32 0, i32 2, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 4, ptr @.str.23, ptr @.str.11, i32 108, i32 1, %union.anon.43 { i32 5 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 5, ptr @.str.24, ptr @.str.11, i32 0, i32 2, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 6, ptr @.str.25, ptr @.str.11, i32 112, i32 1, %union.anon.43 { i32 8 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 7, ptr @.str.26, ptr @.str.11, i32 0, i32 2, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 8, ptr @.str.27, ptr @.str.11, i32 116, i32 1, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 9, ptr @.str.28, ptr @.str.29, i32 120, i32 0, %union.anon.43 { i32 5 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 10, ptr @.str.30, ptr @.str.8, i32 124, i32 0, %union.anon.43 { i32 4 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 11, ptr @.str.31, ptr @.str.11, i32 132, i32 0, %union.anon.43 { i32 17 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 12, ptr @.str.32, ptr @.str.11, i32 0, i32 2, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 13, ptr @.str.33, ptr @.str.11, i32 0, i32 2, %union.anon.43 { i32 10 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 14, ptr @.str.34, ptr @.str.29, i32 0, i32 2, %union.anon.43 { i32 25 }, i32 0, i32 0 }, %struct.ccu_div_info { i32 15, ptr @.str.35, ptr @.str.29, i32 136, i32 0, %union.anon.43 { i32 17 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 16, ptr @.str.36, ptr @.str.29, i32 140, i32 0, %union.anon.43 { i32 17 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 17, ptr @.str.37, ptr @.str.29, i32 144, i32 0, %union.anon.43 { i32 17 }, i32 1, i32 0 }, %struct.ccu_div_info { i32 18, ptr @.str.38, ptr @.str.11, i32 336, i32 0, %union.anon.43 { i32 17 }, i32 1, i32 4 }], [128 x i8] zeroinitializer }, align 32
@sys_rst_map = internal constant { [2 x %struct.ccu_div_rst_map], [16 x i8] } { [2 x %struct.ccu_div_rst_map] [%struct.ccu_div_rst_map zeroinitializer, %struct.ccu_div_rst_map { i32 1, i32 1 }], [16 x i8] zeroinitializer }, align 32
@ccu_div_create_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bt1-ccu-div: Incompatible DT node '%s' specified\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccu_div_create_data\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/baikal-t1/clk-ccu-div.c\00", [60 x i8] zeroinitializer }, align 32
@ccu_div_create_data._entry_ptr = internal global ptr @ccu_div_create_data._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_main_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_ddr_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_sata_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axi_gmac0_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axi_gmac1_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axi_xgmac_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axi_pcie_m_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axi_pcie_s_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_usb_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_hwa_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axi_sram_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_sata_ref_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_apb_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_gmac0_tx_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_gmac0_ptp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_gmac1_tx_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_gmac1_ptp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_xgmac_ref_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_xgmac_ptp_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_usb_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_pvt_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_hwa_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_uart_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_i2c1_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_i2c2_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_gpio_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_timer0_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_timer1_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_timer2_clk\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_wdt_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@ccu_div_find_sys_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bt1-ccu-div: Failed to find syscon regs for '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccu_div_find_sys_regs\00", [42 x i8] zeroinitializer }, align 32
@ccu_div_find_sys_regs._entry_ptr = internal global ptr @ccu_div_find_sys_regs._entry, section ".printk_index", align 4
@ccu_div_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013bt1-ccu-div: Couldn't register divider '%s' hw\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccu_div_clk_register\00", [43 x i8] zeroinitializer }, align 32
@ccu_div_clk_register._entry_ptr = internal global ptr @ccu_div_clk_register._entry, section ".printk_index", align 4
@ccu_div_clk_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013bt1-ccu-div: Couldn't register dividers '%s' clock provider\0A\00", [33 x i8] zeroinitializer }, align 32
@ccu_div_clk_register._entry_ptr.46 = internal global ptr @ccu_div_clk_register._entry.44, section ".printk_index", align 4
@ccu_div_of_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016bt1-ccu-div: Invalid clock ID %d specified\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccu_div_of_clk_hw_get\00", [42 x i8] zeroinitializer }, align 32
@ccu_div_of_clk_hw_get._entry_ptr = internal global ptr @ccu_div_of_clk_hw_get._entry, section ".printk_index", align 4
@ccu_div_rst_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @ccu_div_reset, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ccu_div_rst_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bt1-ccu-div: Couldn't register divider '%s' reset controller\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccu_div_rst_register\00", [43 x i8] zeroinitializer }, align 32
@ccu_div_rst_register._entry_ptr = internal global ptr @ccu_div_rst_register._entry, section ".printk_index", align 4
@ccu_div_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bt1-ccu-div: Invalid reset ID %lu specified\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccu_div_reset\00", [18 x i8] zeroinitializer }, align 32
@ccu_div_reset._entry_ptr = internal global ptr @ccu_div_reset._entry, section ".printk_index", align 4
@ccu_div_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.4, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013bt1-ccu-div: Invalid clock ID %d in mapping\0A\00", [49 x i8] zeroinitializer }, align 32
@ccu_div_reset._entry_ptr.55 = internal global ptr @ccu_div_reset._entry.53, section ".printk_index", align 4
@ccu_div_reset._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.4, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bt1-ccu-div: Reset isn't supported by divider %s\0A\00", [44 x i8] zeroinitializer }, align 32
@ccu_div_reset._entry_ptr.58 = internal global ptr @ccu_div_reset._entry.56, section ".printk_index", align 4
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 308, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [9 x i8] c"axi_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 135, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"axi_rst_map\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 172, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 313, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"sys_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 190, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"sys_rst_map\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 242, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 319, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 136, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 139, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 143, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 146, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 149, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 152, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 155, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 158, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 161, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 164, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 167, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 191, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 196, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 199, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 201, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 203, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 205, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 207, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 209, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 211, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 213, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 216, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 219, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 222, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 224, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 226, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 228, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 231, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 234, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 237, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 261, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 350, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 406, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 414, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 368, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [16 x i8] c"ccu_div_rst_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 294, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 448, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 275, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 281, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [39 x i8] c"../drivers/clk/baikal-t1/clk-ccu-div.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 287, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__of_table_ccu_axi, ptr @__of_table_ccu_sys, ptr @ccu_div_clk_register._entry, ptr @ccu_div_clk_register._entry.44, ptr @ccu_div_clk_register._entry_ptr, ptr @ccu_div_clk_register._entry_ptr.46, ptr @ccu_div_create_data._entry, ptr @ccu_div_create_data._entry_ptr, ptr @ccu_div_find_sys_regs._entry, ptr @ccu_div_find_sys_regs._entry_ptr, ptr @ccu_div_of_clk_hw_get._entry, ptr @ccu_div_of_clk_hw_get._entry_ptr, ptr @ccu_div_reset._entry, ptr @ccu_div_reset._entry.53, ptr @ccu_div_reset._entry.56, ptr @ccu_div_reset._entry_ptr, ptr @ccu_div_reset._entry_ptr.55, ptr @ccu_div_reset._entry_ptr.58, ptr @ccu_div_rst_register._entry, ptr @ccu_div_rst_register._entry_ptr, ptr @.str, ptr @axi_info, ptr @axi_rst_map, ptr @.str.1, ptr @sys_info, ptr @sys_rst_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @ccu_div_rst_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_info to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_rst_map to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_info to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_rst_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_create_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_find_sys_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_clk_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_of_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_rst_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_rst_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_div_reset._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ccu_div_init(ptr noundef %np) #0 align 64 {
entry:
  %init.i = alloca %struct.ccu_div_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %np, ptr %call7.i.i.i, align 8
  %call3.i = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.end.i.if.end17.i_crit_edge

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end.i, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

do.end.i:                                         ; preds = %if.else.i
  %tobool.not.i.i = icmp eq ptr %np, null
  br i1 %tobool.not.i.i, label %do.end.i.of_node_full_name.exit.i_crit_edge, label %cond.true.i.i

do.end.i.of_node_full_name.exit.i_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit.i

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %2 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full_name.i.i, align 4
  br label %of_node_full_name.exit.i

of_node_full_name.exit.i:                         ; preds = %cond.true.i.i, %do.end.i.of_node_full_name.exit.i_crit_edge
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ @.str.39, %do.end.i.of_node_full_name.exit.i_crit_edge ]
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %cond.i.i) #10
  br label %err_kfree_data.i

if.end17.i:                                       ; preds = %if.else.i.if.end17.i_crit_edge, %if.end.i.if.end17.i_crit_edge
  %.sink50.i = phi i32 [ 11, %if.end.i.if.end17.i_crit_edge ], [ 19, %if.else.i.if.end17.i_crit_edge ]
  %sys_info.sink.i = phi ptr [ @axi_info, %if.end.i.if.end17.i_crit_edge ], [ @sys_info, %if.else.i.if.end17.i_crit_edge ]
  %.sink.i = phi i32 [ 11, %if.end.i.if.end17.i_crit_edge ], [ 2, %if.else.i.if.end17.i_crit_edge ]
  %sys_rst_map.sink.i = phi ptr [ @axi_rst_map, %if.end.i.if.end17.i_crit_edge ], [ @sys_rst_map, %if.else.i.if.end17.i_crit_edge ]
  %divs_num9.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %divs_num9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink50.i, ptr %divs_num9.i, align 8
  %divs_info10.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %divs_info10.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sys_info.sink.i, ptr %divs_info10.i, align 4
  %rst_num11.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %rst_num11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.i, ptr %rst_num11.i, align 4
  %rst_map12.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %rst_map12.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sys_rst_map.sink.i, ptr %rst_map12.i, align 8
  %8 = shl nuw nsw i32 %.sink50.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %divs.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %divs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i.i, ptr %divs.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end17.i.err_kfree_data.i_crit_edge, label %ccu_div_create_data.exit

if.end17.i.err_kfree_data.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree_data.i

err_kfree_data.i:                                 ; preds = %if.end17.i.err_kfree_data.i_crit_edge, %of_node_full_name.exit.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

ccu_div_create_data.exit:                         ; preds = %if.end17.i
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ccu_div_create_data.exit.cleanup_crit_edge, label %if.end

ccu_div_create_data.exit.cleanup_crit_edge:       ; preds = %ccu_div_create_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ccu_div_create_data.exit
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %call.i = tail call ptr @syscon_node_to_regmap(ptr noundef %13) #6
  %sys_regs.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %sys_regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i22, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end.i22:                                       ; preds = %if.end
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i21 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i21, label %do.end.i22.ccu_div_find_sys_regs.exit_crit_edge, label %cond.true.i.i24

do.end.i22.ccu_div_find_sys_regs.exit_crit_edge:  ; preds = %do.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_div_find_sys_regs.exit

cond.true.i.i24:                                  ; preds = %do.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i23 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %full_name.i.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %full_name.i.i23, align 4
  br label %ccu_div_find_sys_regs.exit

ccu_div_find_sys_regs.exit:                       ; preds = %cond.true.i.i24, %do.end.i22.ccu_div_find_sys_regs.exit_crit_edge
  %cond.i.i25 = phi ptr [ %18, %cond.true.i.i24 ], [ @.str.39, %do.end.i22.ccu_div_find_sys_regs.exit_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %cond.i.i25) #10
  %19 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sys_regs.i, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %ccu_div_find_sys_regs.exit.if.end4_crit_edge, label %ccu_div_find_sys_regs.exit.err_free_data_crit_edge

ccu_div_find_sys_regs.exit.err_free_data_crit_edge: ; preds = %ccu_div_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

ccu_div_find_sys_regs.exit.if.end4_crit_edge:     ; preds = %ccu_div_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %ccu_div_find_sys_regs.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %21 = ptrtoint ptr %divs_num9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %divs_num9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp90.not.i = icmp eq i32 %22, 0
  br i1 %cmp90.not.i, label %if.end4.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end4.for.end.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end4
  %name2.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 1
  %parent_name3.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 2
  %np4.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 5
  %type5.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 6
  %flags6.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 8
  %features7.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 9
  %base16.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 3
  %sys_regs18.i = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.ccu_div_init_data, ptr %init.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %divs_info10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %divs_info10.i, align 4
  %arrayidx.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %init.i) #6
  %26 = call ptr @memset(ptr %init.i, i32 0, i32 40)
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %init.i, align 4
  %name.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 1
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %32 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %name2.i, align 4
  %parent_name.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 2
  %33 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent_name.i, align 4
  %35 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %parent_name3.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i.i, align 8
  %38 = ptrtoint ptr %np4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %np4.i, align 4
  %type.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 4
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type.i, align 4
  %41 = ptrtoint ptr %type5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %type5.i, align 4
  %flags.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 6
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %44 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %flags6.i, align 4
  %features.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 7
  %45 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %features.i, align 4
  %47 = ptrtoint ptr %features7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %features7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch.i = icmp ult i32 %40, 2
  br i1 %switch.i, label %if.end20.sink.split.i, label %for.body.i.if.end20.i_crit_edge

for.body.i.if.end20.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.sink.split.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %base15.i = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 3
  %48 = ptrtoint ptr %base15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base15.i, align 4
  %50 = ptrtoint ptr %base16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %base16.i, align 4
  %51 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sys_regs.i, align 4
  %53 = ptrtoint ptr %sys_regs18.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %sys_regs18.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end20.sink.split.i, %for.body.i.if.end20.i_crit_edge
  %54 = getelementptr %struct.ccu_div_info, ptr %25, i32 %idx.091.i, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %57 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %23, align 4
  %call.i29 = call ptr @ccu_div_hw_register(ptr noundef nonnull %init.i) #6
  %58 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %divs.i, align 8
  %arrayidx21.i = getelementptr ptr, ptr %59, i32 %idx.091.i
  %60 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i29, ptr %arrayidx21.i, align 4
  %61 = load ptr, ptr %divs.i, align 8
  %arrayidx23.i = getelementptr ptr, ptr %61, i32 %idx.091.i
  %62 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx23.i, align 4
  %cmp.i.i30 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name2.i, align 4
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %65) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %init.i) #6
  br label %err_hw_unregister.i

for.inc.i:                                        ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %init.i) #6
  %inc.i = add nuw i32 %idx.091.i, 1
  %66 = ptrtoint ptr %divs_num9.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %divs_num9.i, align 8
  %cmp.i31 = icmp ult i32 %inc.i, %67
  br i1 %cmp.i31, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end4.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end4.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i.i, align 8
  %call34.i = call i32 @of_clk_add_hw_provider(ptr noundef %69, ptr noundef nonnull @ccu_div_of_clk_hw_get, ptr noundef %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool.not.i32 = icmp eq i32 %call34.i, 0
  br i1 %tobool.not.i32, label %if.end8, label %do.end38.i

do.end38.i:                                       ; preds = %for.end.i
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i33 = icmp eq ptr %71, null
  br i1 %tobool.not.i.i33, label %do.end38.i.of_node_full_name.exit.i37_crit_edge, label %cond.true.i.i35

do.end38.i.of_node_full_name.exit.i37_crit_edge:  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit.i37

cond.true.i.i35:                                  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i34 = getelementptr inbounds %struct.device_node, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %full_name.i.i34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %full_name.i.i34, align 4
  br label %of_node_full_name.exit.i37

of_node_full_name.exit.i37:                       ; preds = %cond.true.i.i35, %do.end38.i.of_node_full_name.exit.i37_crit_edge
  %cond.i.i36 = phi ptr [ %73, %cond.true.i.i35 ], [ @.str.39, %do.end38.i.of_node_full_name.exit.i37_crit_edge ]
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %cond.i.i36) #10
  br label %err_hw_unregister.i

err_hw_unregister.i:                              ; preds = %of_node_full_name.exit.i37, %cleanup.i
  %idx.089.i = phi i32 [ %idx.091.i, %cleanup.i ], [ %idx.0.lcssa.i, %of_node_full_name.exit.i37 ]
  %idx.192.i = add i32 %idx.089.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.192.i)
  %cmp4593.i = icmp sgt i32 %idx.192.i, -1
  br i1 %cmp4593.i, label %err_hw_unregister.i.for.body46.i_crit_edge, label %err_hw_unregister.i.err_free_data_crit_edge

err_hw_unregister.i.err_free_data_crit_edge:      ; preds = %err_hw_unregister.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

err_hw_unregister.i.for.body46.i_crit_edge:       ; preds = %err_hw_unregister.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %err_hw_unregister.i.for.body46.i_crit_edge
  %idx.194.i = phi i32 [ %idx.1.i, %for.body46.i.for.body46.i_crit_edge ], [ %idx.192.i, %err_hw_unregister.i.for.body46.i_crit_edge ]
  %74 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %divs.i, align 8
  %arrayidx48.i = getelementptr ptr, ptr %75, i32 %idx.194.i
  %76 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx48.i, align 4
  call void @ccu_div_hw_unregister(ptr noundef %77) #6
  %idx.1.i = add nsw i32 %idx.194.i, -1
  %cmp45.i.not = icmp eq i32 %idx.194.i, 0
  br i1 %cmp45.i.not, label %for.body46.i.err_free_data_crit_edge, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46.i

for.body46.i.err_free_data_crit_edge:             ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

if.end8:                                          ; preds = %for.end.i
  %rcdev.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 7
  %78 = ptrtoint ptr %rcdev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ccu_div_rst_ops, ptr %rcdev.i, align 4
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i.i.i, align 8
  %of_node.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 7, i32 5
  %81 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %of_node.i, align 8
  %82 = ptrtoint ptr %rst_num11.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rst_num11.i, align 4
  %nr_resets.i = getelementptr inbounds %struct.ccu_div_data, ptr %call7.i.i.i, i32 0, i32 7, i32 8
  %84 = ptrtoint ptr %nr_resets.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %nr_resets.i, align 4
  %call.i39 = call i32 @reset_controller_register(ptr noundef %rcdev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %if.end8.cleanup_crit_edge, label %do.end.i42

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i42:                                       ; preds = %if.end8
  %85 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i41 = icmp eq ptr %86, null
  br i1 %tobool.not.i.i41, label %do.end.i42.err_clk_unregister_crit_edge, label %cond.true.i.i44

do.end.i42.err_clk_unregister_crit_edge:          ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_unregister

cond.true.i.i44:                                  ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i43 = getelementptr inbounds %struct.device_node, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %full_name.i.i43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %full_name.i.i43, align 4
  br label %err_clk_unregister

err_clk_unregister:                               ; preds = %cond.true.i.i44, %do.end.i42.err_clk_unregister_crit_edge
  %cond.i.i45 = phi ptr [ %88, %cond.true.i.i44 ], [ @.str.39, %do.end.i42.err_clk_unregister_crit_edge ]
  %call6.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %cond.i.i45) #10
  %89 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i.i, align 8
  call void @of_clk_del_provider(ptr noundef %90) #6
  %91 = ptrtoint ptr %divs_num9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %divs_num9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp5.not.i = icmp eq i32 %92, 0
  br i1 %cmp5.not.i, label %err_clk_unregister.err_free_data_crit_edge, label %err_clk_unregister.for.body.i55_crit_edge

err_clk_unregister.for.body.i55_crit_edge:        ; preds = %err_clk_unregister
  br label %for.body.i55

err_clk_unregister.err_free_data_crit_edge:       ; preds = %err_clk_unregister
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

for.body.i55:                                     ; preds = %for.body.i55.for.body.i55_crit_edge, %err_clk_unregister.for.body.i55_crit_edge
  %idx.06.i = phi i32 [ %inc.i53, %for.body.i55.for.body.i55_crit_edge ], [ 0, %err_clk_unregister.for.body.i55_crit_edge ]
  %93 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %divs.i, align 8
  %arrayidx.i52 = getelementptr ptr, ptr %94, i32 %idx.06.i
  %95 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i52, align 4
  call void @ccu_div_hw_unregister(ptr noundef %96) #6
  %inc.i53 = add nuw i32 %idx.06.i, 1
  %97 = ptrtoint ptr %divs_num9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %divs_num9.i, align 8
  %cmp.i54 = icmp ult i32 %inc.i53, %98
  br i1 %cmp.i54, label %for.body.i55.for.body.i55_crit_edge, label %for.body.i55.err_free_data_crit_edge

for.body.i55.err_free_data_crit_edge:             ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

for.body.i55.for.body.i55_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i55

err_free_data:                                    ; preds = %for.body.i55.err_free_data_crit_edge, %err_clk_unregister.err_free_data_crit_edge, %for.body46.i.err_free_data_crit_edge, %err_hw_unregister.i.err_free_data_crit_edge, %ccu_div_find_sys_regs.exit.err_free_data_crit_edge
  %99 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %divs.i, align 8
  call void @kfree(ptr noundef %100) #6
  call void @kfree(ptr noundef %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_data, %if.end8.cleanup_crit_edge, %ccu_div_create_data.exit.cleanup_crit_edge, %err_kfree_data.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ccu_div_hw_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ccu_div_of_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %divs_num.i = getelementptr inbounds %struct.ccu_div_data, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %divs_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %divs_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not.i = icmp eq i32 %3, 0
  br i1 %cmp8.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %divs.i = getelementptr inbounds %struct.ccu_div_data, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %divs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %idx.09.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.ccu_div, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp1.i = icmp eq i32 %9, %1
  br i1 %cmp1.i, label %ccu_div_find_desc.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

ccu_div_find_desc.exit:                           ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ccu_div_find_desc.exit.do.end_crit_edge, label %ccu_div_find_desc.exit.cleanup_crit_edge

ccu_div_find_desc.exit.cleanup_crit_edge:         ; preds = %ccu_div_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ccu_div_find_desc.exit.do.end_crit_edge:          ; preds = %ccu_div_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %ccu_div_find_desc.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i13 = phi ptr [ %7, %ccu_div_find_desc.exit.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ccu_div_find_desc.exit.cleanup_crit_edge
  %retval.0.i12 = phi ptr [ %retval.0.i13, %do.end ], [ %7, %ccu_div_find_desc.exit.cleanup_crit_edge ]
  ret ptr %retval.0.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_div_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_div_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %rst_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rst_map = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %rst_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst_map, align 4
  %rst_num = getelementptr i8, ptr %rcdev, i32 -8
  %2 = ptrtoint ptr %rst_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rst_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp51.not = icmp eq i32 %3, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %map.053 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %idx.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %map.053 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %map.053, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rst_id)
  %cmp2 = icmp eq i32 %5, %rst_id
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %idx.052, 1
  %incdec.ptr = getelementptr %struct.ccu_div_rst_map, ptr %map.053, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %idx.052, %for.body.for.end_crit_edge ]
  %map.0.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %map.053, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.lcssa, i32 %3)
  %cmp4 = icmp eq i32 %idx.0.lcssa, %3
  br i1 %cmp4, label %for.end.do.end_crit_edge, label %if.end7

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %rst_id) #10
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %clk_id = getelementptr inbounds %struct.ccu_div_rst_map, ptr %map.0.lcssa, i32 0, i32 1
  %6 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_id, align 4
  %divs_num.i = getelementptr i8, ptr %rcdev, i32 -20
  %8 = ptrtoint ptr %divs_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %divs_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.not.i = icmp eq i32 %9, 0
  br i1 %cmp8.not.i, label %if.end7.do.end13_crit_edge, label %for.body.lr.ph.i

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

for.body.lr.ph.i:                                 ; preds = %if.end7
  %divs.i = getelementptr i8, ptr %rcdev, i32 -12
  %10 = ptrtoint ptr %divs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %divs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %idx.09.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %id.i = getelementptr inbounds %struct.ccu_div, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp1.i = icmp eq i32 %15, %7
  br i1 %cmp1.i, label %ccu_div_find_desc.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.end13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

ccu_div_find_desc.exit:                           ; preds = %land.lhs.true.i
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ccu_div_find_desc.exit.do.end13_crit_edge, label %if.end18

ccu_div_find_desc.exit.do.end13_crit_edge:        ; preds = %ccu_div_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end13:                                         ; preds = %ccu_div_find_desc.exit.do.end13_crit_edge, %for.inc.i.do.end13_crit_edge, %if.end7.do.end13_crit_edge
  %retval.0.i48 = phi ptr [ %13, %ccu_div_find_desc.exit.do.end13_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.do.end13_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.i.do.end13_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %7) #10
  %16 = ptrtoint ptr %retval.0.i48 to i32
  br label %cleanup

if.end18:                                         ; preds = %ccu_div_find_desc.exit
  %call19 = tail call i32 @ccu_div_reset_domain(ptr noundef nonnull %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.end18.cleanup_crit_edge, label %do.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call ptr @clk_hw_get_name(ptr noundef nonnull %13) #6
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %call26) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end18.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %16, %do.end13 ], [ %call19, %do.end23 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_div_reset_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__of_table_ccu_axi, !1, !"__of_table_ccu_axi", i1 false, i1 false}
!1 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 484, i32 1}
!2 = !{ptr @__of_table_ccu_sys, !3, !"__of_table_ccu_sys", i1 false, i1 false}
!3 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 485, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 308, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 313, i32 41}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 319, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ccu_div_create_data._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ccu_div_create_data._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 136, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 139, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 143, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 146, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 149, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 152, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 155, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 158, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 161, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 164, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 167, i32 2}
!39 = !{ptr @axi_info, !40, !"axi_info", i1 false, i1 false}
!40 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 135, i32 34}
!41 = !{ptr @axi_rst_map, !42, !"axi_rst_map", i1 false, i1 false}
!42 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 172, i32 37}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 191, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 196, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 199, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 201, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 203, i32 2}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 205, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 207, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 209, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 211, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 213, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 216, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 219, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 222, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 224, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 226, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 228, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 231, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 234, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 237, i32 2}
!82 = !{ptr @sys_info, !83, !"sys_info", i1 false, i1 false}
!83 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 190, i32 34}
!84 = !{ptr @sys_rst_map, !85, !"sys_rst_map", i1 false, i1 false}
!85 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 242, i32 37}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/of.h", i32 261, i32 30}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 350, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ccu_div_find_sys_regs._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ccu_div_find_sys_regs._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 406, i32 4}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ccu_div_clk_register._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ccu_div_clk_register._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 414, i32 3}
!100 = !{ptr @ccu_div_clk_register._entry.44, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ccu_div_clk_register._entry_ptr.46, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 368, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ccu_div_of_clk_hw_get._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ccu_div_of_clk_hw_get._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 448, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ccu_div_rst_register._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ccu_div_rst_register._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @ccu_div_rst_ops, !113, !"ccu_div_rst_ops", i1 false, i1 false}
!113 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 294, i32 39}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 275, i32 3}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ccu_div_reset._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ccu_div_reset._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 281, i32 3}
!121 = !{ptr @ccu_div_reset._entry.53, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ccu_div_reset._entry_ptr.55, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/baikal-t1/clk-ccu-div.c", i32 287, i32 3}
!125 = !{ptr @ccu_div_reset._entry.56, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ccu_div_reset._entry_ptr.58, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
