; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/e1000e/param.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/e1000e/param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.e1000_option = type { i32, ptr, ptr, i32, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i32 }
%struct.e1000_adapter = type { %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, ptr, [128 x i32], i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, [116 x i8], ptr, i32, %struct.napi_struct, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, [44 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i16, i32, i32, ptr, ptr, %struct.e1000_hw, %struct.spinlock, %struct.e1000_hw_stats, %struct.e1000_phy_info, %struct.e1000_phy_stats, %struct.e1000_phy_regs, %struct.e1000_ring, %struct.e1000_ring, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i16, i16, %struct.hwtstamp_config, %struct.delayed_work, ptr, i32, %struct.work_struct, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, ptr, %struct.ptp_clock_info, %struct.pm_qos_request, i32, i16, [122 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.e1000_hw = type { ptr, ptr, ptr, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.126 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_fc_info = type { i32, i32, i16, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i16 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.126 = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i8, [2048 x %struct.e1000_shadow_ram], i8, i8, i16, i32 }
%struct.e1000_shadow_ram = type { i16, i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_phy_stats = type { i32, i32 }
%struct.e1000_phy_regs = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.e1000_ring = type { ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr, [21 x i8], i32, i32, ptr, i32, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.125 = type { ptr }
%struct.e1000_opt_list = type { i32, ptr }

@copybreak = dso_local global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_str_copybreak = internal constant [17 x i8] c"e1000e.copybreak\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_copybreak = internal constant %struct.kernel_param { ptr @__param_str_copybreak, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @copybreak } }, section "__param", align 4
@__UNIQUE_ID_copybreaktype353 = internal constant [31 x i8] c"e1000e.parmtype=copybreak:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_copybreak354 = internal constant [87 x i8] c"e1000e.parm=copybreak:Maximum size of packet that is copied to a new buffer on receive\00", section ".modinfo", align 1
@__param_str_TxIntDelay = internal constant [18 x i8] c"e1000e.TxIntDelay\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_TxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxIntDelay, ptr @param_ops_int, ptr @TxIntDelay }, align 4
@__param_TxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_TxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxIntDelaytype355 = internal constant [40 x i8] c"e1000e.parmtype=TxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxIntDelay356 = internal constant [48 x i8] c"e1000e.parm=TxIntDelay:Transmit Interrupt Delay\00", section ".modinfo", align 1
@__param_str_TxAbsIntDelay = internal constant [21 x i8] c"e1000e.TxAbsIntDelay\00", align 1
@__param_arr_TxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_TxAbsIntDelay, ptr @param_ops_int, ptr @TxAbsIntDelay }, align 4
@__param_TxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_TxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxAbsIntDelaytype357 = internal constant [43 x i8] c"e1000e.parmtype=TxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxAbsIntDelay358 = internal constant [60 x i8] c"e1000e.parm=TxAbsIntDelay:Transmit Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxIntDelay = internal constant [18 x i8] c"e1000e.RxIntDelay\00", align 1
@__param_arr_RxIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxIntDelay, ptr @param_ops_int, ptr @RxIntDelay }, align 4
@__param_RxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_RxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxIntDelaytype359 = internal constant [40 x i8] c"e1000e.parmtype=RxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxIntDelay360 = internal constant [47 x i8] c"e1000e.parm=RxIntDelay:Receive Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxAbsIntDelay = internal constant [21 x i8] c"e1000e.RxAbsIntDelay\00", align 1
@__param_arr_RxAbsIntDelay = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_RxAbsIntDelay, ptr @param_ops_int, ptr @RxAbsIntDelay }, align 4
@__param_RxAbsIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxAbsIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_RxAbsIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxAbsIntDelaytype361 = internal constant [43 x i8] c"e1000e.parmtype=RxAbsIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxAbsIntDelay362 = internal constant [59 x i8] c"e1000e.parm=RxAbsIntDelay:Receive Absolute Interrupt Delay\00", section ".modinfo", align 1
@__param_str_InterruptThrottleRate = internal constant [29 x i8] c"e1000e.InterruptThrottleRate\00", align 1
@__param_arr_InterruptThrottleRate = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_InterruptThrottleRate, ptr @param_ops_int, ptr @InterruptThrottleRate }, align 4
@__param_InterruptThrottleRate = internal constant %struct.kernel_param { ptr @__param_str_InterruptThrottleRate, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_InterruptThrottleRate } }, section "__param", align 4
@__UNIQUE_ID_InterruptThrottleRatetype363 = internal constant [51 x i8] c"e1000e.parmtype=InterruptThrottleRate:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_InterruptThrottleRate364 = internal constant [60 x i8] c"e1000e.parm=InterruptThrottleRate:Interrupt Throttling Rate\00", section ".modinfo", align 1
@__param_str_IntMode = internal constant [15 x i8] c"e1000e.IntMode\00", align 1
@__param_arr_IntMode = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_IntMode, ptr @param_ops_int, ptr @IntMode }, align 4
@__param_IntMode = internal constant %struct.kernel_param { ptr @__param_str_IntMode, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_IntMode } }, section "__param", align 4
@__UNIQUE_ID_IntModetype365 = internal constant [37 x i8] c"e1000e.parmtype=IntMode:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_IntMode366 = internal constant [35 x i8] c"e1000e.parm=IntMode:Interrupt Mode\00", section ".modinfo", align 1
@__param_str_SmartPowerDownEnable = internal constant [28 x i8] c"e1000e.SmartPowerDownEnable\00", align 1
@__param_arr_SmartPowerDownEnable = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_SmartPowerDownEnable, ptr @param_ops_int, ptr @SmartPowerDownEnable }, align 4
@__param_SmartPowerDownEnable = internal constant %struct.kernel_param { ptr @__param_str_SmartPowerDownEnable, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_SmartPowerDownEnable } }, section "__param", align 4
@__UNIQUE_ID_SmartPowerDownEnabletype367 = internal constant [50 x i8] c"e1000e.parmtype=SmartPowerDownEnable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_SmartPowerDownEnable368 = internal constant [61 x i8] c"e1000e.parm=SmartPowerDownEnable:Enable PHY smart power down\00", section ".modinfo", align 1
@__param_str_KumeranLockLoss = internal constant [23 x i8] c"e1000e.KumeranLockLoss\00", align 1
@__param_arr_KumeranLockLoss = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_KumeranLockLoss, ptr @param_ops_int, ptr @KumeranLockLoss }, align 4
@__param_KumeranLockLoss = internal constant %struct.kernel_param { ptr @__param_str_KumeranLockLoss, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_KumeranLockLoss } }, section "__param", align 4
@__UNIQUE_ID_KumeranLockLosstype369 = internal constant [45 x i8] c"e1000e.parmtype=KumeranLockLoss:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_KumeranLockLoss370 = internal constant [64 x i8] c"e1000e.parm=KumeranLockLoss:Enable Kumeran lock loss workaround\00", section ".modinfo", align 1
@__param_str_WriteProtectNVM = internal constant [23 x i8] c"e1000e.WriteProtectNVM\00", align 1
@__param_arr_WriteProtectNVM = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_WriteProtectNVM, ptr @param_ops_int, ptr @WriteProtectNVM }, align 4
@__param_WriteProtectNVM = internal constant %struct.kernel_param { ptr @__param_str_WriteProtectNVM, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_WriteProtectNVM } }, section "__param", align 4
@__UNIQUE_ID_WriteProtectNVMtype371 = internal constant [45 x i8] c"e1000e.parmtype=WriteProtectNVM:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_WriteProtectNVM372 = internal constant [98 x i8] c"e1000e.parm=WriteProtectNVM:Write-protect NVM [WARNING: disabling this can lead to corrupted NVM]\00", section ".modinfo", align 1
@__param_str_CrcStripping = internal constant [20 x i8] c"e1000e.CrcStripping\00", align 1
@__param_arr_CrcStripping = internal constant %struct.kparam_array { i32 33, i32 4, ptr @num_CrcStripping, ptr @param_ops_int, ptr @CrcStripping }, align 4
@__param_CrcStripping = internal constant %struct.kernel_param { ptr @__param_str_CrcStripping, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_CrcStripping } }, section "__param", align 4
@__UNIQUE_ID_CrcStrippingtype373 = internal constant [42 x i8] c"e1000e.parmtype=CrcStripping:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_CrcStripping374 = internal constant [81 x i8] c"e1000e.parm=CrcStripping:Enable CRC Stripping, disable if your BMC needs the CRC\00", section ".modinfo", align 1
@e1000e_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Warning: no configuration for board #%i\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e1000e_check_options\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/e1000e/param.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr = internal global ptr @e1000e_check_options._entry, section ".printk_index", align 4
@e1000e_check_options._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using defaults for all values\0A\00", [33 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.7 = internal global ptr @e1000e_check_options._entry.5, section ".printk_index", align 4
@e1000e_check_options.opt = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.8, ptr @.str.9, i32 8, %union.anon.130 { %struct.anon.131 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Transmit Interrupt Delay\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 8\00", [45 x i8] zeroinitializer }, align 32
@num_TxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.10 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.11, ptr @.str.12, i32 32, %union.anon.130 { %struct.anon.131 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transmit Absolute Interrupt Delay\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using default of 32\00", [44 x i8] zeroinitializer }, align 32
@num_TxAbsIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxAbsIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.13 = internal global { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.14, ptr @.str.15, i32 0, %union.anon.130 { %struct.anon.131 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Receive Interrupt Delay\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 0\00", [45 x i8] zeroinitializer }, align 32
@num_RxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.16 = internal global { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.17, ptr @.str.9, i32 8, %union.anon.130 { %struct.anon.131 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Receive Absolute Interrupt Delay\00", [63 x i8] zeroinitializer }, align 32
@num_RxAbsIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxAbsIntDelay = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.18 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.19, ptr @.str.20, i32 3, %union.anon.130 { %struct.anon.131 { i32 100, i32 100000 } } }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Interrupt Throttling Rate (ints/sec)\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"using default of 3\00", [45 x i8] zeroinitializer }, align 32
@num_InterruptThrottleRate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@InterruptThrottleRate = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s set to default %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.24 = internal global ptr @e1000e_check_options._entry.21, section ".printk_index", align 4
@e1000e_check_options._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 366, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s turned off\0A\00", [17 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.27 = internal global ptr @e1000e_check_options._entry.25, section ".printk_index", align 4
@e1000e_check_options._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 370, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s set to dynamic mode\0A\00", [40 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.30 = internal global ptr @e1000e_check_options._entry.28, section ".printk_index", align 4
@e1000e_check_options._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 376, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Invalid mode - setting default\0A\00", [61 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.33 = internal global ptr @e1000e_check_options._entry.31, section ".printk_index", align 4
@e1000e_check_options._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 382, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s set to dynamic conservative mode\0A\00", [59 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.36 = internal global ptr @e1000e_check_options._entry.34, section ".printk_index", align 4
@e1000e_check_options._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s set to simplified (2000-8000 ints) mode\0A\00", [52 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.39 = internal global ptr @e1000e_check_options._entry.37, section ".printk_index", align 4
@e1000e_check_options.opt.40 = internal global { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 1, ptr @.str.41, ptr null, i32 0, %union.anon.130 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Interrupt Mode\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"defaulting to 2 (MSI-X)\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defaulting to 1 (MSI)\00", [42 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 428, ptr @.str.46, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@e1000e_check_options._entry_ptr.47 = internal global ptr @e1000e_check_options._entry.44, section ".printk_index", align 4
@num_IntMode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@IntMode = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.48 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 0, ptr @.str.49, ptr @.str.50, i32 0, %union.anon.130 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY Smart Power Down\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"defaulting to Disabled\00", [41 x i8] zeroinitializer }, align 32
@num_SmartPowerDownEnable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@SmartPowerDownEnable = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.51 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 0, ptr @.str.52, ptr @.str.53, i32 1, %union.anon.130 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CRC Stripping\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defaulting to Enabled\00", [42 x i8] zeroinitializer }, align 32
@num_CrcStripping = internal global { i32, [28 x i8] } zeroinitializer, align 32
@CrcStripping = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.54 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 0, ptr @.str.55, ptr @.str.53, i32 1, %union.anon.130 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Kumeran Lock Loss Workaround\00", [35 x i8] zeroinitializer }, align 32
@num_KumeranLockLoss = internal global { i32, [28 x i8] } zeroinitializer, align 32
@KumeranLockLoss = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@e1000e_check_options.opt.56 = internal constant { %struct.e1000_option, [40 x i8] } { %struct.e1000_option { i32 0, ptr @.str.57, ptr @.str.53, i32 1, %union.anon.130 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Write-protect NVM\00", [46 x i8] zeroinitializer }, align 32
@num_WriteProtectNVM = internal global { i32, [28 x i8] } zeroinitializer, align 32
@WriteProtectNVM = internal global { [33 x i32], [60 x i8] } { [33 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@e1000_validate_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 177, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e1000_validate_option\00", [42 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr = internal global ptr @e1000_validate_option._entry, section ".printk_index", align 4
@e1000_validate_option._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 181, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.62 = internal global ptr @e1000_validate_option._entry.60, section ".printk_index", align 4
@e1000_validate_option._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 188, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s set to %i\0A\00", [18 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.65 = internal global ptr @e1000_validate_option._entry.63, section ".printk_index", align 4
@e1000_validate_option._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 201, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.68 = internal global ptr @e1000_validate_option._entry.66, section ".printk_index", align 4
@e1000_validate_option._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str.2, i32 212, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", [60 x i8] zeroinitializer }, align 32
@e1000_validate_option._entry_ptr.71 = internal global ptr @e1000_validate_option._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"copybreak\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 20, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 232, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 234, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 240, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 242, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 243, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"num_TxIntDelay\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [11 x i8] c"TxIntDelay\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 41, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 260, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 262, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 263, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"num_TxAbsIntDelay\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"TxAbsIntDelay\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 50, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 280, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 282, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 283, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"num_RxIntDelay\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"RxIntDelay\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 62, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 303, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 305, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"num_RxAbsIntDelay\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"RxAbsIntDelay\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 74, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 326, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 328, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 329, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"num_InterruptThrottleRate\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"InterruptThrottleRate\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 84, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 357, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 365, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 369, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 374, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 380, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 386, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 403, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 405, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 416, i32 22 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 421, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 427, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [12 x i8] c"num_IntMode\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [8 x i8] c"IntMode\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 103, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 448, i32 36 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 450, i32 12 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 451, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant [25 x i8] c"num_SmartPowerDownEnable\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [21 x i8] c"SmartPowerDownEnable\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 113, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 465, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 467, i32 12 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 468, i32 12 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"num_CrcStripping\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [13 x i8] c"CrcStripping\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 138, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 487, i32 36 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 489, i32 12 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c"num_KumeranLockLoss\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [16 x i8] c"KumeranLockLoss\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 121, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant [4 x i8] c"opt\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 508, i32 36 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 510, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c"num_WriteProtectNVM\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [16 x i8] c"WriteProtectNVM\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 129, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 176, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 180, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 187, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 200, i32 6 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [45 x i8] c"../drivers/net/ethernet/intel/e1000e/param.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 211, i32 2 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_CrcStripping374, ptr @__UNIQUE_ID_CrcStrippingtype373, ptr @__UNIQUE_ID_IntMode366, ptr @__UNIQUE_ID_IntModetype365, ptr @__UNIQUE_ID_InterruptThrottleRate364, ptr @__UNIQUE_ID_InterruptThrottleRatetype363, ptr @__UNIQUE_ID_KumeranLockLoss370, ptr @__UNIQUE_ID_KumeranLockLosstype369, ptr @__UNIQUE_ID_RxAbsIntDelay362, ptr @__UNIQUE_ID_RxAbsIntDelaytype361, ptr @__UNIQUE_ID_RxIntDelay360, ptr @__UNIQUE_ID_RxIntDelaytype359, ptr @__UNIQUE_ID_SmartPowerDownEnable368, ptr @__UNIQUE_ID_SmartPowerDownEnabletype367, ptr @__UNIQUE_ID_TxAbsIntDelay358, ptr @__UNIQUE_ID_TxAbsIntDelaytype357, ptr @__UNIQUE_ID_TxIntDelay356, ptr @__UNIQUE_ID_TxIntDelaytype355, ptr @__UNIQUE_ID_WriteProtectNVM372, ptr @__UNIQUE_ID_WriteProtectNVMtype371, ptr @__UNIQUE_ID_copybreak354, ptr @__UNIQUE_ID_copybreaktype353, ptr @__param_CrcStripping, ptr @__param_IntMode, ptr @__param_InterruptThrottleRate, ptr @__param_KumeranLockLoss, ptr @__param_RxAbsIntDelay, ptr @__param_RxIntDelay, ptr @__param_SmartPowerDownEnable, ptr @__param_TxAbsIntDelay, ptr @__param_TxIntDelay, ptr @__param_WriteProtectNVM, ptr @__param_copybreak, ptr @e1000_validate_option._entry, ptr @e1000_validate_option._entry.60, ptr @e1000_validate_option._entry.63, ptr @e1000_validate_option._entry.66, ptr @e1000_validate_option._entry.69, ptr @e1000_validate_option._entry_ptr, ptr @e1000_validate_option._entry_ptr.62, ptr @e1000_validate_option._entry_ptr.65, ptr @e1000_validate_option._entry_ptr.68, ptr @e1000_validate_option._entry_ptr.71, ptr @e1000e_check_options._entry, ptr @e1000e_check_options._entry.21, ptr @e1000e_check_options._entry.25, ptr @e1000e_check_options._entry.28, ptr @e1000e_check_options._entry.31, ptr @e1000e_check_options._entry.34, ptr @e1000e_check_options._entry.37, ptr @e1000e_check_options._entry.44, ptr @e1000e_check_options._entry.5, ptr @e1000e_check_options._entry_ptr, ptr @e1000e_check_options._entry_ptr.24, ptr @e1000e_check_options._entry_ptr.27, ptr @e1000e_check_options._entry_ptr.30, ptr @e1000e_check_options._entry_ptr.33, ptr @e1000e_check_options._entry_ptr.36, ptr @e1000e_check_options._entry_ptr.39, ptr @e1000e_check_options._entry_ptr.47, ptr @e1000e_check_options._entry_ptr.7, ptr @copybreak, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @e1000e_check_options.opt, ptr @.str.8, ptr @.str.9, ptr @num_TxIntDelay, ptr @TxIntDelay, ptr @e1000e_check_options.opt.10, ptr @.str.11, ptr @.str.12, ptr @num_TxAbsIntDelay, ptr @TxAbsIntDelay, ptr @e1000e_check_options.opt.13, ptr @.str.14, ptr @.str.15, ptr @num_RxIntDelay, ptr @RxIntDelay, ptr @e1000e_check_options.opt.16, ptr @.str.17, ptr @num_RxAbsIntDelay, ptr @RxAbsIntDelay, ptr @e1000e_check_options.opt.18, ptr @.str.19, ptr @.str.20, ptr @num_InterruptThrottleRate, ptr @InterruptThrottleRate, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @e1000e_check_options.opt.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @num_IntMode, ptr @IntMode, ptr @e1000e_check_options.opt.48, ptr @.str.49, ptr @.str.50, ptr @num_SmartPowerDownEnable, ptr @SmartPowerDownEnable, ptr @e1000e_check_options.opt.51, ptr @.str.52, ptr @.str.53, ptr @num_CrcStripping, ptr @CrcStripping, ptr @e1000e_check_options.opt.54, ptr @.str.55, ptr @num_KumeranLockLoss, ptr @KumeranLockLoss, ptr @e1000e_check_options.opt.56, ptr @.str.57, ptr @num_WriteProtectNVM, ptr @WriteProtectNVM, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxAbsIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxAbsIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxAbsIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxAbsIntDelay to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_InterruptThrottleRate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InterruptThrottleRate to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_IntMode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IntMode to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_SmartPowerDownEnable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SmartPowerDownEnable to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_CrcStripping to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CrcStripping to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_KumeranLockLoss to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KumeranLockLoss to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000e_check_options.opt.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_WriteProtectNVM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WriteProtectNVM to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e1000_validate_option._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000e_check_options(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %int_mode = alloca i32, align 4
  %spd = alloca i32, align 4
  %crc_stripping = alloca i32, align 4
  %kmrn_lock_loss = alloca i32, align 4
  %write_protect_nvm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66
  %bd_number = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 7
  %0 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 32
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %1) #7
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 32
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev6, ptr noundef nonnull @.str.6) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = load i32, ptr @num_TxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp7 = icmp ugt i32 %6, %1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr [33 x i32], ptr @TxIntDelay, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %tx_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 29
  %9 = ptrtoint ptr %tx_int_delay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tx_int_delay, align 4
  %call = tail call fastcc i32 @e1000_validate_option(ptr noundef %tx_int_delay, ptr noundef nonnull @e1000e_check_options.opt, ptr noundef %adapter)
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tx_int_delay10 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 29
  %10 = ptrtoint ptr %tx_int_delay10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %tx_int_delay10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %11 = load i32, ptr @num_TxAbsIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp12 = icmp ugt i32 %11, %1
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14 = getelementptr [33 x i32], ptr @TxAbsIntDelay, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %tx_abs_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 30
  %14 = ptrtoint ptr %tx_abs_int_delay to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_abs_int_delay, align 128
  %call16 = tail call fastcc i32 @e1000_validate_option(ptr noundef %tx_abs_int_delay, ptr noundef nonnull @e1000e_check_options.opt.10, ptr noundef %adapter)
  br label %if.end19

if.else17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %tx_abs_int_delay18 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 30
  %15 = ptrtoint ptr %tx_abs_int_delay18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %tx_abs_int_delay18, align 128
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then13
  %flags2 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 86
  %16 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags2, align 4
  %and = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end19.if.end21_crit_edge, label %if.then20

if.end19.if.end21_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  store i32 32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.13, i32 0, i32 3), align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end19.if.end21_crit_edge
  %18 = load i32, ptr @num_RxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp22 = icmp ugt i32 %18, %1
  br i1 %cmp22, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx24 = getelementptr [33 x i32], ptr @RxIntDelay, i32 0, i32 %1
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx24, align 4
  %rx_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 50
  %21 = ptrtoint ptr %rx_int_delay to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_int_delay, align 4
  %call26 = tail call fastcc i32 @e1000_validate_option(ptr noundef %rx_int_delay, ptr noundef nonnull @e1000e_check_options.opt.13, ptr noundef %adapter)
  br label %if.end29

if.else27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %22 = load i32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.13, i32 0, i32 3), align 4
  %rx_int_delay28 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 50
  %23 = ptrtoint ptr %rx_int_delay28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_int_delay28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then23
  %24 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags2, align 4
  %and31 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  store i32 32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.16, i32 0, i32 3), align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29.if.end34_crit_edge
  %26 = load i32, ptr @num_RxAbsIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %1)
  %cmp35 = icmp ugt i32 %26, %1
  br i1 %cmp35, label %if.then36, label %if.else40

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx37 = getelementptr [33 x i32], ptr @RxAbsIntDelay, i32 0, i32 %1
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx37, align 4
  %rx_abs_int_delay = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 51
  %29 = ptrtoint ptr %rx_abs_int_delay to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rx_abs_int_delay, align 16
  %call39 = tail call fastcc i32 @e1000_validate_option(ptr noundef %rx_abs_int_delay, ptr noundef nonnull @e1000e_check_options.opt.16, ptr noundef %adapter)
  br label %if.end42

if.else40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %30 = load i32, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.16, i32 0, i32 3), align 4
  %rx_abs_int_delay41 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 51
  %31 = ptrtoint ptr %rx_abs_int_delay41 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rx_abs_int_delay41, align 16
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then36
  %32 = load i32, ptr @num_InterruptThrottleRate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %1)
  %cmp43 = icmp ugt i32 %32, %1
  br i1 %cmp43, label %if.then44, label %if.else54

if.then44:                                        ; preds = %if.end42
  %arrayidx45 = getelementptr [33 x i32], ptr @InterruptThrottleRate, i32 0, i32 %1
  %33 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx45, align 4
  %itr = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 14
  %35 = ptrtoint ptr %itr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %itr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp47 = icmp ugt i32 %34, 4
  br i1 %cmp47, label %land.lhs.true, label %if.then44.if.end66_crit_edge

if.then44.if.end66_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

land.lhs.true:                                    ; preds = %if.then44
  %call49 = tail call fastcc i32 @e1000_validate_option(ptr noundef %itr, ptr noundef nonnull @e1000e_check_options.opt.18, ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true.if.end66.sink.split_crit_edge

land.lhs.true.if.end66.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66.sink.split

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.else54:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %itr55 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 14
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %if.else54, %land.lhs.true.if.end66.sink.split_crit_edge
  %itr55.sink = phi ptr [ %itr55, %if.else54 ], [ %itr, %land.lhs.true.if.end66.sink.split_crit_edge ]
  %36 = ptrtoint ptr %itr55.sink to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %itr55.sink, align 128
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %land.lhs.true.if.end66_crit_edge, %if.then44.if.end66_crit_edge
  %itr67 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 14
  %37 = ptrtoint ptr %itr67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %itr67, align 128
  %itr_setting = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 15
  %39 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %itr_setting, align 4
  %40 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %sw.default [
    i32 0, label %do.end71
    i32 1, label %do.end77
    i32 2, label %do.end84
    i32 3, label %if.end66.do.end91_crit_edge
    i32 4, label %do.end98
  ]

if.end66.do.end91_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end91

do.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %pdev72 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %41 = ptrtoint ptr %pdev72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev72, align 32
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19) #7
  br label %sw.epilog

do.end77:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %pdev78 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %43 = ptrtoint ptr %pdev78 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev78, align 32
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev79, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19) #7
  %45 = ptrtoint ptr %itr67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 20000, ptr %itr67, align 128
  br label %sw.epilog

