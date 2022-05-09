; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000/e1000_param.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000/e1000_param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.e1000_opt_list = type { i32, ptr }
%struct.e1000_option = type { i32, ptr, ptr, i32, %union.anon.156 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, i32 }
%struct.e1000_adapter = type { [128 x i32], i16, i32, i32, i32, i32, i32, i16, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i16, i16, i8, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i8, %struct.atomic_t, i8, i8, i8, ptr, ptr, ptr, %struct.napi_struct, i32, i32, i64, i64, i32, i32, i32, i8, i32, i64, ptr, ptr, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, i32, %struct.e1000_tx_ring, %struct.e1000_rx_ring, i32, i8, i8, i8, i32, i32, i32, i32, i8, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.e1000_eeprom_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.e1000_host_mng_dhcp_cookie, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_eeprom_info = type { i32, i16, i16, i16, i16, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i16, i8, i8, i32, i8, i8, i16 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_tx_ring = type { ptr, i32, i32, i32, i32, i32, ptr, i16, i16, i8 }
%struct.e1000_rx_ring = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.155, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.155 = type { ptr }

@__param_str_TxDescriptors = internal constant [20 x i8] c"e1000.TxDescriptors\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_TxDescriptors = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxDescriptors, ptr @param_ops_int, ptr @TxDescriptors }, align 4
@__param_TxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_TxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_TxDescriptorstype501 = internal constant [42 x i8] c"e1000.parmtype=TxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxDescriptors502 = internal constant [56 x i8] c"e1000.parm=TxDescriptors:Number of transmit descriptors\00", section ".modinfo", align 1
@__param_str_RxDescriptors = internal constant [20 x i8] c"e1000.RxDescriptors\00", align 1
@__param_arr_RxDescriptors = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxDescriptors, ptr @param_ops_int, ptr @RxDescriptors }, align 4
@__param_RxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_RxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_RxDescriptorstype503 = internal constant [42 x i8] c"e1000.parmtype=RxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxDescriptors504 = internal constant [55 x i8] c"e1000.parm=RxDescriptors:Number of receive descriptors\00", section ".modinfo", align 1
@__param_str_Speed = internal constant [12 x i8] c"e1000.Speed\00", align 1
@__param_arr_Speed = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_Speed, ptr @param_ops_int, ptr @Speed }, align 4
@__param_Speed = internal constant %struct.kernel_param { ptr @__param_str_Speed, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_Speed } }, section "__param", align 4
@__UNIQUE_ID_Speedtype505 = internal constant [34 x i8] c"e1000.parmtype=Speed:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_Speed506 = internal constant [31 x i8] c"e1000.parm=Speed:Speed setting\00", section ".modinfo", align 1
@__param_str_Duplex = internal constant [13 x i8] c"e1000.Duplex\00", align 1
@__param_arr_Duplex = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_Duplex, ptr @param_ops_int, ptr @Duplex }, align 4
@__param_Duplex = internal constant %struct.kernel_param { ptr @__param_str_Duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_Duplex } }, section "__param", align 4
@__UNIQUE_ID_Duplextype507 = internal constant [35 x i8] c"e1000.parmtype=Duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_Duplex508 = internal constant [33 x i8] c"e1000.parm=Duplex:Duplex setting\00", section ".modinfo", align 1
@__param_str_AutoNeg = internal constant [14 x i8] c"e1000.AutoNeg\00", align 1
@__param_arr_AutoNeg = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_AutoNeg, ptr @param_ops_int, ptr @AutoNeg }, align 4
@__param_AutoNeg = internal constant %struct.kernel_param { ptr @__param_str_AutoNeg, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_AutoNeg } }, section "__param", align 4
@__UNIQUE_ID_AutoNegtype509 = internal constant [36 x i8] c"e1000.parmtype=AutoNeg:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_AutoNeg510 = internal constant [55 x i8] c"e1000.parm=AutoNeg:Advertised auto-negotiation setting\00", section ".modinfo", align 1
@__param_str_FlowControl = internal constant [18 x i8] c"e1000.FlowControl\00", align 1
@__param_arr_FlowControl = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_FlowControl, ptr @param_ops_int, ptr @FlowControl }, align 4
@__param_FlowControl = internal constant %struct.kernel_param { ptr @__param_str_FlowControl, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_FlowControl } }, section "__param", align 4
@__UNIQUE_ID_FlowControltype511 = internal constant [40 x i8] c"e1000.parmtype=FlowControl:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_FlowControl512 = internal constant [44 x i8] c"e1000.parm=FlowControl:Flow Control setting\00", section ".modinfo", align 1
@__param_str_XsumRX = internal constant [13 x i8] c"e1000.XsumRX\00", align 1
@__param_arr_XsumRX = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_XsumRX, ptr @param_ops_int, ptr @XsumRX }, align 4
@__param_XsumRX = internal constant %struct.kernel_param { ptr @__param_str_XsumRX, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_XsumRX } }, section "__param", align 4
@__UNIQUE_ID_XsumRXtype513 = internal constant [35 x i8] c"e1000.parmtype=XsumRX:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_XsumRX514 = internal constant [61 x i8] c"e1000.parm=XsumRX:Disable or enable Receive Checksum offload\00", section ".modinfo", align 1
@__param_str_TxIntDelay = internal constant [17 x i8] c"e1000.TxIntDelay\00", align 1
@__param_arr_TxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxIntDelay, ptr @param_ops_int, ptr @TxIntDelay }, align 4
@__param_TxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxIntDelaytype515 = internal constant [39 x i8] c"e1000.parmtype=TxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxIntDelay516 = internal constant [47 x i8] c"e1000.parm=TxIntDelay:Transmit Interrupt Delay\00", section ".modinfo", align 1
@__param_str_TxAbsIntDelay = internal constant [20 x i8] c"e1000.TxAbsIntDelay\00", align 1
@__param_arr_TxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxAbsIntDelay, ptr @param_ops_int, ptr @TxAbsIntDelay }, align 4
@__param_TxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxAbsIntDelaytype517 = internal constant [42 x i8] c"e1000.parmtype=TxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxAbsIntDelay518 = internal constant [59 x i8] c"e1000.parm=TxAbsIntDelay:Transmit Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxIntDelay = internal constant [17 x i8] c"e1000.RxIntDelay\00", align 1
@__param_arr_RxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxIntDelay, ptr @param_ops_int, ptr @RxIntDelay }, align 4
@__param_RxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxIntDelaytype519 = internal constant [39 x i8] c"e1000.parmtype=RxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxIntDelay520 = internal constant [46 x i8] c"e1000.parm=RxIntDelay:Receive Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxAbsIntDelay = internal constant [20 x i8] c"e1000.RxAbsIntDelay\00", align 1
@__param_arr_RxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxAbsIntDelay, ptr @param_ops_int, ptr @RxAbsIntDelay }, align 4
@__param_RxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxAbsIntDelaytype521 = internal constant [42 x i8] c"e1000.parmtype=RxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxAbsIntDelay522 = internal constant [58 x i8] c"e1000.parm=RxAbsIntDelay:Receive Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_InterruptThrottleRate = internal constant [28 x i8] c"e1000.InterruptThrottleRate\00", align 1
@__param_arr_InterruptThrottleRate = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_InterruptThrottleRate, ptr @param_ops_int, ptr @InterruptThrottleRate }, align 4
@__param_InterruptThrottleRate = internal constant %struct.kernel_param { ptr @__param_str_InterruptThrottleRate, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_InterruptThrottleRate } }, section "__param", align 4
@__UNIQUE_ID_InterruptThrottleRatetype523 = internal constant [50 x i8] c"e1000.parmtype=InterruptThrottleRate:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_InterruptThrottleRate524 = internal constant [59 x i8] c"e1000.parm=InterruptThrottleRate:Interrupt Throttling Rate\00", section ".modinfo", align 1
@__param_str_SmartPowerDownEnable = internal constant [27 x i8] c"e1000.SmartPowerDownEnable\00", align 1
@__param_arr_SmartPowerDownEnable = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_SmartPowerDownEnable, ptr @param_ops_int, ptr @SmartPowerDownEnable }, align 4
@__param_SmartPowerDownEnable = internal constant %struct.kernel_param { ptr @__param_str_SmartPowerDownEnable, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_SmartPowerDownEnable } }, section "__param", align 4
@__UNIQUE_ID_SmartPowerDownEnabletype525 = internal constant [49 x i8] c"e1000.parmtype=SmartPowerDownEnable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_SmartPowerDownEnable526 = internal constant [60 x i8] c"e1000.parm=SmartPowerDownEnable:Enable PHY smart power down\00", section ".modinfo", align 1
@e1000_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Warning: no configuration for board #%i using defaults for all values\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"e1000_check_options\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/e1000/e1000_param.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@e1000_check_options._entry_ptr = internal global ptr @e1000_check_options._entry, section ".printk_index", align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit Descriptors\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 256\00", [43 x i8] zeroinitializer }, align 32
@num_TxDescriptors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxDescriptors = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Receive Descriptors\00", [44 x i8] zeroinitializer }, align 32
@num_RxDescriptors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxDescriptors = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Checksum Offload\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defaulting to Enabled\00", [42 x i8] zeroinitializer }, align 32
@num_XsumRX = internal global { i32, [28 x i8] } zeroinitializer, align 32
@XsumRX = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000_check_options.fc_list = internal constant { [5 x %struct.e1000_opt_list], [56 x i8] } { [5 x %struct.e1000_opt_list] [%struct.e1000_opt_list { i32 0, ptr @.str.10 }, %struct.e1000_opt_list { i32 1, ptr @.str.11 }, %struct.e1000_opt_list { i32 2, ptr @.str.12 }, %struct.e1000_opt_list { i32 3, ptr @.str.13 }, %struct.e1000_opt_list { i32 255, ptr @.str.14 }], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control Disabled\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flow Control Receive Only\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flow Control Transmit Only\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flow Control Enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flow Control Hardware Default\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flow Control\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reading default settings from EEPROM\00", [59 x i8] zeroinitializer }, align 32
@num_FlowControl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@FlowControl = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Transmit Interrupt Delay\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 8\00", [45 x i8] zeroinitializer }, align 32
@num_TxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transmit Absolute Interrupt Delay\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using default of 32\00", [44 x i8] zeroinitializer }, align 32
@num_TxAbsIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxAbsIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Receive Interrupt Delay\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 0\00", [45 x i8] zeroinitializer }, align 32
@num_RxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive Absolute Interrupt Delay\00", [63 x i8] zeroinitializer }, align 32
@num_RxAbsIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxAbsIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Interrupt Throttling Rate (ints/sec)\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 3\00", [45 x i8] zeroinitializer }, align 32
@num_InterruptThrottleRate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@InterruptThrottleRate = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000_check_options._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s turned off\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@e1000_check_options._entry_ptr.29 = internal global ptr @e1000_check_options._entry.26, section ".printk_index", align 4
@e1000_check_options._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 445, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s set to dynamic mode\0A\00", [40 x i8] zeroinitializer }, align 32
@e1000_check_options._entry_ptr.32 = internal global ptr @e1000_check_options._entry.30, section ".printk_index", align 4
@e1000_check_options._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 451, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s set to dynamic conservative mode\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000_check_options._entry_ptr.35 = internal global ptr @e1000_check_options._entry.33, section ".printk_index", align 4
@e1000_check_options._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 457, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s set to simplified (2000-8000) ints mode\0A\00", [52 x i8] zeroinitializer }, align 32
@e1000_check_options._entry_ptr.38 = internal global ptr @e1000_check_options._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY Smart Power Down\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"defaulting to Disabled\00", [41 x i8] zeroinitializer }, align 32
@num_SmartPowerDownEnable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@SmartPowerDownEnable = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_Speed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@Speed = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@num_Duplex = internal global { i32, [28 x i8] } zeroinitializer, align 32
@Duplex = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@num_AutoNeg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@AutoNeg = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 196, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000_validate_option\00", [42 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr = internal global ptr @e1000_validate_option._entry, section ".printk_index", align 4
@e1000_validate_option._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 199, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.45 = internal global ptr @e1000_validate_option._entry.43, section ".printk_index", align 4
@e1000_validate_option._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 205, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s set to %i\0A\00", [18 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.48 = internal global ptr @e1000_validate_option._entry.46, section ".printk_index", align 4
@e1000_validate_option._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 217, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.51 = internal global ptr @e1000_validate_option._entry.49, section ".printk_index", align 4
@e1000_validate_option._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 228, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.54 = internal global ptr @e1000_validate_option._entry.52, section ".printk_index", align 4
@e1000_check_fiber_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 517, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Speed not valid for fiber adapters, parameter ignored\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"e1000_check_fiber_options\00", [38 x i8] zeroinitializer }, align 32
@e1000_check_fiber_options._entry_ptr = internal global ptr @e1000_check_fiber_options._entry, section ".printk_index", align 4
@e1000_check_fiber_options._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 522, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Duplex not valid for fiber adapters, parameter ignored\0A\00", [40 x i8] zeroinitializer }, align 32
@e1000_check_fiber_options._entry_ptr.59 = internal global ptr @e1000_check_fiber_options._entry.57, section ".printk_index", align 4
@e1000_check_fiber_options._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 527, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"AutoNeg other than 1000/Full is not valid for fiberadapters, parameter ignored\0A\00", [48 x i8] zeroinitializer }, align 32
@e1000_check_fiber_options._entry_ptr.62 = internal global ptr @e1000_check_fiber_options._entry.60, section ".printk_index", align 4
@e1000_check_copper_options.speed_list = internal constant { [4 x %struct.e1000_opt_list], [32 x i8] } { [4 x %struct.e1000_opt_list] [%struct.e1000_opt_list { i32 0, ptr @.str.63 }, %struct.e1000_opt_list { i32 10, ptr @.str.63 }, %struct.e1000_opt_list { i32 100, ptr @.str.63 }, %struct.e1000_opt_list { i32 1000, ptr @.str.63 }], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Speed\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parameter ignored\00", [46 x i8] zeroinitializer }, align 32
@e1000_check_copper_options.dplx_list = internal constant { [3 x %struct.e1000_opt_list], [40 x i8] } { [3 x %struct.e1000_opt_list] [%struct.e1000_opt_list { i32 0, ptr @.str.63 }, %struct.e1000_opt_list { i32 1, ptr @.str.63 }, %struct.e1000_opt_list { i32 2, ptr @.str.63 }], [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Duplex\00", [25 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 591, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"AutoNeg specified along with Speed or Duplex, parameter ignored\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"e1000_check_copper_options\00", [37 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr = internal global ptr @e1000_check_copper_options._entry, section ".printk_index", align 4
@e1000_check_copper_options.an_list = internal constant { [31 x %struct.e1000_opt_list], [40 x i8] } { [31 x %struct.e1000_opt_list] [%struct.e1000_opt_list { i32 1, ptr @.str.69 }, %struct.e1000_opt_list { i32 2, ptr @.str.70 }, %struct.e1000_opt_list { i32 3, ptr @.str.71 }, %struct.e1000_opt_list { i32 4, ptr @.str.72 }, %struct.e1000_opt_list { i32 5, ptr @.str.73 }, %struct.e1000_opt_list { i32 6, ptr @.str.74 }, %struct.e1000_opt_list { i32 7, ptr @.str.75 }, %struct.e1000_opt_list { i32 8, ptr @.str.76 }, %struct.e1000_opt_list { i32 9, ptr @.str.77 }, %struct.e1000_opt_list { i32 10, ptr @.str.78 }, %struct.e1000_opt_list { i32 11, ptr @.str.79 }, %struct.e1000_opt_list { i32 12, ptr @.str.80 }, %struct.e1000_opt_list { i32 13, ptr @.str.81 }, %struct.e1000_opt_list { i32 14, ptr @.str.82 }, %struct.e1000_opt_list { i32 15, ptr @.str.83 }, %struct.e1000_opt_list { i32 32, ptr @.str.84 }, %struct.e1000_opt_list { i32 33, ptr @.str.85 }, %struct.e1000_opt_list { i32 34, ptr @.str.86 }, %struct.e1000_opt_list { i32 35, ptr @.str.87 }, %struct.e1000_opt_list { i32 36, ptr @.str.88 }, %struct.e1000_opt_list { i32 37, ptr @.str.89 }, %struct.e1000_opt_list { i32 38, ptr @.str.90 }, %struct.e1000_opt_list { i32 39, ptr @.str.91 }, %struct.e1000_opt_list { i32 40, ptr @.str.92 }, %struct.e1000_opt_list { i32 41, ptr @.str.93 }, %struct.e1000_opt_list { i32 42, ptr @.str.94 }, %struct.e1000_opt_list { i32 43, ptr @.str.95 }, %struct.e1000_opt_list { i32 44, ptr @.str.96 }, %struct.e1000_opt_list { i32 45, ptr @.str.97 }, %struct.e1000_opt_list { i32 46, ptr @.str.98 }, %struct.e1000_opt_list { i32 47, ptr @.str.99 }], [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AutoNeg advertising 10/HD\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AutoNeg advertising 10/FD\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AutoNeg advertising 10/FD, 10/HD\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AutoNeg advertising 100/HD\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/HD, 10/HD\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/HD, 10/FD\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AutoNeg advertising 100/HD, 10/FD, 10/HD\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AutoNeg advertising 100/FD\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/FD, 10/HD\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/FD, 10/FD\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AutoNeg advertising 100/FD, 10/FD, 10/HD\00", [55 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 100/FD, 100/HD\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/HD\00", [54 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/FD\00", [54 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/FD, 10/HD\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AutoNeg advertising 1000/FD\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 1000/FD, 10/HD\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 1000/FD, 10/FD\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 1000/FD, 10/FD, 10/HD\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AutoNeg advertising 1000/FD, 100/HD\00", [60 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/HD\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/FD\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/FD, 10/HD\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AutoNeg advertising 1000/FD, 100/FD\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/HD\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/FD\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/FD, 10/HD\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD\00", [52 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/HD\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/FD\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/FD, 10/HD\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AutoNeg\00", [24 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.68, ptr @.str.2, i32 651, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Speed and duplex autonegotiation enabled\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.103 = internal global ptr @e1000_check_copper_options._entry.101, section ".printk_index", align 4
@e1000_check_copper_options._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.68, ptr @.str.2, i32 654, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Half Duplex specified without Speed\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.106 = internal global ptr @e1000_check_copper_options._entry.104, section ".printk_index", align 4
@e1000_check_copper_options._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.68, ptr @.str.2, i32 655, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using Autonegotiation at Half Duplex only\0A\00", [53 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.109 = internal global ptr @e1000_check_copper_options._entry.107, section ".printk_index", align 4
@e1000_check_copper_options._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.68, ptr @.str.2, i32 661, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Full Duplex specified without Speed\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.112 = internal global ptr @e1000_check_copper_options._entry.110, section ".printk_index", align 4
@e1000_check_copper_options._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.68, ptr @.str.2, i32 662, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using Autonegotiation at Full Duplex only\0A\00", [53 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.115 = internal global ptr @e1000_check_copper_options._entry.113, section ".printk_index", align 4
@e1000_check_copper_options._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.68, ptr @.str.2, i32 669, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"10 Mbps Speed specified without Duplex\0A\00", [56 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.118 = internal global ptr @e1000_check_copper_options._entry.116, section ".printk_index", align 4
@e1000_check_copper_options._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.68, ptr @.str.2, i32 670, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using Autonegotiation at 10 Mbps only\0A\00", [57 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.121 = internal global ptr @e1000_check_copper_options._entry.119, section ".printk_index", align 4
@e1000_check_copper_options._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.68, ptr @.str.2, i32 676, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forcing to 10 Mbps Half Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.124 = internal global ptr @e1000_check_copper_options._entry.122, section ".printk_index", align 4
@e1000_check_copper_options._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.68, ptr @.str.2, i32 682, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forcing to 10 Mbps Full Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.127 = internal global ptr @e1000_check_copper_options._entry.125, section ".printk_index", align 4
@e1000_check_copper_options._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.68, ptr @.str.2, i32 688, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"100 Mbps Speed specified without Duplex\0A\00", [55 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.130 = internal global ptr @e1000_check_copper_options._entry.128, section ".printk_index", align 4
@e1000_check_copper_options._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.68, ptr @.str.2, i32 689, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using Autonegotiation at 100 Mbps only\0A\00", [56 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.133 = internal global ptr @e1000_check_copper_options._entry.131, section ".printk_index", align 4
@e1000_check_copper_options._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.68, ptr @.str.2, i32 695, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Forcing to 100 Mbps Half Duplex\0A\00", [63 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.136 = internal global ptr @e1000_check_copper_options._entry.134, section ".printk_index", align 4
@e1000_check_copper_options._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.68, ptr @.str.2, i32 701, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Forcing to 100 Mbps Full Duplex\0A\00", [63 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.139 = internal global ptr @e1000_check_copper_options._entry.137, section ".printk_index", align 4
@e1000_check_copper_options._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.68, ptr @.str.2, i32 707, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"1000 Mbps Speed specified without Duplex\0A\00", [54 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.142 = internal global ptr @e1000_check_copper_options._entry.140, section ".printk_index", align 4
@e1000_check_copper_options._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.68, ptr @.str.2, i32 710, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Half Duplex is not supported at 1000 Mbps\0A\00", [53 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.145 = internal global ptr @e1000_check_copper_options._entry.143, section ".printk_index", align 4
@e1000_check_copper_options._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.68, ptr @.str.2, i32 715, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Using Autonegotiation at 1000 Mbps Full Duplex only\0A\00", [43 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.148 = internal global ptr @e1000_check_copper_options._entry.146, section ".printk_index", align 4
@e1000_check_copper_options._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.68, ptr @.str.2, i32 726, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Speed, AutoNeg and MDI-X specs are incompatible. Setting MDI-X to a compatible value.\0A\00", [41 x i8] zeroinitializer }, align 32
@e1000_check_copper_options._entry_ptr.151 = internal global ptr @e1000_check_copper_options._entry.149, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11, i64 12, i64 100, i64 101, i64 102, i64 1000, i64 1001, i64 1002]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 251, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 262, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 263, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [18 x i8] c"num_TxDescriptors\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"TxDescriptors\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 35, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 290, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"num_RxDescriptors\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [14 x i8] c"RxDescriptors\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 44, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 315, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 316, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"num_XsumRX\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"XsumRX\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 109, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"fc_list\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 330, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 331, i32 27 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 332, i32 31 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 333, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 334, i32 27 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 335, i32 30 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 340, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 341, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"num_FlowControl\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [12 x i8] c"FlowControl\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 97, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 358, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 359, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"num_TxIntDelay\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [11 x i8] c"TxIntDelay\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 116, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 376, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 377, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant [18 x i8] c"num_TxAbsIntDelay\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [14 x i8] c"TxAbsIntDelay\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 125, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 394, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 395, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"num_RxIntDelay\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [11 x i8] c"RxIntDelay\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 135, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 412, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant [18 x i8] c"num_RxAbsIntDelay\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"RxAbsIntDelay\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 144, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 430, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 431, i32 12 }
@___asan_gen_.288 = private unnamed_addr constant [26 x i8] c"num_InterruptThrottleRate\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [22 x i8] c"InterruptThrottleRate\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 153, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 441, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 444, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 450, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 456, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 479, i32 12 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 480, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant [25 x i8] c"num_SmartPowerDownEnable\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [21 x i8] c"SmartPowerDownEnable\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 164, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [10 x i8] c"num_Speed\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 56, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant [11 x i8] c"num_Duplex\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 67, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"num_AutoNeg\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [8 x i8] c"AutoNeg\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 83, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 196, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 199, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 205, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 217, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 227, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 516, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 521, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 526, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant [11 x i8] c"speed_list\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 544, i32 38 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 545, i32 18 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 552, i32 12 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 553, i32 12 }
@___asan_gen_.417 = private unnamed_addr constant [10 x i8] c"dplx_list\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 567, i32 38 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 574, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 590, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [8 x i8] c"an_list\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 594, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 596, i32 13 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 597, i32 13 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 598, i32 13 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 599, i32 13 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 600, i32 13 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 601, i32 13 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 602, i32 13 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 603, i32 13 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 604, i32 13 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 605, i32 13 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 606, i32 13 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 607, i32 13 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 608, i32 13 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 609, i32 13 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 610, i32 13 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 611, i32 13 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 612, i32 13 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 613, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 614, i32 13 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 615, i32 13 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 616, i32 13 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 617, i32 13 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 618, i32 13 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 619, i32 13 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 620, i32 13 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 621, i32 13 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 622, i32 13 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 623, i32 13 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 624, i32 13 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 625, i32 13 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 626, i32 13 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 630, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 650, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 654, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 655, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 661, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 662, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 669, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 670, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 676, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 682, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 688, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 689, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 695, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 701, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 707, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 710, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 714, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [50 x i8] c"../drivers/net/ethernet/intel/e1000/e1000_param.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 725, i32 3 }
@llvm.compiler.used = appending global [229 x ptr] [ptr @__UNIQUE_ID_AutoNeg510, ptr @__UNIQUE_ID_AutoNegtype509, ptr @__UNIQUE_ID_Duplex508, ptr @__UNIQUE_ID_Duplextype507, ptr @__UNIQUE_ID_FlowControl512, ptr @__UNIQUE_ID_FlowControltype511, ptr @__UNIQUE_ID_InterruptThrottleRate524, ptr @__UNIQUE_ID_InterruptThrottleRatetype523, ptr @__UNIQUE_ID_RxAbsIntDelay522, ptr @__UNIQUE_ID_RxAbsIntDelaytype521, ptr @__UNIQUE_ID_RxDescriptors504, ptr @__UNIQUE_ID_RxDescriptorstype503, ptr @__UNIQUE_ID_RxIntDelay520, ptr @__UNIQUE_ID_RxIntDelaytype519, ptr @__UNIQUE_ID_SmartPowerDownEnable526, ptr @__UNIQUE_ID_SmartPowerDownEnabletype525, ptr @__UNIQUE_ID_Speed506, ptr @__UNIQUE_ID_Speedtype505, ptr @__UNIQUE_ID_TxAbsIntDelay518, ptr @__UNIQUE_ID_TxAbsIntDelaytype517, ptr @__UNIQUE_ID_TxDescriptors502, ptr @__UNIQUE_ID_TxDescriptorstype501, ptr @__UNIQUE_ID_TxIntDelay516, ptr @__UNIQUE_ID_TxIntDelaytype515, ptr @__UNIQUE_ID_XsumRX514, ptr @__UNIQUE_ID_XsumRXtype513, ptr @__param_AutoNeg, ptr @__param_Duplex, ptr @__param_FlowControl, ptr @__param_InterruptThrottleRate, ptr @__param_RxAbsIntDelay, ptr @__param_RxDescriptors, ptr @__param_RxIntDelay, ptr @__param_SmartPowerDownEnable, ptr @__param_Speed, ptr @__param_TxAbsIntDelay, ptr @__param_TxDescriptors, ptr @__param_TxIntDelay, ptr @__param_XsumRX, ptr @e1000_check_copper_options._entry, ptr @e1000_check_copper_options._entry.101, ptr @e1000_check_copper_options._entry.104, ptr @e1000_check_copper_options._entry.107, ptr @e1000_check_copper_options._entry.110, ptr @e1000_check_copper_options._entry.113, ptr @e1000_check_copper_options._entry.116, ptr @e1000_check_copper_options._entry.119, ptr @e1000_check_copper_options._entry.122, ptr @e1000_check_copper_options._entry.125, ptr @e1000_check_copper_options._entry.128, ptr @e1000_check_copper_options._entry.131, ptr @e1000_check_copper_options._entry.134, ptr @e1000_check_copper_options._entry.137, ptr @e1000_check_copper_options._entry.140, ptr @e1000_check_copper_options._entry.143, ptr @e1000_check_copper_options._entry.146, ptr @e1000_check_copper_options._entry.149, ptr @e1000_check_copper_options._entry_ptr, ptr @e1000_check_copper_options._entry_ptr.103, ptr @e1000_check_copper_options._entry_ptr.106, ptr @e1000_check_copper_options._entry_ptr.109, ptr @e1000_check_copper_options._entry_ptr.112, ptr @e1000_check_copper_options._entry_ptr.115, ptr @e1000_check_copper_options._entry_ptr.118, ptr @e1000_check_copper_options._entry_ptr.121, ptr @e1000_check_copper_options._entry_ptr.124, ptr @e1000_check_copper_options._entry_ptr.127, ptr @e1000_check_copper_options._entry_ptr.130, ptr @e1000_check_copper_options._entry_ptr.133, ptr @e1000_check_copper_options._entry_ptr.136, ptr @e1000_check_copper_options._entry_ptr.139, ptr @e1000_check_copper_options._entry_ptr.142, ptr @e1000_check_copper_options._entry_ptr.145, ptr @e1000_check_copper_options._entry_ptr.148, ptr @e1000_check_copper_options._entry_ptr.151, ptr @e1000_check_fiber_options._entry, ptr @e1000_check_fiber_options._entry.57, ptr @e1000_check_fiber_options._entry.60, ptr @e1000_check_fiber_options._entry_ptr, ptr @e1000_check_fiber_options._entry_ptr.59, ptr @e1000_check_fiber_options._entry_ptr.62, ptr @e1000_check_options._entry, ptr @e1000_check_options._entry.26, ptr @e1000_check_options._entry.30, ptr @e1000_check_options._entry.33, ptr @e1000_check_options._entry.36, ptr @e1000_check_options._entry_ptr, ptr @e1000_check_options._entry_ptr.29, ptr @e1000_check_options._entry_ptr.32, ptr @e1000_check_options._entry_ptr.35, ptr @e1000_check_options._entry_ptr.38, ptr @e1000_validate_option._entry, ptr @e1000_validate_option._entry.43, ptr @e1000_validate_option._entry.46, ptr @e1000_validate_option._entry.49, ptr @e1000_validate_option._entry.52, ptr @e1000_validate_option._entry_ptr, ptr @e1000_validate_option._entry_ptr.45, ptr @e1000_validate_option._entry_ptr.48, ptr @e1000_validate_option._entry_ptr.51, ptr @e1000_validate_option._entry_ptr.54, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @num_TxDescriptors, ptr @TxDescriptors, ptr @.str.7, ptr @num_RxDescriptors, ptr @RxDescriptors, ptr @.str.8, ptr @.str.9, ptr @num_XsumRX, ptr @XsumRX, ptr @e1000_check_options.fc_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @num_FlowControl, ptr @FlowControl, ptr @.str.17, ptr @.str.18, ptr @num_TxIntDelay, ptr @TxIntDelay, ptr @.str.19, ptr @.str.20, ptr @num_TxAbsIntDelay, ptr @TxAbsIntDelay, ptr @.str.21, ptr @.str.22, ptr @num_RxIntDelay, ptr @RxIntDelay, ptr @.str.23, ptr @num_RxAbsIntDelay, ptr @RxAbsIntDelay, ptr @.str.24, ptr @.str.25, ptr @num_InterruptThrottleRate, ptr @InterruptThrottleRate, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @num_SmartPowerDownEnable, ptr @SmartPowerDownEnable, ptr @num_Speed, ptr @Speed, ptr @num_Duplex, ptr @Duplex, ptr @num_AutoNeg, ptr @AutoNeg, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @e1000_check_copper_options.speed_list, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @e1000_check_copper_options.dplx_list, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @e1000_check_copper_options.an_list, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxDescriptors to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxDescriptors to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_XsumRX to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XsumRX to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options.fc_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_FlowControl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlowControl to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxAbsIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxAbsIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxAbsIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxAbsIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_InterruptThrottleRate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InterruptThrottleRate to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_options._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_SmartPowerDownEnable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SmartPowerDownEnable to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_Speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Speed to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_Duplex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Duplex to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_AutoNeg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AutoNeg to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_fiber_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_fiber_options._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_fiber_options._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options.speed_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options.dplx_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options.an_list to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_check_copper_options._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_check_options(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %opt.i = alloca %struct.e1000_option, align 4
  %speed.i = alloca i32, align 4
  %dplx.i = alloca i32, align 4
  %an.i = alloca i32, align 4
  %opt = alloca %struct.e1000_option, align 4
  %rx_csum = alloca i32, align 4
  %fc = alloca i32, align 4
  %spd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #4
  %0 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %bd_number = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 2
  %5 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp = icmp sgt i32 %6, 31
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %6) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_ring1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 19
  %9 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring1, align 8
  %mac_type2 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 3
  %11 = ptrtoint ptr %mac_type2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mac_type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp3 = icmp ult i32 %12, 4
  %cond = select i1 %cmp3, i32 256, i32 4096
  %13 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %opt, align 4
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.5, ptr %0, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %1, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %4, align 4
  %19 = load i32, ptr @num_TxDescriptors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %6)
  %cmp4 = icmp ugt i32 %19, %6
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [33 x i32], ptr @TxDescriptors, i32 0, i32 %6
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.e1000_tx_ring, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count, align 4
  call fastcc void @e1000_validate_option(ptr noundef %count, ptr noundef nonnull %opt, ptr noundef %adapter)
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %add = add i32 %24, 7
  %and = and i32 %add, -8
  store i32 %and, ptr %count, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %count10 = getelementptr inbounds %struct.e1000_tx_ring, ptr %10, i32 0, i32 3
  %27 = ptrtoint ptr %count10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %count10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %num_tx_queues = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 41
  %28 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp12348 = icmp sgt i32 %29, 0
  br i1 %cmp12348, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %count13 = getelementptr inbounds %struct.e1000_tx_ring, ptr %10, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0349 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %count13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count13, align 4
  %count15 = getelementptr %struct.e1000_tx_ring, ptr %10, i32 %i.0349, i32 3
  %32 = ptrtoint ptr %count15 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %count15, align 4
  %inc = add nuw nsw i32 %i.0349, 1
  %33 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_tx_queues, align 8
  %cmp12 = icmp slt i32 %inc, %34
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %rx_ring16 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 39
  %35 = ptrtoint ptr %rx_ring16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_ring16, align 4
  %37 = ptrtoint ptr %mac_type2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mac_type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp29 = icmp ult i32 %38, 4
  %cond30 = select i1 %cmp29, i32 256, i32 4096
  %39 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %opt, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.7, ptr %0, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.6, ptr %1, align 4
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %2, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 48, ptr %3, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond30, ptr %4, align 4
  %45 = load i32, ptr @num_RxDescriptors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %6)
  %cmp31 = icmp ugt i32 %45, %6
  br i1 %cmp31, label %if.then32, label %if.else41

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx33 = getelementptr [33 x i32], ptr @RxDescriptors, i32 0, i32 %6
  %46 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx33, align 4
  %count34 = getelementptr inbounds %struct.e1000_rx_ring, ptr %36, i32 0, i32 3
  %48 = ptrtoint ptr %count34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %count34, align 4
  call fastcc void @e1000_validate_option(ptr noundef %count34, ptr noundef nonnull %opt, ptr noundef %adapter)
  %49 = ptrtoint ptr %count34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count34, align 4
  %add38 = add i32 %50, 7
  %and39 = and i32 %add38, -8
  store i32 %and39, ptr %count34, align 4
  br label %if.end44

if.else41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %2, align 4
  %count43 = getelementptr inbounds %struct.e1000_rx_ring, ptr %36, i32 0, i32 3
  %53 = ptrtoint ptr %count43 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %count43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else41, %if.then32
  %num_rx_queues = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 42
  %54 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_rx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp46350 = icmp sgt i32 %55, 0
  br i1 %cmp46350, label %for.body47.lr.ph, label %if.end44.for.end53_crit_edge

if.end44.for.end53_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end53

for.body47.lr.ph:                                 ; preds = %if.end44
  %count48 = getelementptr inbounds %struct.e1000_rx_ring, ptr %36, i32 0, i32 3
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.lr.ph
  %i17.0351 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc52, %for.body47.for.body47_crit_edge ]
  %56 = ptrtoint ptr %count48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count48, align 4
  %count50 = getelementptr %struct.e1000_rx_ring, ptr %36, i32 %i17.0351, i32 3
  %58 = ptrtoint ptr %count50 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %count50, align 4
  %inc52 = add nuw nsw i32 %i17.0351, 1
  %59 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_rx_queues, align 4
  %cmp46 = icmp slt i32 %inc52, %60
  br i1 %cmp46, label %for.body47.for.body47_crit_edge, label %for.body47.for.end53_crit_edge

for.body47.for.end53_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end53

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body47

for.end53:                                        ; preds = %for.body47.for.end53_crit_edge, %if.end44.for.end53_crit_edge
  %61 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %opt, align 4
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.8, ptr %0, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.9, ptr %1, align 4
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %2, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 0, ptr %3, align 4
  %66 = load i32, ptr @num_XsumRX, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %6)
  %cmp60 = icmp ugt i32 %66, %6
  br i1 %cmp60, label %if.then61, label %if.else65

if.then61:                                        ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_csum) #4
  %arrayidx62 = getelementptr [33 x i32], ptr @XsumRX, i32 0, i32 %6
  %67 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx62, align 4
  %69 = ptrtoint ptr %rx_csum to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %rx_csum, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %rx_csum, ptr noundef nonnull %opt, ptr noundef %adapter)
  %70 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_csum, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_csum) #4
  br label %if.end70

if.else65:                                        ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then61
  %frombool69.sink.in.in = phi i32 [ %71, %if.then61 ], [ %73, %if.else65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frombool69.sink.in.in)
  %frombool69.sink.in = icmp ne i32 %frombool69.sink.in.in, 0
  %frombool69.sink = zext i1 %frombool69.sink.in to i8
  %74 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 48
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool69.sink, ptr %74, align 4
  %76 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %opt, align 4
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.15, ptr %0, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.16, ptr %1, align 4
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 255, ptr %2, align 4
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 5, ptr %3, align 4
  %81 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @e1000_check_options.fc_list, ptr %4, align 4
  %82 = load i32, ptr @num_FlowControl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %6)
  %cmp77 = icmp ugt i32 %82, %6
  br i1 %cmp77, label %if.then78, label %if.else84

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #4
  %arrayidx79 = getelementptr [33 x i32], ptr @FlowControl, i32 0, i32 %6
  %83 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx79, align 4
  %85 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %fc, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %fc, ptr noundef nonnull %opt, ptr noundef %adapter)
  %86 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fc, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #4
  br label %if.end90

if.else84:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %2, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then78
  %.sink352 = phi i32 [ %87, %if.then78 ], [ %89, %if.else84 ]
  %90 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 25
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink352, ptr %90, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 11
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink352, ptr %92, align 4
  %94 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %opt, align 4
  %95 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.17, ptr %0, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @.str.18, ptr %1, align 4
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8, ptr %2, align 4
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %3, align 4
  %99 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 65535, ptr %4, align 4
  %100 = load i32, ptr @num_TxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %6)
  %cmp99 = icmp ugt i32 %100, %6
  br i1 %cmp99, label %if.then100, label %if.else104

if.then100:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx101 = getelementptr [33 x i32], ptr @TxIntDelay, i32 0, i32 %6
  %101 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx101, align 4
  %tx_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 22
  %103 = ptrtoint ptr %tx_int_delay to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %tx_int_delay, align 4
  call fastcc void @e1000_validate_option(ptr noundef %tx_int_delay, ptr noundef nonnull %opt, ptr noundef %adapter)
  br label %if.end107

if.else104:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %2, align 4
  %tx_int_delay106 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 22
  %106 = ptrtoint ptr %tx_int_delay106 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %tx_int_delay106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else104, %if.then100
  %107 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %opt, align 4
  %108 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @.str.19, ptr %0, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @.str.20, ptr %1, align 4
  %110 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 32, ptr %2, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %3, align 4
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 65535, ptr %4, align 4
  %113 = load i32, ptr @num_TxAbsIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %6)
  %cmp116 = icmp ugt i32 %113, %6
  br i1 %cmp116, label %if.then117, label %if.else121

if.then117:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx118 = getelementptr [33 x i32], ptr @TxAbsIntDelay, i32 0, i32 %6
  %114 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx118, align 4
  %tx_abs_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 23
  %116 = ptrtoint ptr %tx_abs_int_delay to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %tx_abs_int_delay, align 8
  call fastcc void @e1000_validate_option(ptr noundef %tx_abs_int_delay, ptr noundef nonnull %opt, ptr noundef %adapter)
  br label %if.end124

if.else121:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %2, align 4
  %tx_abs_int_delay123 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 23
  %119 = ptrtoint ptr %tx_abs_int_delay123 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %tx_abs_int_delay123, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then117
  %120 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %opt, align 4
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.21, ptr %0, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.22, ptr %1, align 4
  %123 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %2, align 4
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %3, align 4
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 65535, ptr %4, align 4
  %126 = load i32, ptr @num_RxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %6)
  %cmp133 = icmp ugt i32 %126, %6
  br i1 %cmp133, label %if.then134, label %if.else138