do.end84:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %pdev85 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %46 = ptrtoint ptr %pdev85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev85, align 32
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.19) #7
  %48 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %itr_setting, align 4
  br label %do.end91

do.end91:                                         ; preds = %do.end84, %if.end66.do.end91_crit_edge
  %pdev92 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %49 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev92, align 32
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.19) #7
  %51 = ptrtoint ptr %itr67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 20000, ptr %itr67, align 128
  br label %sw.epilog

do.end98:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %pdev99 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %52 = ptrtoint ptr %pdev99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev99, align 32
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev100, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.19) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %and102 = and i32 %38, -4
  %54 = ptrtoint ptr %itr_setting to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and102, ptr %itr_setting, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end98, %do.end91, %do.end77, %do.end71
  %flags = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 85
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 16
  %and103 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  %.str.43..str.42 = select i1 %tobool104.not, ptr @.str.43, ptr @.str.42
  %. = select i1 %tobool104.not, i32 1, i32 2
  %call108 = tail call noalias ptr @kstrdup(ptr noundef nonnull %.str.43..str.42, i32 noundef 3264) #4
  store ptr %call108, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.40, i32 0, i32 2), align 4
  store i32 %., ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.40, i32 0, i32 3), align 4
  store i32 %., ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.40, i32 0, i32 4, i32 0, i32 1), align 4
  %tobool110.not = icmp eq ptr %call108, null
  br i1 %tobool110.not, label %do.end114, label %if.end117