if.then134:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx135 = getelementptr [33 x i32], ptr @RxIntDelay, i32 0, i32 %6
  %127 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx135, align 4
  %rx_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 46
  %129 = ptrtoint ptr %rx_int_delay to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %rx_int_delay, align 4
  call fastcc void @e1000_validate_option(ptr noundef %rx_int_delay, ptr noundef nonnull %opt, ptr noundef %adapter)
  br label %if.end141

if.else138:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #6
  %130 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %2, align 4
  %rx_int_delay140 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 46
  %132 = ptrtoint ptr %rx_int_delay140 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %rx_int_delay140, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else138, %if.then134
  %133 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %opt, align 4
  %134 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.23, ptr %0, align 4
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.18, ptr %1, align 4
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 8, ptr %2, align 4
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %3, align 4
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 65535, ptr %4, align 4
  %139 = load i32, ptr @num_RxAbsIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %6)
  %cmp150 = icmp ugt i32 %139, %6
  br i1 %cmp150, label %if.then151, label %if.else155

if.then151:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx152 = getelementptr [33 x i32], ptr @RxAbsIntDelay, i32 0, i32 %6
  %140 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx152, align 4
  %rx_abs_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 47
  %142 = ptrtoint ptr %rx_abs_int_delay to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %rx_abs_int_delay, align 8
  call fastcc void @e1000_validate_option(ptr noundef %rx_abs_int_delay, ptr noundef nonnull %opt, ptr noundef %adapter)
  br label %if.end158

if.else155:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %2, align 4
  %rx_abs_int_delay157 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 47
  %145 = ptrtoint ptr %rx_abs_int_delay157 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %rx_abs_int_delay157, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.else155, %if.then151
  %146 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %opt, align 4
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.24, ptr %0, align 4
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.25, ptr %1, align 4
  %149 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3, ptr %2, align 4
  %150 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 100, ptr %3, align 4
  %151 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 100000, ptr %4, align 4
  %152 = load i32, ptr @num_InterruptThrottleRate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %6)
  %cmp167 = icmp ugt i32 %152, %6
  br i1 %cmp167, label %if.then168, label %if.else210

if.then168:                                       ; preds = %if.end158
  %arrayidx169 = getelementptr [33 x i32], ptr @InterruptThrottleRate, i32 0, i32 %6
  %153 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx169, align 4
  %itr = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 14
  %155 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %itr, align 8
  %156 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values)
  switch i32 %154, label %sw.default [
    i32 0, label %do.end173
    i32 1, label %do.end180
    i32 3, label %do.end189
    i32 4, label %do.end199
  ]

do.end173:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %pdev174 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %157 = ptrtoint ptr %pdev174 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdev174, align 4
  %dev175 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  %159 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev175, ptr noundef nonnull @.str.27, ptr noundef %160) #7
  br label %if.end214