do.end114:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %pdev115 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %57 = ptrtoint ptr %pdev115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev115, align 32
  %dev116 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116, ptr noundef nonnull @.str.45) #7
  br label %cleanup

if.end117:                                        ; preds = %sw.epilog
  %59 = load i32, ptr @num_IntMode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %1)
  %cmp118 = icmp ugt i32 %59, %1
  br i1 %cmp118, label %if.then119, label %if.end117.if.end125_crit_edge

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_mode) #4
  %arrayidx120 = getelementptr [33 x i32], ptr @IntMode, i32 0, i32 %1
  %60 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx120, align 4
  %62 = ptrtoint ptr %int_mode to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %int_mode, align 4
  %call121 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %int_mode, ptr noundef nonnull @e1000e_check_options.opt.40, ptr noundef %adapter)
  %63 = ptrtoint ptr %int_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_mode, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_mode) #4
  br label %if.end125

if.end125:                                        ; preds = %if.then119, %if.end117.if.end125_crit_edge
  %storemerge.sink = phi i32 [ %64, %if.then119 ], [ %., %if.end117.if.end125_crit_edge ]
  %65 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 78
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %storemerge.sink, ptr %65, align 4
  %67 = load ptr, ptr getelementptr inbounds (%struct.e1000_option, ptr @e1000e_check_options.opt.40, i32 0, i32 2), align 4
  tail call void @kfree(ptr noundef %67) #4
  %68 = load i32, ptr @num_SmartPowerDownEnable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %1)
  %cmp126 = icmp ugt i32 %68, %1
  br i1 %cmp126, label %if.then127, label %if.end125.if.end138_crit_edge

if.end125.if.end138_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end138

if.then127:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spd) #4
  %arrayidx128 = getelementptr [33 x i32], ptr @SmartPowerDownEnable, i32 0, i32 %1
  %69 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx128, align 4
  %71 = ptrtoint ptr %spd to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %spd, align 4
  %call129 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %spd, ptr noundef nonnull @e1000e_check_options.opt.48, ptr noundef %adapter)
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 16
  %and131 = and i32 %73, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.then127.if.end137_crit_edge, label %land.lhs.true133

if.then127.if.end137_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end137

land.lhs.true133:                                 ; preds = %if.then127
  %74 = ptrtoint ptr %spd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %spd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool134.not = icmp eq i32 %75, 0
  br i1 %tobool134.not, label %land.lhs.true133.if.end137_crit_edge, label %if.then135

land.lhs.true133.if.end137_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end137

if.then135:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %73, 67108864
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or, ptr %flags, align 16
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %land.lhs.true133.if.end137_crit_edge, %if.then127.if.end137_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spd) #4
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end125.if.end138_crit_edge
  %77 = load i32, ptr @num_CrcStripping, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %1)
  %cmp139 = icmp ugt i32 %77, %1
  br i1 %cmp139, label %if.then140, label %if.else150

if.then140:                                       ; preds = %if.end138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc_stripping) #4
  %arrayidx141 = getelementptr [33 x i32], ptr @CrcStripping, i32 0, i32 %1
  %78 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx141, align 4
  %80 = ptrtoint ptr %crc_stripping to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %crc_stripping, align 4
  %call142 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %crc_stripping, ptr noundef nonnull @e1000e_check_options.opt.51, ptr noundef %adapter)
  %81 = ptrtoint ptr %crc_stripping to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %crc_stripping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp143 = icmp eq i32 %82, 1
  br i1 %cmp143, label %if.then144, label %if.then140.if.end149_crit_edge