do.end180:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %pdev181 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %161 = ptrtoint ptr %pdev181 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdev181, align 4
  %dev182 = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %163 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev182, ptr noundef nonnull @.str.31, ptr noundef %164) #7
  %165 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %itr, align 8
  %itr_setting = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %167 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %itr_setting, align 4
  store i32 20000, ptr %itr, align 8
  br label %if.end214

do.end189:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %pdev190 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %168 = ptrtoint ptr %pdev190 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pdev190, align 4
  %dev191 = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  %170 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev191, ptr noundef nonnull @.str.34, ptr noundef %171) #7
  %172 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %itr, align 8
  %itr_setting194 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %174 = ptrtoint ptr %itr_setting194 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %itr_setting194, align 4
  store i32 20000, ptr %itr, align 8
  br label %if.end214

do.end199:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %pdev200 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %175 = ptrtoint ptr %pdev200 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pdev200, align 4
  %dev201 = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %177 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev201, ptr noundef nonnull @.str.37, ptr noundef %178) #7
  %179 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %itr, align 8
  %itr_setting204 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %181 = ptrtoint ptr %itr_setting204 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %itr_setting204, align 4
  br label %if.end214

sw.default:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @e1000_validate_option(ptr noundef %itr, ptr noundef nonnull %opt, ptr noundef %adapter)
  %182 = ptrtoint ptr %itr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %itr, align 8
  %and208 = and i32 %183, -4
  %itr_setting209 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %184 = ptrtoint ptr %itr_setting209 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %and208, ptr %itr_setting209, align 4
  br label %if.end214