if.then140.if.end149_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.then144:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags2, align 4
  %or148 = or i32 %84, 4097
  store i32 %or148, ptr %flags2, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %if.then140.if.end149_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc_stripping) #4
  br label %if.end155

if.else150:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags2, align 4
  %or154 = or i32 %86, 4097
  store i32 %or154, ptr %flags2, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else150, %if.end149
  %87 = load i32, ptr @num_KumeranLockLoss, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %1)
  %cmp157 = icmp ugt i32 %87, %1
  br i1 %cmp157, label %if.then158, label %if.end155.if.end163_crit_edge

if.end155.if.end163_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end163

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kmrn_lock_loss) #4
  %arrayidx159 = getelementptr [33 x i32], ptr @KumeranLockLoss, i32 0, i32 %1
  %88 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx159, align 4
  %90 = ptrtoint ptr %kmrn_lock_loss to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %kmrn_lock_loss, align 4
  %call160 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %kmrn_lock_loss, ptr noundef nonnull @e1000e_check_options.opt.54, ptr noundef %adapter)
  %91 = ptrtoint ptr %kmrn_lock_loss to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %kmrn_lock_loss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool161 = icmp ne i32 %92, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kmrn_lock_loss) #4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %if.end155.if.end163_crit_edge
  %enabled.0.off0 = phi i1 [ %tobool161, %if.then158 ], [ true, %if.end155.if.end163_crit_edge ]
  %type = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 66, i32 3, i32 3
  %93 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %94)
  %cmp164 = icmp eq i32 %94, 6
  br i1 %cmp164, label %if.then165, label %if.end163.if.end167_crit_edge