if.else210:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #6
  %185 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %2, align 4
  %itr_setting212 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %187 = ptrtoint ptr %itr_setting212 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %itr_setting212, align 4
  %itr213 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 14
  %188 = ptrtoint ptr %itr213 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 20000, ptr %itr213, align 8
  br label %if.end214

if.end214:                                        ; preds = %if.else210, %sw.default, %do.end199, %do.end189, %do.end180, %do.end173
  %189 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %opt, align 4
  %190 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.39, ptr %0, align 4
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @.str.40, ptr %1, align 4
  %192 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %2, align 4
  %193 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %193, i32 8)
  store i64 0, ptr %3, align 4
  %194 = load i32, ptr @num_SmartPowerDownEnable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %6)
  %cmp221 = icmp ugt i32 %194, %6
  br i1 %cmp221, label %if.then222, label %if.else227

if.then222:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spd) #4
  %arrayidx223 = getelementptr [33 x i32], ptr @SmartPowerDownEnable, i32 0, i32 %6
  %195 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx223, align 4
  %197 = ptrtoint ptr %spd to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %spd, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %spd, ptr noundef nonnull %opt, ptr noundef %adapter)
  %198 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %spd, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spd) #4
  br label %if.end232

if.else227:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #6
  %200 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %2, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.else227, %if.then222
  %frombool231.sink.in.in = phi i32 [ %199, %if.then222 ], [ %201, %if.else227 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frombool231.sink.in.in)
  %frombool231.sink.in = icmp ne i32 %frombool231.sink.in.in, 0
  %frombool231.sink = zext i1 %frombool231.sink.in to i8
  %202 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 62
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %frombool231.sink, ptr %202, align 1
  %media_type = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 6
  %204 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %media_type, align 8
  %206 = zext i32 %205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %205, label %do.body237 [
    i32 1, label %if.end232.sw.bb234_crit_edge
    i32 2, label %if.end232.sw.bb234_crit_edge353
    i32 0, label %sw.bb235
  ]

if.end232.sw.bb234_crit_edge353:                  ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb234

if.end232.sw.bb234_crit_edge:                     ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb234

sw.bb234:                                         ; preds = %if.end232.sw.bb234_crit_edge, %if.end232.sw.bb234_crit_edge353
  %207 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %bd_number, align 4
  %209 = load i32, ptr @num_Speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %208)
  %cmp.i = icmp ugt i32 %209, %208
  br i1 %cmp.i, label %do.end.i, label %sw.bb234.if.end.i_crit_edge

sw.bb234.if.end.i_crit_edge:                      ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %210 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.55) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb234.if.end.i_crit_edge
  %212 = load i32, ptr @num_Duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %208)
  %cmp1.i = icmp ugt i32 %212, %208
  br i1 %cmp1.i, label %do.end5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev6.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %213 = ptrtoint ptr %pdev6.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pdev6.i, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i, ptr noundef nonnull @.str.58) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end5.i, %if.end.i.if.end8.i_crit_edge
  %215 = load i32, ptr @num_AutoNeg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %208)
  %cmp9.i = icmp ugt i32 %215, %208
  br i1 %cmp9.i, label %land.lhs.true.i, label %if.end8.i.sw.epilog243_crit_edge

if.end8.i.sw.epilog243_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog243

land.lhs.true.i:                                  ; preds = %if.end8.i
  %arrayidx.i = getelementptr [33 x i32], ptr @AutoNeg, i32 0, i32 %208
  %216 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %217)
  %cmp10.not.i = icmp eq i32 %217, 32
  br i1 %cmp10.not.i, label %land.lhs.true.i.sw.epilog243_crit_edge, label %do.end14.i

land.lhs.true.i.sw.epilog243_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog243

do.end14.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev15.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %218 = ptrtoint ptr %pdev15.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pdev15.i, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.61) #7
  br label %sw.epilog243

sw.bb235:                                         ; preds = %if.end232
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt.i) #4
  %220 = getelementptr inbounds %struct.e1000_option, ptr %opt.i, i32 0, i32 1
  %221 = getelementptr inbounds %struct.e1000_option, ptr %opt.i, i32 0, i32 2
  %222 = getelementptr inbounds %struct.e1000_option, ptr %opt.i, i32 0, i32 3
  %223 = getelementptr inbounds %struct.e1000_option, ptr %opt.i, i32 0, i32 4
  %224 = getelementptr inbounds %struct.e1000_option, ptr %opt.i, i32 0, i32 4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dplx.i) #4
  %225 = ptrtoint ptr %dplx.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1, ptr %dplx.i, align 4, !annotation !371
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %an.i) #4
  %226 = ptrtoint ptr %an.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 -1, ptr %an.i, align 4, !annotation !371
  %227 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %bd_number, align 4
  %229 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 2, ptr %opt.i, align 4
  %230 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @.str.64, ptr %220, align 4
  %231 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @.str.65, ptr %221, align 4
  %232 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %222, align 4
  %233 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 4, ptr %223, align 4
  %234 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr @e1000_check_copper_options.speed_list, ptr %224, align 4
  %235 = load i32, ptr @num_Speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %235, i32 %228)
  %cmp.i341 = icmp ugt i32 %235, %228
  br i1 %cmp.i341, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i342 = getelementptr [33 x i32], ptr @Speed, i32 0, i32 %228
  %236 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.i342, align 4
  %238 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %speed.i, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %speed.i, ptr noundef nonnull %opt.i, ptr noundef %adapter) #4
  br label %if.end.i343

if.else.i:                                        ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #6
  %239 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %speed.i, align 4
  br label %if.end.i343

if.end.i343:                                      ; preds = %if.else.i, %if.then.i
  %240 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 2, ptr %opt.i, align 4
  %241 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @.str.66, ptr %220, align 4
  %242 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @.str.65, ptr %221, align 4
  %243 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %222, align 4
  %244 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 3, ptr %223, align 4
  %245 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr @e1000_check_copper_options.dplx_list, ptr %224, align 4
  %246 = load i32, ptr @num_Duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %228)
  %cmp10.i = icmp ugt i32 %246, %228
  br i1 %cmp10.i, label %if.then11.i, label %if.else14.i

if.then11.i:                                      ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx12.i = getelementptr [33 x i32], ptr @Duplex, i32 0, i32 %228
  %247 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx12.i, align 4
  %249 = ptrtoint ptr %dplx.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %dplx.i, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %dplx.i, ptr noundef nonnull %opt.i, ptr noundef %adapter) #4
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.end.i343
  call void @__sanitizer_cov_trace_pc() #6
  %250 = ptrtoint ptr %dplx.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %dplx.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then11.i
  %251 = load i32, ptr @num_AutoNeg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %228)
  %cmp17.i = icmp ugt i32 %251, %228
  br i1 %cmp17.i, label %land.lhs.true.i344, label %if.else34.i

land.lhs.true.i344:                               ; preds = %if.end16.i
  %252 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp18.not.i = icmp eq i32 %253, 0
  br i1 %cmp18.not.i, label %lor.lhs.false.i, label %land.lhs.true.i344.do.end.i347_crit_edge

land.lhs.true.i344.do.end.i347_crit_edge:         ; preds = %land.lhs.true.i344
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i347

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i344
  %254 = ptrtoint ptr %dplx.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %dplx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp19.not.i = icmp eq i32 %255, 0
  br i1 %cmp19.not.i, label %if.then31.i, label %lor.lhs.false.i.do.end.i347_crit_edge

lor.lhs.false.i.do.end.i347_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i347

do.end.i347:                                      ; preds = %lor.lhs.false.i.do.end.i347_crit_edge, %land.lhs.true.i344.do.end.i347_crit_edge
  %pdev.i345 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %256 = ptrtoint ptr %pdev.i345 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pdev.i345, align 4
  %dev.i346 = getelementptr inbounds %struct.pci_dev, ptr %257, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i346, ptr noundef nonnull @.str.67) #7
  br label %if.end39.i

if.then31.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %258 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 2, ptr %opt.i, align 4
  %259 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr @.str.100, ptr %220, align 4
  %260 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @.str.65, ptr %221, align 4
  %261 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 47, ptr %222, align 4
  %262 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 31, ptr %223, align 4
  %263 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @e1000_check_copper_options.an_list, ptr %224, align 4
  %arrayidx32.i = getelementptr [33 x i32], ptr @AutoNeg, i32 0, i32 %228
  %264 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx32.i, align 4
  %266 = ptrtoint ptr %an.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %an.i, align 4
  call fastcc void @e1000_validate_option(ptr noundef nonnull %an.i, ptr noundef nonnull %opt.i, ptr noundef %adapter) #4
  br label %if.end36.i

if.else34.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  %267 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 2, ptr %opt.i, align 4
  %268 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr @.str.100, ptr %220, align 4
  %269 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @.str.65, ptr %221, align 4
  %270 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 47, ptr %222, align 4
  %271 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 31, ptr %223, align 4
  %272 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr @e1000_check_copper_options.an_list, ptr %224, align 4
  %273 = ptrtoint ptr %an.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 47, ptr %an.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else34.i, %if.then31.i
  %274 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %an.i, align 4
  %conv.i = trunc i32 %275 to i16
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %do.end.i347
  %conv.sink.i = phi i16 [ %conv.i, %if.end36.i ], [ 47, %do.end.i347 ]
  %autoneg_advertised38.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 40
  %276 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv.sink.i, ptr %autoneg_advertised38.i, align 2
  %277 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %speed.i, align 4
  %279 = ptrtoint ptr %dplx.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %dplx.i, align 4
  %add.i = add i32 %280, %278
  %281 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %add.i, label %do.body194.i [
    i32 0, label %sw.bb.i
    i32 1, label %do.end59.i
    i32 2, label %do.end75.i
    i32 10, label %do.end91.i
    i32 11, label %do.end107.i
    i32 12, label %do.end119.i
    i32 100, label %do.end132.i
    i32 101, label %do.end148.i
    i32 102, label %do.end161.i
    i32 1000, label %if.end39.i.do.end186.sink.split.i_crit_edge
    i32 1001, label %do.end180.i
    i32 1002, label %if.end39.i.do.end186.i_crit_edge
  ]

if.end39.i.do.end186.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end186.i

if.end39.i.do.end186.sink.split.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end186.sink.split.i

sw.bb.i:                                          ; preds = %if.end39.i
  %fc_autoneg.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %282 = ptrtoint ptr %fc_autoneg.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 1, ptr %fc_autoneg.i, align 4
  %autoneg.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %283 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %autoneg.i, align 1
  %284 = load i32, ptr @num_Speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %228)
  %cmp41.i = icmp ugt i32 %284, %228
  br i1 %cmp41.i, label %land.lhs.true43.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

land.lhs.true43.i:                                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %cmp44.not.i = icmp eq i32 %278, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp47.not.i = icmp eq i32 %280, 0
  %or.cond.i = select i1 %cmp44.not.i, i1 %cmp47.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true43.i.sw.epilog.i_crit_edge, label %do.end52.i

land.lhs.true43.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

do.end52.i:                                       ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev53.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %285 = ptrtoint ptr %pdev53.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pdev53.i, align 4
  %dev54.i = getelementptr inbounds %struct.pci_dev, ptr %286, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54.i, ptr noundef nonnull @.str.102) #7
  br label %sw.epilog.i

do.end59.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev60.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %287 = ptrtoint ptr %pdev60.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %pdev60.i, align 4
  %dev61.i = getelementptr inbounds %struct.pci_dev, ptr %288, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61.i, ptr noundef nonnull @.str.105) #7
  %289 = ptrtoint ptr %pdev60.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pdev60.i, align 4
  %dev66.i = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev66.i, ptr noundef nonnull @.str.108) #7
  %fc_autoneg67.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %291 = ptrtoint ptr %fc_autoneg67.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 1, ptr %fc_autoneg67.i, align 4
  %autoneg69.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %292 = ptrtoint ptr %autoneg69.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 1, ptr %autoneg69.i, align 1
  %293 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 5, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end75.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev76.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %294 = ptrtoint ptr %pdev76.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %pdev76.i, align 4
  %dev77.i = getelementptr inbounds %struct.pci_dev, ptr %295, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.i, ptr noundef nonnull @.str.111) #7
  %296 = ptrtoint ptr %pdev76.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %pdev76.i, align 4
  %dev82.i = getelementptr inbounds %struct.pci_dev, ptr %297, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82.i, ptr noundef nonnull @.str.114) #7
  %fc_autoneg83.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %298 = ptrtoint ptr %fc_autoneg83.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 1, ptr %fc_autoneg83.i, align 4
  %autoneg85.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %299 = ptrtoint ptr %autoneg85.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %autoneg85.i, align 1
  %300 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 42, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end91.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev92.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %301 = ptrtoint ptr %pdev92.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %pdev92.i, align 4
  %dev93.i = getelementptr inbounds %struct.pci_dev, ptr %302, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93.i, ptr noundef nonnull @.str.117) #7
  %303 = ptrtoint ptr %pdev92.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %pdev92.i, align 4
  %dev98.i = getelementptr inbounds %struct.pci_dev, ptr %304, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98.i, ptr noundef nonnull @.str.120) #7
  %fc_autoneg99.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %305 = ptrtoint ptr %fc_autoneg99.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 1, ptr %fc_autoneg99.i, align 4
  %autoneg101.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %306 = ptrtoint ptr %autoneg101.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 1, ptr %autoneg101.i, align 1
  %307 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 3, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end107.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev108.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %308 = ptrtoint ptr %pdev108.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %pdev108.i, align 4
  %dev109.i = getelementptr inbounds %struct.pci_dev, ptr %309, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev109.i, ptr noundef nonnull @.str.123) #7
  %fc_autoneg110.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %310 = ptrtoint ptr %fc_autoneg110.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 0, ptr %fc_autoneg110.i, align 4
  %autoneg112.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %311 = ptrtoint ptr %autoneg112.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %autoneg112.i, align 1
  %forced_speed_duplex.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 57
  %312 = ptrtoint ptr %forced_speed_duplex.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %forced_speed_duplex.i, align 1
  %313 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 0, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end119.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev120.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %314 = ptrtoint ptr %pdev120.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %pdev120.i, align 4
  %dev121.i = getelementptr inbounds %struct.pci_dev, ptr %315, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev121.i, ptr noundef nonnull @.str.126) #7
  %fc_autoneg122.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %316 = ptrtoint ptr %fc_autoneg122.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %fc_autoneg122.i, align 4
  %autoneg124.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %317 = ptrtoint ptr %autoneg124.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 0, ptr %autoneg124.i, align 1
  %forced_speed_duplex126.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 57
  %318 = ptrtoint ptr %forced_speed_duplex126.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 1, ptr %forced_speed_duplex126.i, align 1
  %319 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end132.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev133.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %320 = ptrtoint ptr %pdev133.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pdev133.i, align 4
  %dev134.i = getelementptr inbounds %struct.pci_dev, ptr %321, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev134.i, ptr noundef nonnull @.str.129) #7
  %322 = ptrtoint ptr %pdev133.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %pdev133.i, align 4
  %dev139.i = getelementptr inbounds %struct.pci_dev, ptr %323, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev139.i, ptr noundef nonnull @.str.132) #7
  %fc_autoneg140.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %324 = ptrtoint ptr %fc_autoneg140.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 1, ptr %fc_autoneg140.i, align 4
  %autoneg142.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %325 = ptrtoint ptr %autoneg142.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %autoneg142.i, align 1
  %326 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 12, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end148.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev149.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %327 = ptrtoint ptr %pdev149.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pdev149.i, align 4
  %dev150.i = getelementptr inbounds %struct.pci_dev, ptr %328, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev150.i, ptr noundef nonnull @.str.135) #7
  %fc_autoneg151.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %329 = ptrtoint ptr %fc_autoneg151.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 0, ptr %fc_autoneg151.i, align 4
  %autoneg153.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %330 = ptrtoint ptr %autoneg153.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %autoneg153.i, align 1
  %forced_speed_duplex155.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 57
  %331 = ptrtoint ptr %forced_speed_duplex155.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 2, ptr %forced_speed_duplex155.i, align 1
  %332 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 0, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end161.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev162.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %333 = ptrtoint ptr %pdev162.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %pdev162.i, align 4
  %dev163.i = getelementptr inbounds %struct.pci_dev, ptr %334, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev163.i, ptr noundef nonnull @.str.138) #7
  %fc_autoneg164.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %335 = ptrtoint ptr %fc_autoneg164.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 0, ptr %fc_autoneg164.i, align 4
  %autoneg166.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %336 = ptrtoint ptr %autoneg166.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 0, ptr %autoneg166.i, align 1
  %forced_speed_duplex168.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 57
  %337 = ptrtoint ptr %forced_speed_duplex168.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 3, ptr %forced_speed_duplex168.i, align 1
  %338 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 0, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.end180.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end186.sink.split.i

do.end186.sink.split.i:                           ; preds = %do.end180.i, %if.end39.i.do.end186.sink.split.i_crit_edge
  %.str.141.sink.i = phi ptr [ @.str.144, %do.end180.i ], [ @.str.141, %if.end39.i.do.end186.sink.split.i_crit_edge ]
  %pdev175.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %339 = ptrtoint ptr %pdev175.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %pdev175.i, align 4
  %dev176.i = getelementptr inbounds %struct.pci_dev, ptr %340, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev176.i, ptr noundef nonnull %.str.141.sink.i) #7
  br label %do.end186.i

do.end186.i:                                      ; preds = %do.end186.sink.split.i, %if.end39.i.do.end186.i_crit_edge
  %pdev187.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %341 = ptrtoint ptr %pdev187.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %pdev187.i, align 4
  %dev188.i = getelementptr inbounds %struct.pci_dev, ptr %342, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev188.i, ptr noundef nonnull @.str.147) #7
  %fc_autoneg189.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 18
  %343 = ptrtoint ptr %fc_autoneg189.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 1, ptr %fc_autoneg189.i, align 4
  %autoneg191.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53, i32 55
  %344 = ptrtoint ptr %autoneg191.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 1, ptr %autoneg191.i, align 1
  %345 = ptrtoint ptr %autoneg_advertised38.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 32, ptr %autoneg_advertised38.i, align 2
  br label %sw.epilog.i

do.body194.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000/e1000_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 720, 0\0A.popsection", ""() #4, !srcloc !372
  unreachable

sw.epilog.i:                                      ; preds = %do.end186.i, %do.end161.i, %do.end148.i, %do.end132.i, %do.end119.i, %do.end107.i, %do.end91.i, %do.end75.i, %do.end59.i, %do.end52.i, %land.lhs.true43.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %hw200.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 53
  %call201.i = tail call i32 @e1000_validate_mdi_setting(ptr noundef %hw200.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201.i)
  %cmp202.i = icmp slt i32 %call201.i, 0
  br i1 %cmp202.i, label %do.end207.i, label %sw.epilog.i.e1000_check_copper_options.exit_crit_edge

sw.epilog.i.e1000_check_copper_options.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %e1000_check_copper_options.exit

do.end207.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %pdev208.i = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %346 = ptrtoint ptr %pdev208.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pdev208.i, align 4
  %dev209.i = getelementptr inbounds %struct.pci_dev, ptr %347, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev209.i, ptr noundef nonnull @.str.150) #7
  br label %e1000_check_copper_options.exit

e1000_check_copper_options.exit:                  ; preds = %do.end207.i, %sw.epilog.i.e1000_check_copper_options.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %an.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dplx.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt.i) #4
  br label %sw.epilog243

do.body237:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000/e1000_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #4, !srcloc !373
  unreachable

sw.epilog243:                                     ; preds = %e1000_check_copper_options.exit, %do.end14.i, %land.lhs.true.i.sw.epilog243_crit_edge, %if.end8.i.sw.epilog243_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @e1000_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %def = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 3
  %2 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def, align 4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %6, label %do.body38 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %arg20 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4
  %8 = ptrtoint ptr %arg20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp213 = icmp sgt i32 %9, 0
  br i1 %cmp213, label %for.body.lr.ph, label %for.cond.preheader.do.end47_crit_edge

for.cond.preheader.do.end47_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %1, label %sw.bb.do.end47_crit_edge [
    i32 1, label %do.end
    i32 0, label %do.end4
  ]

sw.bb.do.end47_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %name = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef %16) #7
  br label %return

do.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %pdev5 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %17 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev5, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %name7 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %19 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.44, ptr noundef %20) #7
  br label %return