if.end163.if.end167_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end167

if.then165:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr noundef %hw1, i1 noundef zeroext %enabled.0.off0) #4
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.end163.if.end167_crit_edge
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 16
  %and169 = and i32 %96, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.cleanup_crit_edge, label %if.then171

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then171:                                       ; preds = %if.end167
  %97 = load i32, ptr @num_WriteProtectNVM, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %1)
  %cmp172 = icmp ugt i32 %97, %1
  br i1 %cmp172, label %if.then173, label %if.then183

if.then173:                                       ; preds = %if.then171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %write_protect_nvm) #4
  %arrayidx174 = getelementptr [33 x i32], ptr @WriteProtectNVM, i32 0, i32 %1
  %98 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx174, align 4
  %100 = ptrtoint ptr %write_protect_nvm to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %write_protect_nvm, align 4
  %call175 = call fastcc i32 @e1000_validate_option(ptr noundef nonnull %write_protect_nvm, ptr noundef nonnull @e1000e_check_options.opt.56, ptr noundef %adapter)
  %101 = ptrtoint ptr %write_protect_nvm to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %write_protect_nvm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool176.not = icmp eq i32 %102, 0
  br i1 %tobool176.not, label %if.then173.if.end180_crit_edge, label %if.then177

if.then173.if.end180_crit_edge:                   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end180

if.then177:                                       ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #6
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags, align 16
  %or179 = or i32 %104, 256
  store i32 %or179, ptr %flags, align 16
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %if.then173.if.end180_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %write_protect_nvm) #4
  br label %cleanup

if.then183:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #6
  %or185 = or i32 %96, 256
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or185, ptr %flags, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then183, %if.end180, %if.end167.cleanup_crit_edge, %do.end114
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e1000_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
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
  %cmp2181 = icmp sgt i32 %9, 0
  br i1 %cmp2181, label %for.body.lr.ph, label %for.cond.preheader.do.end47_crit_edge

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
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %sw.bb.do.end47_crit_edge [
    i32 1, label %do.end
    i32 0, label %do.end4
  ]

sw.bb.do.end47_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end47

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 32
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %name = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef %16) #7
  br label %return

do.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %pdev5 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %17 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev5, align 32
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %name7 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %19 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.61, ptr noundef %20) #7
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
  %pdev15 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %25 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev15, align 32
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %name17 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 1
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.64, ptr noundef %28, i32 noundef %1) #7
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.e1000_opt_list, ptr %11, i32 %i.082
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %30)
  %cmp24 = icmp eq i32 %1, %30
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body
  %str = getelementptr %struct.e1000_opt_list, ptr %11, i32 %i.082, i32 1
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
  %pdev32 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %35 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev32, align 32
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.67, ptr noundef %32) #7
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.082, 1
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/e1000e/param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #4, !srcloc !216
  unreachable

do.end47:                                         ; preds = %for.inc.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %sw.bb8.do.end47_crit_edge, %sw.bb.do.end47_crit_edge, %for.cond.preheader.do.end47_crit_edge
  %pdev48 = getelementptr inbounds %struct.e1000_adapter, ptr %adapter, i32 0, i32 65
  %37 = ptrtoint ptr %pdev48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev48, align 32
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.70, ptr noundef %40, i32 noundef %42, ptr noundef %44) #7
  %def51 = getelementptr inbounds %struct.e1000_option, ptr %opt, i32 0, i32 3
  %45 = ptrtoint ptr %def51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %def51, align 4
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %value, align 4
  br label %return