sw.bb8:                                           ; preds = %if.end
  %arg = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %22)
  %cmp9.not = icmp ult i32 %1, %22
  br i1 %cmp9.not, label %sw.bb8.do.end47_crit_edge, label %land.lhs.true

sw.bb8.do.end47_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

land.lhs.true:                                    ; preds = %sw.bb8
  %max = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp11.not = icmp ugt i32 %1, %24
  br i1 %cmp11.not, label %land.lhs.true.do.end47_crit_edge, label %do.end14

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

do.end14:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %pdev15 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %25 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %name17 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.47, ptr noundef %28, i32 noundef %1) #7
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.e1000_opt_list, ptr %11, i32 %i.04
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %30)
  %cmp24 = icmp eq i32 %1, %30
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body
  %str = getelementptr %struct.e1000_opt_list, ptr %11, i32 %i.04, i32 1
  %31 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %str, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp27.not = icmp eq i8 %34, 0
  br i1 %cmp27.not, label %if.then25.return_crit_edge, label %do.end31

if.then25.return_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %pdev32 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %35 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.50, ptr noundef %32) #7
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

do.body38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000/e1000_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #4, !srcloc !374
  unreachable

do.end47:                                         ; preds = %for.inc.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %sw.bb8.do.end47_crit_edge, %sw.bb.do.end47_crit_edge, %for.cond.preheader.do.end47_crit_edge
  %pdev48 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 52
  %37 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev48, align 4
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %name50 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %39 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name50, align 4
  %41 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %value, align 4
  %err = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 2
  %43 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %err, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.53, ptr noundef %40, i32 noundef %42, ptr noundef %44) #7
  %def51 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 3
  %45 = ptrtoint ptr %def51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %def51, align 4
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %value, align 4
  br label %return

return:                                           ; preds = %do.end47, %do.end31, %if.then25.return_crit_edge, %do.end14, %do.end4, %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_validate_mdi_setting(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !215, !217, !219, !221, !223, !225, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367, !368, !369}
!llvm.ident = !{!370}

!0 = !{ptr @__param_TxDescriptors, !1, !"__param_TxDescriptors", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_TxDescriptorstype501, !1, !"__UNIQUE_ID_TxDescriptorstype501", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_TxDescriptors502, !1, !"__UNIQUE_ID_TxDescriptors502", i1 false, i1 false}
!4 = !{ptr @__param_RxDescriptors, !5, !"__param_RxDescriptors", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_RxDescriptorstype503, !5, !"__UNIQUE_ID_RxDescriptorstype503", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_RxDescriptors504, !5, !"__UNIQUE_ID_RxDescriptors504", i1 false, i1 false}
!8 = !{ptr @__param_Speed, !9, !"__param_Speed", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 56, i32 1}
!10 = !{ptr @__UNIQUE_ID_Speedtype505, !9, !"__UNIQUE_ID_Speedtype505", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_Speed506, !9, !"__UNIQUE_ID_Speed506", i1 false, i1 false}
!12 = !{ptr @__param_Duplex, !13, !"__param_Duplex", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 67, i32 1}
!14 = !{ptr @__UNIQUE_ID_Duplextype507, !13, !"__UNIQUE_ID_Duplextype507", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_Duplex508, !13, !"__UNIQUE_ID_Duplex508", i1 false, i1 false}
!16 = !{ptr @__param_AutoNeg, !17, !"__param_AutoNeg", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 83, i32 1}
!18 = !{ptr @__UNIQUE_ID_AutoNegtype509, !17, !"__UNIQUE_ID_AutoNegtype509", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_AutoNeg510, !17, !"__UNIQUE_ID_AutoNeg510", i1 false, i1 false}
!20 = !{ptr @__param_FlowControl, !21, !"__param_FlowControl", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 97, i32 1}
!22 = !{ptr @__UNIQUE_ID_FlowControltype511, !21, !"__UNIQUE_ID_FlowControltype511", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_FlowControl512, !21, !"__UNIQUE_ID_FlowControl512", i1 false, i1 false}
!24 = !{ptr @__param_XsumRX, !25, !"__param_XsumRX", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 109, i32 1}
!26 = !{ptr @__UNIQUE_ID_XsumRXtype513, !25, !"__UNIQUE_ID_XsumRXtype513", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_XsumRX514, !25, !"__UNIQUE_ID_XsumRX514", i1 false, i1 false}
!28 = !{ptr @__param_TxIntDelay, !29, !"__param_TxIntDelay", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 116, i32 1}
!30 = !{ptr @__UNIQUE_ID_TxIntDelaytype515, !29, !"__UNIQUE_ID_TxIntDelaytype515", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_TxIntDelay516, !29, !"__UNIQUE_ID_TxIntDelay516", i1 false, i1 false}
!32 = !{ptr @__param_TxAbsIntDelay, !33, !"__param_TxAbsIntDelay", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 125, i32 1}
!34 = !{ptr @__UNIQUE_ID_TxAbsIntDelaytype517, !33, !"__UNIQUE_ID_TxAbsIntDelaytype517", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_TxAbsIntDelay518, !33, !"__UNIQUE_ID_TxAbsIntDelay518", i1 false, i1 false}
!36 = !{ptr @__param_RxIntDelay, !37, !"__param_RxIntDelay", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 135, i32 1}
!38 = !{ptr @__UNIQUE_ID_RxIntDelaytype519, !37, !"__UNIQUE_ID_RxIntDelaytype519", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_RxIntDelay520, !37, !"__UNIQUE_ID_RxIntDelay520", i1 false, i1 false}
!40 = !{ptr @__param_RxAbsIntDelay, !41, !"__param_RxAbsIntDelay", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 144, i32 1}
!42 = !{ptr @__UNIQUE_ID_RxAbsIntDelaytype521, !41, !"__UNIQUE_ID_RxAbsIntDelaytype521", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_RxAbsIntDelay522, !41, !"__UNIQUE_ID_RxAbsIntDelay522", i1 false, i1 false}
!44 = !{ptr @__param_InterruptThrottleRate, !45, !"__param_InterruptThrottleRate", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 153, i32 1}
!46 = !{ptr @__UNIQUE_ID_InterruptThrottleRatetype523, !45, !"__UNIQUE_ID_InterruptThrottleRatetype523", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_InterruptThrottleRate524, !45, !"__UNIQUE_ID_InterruptThrottleRate524", i1 false, i1 false}
!48 = !{ptr @__param_SmartPowerDownEnable, !49, !"__param_SmartPowerDownEnable", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 164, i32 1}
!50 = !{ptr @__UNIQUE_ID_SmartPowerDownEnabletype525, !49, !"__UNIQUE_ID_SmartPowerDownEnabletype525", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_SmartPowerDownEnable526, !49, !"__UNIQUE_ID_SmartPowerDownEnable526", i1 false, i1 false}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 251, i32 3}
!54 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @e1000_check_options._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @e1000_check_options._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 262, i32 12}
!62 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 263, i32 12}
!64 = !{ptr @.str.7, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 290, i32 12}
!66 = !{ptr @.str.8, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 315, i32 12}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 316, i32 12}
!70 = !{ptr @.str.10, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 331, i32 27}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 332, i32 31}
!74 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 333, i32 31}
!76 = !{ptr @.str.13, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 334, i32 27}
!78 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 335, i32 30}
!80 = !{ptr @e1000_check_options.fc_list, !81, !"fc_list", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 330, i32 38}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 340, i32 12}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 341, i32 12}
!86 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 358, i32 12}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 359, i32 12}
!90 = !{ptr @.str.19, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 376, i32 12}
!92 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 377, i32 12}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 394, i32 12}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 395, i32 12}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 412, i32 12}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 430, i32 12}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 431, i32 12}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 441, i32 5}
!106 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @e1000_check_options._entry.26, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @e1000_check_options._entry_ptr.29, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 444, i32 5}
!111 = !{ptr @e1000_check_options._entry.30, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @e1000_check_options._entry_ptr.32, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 450, i32 5}
!115 = !{ptr @e1000_check_options._entry.33, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @e1000_check_options._entry_ptr.35, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 456, i32 5}
!119 = !{ptr @e1000_check_options._entry.36, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @e1000_check_options._entry_ptr.38, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 479, i32 12}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 480, i32 12}
!125 = !{ptr @num_TxDescriptors, !1, !"num_TxDescriptors", i1 false, i1 false}
!126 = !{ptr @num_RxDescriptors, !5, !"num_RxDescriptors", i1 false, i1 false}
!127 = !{ptr @num_FlowControl, !21, !"num_FlowControl", i1 false, i1 false}
!128 = !{ptr @num_XsumRX, !25, !"num_XsumRX", i1 false, i1 false}
!129 = !{ptr @num_TxIntDelay, !29, !"num_TxIntDelay", i1 false, i1 false}
!130 = !{ptr @num_TxAbsIntDelay, !33, !"num_TxAbsIntDelay", i1 false, i1 false}
!131 = !{ptr @num_RxIntDelay, !37, !"num_RxIntDelay", i1 false, i1 false}
!132 = !{ptr @num_RxAbsIntDelay, !41, !"num_RxAbsIntDelay", i1 false, i1 false}
!133 = !{ptr @num_InterruptThrottleRate, !45, !"num_InterruptThrottleRate", i1 false, i1 false}
!134 = !{ptr @num_SmartPowerDownEnable, !49, !"num_SmartPowerDownEnable", i1 false, i1 false}
!135 = !{ptr @__param_str_TxDescriptors, !1, !"__param_str_TxDescriptors", i1 false, i1 false}
!136 = !{ptr @__param_arr_TxDescriptors, !1, !"__param_arr_TxDescriptors", i1 false, i1 false}
!137 = !{ptr @__param_str_RxDescriptors, !5, !"__param_str_RxDescriptors", i1 false, i1 false}
!138 = !{ptr @__param_arr_RxDescriptors, !5, !"__param_arr_RxDescriptors", i1 false, i1 false}
!139 = !{ptr @__param_str_Speed, !9, !"__param_str_Speed", i1 false, i1 false}
!140 = !{ptr @__param_arr_Speed, !9, !"__param_arr_Speed", i1 false, i1 false}
!141 = !{ptr @num_Speed, !9, !"num_Speed", i1 false, i1 false}
!142 = !{ptr @Speed, !9, !"Speed", i1 false, i1 false}
!143 = !{ptr @__param_str_Duplex, !13, !"__param_str_Duplex", i1 false, i1 false}
!144 = !{ptr @__param_arr_Duplex, !13, !"__param_arr_Duplex", i1 false, i1 false}
!145 = !{ptr @num_Duplex, !13, !"num_Duplex", i1 false, i1 false}
!146 = !{ptr @Duplex, !13, !"Duplex", i1 false, i1 false}
!147 = !{ptr @__param_str_AutoNeg, !17, !"__param_str_AutoNeg", i1 false, i1 false}
!148 = !{ptr @__param_arr_AutoNeg, !17, !"__param_arr_AutoNeg", i1 false, i1 false}
!149 = !{ptr @num_AutoNeg, !17, !"num_AutoNeg", i1 false, i1 false}
!150 = !{ptr @AutoNeg, !17, !"AutoNeg", i1 false, i1 false}
!151 = !{ptr @__param_str_FlowControl, !21, !"__param_str_FlowControl", i1 false, i1 false}
!152 = !{ptr @__param_arr_FlowControl, !21, !"__param_arr_FlowControl", i1 false, i1 false}
!153 = !{ptr @__param_str_XsumRX, !25, !"__param_str_XsumRX", i1 false, i1 false}
!154 = !{ptr @__param_arr_XsumRX, !25, !"__param_arr_XsumRX", i1 false, i1 false}
!155 = !{ptr @__param_str_TxIntDelay, !29, !"__param_str_TxIntDelay", i1 false, i1 false}
!156 = !{ptr @__param_arr_TxIntDelay, !29, !"__param_arr_TxIntDelay", i1 false, i1 false}
!157 = !{ptr @__param_str_TxAbsIntDelay, !33, !"__param_str_TxAbsIntDelay", i1 false, i1 false}
!158 = !{ptr @__param_arr_TxAbsIntDelay, !33, !"__param_arr_TxAbsIntDelay", i1 false, i1 false}
!159 = !{ptr @__param_str_RxIntDelay, !37, !"__param_str_RxIntDelay", i1 false, i1 false}
!160 = !{ptr @__param_arr_RxIntDelay, !37, !"__param_arr_RxIntDelay", i1 false, i1 false}
!161 = !{ptr @__param_str_RxAbsIntDelay, !41, !"__param_str_RxAbsIntDelay", i1 false, i1 false}
!162 = !{ptr @__param_arr_RxAbsIntDelay, !41, !"__param_arr_RxAbsIntDelay", i1 false, i1 false}
!163 = !{ptr @__param_str_InterruptThrottleRate, !45, !"__param_str_InterruptThrottleRate", i1 false, i1 false}
!164 = !{ptr @__param_arr_InterruptThrottleRate, !45, !"__param_arr_InterruptThrottleRate", i1 false, i1 false}
!165 = !{ptr @__param_str_SmartPowerDownEnable, !49, !"__param_str_SmartPowerDownEnable", i1 false, i1 false}
!166 = !{ptr @__param_arr_SmartPowerDownEnable, !49, !"__param_arr_SmartPowerDownEnable", i1 false, i1 false}
!167 = !{ptr @TxDescriptors, !1, !"TxDescriptors", i1 false, i1 false}
!168 = !{ptr @.str.41, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 196, i32 4}
!170 = !{ptr @.str.42, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @e1000_validate_option._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @e1000_validate_option._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.44, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 199, i32 4}
!175 = !{ptr @e1000_validate_option._entry.43, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @e1000_validate_option._entry_ptr.45, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.47, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 205, i32 4}
!179 = !{ptr @e1000_validate_option._entry.46, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @e1000_validate_option._entry_ptr.48, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.50, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 217, i32 6}
!183 = !{ptr @e1000_validate_option._entry.49, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @e1000_validate_option._entry_ptr.51, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.53, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 227, i32 2}
!187 = !{ptr @e1000_validate_option._entry.52, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @e1000_validate_option._entry_ptr.54, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @RxDescriptors, !5, !"RxDescriptors", i1 false, i1 false}
!190 = !{ptr @XsumRX, !25, !"XsumRX", i1 false, i1 false}
!191 = !{ptr @FlowControl, !21, !"FlowControl", i1 false, i1 false}
!192 = !{ptr @TxIntDelay, !29, !"TxIntDelay", i1 false, i1 false}
!193 = !{ptr @TxAbsIntDelay, !33, !"TxAbsIntDelay", i1 false, i1 false}
!194 = !{ptr @RxIntDelay, !37, !"RxIntDelay", i1 false, i1 false}
!195 = !{ptr @RxAbsIntDelay, !41, !"RxAbsIntDelay", i1 false, i1 false}
!196 = !{ptr @InterruptThrottleRate, !45, !"InterruptThrottleRate", i1 false, i1 false}
!197 = !{ptr @SmartPowerDownEnable, !49, !"SmartPowerDownEnable", i1 false, i1 false}
!198 = !{ptr @.str.55, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 516, i32 3}
!200 = !{ptr @.str.56, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @e1000_check_fiber_options._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @e1000_check_fiber_options._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.58, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 521, i32 3}
!205 = !{ptr @e1000_check_fiber_options._entry.57, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @e1000_check_fiber_options._entry_ptr.59, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.61, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 526, i32 3}
!209 = !{ptr @e1000_check_fiber_options._entry.60, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @e1000_check_fiber_options._entry_ptr.62, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.63, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 545, i32 18}
!213 = !{ptr @e1000_check_copper_options.speed_list, !214, !"speed_list", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 544, i32 38}
!215 = !{ptr @.str.64, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 552, i32 12}
!217 = !{ptr @.str.65, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 553, i32 12}
!219 = !{ptr @e1000_check_copper_options.dplx_list, !220, !"dplx_list", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 567, i32 38}
!221 = !{ptr @.str.66, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 574, i32 12}
!223 = !{ptr @.str.67, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 590, i32 3}
!225 = !{ptr @.str.68, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @e1000_check_copper_options._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @e1000_check_copper_options._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.69, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 596, i32 13}
!230 = !{ptr @.str.70, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 597, i32 13}
!232 = !{ptr @.str.71, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 598, i32 13}
!234 = !{ptr @.str.72, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 599, i32 13}
!236 = !{ptr @.str.73, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 600, i32 13}
!238 = !{ptr @.str.74, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 601, i32 13}
!240 = !{ptr @.str.75, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 602, i32 13}
!242 = !{ptr @.str.76, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 603, i32 13}
!244 = !{ptr @.str.77, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 604, i32 13}
!246 = !{ptr @.str.78, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 605, i32 13}
!248 = !{ptr @.str.79, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 606, i32 13}
!250 = !{ptr @.str.80, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 607, i32 13}
!252 = !{ptr @.str.81, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 608, i32 13}
!254 = !{ptr @.str.82, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 609, i32 13}
!256 = !{ptr @.str.83, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 610, i32 13}
!258 = !{ptr @.str.84, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 611, i32 13}
!260 = !{ptr @.str.85, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 612, i32 13}
!262 = !{ptr @.str.86, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 613, i32 13}
!264 = !{ptr @.str.87, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 614, i32 13}
!266 = !{ptr @.str.88, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 615, i32 13}
!268 = !{ptr @.str.89, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 616, i32 13}
!270 = !{ptr @.str.90, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 617, i32 13}
!272 = !{ptr @.str.91, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 618, i32 13}
!274 = !{ptr @.str.92, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 619, i32 13}
!276 = !{ptr @.str.93, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 620, i32 13}
!278 = !{ptr @.str.94, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 621, i32 13}
!280 = !{ptr @.str.95, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 622, i32 13}
!282 = !{ptr @.str.96, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 623, i32 13}
!284 = !{ptr @.str.97, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 624, i32 13}
!286 = !{ptr @.str.98, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 625, i32 13}
!288 = !{ptr @.str.99, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 626, i32 13}
!290 = !{ptr @e1000_check_copper_options.an_list, !291, !"an_list", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 594, i32 38}
!292 = !{ptr @.str.100, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 630, i32 12}
!294 = !{ptr @.str.102, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 650, i32 4}
!296 = !{ptr @e1000_check_copper_options._entry.101, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @e1000_check_copper_options._entry_ptr.103, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.105, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 654, i32 3}
!300 = !{ptr @e1000_check_copper_options._entry.104, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @e1000_check_copper_options._entry_ptr.106, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.108, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 655, i32 3}
!304 = !{ptr @e1000_check_copper_options._entry.107, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @e1000_check_copper_options._entry_ptr.109, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.111, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 661, i32 3}
!308 = !{ptr @e1000_check_copper_options._entry.110, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @e1000_check_copper_options._entry_ptr.112, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.114, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 662, i32 3}
!312 = !{ptr @e1000_check_copper_options._entry.113, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @e1000_check_copper_options._entry_ptr.115, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.117, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 669, i32 3}
!316 = !{ptr @e1000_check_copper_options._entry.116, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @e1000_check_copper_options._entry_ptr.118, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.120, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 670, i32 3}
!320 = !{ptr @e1000_check_copper_options._entry.119, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @e1000_check_copper_options._entry_ptr.121, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.123, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 676, i32 3}
!324 = !{ptr @e1000_check_copper_options._entry.122, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @e1000_check_copper_options._entry_ptr.124, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.126, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 682, i32 3}
!328 = !{ptr @e1000_check_copper_options._entry.125, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @e1000_check_copper_options._entry_ptr.127, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.129, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 688, i32 3}
!332 = !{ptr @e1000_check_copper_options._entry.128, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @e1000_check_copper_options._entry_ptr.130, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.132, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 689, i32 3}
!336 = !{ptr @e1000_check_copper_options._entry.131, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @e1000_check_copper_options._entry_ptr.133, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.135, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 695, i32 3}
!340 = !{ptr @e1000_check_copper_options._entry.134, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @e1000_check_copper_options._entry_ptr.136, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.138, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 701, i32 3}
!344 = !{ptr @e1000_check_copper_options._entry.137, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @e1000_check_copper_options._entry_ptr.139, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.141, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 707, i32 3}
!348 = !{ptr @e1000_check_copper_options._entry.140, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @e1000_check_copper_options._entry_ptr.142, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.144, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 710, i32 3}
!352 = !{ptr @e1000_check_copper_options._entry.143, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @e1000_check_copper_options._entry_ptr.145, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.147, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 714, i32 3}
!356 = !{ptr @e1000_check_copper_options._entry.146, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @e1000_check_copper_options._entry_ptr.148, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.150, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/ethernet/intel/e1000/e1000_param.c", i32 725, i32 3}
!360 = !{ptr @e1000_check_copper_options._entry.149, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @e1000_check_copper_options._entry_ptr.151, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{i32 1, !"wchar_size", i32 2}
!363 = !{i32 1, !"min_enum_size", i32 4}
!364 = !{i32 8, !"branch-target-enforcement", i32 0}
!365 = !{i32 8, !"sign-return-address", i32 0}
!366 = !{i32 8, !"sign-return-address-all", i32 0}
!367 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!368 = !{i32 7, !"uwtable", i32 1}
!369 = !{i32 7, !"frame-pointer", i32 2}
!370 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!371 = !{!"auto-init"}
!372 = !{i64 2158215506, i64 2158216017, i64 2158215543, i64 2158215599, i64 2158215633, i64 2158215657, i64 2158215698, i64 2158215719, i64 2158215747, i64 2158215781}
!373 = !{i64 2158173515, i64 2158174026, i64 2158173552, i64 2158173608, i64 2158173642, i64 2158173666, i64 2158173707, i64 2158173728, i64 2158173756, i64 2158173790}
!374 = !{i64 2158159061, i64 2158159572, i64 2158159098, i64 2158159154, i64 2158159188, i64 2158159212, i64 2158159253, i64 2158159274, i64 2158159302, i64 2158159336}