return:                                           ; preds = %do.end47, %do.end31, %if.then25.return_crit_edge, %do.end14, %do.end4, %do.end, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ -1, %do.end47 ], [ 0, %do.end14 ], [ 0, %do.end4 ], [ 0, %do.end ], [ 0, %if.then25.return_crit_edge ], [ 0, %do.end31 ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @e1000e_set_kmrn_lock_loss_workaround_ich8lan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.ident = !{!215}

!0 = !{ptr @copybreak, !1, !"copybreak", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 20, i32 14}
!2 = !{ptr @__param_copybreak, !3, !"__param_copybreak", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_copybreaktype353, !3, !"__UNIQUE_ID_copybreaktype353", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_copybreak354, !6, !"__UNIQUE_ID_copybreak354", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 22, i32 1}
!7 = !{ptr @__param_TxIntDelay, !8, !"__param_TxIntDelay", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 41, i32 1}
!9 = !{ptr @__UNIQUE_ID_TxIntDelaytype355, !8, !"__UNIQUE_ID_TxIntDelaytype355", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_TxIntDelay356, !8, !"__UNIQUE_ID_TxIntDelay356", i1 false, i1 false}
!11 = !{ptr @__param_TxAbsIntDelay, !12, !"__param_TxAbsIntDelay", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 50, i32 1}
!13 = !{ptr @__UNIQUE_ID_TxAbsIntDelaytype357, !12, !"__UNIQUE_ID_TxAbsIntDelaytype357", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_TxAbsIntDelay358, !12, !"__UNIQUE_ID_TxAbsIntDelay358", i1 false, i1 false}
!15 = !{ptr @__param_RxIntDelay, !16, !"__param_RxIntDelay", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 62, i32 1}
!17 = !{ptr @__UNIQUE_ID_RxIntDelaytype359, !16, !"__UNIQUE_ID_RxIntDelaytype359", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_RxIntDelay360, !16, !"__UNIQUE_ID_RxIntDelay360", i1 false, i1 false}
!19 = !{ptr @__param_RxAbsIntDelay, !20, !"__param_RxAbsIntDelay", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 74, i32 1}
!21 = !{ptr @__UNIQUE_ID_RxAbsIntDelaytype361, !20, !"__UNIQUE_ID_RxAbsIntDelaytype361", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_RxAbsIntDelay362, !20, !"__UNIQUE_ID_RxAbsIntDelay362", i1 false, i1 false}
!23 = !{ptr @__param_InterruptThrottleRate, !24, !"__param_InterruptThrottleRate", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 84, i32 1}
!25 = !{ptr @__UNIQUE_ID_InterruptThrottleRatetype363, !24, !"__UNIQUE_ID_InterruptThrottleRatetype363", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_InterruptThrottleRate364, !24, !"__UNIQUE_ID_InterruptThrottleRate364", i1 false, i1 false}
!27 = !{ptr @__param_IntMode, !28, !"__param_IntMode", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 103, i32 1}
!29 = !{ptr @__UNIQUE_ID_IntModetype365, !28, !"__UNIQUE_ID_IntModetype365", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_IntMode366, !28, !"__UNIQUE_ID_IntMode366", i1 false, i1 false}
!31 = !{ptr @__param_SmartPowerDownEnable, !32, !"__param_SmartPowerDownEnable", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 113, i32 1}
!33 = !{ptr @__UNIQUE_ID_SmartPowerDownEnabletype367, !32, !"__UNIQUE_ID_SmartPowerDownEnabletype367", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_SmartPowerDownEnable368, !32, !"__UNIQUE_ID_SmartPowerDownEnable368", i1 false, i1 false}
!35 = !{ptr @__param_KumeranLockLoss, !36, !"__param_KumeranLockLoss", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 121, i32 1}
!37 = !{ptr @__UNIQUE_ID_KumeranLockLosstype369, !36, !"__UNIQUE_ID_KumeranLockLosstype369", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_KumeranLockLoss370, !36, !"__UNIQUE_ID_KumeranLockLoss370", i1 false, i1 false}
!39 = !{ptr @__param_WriteProtectNVM, !40, !"__param_WriteProtectNVM", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 129, i32 1}
!41 = !{ptr @__UNIQUE_ID_WriteProtectNVMtype371, !40, !"__UNIQUE_ID_WriteProtectNVMtype371", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_WriteProtectNVM372, !40, !"__UNIQUE_ID_WriteProtectNVM372", i1 false, i1 false}
!43 = !{ptr @__param_CrcStripping, !44, !"__param_CrcStripping", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 138, i32 1}
!45 = !{ptr @__UNIQUE_ID_CrcStrippingtype373, !44, !"__UNIQUE_ID_CrcStrippingtype373", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_CrcStripping374, !44, !"__UNIQUE_ID_CrcStripping374", i1 false, i1 false}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 232, i32 3}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @e1000e_check_options._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @e1000e_check_options._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 234, i32 3}
!57 = !{ptr @e1000e_check_options._entry.5, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @e1000e_check_options._entry_ptr.7, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 242, i32 12}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 243, i32 12}
!63 = !{ptr @e1000e_check_options.opt, !64, !"opt", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 240, i32 36}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 262, i32 12}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 263, i32 12}
!69 = !{ptr @e1000e_check_options.opt.10, !70, !"opt", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 260, i32 36}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 282, i32 12}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 283, i32 12}
!75 = !{ptr @e1000e_check_options.opt.13, !76, !"opt", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 280, i32 30}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 305, i32 12}
!79 = !{ptr @e1000e_check_options.opt.16, !80, !"opt", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 303, i32 30}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 328, i32 12}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 329, i32 12}
!85 = !{ptr @e1000e_check_options.opt.18, !86, !"opt", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 326, i32 36}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 357, i32 5}
!89 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @e1000e_check_options._entry.21, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @e1000e_check_options._entry_ptr.24, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 365, i32 4}
!94 = !{ptr @e1000e_check_options._entry.25, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @e1000e_check_options._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 369, i32 4}
!98 = !{ptr @e1000e_check_options._entry.28, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @e1000e_check_options._entry_ptr.30, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 374, i32 4}
!102 = !{ptr @e1000e_check_options._entry.31, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @e1000e_check_options._entry_ptr.33, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 380, i32 4}
!106 = !{ptr @e1000e_check_options._entry.34, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @e1000e_check_options._entry_ptr.36, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 386, i32 4}
!110 = !{ptr @e1000e_check_options._entry.37, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @e1000e_check_options._entry_ptr.39, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 405, i32 12}
!114 = !{ptr @e1000e_check_options.opt.40, !115, !"opt", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 403, i32 30}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 416, i32 22}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 421, i32 22}
!120 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 427, i32 4}
!122 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @e1000e_check_options._entry.44, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @e1000e_check_options._entry_ptr.47, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 450, i32 12}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 451, i32 12}
!129 = !{ptr @e1000e_check_options.opt.48, !130, !"opt", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 448, i32 36}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 467, i32 12}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 468, i32 12}
!135 = !{ptr @e1000e_check_options.opt.51, !136, !"opt", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 465, i32 36}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 489, i32 12}
!139 = !{ptr @e1000e_check_options.opt.54, !140, !"opt", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 487, i32 36}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 510, i32 12}
!143 = !{ptr @e1000e_check_options.opt.56, !144, !"opt", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 508, i32 36}
!145 = !{ptr @num_TxIntDelay, !8, !"num_TxIntDelay", i1 false, i1 false}
!146 = !{ptr @num_TxAbsIntDelay, !12, !"num_TxAbsIntDelay", i1 false, i1 false}
!147 = !{ptr @num_RxIntDelay, !16, !"num_RxIntDelay", i1 false, i1 false}
!148 = !{ptr @num_RxAbsIntDelay, !20, !"num_RxAbsIntDelay", i1 false, i1 false}
!149 = !{ptr @num_InterruptThrottleRate, !24, !"num_InterruptThrottleRate", i1 false, i1 false}
!150 = !{ptr @num_IntMode, !28, !"num_IntMode", i1 false, i1 false}
!151 = !{ptr @num_SmartPowerDownEnable, !32, !"num_SmartPowerDownEnable", i1 false, i1 false}
!152 = !{ptr @num_KumeranLockLoss, !36, !"num_KumeranLockLoss", i1 false, i1 false}
!153 = !{ptr @num_WriteProtectNVM, !40, !"num_WriteProtectNVM", i1 false, i1 false}
!154 = !{ptr @num_CrcStripping, !44, !"num_CrcStripping", i1 false, i1 false}
!155 = !{ptr @__param_str_copybreak, !3, !"__param_str_copybreak", i1 false, i1 false}
!156 = !{ptr @__param_str_TxIntDelay, !8, !"__param_str_TxIntDelay", i1 false, i1 false}
!157 = !{ptr @__param_arr_TxIntDelay, !8, !"__param_arr_TxIntDelay", i1 false, i1 false}
!158 = !{ptr @__param_str_TxAbsIntDelay, !12, !"__param_str_TxAbsIntDelay", i1 false, i1 false}
!159 = !{ptr @__param_arr_TxAbsIntDelay, !12, !"__param_arr_TxAbsIntDelay", i1 false, i1 false}
!160 = !{ptr @__param_str_RxIntDelay, !16, !"__param_str_RxIntDelay", i1 false, i1 false}
!161 = !{ptr @__param_arr_RxIntDelay, !16, !"__param_arr_RxIntDelay", i1 false, i1 false}
!162 = !{ptr @__param_str_RxAbsIntDelay, !20, !"__param_str_RxAbsIntDelay", i1 false, i1 false}
!163 = !{ptr @__param_arr_RxAbsIntDelay, !20, !"__param_arr_RxAbsIntDelay", i1 false, i1 false}
!164 = !{ptr @__param_str_InterruptThrottleRate, !24, !"__param_str_InterruptThrottleRate", i1 false, i1 false}
!165 = !{ptr @__param_arr_InterruptThrottleRate, !24, !"__param_arr_InterruptThrottleRate", i1 false, i1 false}
!166 = !{ptr @__param_str_IntMode, !28, !"__param_str_IntMode", i1 false, i1 false}
!167 = !{ptr @__param_arr_IntMode, !28, !"__param_arr_IntMode", i1 false, i1 false}
!168 = !{ptr @__param_str_SmartPowerDownEnable, !32, !"__param_str_SmartPowerDownEnable", i1 false, i1 false}
!169 = !{ptr @__param_arr_SmartPowerDownEnable, !32, !"__param_arr_SmartPowerDownEnable", i1 false, i1 false}
!170 = !{ptr @__param_str_KumeranLockLoss, !36, !"__param_str_KumeranLockLoss", i1 false, i1 false}
!171 = !{ptr @__param_arr_KumeranLockLoss, !36, !"__param_arr_KumeranLockLoss", i1 false, i1 false}
!172 = !{ptr @__param_str_WriteProtectNVM, !40, !"__param_str_WriteProtectNVM", i1 false, i1 false}
!173 = !{ptr @__param_arr_WriteProtectNVM, !40, !"__param_arr_WriteProtectNVM", i1 false, i1 false}
!174 = !{ptr @__param_str_CrcStripping, !44, !"__param_str_CrcStripping", i1 false, i1 false}
!175 = !{ptr @__param_arr_CrcStripping, !44, !"__param_arr_CrcStripping", i1 false, i1 false}
!176 = !{ptr @TxIntDelay, !8, !"TxIntDelay", i1 false, i1 false}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 176, i32 4}
!179 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @e1000_validate_option._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @e1000_validate_option._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.61, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 180, i32 4}
!184 = !{ptr @e1000_validate_option._entry.60, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @e1000_validate_option._entry_ptr.62, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.64, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 187, i32 4}
!188 = !{ptr @e1000_validate_option._entry.63, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @e1000_validate_option._entry_ptr.65, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 200, i32 6}
!192 = !{ptr @e1000_validate_option._entry.66, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @e1000_validate_option._entry_ptr.68, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/intel/e1000e/param.c", i32 211, i32 2}
!196 = !{ptr @e1000_validate_option._entry.69, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @e1000_validate_option._entry_ptr.71, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @TxAbsIntDelay, !12, !"TxAbsIntDelay", i1 false, i1 false}
!199 = !{ptr @RxIntDelay, !16, !"RxIntDelay", i1 false, i1 false}
!200 = !{ptr @RxAbsIntDelay, !20, !"RxAbsIntDelay", i1 false, i1 false}
!201 = !{ptr @InterruptThrottleRate, !24, !"InterruptThrottleRate", i1 false, i1 false}
!202 = !{ptr @IntMode, !28, !"IntMode", i1 false, i1 false}
!203 = !{ptr @SmartPowerDownEnable, !32, !"SmartPowerDownEnable", i1 false, i1 false}
!204 = !{ptr @CrcStripping, !44, !"CrcStripping", i1 false, i1 false}
!205 = !{ptr @KumeranLockLoss, !36, !"KumeranLockLoss", i1 false, i1 false}
!206 = !{ptr @WriteProtectNVM, !40, !"WriteProtectNVM", i1 false, i1 false}
!207 = !{i32 1, !"wchar_size", i32 2}
!208 = !{i32 1, !"min_enum_size", i32 4}
!209 = !{i32 8, !"branch-target-enforcement", i32 0}
!210 = !{i32 8, !"sign-return-address", i32 0}
!211 = !{i32 8, !"sign-return-address-all", i32 0}
!212 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!213 = !{i32 7, !"uwtable", i32 1}
!214 = !{i32 7, !"frame-pointer", i32 2}
!215 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!216 = !{i64 2156979327, i64 2156979833, i64 2156979364, i64 2156979420, i64 2156979454, i64 2156979478, i64 2156979519, i64 2156979540, i64 2156979568, i64 2156979602}
