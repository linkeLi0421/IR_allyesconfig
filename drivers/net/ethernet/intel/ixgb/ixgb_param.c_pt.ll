; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgb/ixgb_param.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgb/ixgb_param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ixgb_option = type { i32, ptr, ptr, i32, %union.anon.155 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, i32 }
%struct.ixgb_opt_list = type { i32, ptr }
%struct.anon.157 = type { i32, ptr }
%struct.ixgb_adapter = type { %struct.timer_list, [128 x i32], i32, i32, i32, i16, i16, %struct.work_struct, [20 x i8], %struct.ixgb_desc_ring, i32, i32, i32, i64, i64, i32, i32, i8, i8, %struct.ixgb_desc_ring, i64, i64, i32, i8, %struct.napi_struct, ptr, ptr, %struct.ixgb_hw, i16, %struct.ixgb_hw_stats, i32, i8, i32, [44 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ixgb_desc_ring = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ixgb_hw = type { ptr, ptr, %struct.ixgb_fc, %struct.ixgb_bus, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, i8, i8, i16, i16, i8, i16, i16, i32, i32, i32, i32, i16, [64 x i16], i32, i32, i32 }
%struct.ixgb_fc = type { i32, i32, i16, i8, i32 }
%struct.ixgb_bus = type { i32, i32, i32 }
%struct.ixgb_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__param_str_TxDescriptors = internal constant [19 x i8] c"ixgb.TxDescriptors\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_TxDescriptors = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_TxDescriptors, ptr @param_ops_int, ptr @TxDescriptors }, align 4
@__param_TxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_TxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_TxDescriptorstype511 = internal constant [41 x i8] c"ixgb.parmtype=TxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxDescriptors512 = internal constant [55 x i8] c"ixgb.parm=TxDescriptors:Number of transmit descriptors\00", section ".modinfo", align 1
@__param_str_RxDescriptors = internal constant [19 x i8] c"ixgb.RxDescriptors\00", align 1
@__param_arr_RxDescriptors = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_RxDescriptors, ptr @param_ops_int, ptr @RxDescriptors }, align 4
@__param_RxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_RxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_RxDescriptorstype513 = internal constant [41 x i8] c"ixgb.parmtype=RxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxDescriptors514 = internal constant [54 x i8] c"ixgb.parm=RxDescriptors:Number of receive descriptors\00", section ".modinfo", align 1
@__param_str_FlowControl = internal constant [17 x i8] c"ixgb.FlowControl\00", align 1
@__param_arr_FlowControl = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_FlowControl, ptr @param_ops_int, ptr @FlowControl }, align 4
@__param_FlowControl = internal constant %struct.kernel_param { ptr @__param_str_FlowControl, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_FlowControl } }, section "__param", align 4
@__UNIQUE_ID_FlowControltype515 = internal constant [39 x i8] c"ixgb.parmtype=FlowControl:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_FlowControl516 = internal constant [43 x i8] c"ixgb.parm=FlowControl:Flow Control setting\00", section ".modinfo", align 1
@__param_str_XsumRX = internal constant [12 x i8] c"ixgb.XsumRX\00", align 1
@__param_arr_XsumRX = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_XsumRX, ptr @param_ops_int, ptr @XsumRX }, align 4
@__param_XsumRX = internal constant %struct.kernel_param { ptr @__param_str_XsumRX, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_XsumRX } }, section "__param", align 4
@__UNIQUE_ID_XsumRXtype517 = internal constant [34 x i8] c"ixgb.parmtype=XsumRX:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_XsumRX518 = internal constant [60 x i8] c"ixgb.parm=XsumRX:Disable or enable Receive Checksum offload\00", section ".modinfo", align 1
@__param_str_TxIntDelay = internal constant [16 x i8] c"ixgb.TxIntDelay\00", align 1
@__param_arr_TxIntDelay = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_TxIntDelay, ptr @param_ops_int, ptr @TxIntDelay }, align 4
@__param_TxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_TxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_TxIntDelaytype519 = internal constant [38 x i8] c"ixgb.parmtype=TxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxIntDelay520 = internal constant [46 x i8] c"ixgb.parm=TxIntDelay:Transmit Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxIntDelay = internal constant [16 x i8] c"ixgb.RxIntDelay\00", align 1
@__param_arr_RxIntDelay = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_RxIntDelay, ptr @param_ops_int, ptr @RxIntDelay }, align 4
@__param_RxIntDelay = internal constant %struct.kernel_param { ptr @__param_str_RxIntDelay, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxIntDelay } }, section "__param", align 4
@__UNIQUE_ID_RxIntDelaytype521 = internal constant [38 x i8] c"ixgb.parmtype=RxIntDelay:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxIntDelay522 = internal constant [45 x i8] c"ixgb.parm=RxIntDelay:Receive Interrupt Delay\00", section ".modinfo", align 1
@__param_str_RxFCHighThresh = internal constant [20 x i8] c"ixgb.RxFCHighThresh\00", align 1
@__param_arr_RxFCHighThresh = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_RxFCHighThresh, ptr @param_ops_int, ptr @RxFCHighThresh }, align 4
@__param_RxFCHighThresh = internal constant %struct.kernel_param { ptr @__param_str_RxFCHighThresh, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxFCHighThresh } }, section "__param", align 4
@__UNIQUE_ID_RxFCHighThreshtype523 = internal constant [42 x i8] c"ixgb.parmtype=RxFCHighThresh:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxFCHighThresh524 = internal constant [61 x i8] c"ixgb.parm=RxFCHighThresh:Receive Flow Control High Threshold\00", section ".modinfo", align 1
@__param_str_RxFCLowThresh = internal constant [19 x i8] c"ixgb.RxFCLowThresh\00", align 1
@__param_arr_RxFCLowThresh = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_RxFCLowThresh, ptr @param_ops_int, ptr @RxFCLowThresh }, align 4
@__param_RxFCLowThresh = internal constant %struct.kernel_param { ptr @__param_str_RxFCLowThresh, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxFCLowThresh } }, section "__param", align 4
@__UNIQUE_ID_RxFCLowThreshtype525 = internal constant [41 x i8] c"ixgb.parmtype=RxFCLowThresh:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxFCLowThresh526 = internal constant [59 x i8] c"ixgb.parm=RxFCLowThresh:Receive Flow Control Low Threshold\00", section ".modinfo", align 1
@__param_str_FCReqTimeout = internal constant [18 x i8] c"ixgb.FCReqTimeout\00", align 1
@__param_arr_FCReqTimeout = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_FCReqTimeout, ptr @param_ops_int, ptr @FCReqTimeout }, align 4
@__param_FCReqTimeout = internal constant %struct.kernel_param { ptr @__param_str_FCReqTimeout, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_FCReqTimeout } }, section "__param", align 4
@__UNIQUE_ID_FCReqTimeouttype527 = internal constant [40 x i8] c"ixgb.parmtype=FCReqTimeout:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_FCReqTimeout528 = internal constant [52 x i8] c"ixgb.parm=FCReqTimeout:Flow Control Request Timeout\00", section ".modinfo", align 1
@__param_str_IntDelayEnable = internal constant [20 x i8] c"ixgb.IntDelayEnable\00", align 1
@__param_arr_IntDelayEnable = internal constant %struct.kparam_array { i32 9, i32 4, ptr @num_IntDelayEnable, ptr @param_ops_int, ptr @IntDelayEnable }, align 4
@__param_IntDelayEnable = internal constant %struct.kernel_param { ptr @__param_str_IntDelayEnable, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_IntDelayEnable } }, section "__param", align 4
@__UNIQUE_ID_IntDelayEnabletype529 = internal constant [42 x i8] c"ixgb.parmtype=IntDelayEnable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_IntDelayEnable530 = internal constant [57 x i8] c"ixgb.parm=IntDelayEnable:Transmit Interrupt Delay Enable\00", section ".modinfo", align 1
@ixgb_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015ixgb: Warning: no configuration for board #%i\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixgb_check_options\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ixgb/ixgb_param.c\00", [51 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr = internal global ptr @ixgb_check_options._entry, section ".printk_index", align 4
@ixgb_check_options._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015ixgb: Using defaults for all values\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr.5 = internal global ptr @ixgb_check_options._entry.3, section ".printk_index", align 4
@ixgb_check_options.opt = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.6, ptr @.str.7, i32 256, %union.anon.155 { %struct.anon.156 { i32 64, i32 4096 } } }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit Descriptors\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 256\00", [43 x i8] zeroinitializer }, align 32
@num_TxDescriptors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxDescriptors = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.8 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.9, ptr @.str.10, i32 512, %union.anon.155 { %struct.anon.156 { i32 64, i32 512 } } }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Receive Descriptors\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 512\00", [43 x i8] zeroinitializer }, align 32
@num_RxDescriptors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxDescriptors = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.11 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 0, ptr @.str.12, ptr @.str.13, i32 1, %union.anon.155 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Receive Checksum Offload\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defaulting to Enabled\00", [42 x i8] zeroinitializer }, align 32
@num_XsumRX = internal global { i32, [28 x i8] } zeroinitializer, align 32
@XsumRX = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.fc_list = internal constant { [5 x %struct.ixgb_opt_list], [56 x i8] } { [5 x %struct.ixgb_opt_list] [%struct.ixgb_opt_list { i32 0, ptr @.str.14 }, %struct.ixgb_opt_list { i32 1, ptr @.str.15 }, %struct.ixgb_opt_list { i32 2, ptr @.str.16 }, %struct.ixgb_opt_list { i32 3, ptr @.str.17 }, %struct.ixgb_opt_list { i32 255, ptr @.str.18 }], [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control Disabled\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flow Control Receive Only\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flow Control Transmit Only\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flow Control Enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Flow Control Hardware Default\00", [34 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.19 = internal constant { { i32, ptr, ptr, i32, { %struct.anon.157 } }, [40 x i8] } { { i32, ptr, ptr, i32, { %struct.anon.157 } } { i32 2, ptr @.str.20, ptr @.str.21, i32 2, { %struct.anon.157 } { %struct.anon.157 { i32 5, ptr @ixgb_check_options.fc_list } } }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flow Control\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reading default settings from EEPROM\00", [59 x i8] zeroinitializer }, align 32
@num_FlowControl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@FlowControl = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.22 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.23, ptr @.str.24, i32 196608, %union.anon.155 { %struct.anon.156 { i32 8, i32 262128 } } }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Rx Flow Control High Threshold\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using default of 0x30000\00", [39 x i8] zeroinitializer }, align 32
@num_RxFCHighThresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxFCHighThresh = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ixgb: Ignoring RxFCHighThresh when no RxFC\0A\00", [50 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr.27 = internal global ptr @ixgb_check_options._entry.25, section ".printk_index", align 4
@ixgb_check_options.opt.28 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.29, ptr @.str.30, i32 163840, %union.anon.155 { %struct.anon.156 { i32 0, i32 262120 } } }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Rx Flow Control Low Threshold\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using default of 0x28000\00", [39 x i8] zeroinitializer }, align 32
@num_RxFCLowThresh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxFCLowThresh = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ixgb: Ignoring RxFCLowThresh when no RxFC\0A\00", [51 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr.33 = internal global ptr @ixgb_check_options._entry.31, section ".printk_index", align 4
@ixgb_check_options.opt.34 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.35, ptr @.str.36, i32 65535, %union.anon.155 { %struct.anon.156 { i32 1, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Flow Control Pause Time Request\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"using default of 0xFFFF\00", [40 x i8] zeroinitializer }, align 32
@num_FCReqTimeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@FCReqTimeout = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016ixgb: Ignoring FCReqTimeout when no RxFC\0A\00", [52 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr.39 = internal global ptr @ixgb_check_options._entry.37, section ".printk_index", align 4
@ixgb_check_options._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016ixgb: RxFCHighThresh must be >= (RxFCLowThresh + 8), Using Defaults\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgb_check_options._entry_ptr.42 = internal global ptr @ixgb_check_options._entry.40, section ".printk_index", align 4
@ixgb_check_options.opt.43 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.44, ptr @.str.45, i32 72, %union.anon.155 { %struct.anon.156 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Receive Interrupt Delay\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using default of 72\00", [44 x i8] zeroinitializer }, align 32
@num_RxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@RxIntDelay = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.46 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 1, ptr @.str.47, ptr @.str.48, i32 32, %union.anon.155 { %struct.anon.156 { i32 0, i32 65535 } } }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Transmit Interrupt Delay\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"using default of 32\00", [44 x i8] zeroinitializer }, align 32
@num_TxIntDelay = internal global { i32, [28 x i8] } zeroinitializer, align 32
@TxIntDelay = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@ixgb_check_options.opt.49 = internal constant { %struct.ixgb_option, [40 x i8] } { %struct.ixgb_option { i32 0, ptr @.str.50, ptr @.str.13, i32 1, %union.anon.155 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx Interrupt Delay Enable\00", [38 x i8] zeroinitializer }, align 32
@num_IntDelayEnable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@IntDelayEnable = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [60 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ixgb_validate_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016ixgb: %s Enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgb_validate_option\00", [43 x i8] zeroinitializer }, align 32
@ixgb_validate_option._entry_ptr = internal global ptr @ixgb_validate_option._entry, section ".printk_index", align 4
@ixgb_validate_option._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016ixgb: %s Disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgb_validate_option._entry_ptr.55 = internal global ptr @ixgb_validate_option._entry.53, section ".printk_index", align 4
@ixgb_validate_option._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ixgb: %s set to %i\0A\00", [42 x i8] zeroinitializer }, align 32
@ixgb_validate_option._entry_ptr.58 = internal global ptr @ixgb_validate_option._entry.56, section ".printk_index", align 4
@ixgb_validate_option._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016ixgb: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ixgb_validate_option._entry_ptr.61 = internal global ptr @ixgb_validate_option._entry.59, section ".printk_index", align 4
@ixgb_validate_option._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ixgb: Invalid %s specified (%i) %s\0A\00", [58 x i8] zeroinitializer }, align 32
@ixgb_validate_option._entry_ptr.64 = internal global ptr @ixgb_validate_option._entry.62, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 240, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 241, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 245, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 247, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 248, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"num_TxDescriptors\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"TxDescriptors\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 38, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 264, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 266, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 267, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"num_RxDescriptors\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"RxDescriptors\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 47, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 283, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 285, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 286, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [11 x i8] c"num_XsumRX\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"XsumRX\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 72, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [8 x i8] c"fc_list\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 300, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 301, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 302, i32 30 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 303, i32 30 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 304, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 305, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 308, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 310, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 311, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"num_FlowControl\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"FlowControl\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 60, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 326, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 328, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 329, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"num_RxFCHighThresh\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"RxFCHighThresh\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 100, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 342, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 345, i32 35 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 347, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 348, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"num_RxFCLowThresh\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"RxFCLowThresh\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 111, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 361, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 364, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 366, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 367, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"num_FCReqTimeout\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [13 x i8] c"FCReqTimeout\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 121, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 381, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 388, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 394, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 396, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 397, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"num_RxIntDelay\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [11 x i8] c"RxIntDelay\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 90, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 411, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 413, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 414, i32 12 }
@___asan_gen_.255 = private unnamed_addr constant [15 x i8] c"num_TxIntDelay\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"TxIntDelay\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 81, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant [4 x i8] c"opt\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 429, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 431, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"num_IntDelayEnable\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"IntDelayEnable\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 133, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 189, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 192, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 198, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 210, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgb/ixgb_param.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 220, i32 2 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_FCReqTimeout528, ptr @__UNIQUE_ID_FCReqTimeouttype527, ptr @__UNIQUE_ID_FlowControl516, ptr @__UNIQUE_ID_FlowControltype515, ptr @__UNIQUE_ID_IntDelayEnable530, ptr @__UNIQUE_ID_IntDelayEnabletype529, ptr @__UNIQUE_ID_RxDescriptors514, ptr @__UNIQUE_ID_RxDescriptorstype513, ptr @__UNIQUE_ID_RxFCHighThresh524, ptr @__UNIQUE_ID_RxFCHighThreshtype523, ptr @__UNIQUE_ID_RxFCLowThresh526, ptr @__UNIQUE_ID_RxFCLowThreshtype525, ptr @__UNIQUE_ID_RxIntDelay522, ptr @__UNIQUE_ID_RxIntDelaytype521, ptr @__UNIQUE_ID_TxDescriptors512, ptr @__UNIQUE_ID_TxDescriptorstype511, ptr @__UNIQUE_ID_TxIntDelay520, ptr @__UNIQUE_ID_TxIntDelaytype519, ptr @__UNIQUE_ID_XsumRX518, ptr @__UNIQUE_ID_XsumRXtype517, ptr @__param_FCReqTimeout, ptr @__param_FlowControl, ptr @__param_IntDelayEnable, ptr @__param_RxDescriptors, ptr @__param_RxFCHighThresh, ptr @__param_RxFCLowThresh, ptr @__param_RxIntDelay, ptr @__param_TxDescriptors, ptr @__param_TxIntDelay, ptr @__param_XsumRX, ptr @ixgb_check_options._entry, ptr @ixgb_check_options._entry.25, ptr @ixgb_check_options._entry.3, ptr @ixgb_check_options._entry.31, ptr @ixgb_check_options._entry.37, ptr @ixgb_check_options._entry.40, ptr @ixgb_check_options._entry_ptr, ptr @ixgb_check_options._entry_ptr.27, ptr @ixgb_check_options._entry_ptr.33, ptr @ixgb_check_options._entry_ptr.39, ptr @ixgb_check_options._entry_ptr.42, ptr @ixgb_check_options._entry_ptr.5, ptr @ixgb_validate_option._entry, ptr @ixgb_validate_option._entry.53, ptr @ixgb_validate_option._entry.56, ptr @ixgb_validate_option._entry.59, ptr @ixgb_validate_option._entry.62, ptr @ixgb_validate_option._entry_ptr, ptr @ixgb_validate_option._entry_ptr.55, ptr @ixgb_validate_option._entry_ptr.58, ptr @ixgb_validate_option._entry_ptr.61, ptr @ixgb_validate_option._entry_ptr.64, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ixgb_check_options.opt, ptr @.str.6, ptr @.str.7, ptr @num_TxDescriptors, ptr @TxDescriptors, ptr @ixgb_check_options.opt.8, ptr @.str.9, ptr @.str.10, ptr @num_RxDescriptors, ptr @RxDescriptors, ptr @ixgb_check_options.opt.11, ptr @.str.12, ptr @.str.13, ptr @num_XsumRX, ptr @XsumRX, ptr @ixgb_check_options.fc_list, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ixgb_check_options.opt.19, ptr @.str.20, ptr @.str.21, ptr @num_FlowControl, ptr @FlowControl, ptr @ixgb_check_options.opt.22, ptr @.str.23, ptr @.str.24, ptr @num_RxFCHighThresh, ptr @RxFCHighThresh, ptr @.str.26, ptr @ixgb_check_options.opt.28, ptr @.str.29, ptr @.str.30, ptr @num_RxFCLowThresh, ptr @RxFCLowThresh, ptr @.str.32, ptr @ixgb_check_options.opt.34, ptr @.str.35, ptr @.str.36, ptr @num_FCReqTimeout, ptr @FCReqTimeout, ptr @.str.38, ptr @.str.41, ptr @ixgb_check_options.opt.43, ptr @.str.44, ptr @.str.45, ptr @num_RxIntDelay, ptr @RxIntDelay, ptr @ixgb_check_options.opt.46, ptr @.str.47, ptr @.str.48, ptr @num_TxIntDelay, ptr @TxIntDelay, ptr @ixgb_check_options.opt.49, ptr @.str.50, ptr @num_IntDelayEnable, ptr @IntDelayEnable, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxDescriptors to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxDescriptors to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_XsumRX to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XsumRX to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.fc_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_FlowControl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlowControl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxFCHighThresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxFCHighThresh to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxFCLowThresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxFCLowThresh to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_FCReqTimeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FCReqTimeout to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_RxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxIntDelay to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_TxIntDelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxIntDelay to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_check_options.opt.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_IntDelayEnable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IntDelayEnable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_validate_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_validate_option._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_validate_option._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_validate_option._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_validate_option._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_check_options(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %rx_csum = alloca i32, align 4
  %fc = alloca i32, align 4
  %pause_time = alloca i32, align 4
  %ide = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_number = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bd_number, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp sgt i32 %1, 7
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = load i32, ptr @num_TxDescriptors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp7 = icmp ugt i32 %2, %1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [9 x i32], ptr @TxDescriptors, i32 0, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 4
  tail call fastcc void @ixgb_validate_option(ptr noundef %count, ptr noundef nonnull @ixgb_check_options.opt)
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %count11 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %count11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %count13 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %count13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count13, align 4
  %add = add i32 %8, 7
  %and = and i32 %add, -8
  store i32 %and, ptr %count13, align 4
  %9 = load i32, ptr @num_RxDescriptors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp16 = icmp ugt i32 %9, %1
  br i1 %cmp16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx18 = getelementptr [9 x i32], ptr @RxDescriptors, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx18, align 4
  %count19 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %12 = ptrtoint ptr %count19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %count19, align 4
  tail call fastcc void @ixgb_validate_option(ptr noundef %count19, ptr noundef nonnull @ixgb_check_options.opt.8)
  br label %if.end24

if.else22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %count23 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %13 = ptrtoint ptr %count23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %count23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then17
  %count25 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count25, align 4
  %add26 = add i32 %15, 7
  %and27 = and i32 %add26, -8
  store i32 %and27, ptr %count25, align 4
  %16 = load i32, ptr @num_XsumRX, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp29 = icmp ugt i32 %16, %1
  br i1 %cmp29, label %if.then30, label %if.end24.if.end38_crit_edge

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_csum) #3
  %arrayidx31 = getelementptr [9 x i32], ptr @XsumRX, i32 0, i32 %1
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx31, align 4
  %19 = ptrtoint ptr %rx_csum to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rx_csum, align 4
  call fastcc void @ixgb_validate_option(ptr noundef nonnull %rx_csum, ptr noundef nonnull @ixgb_check_options.opt.11)
  %20 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_csum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool = icmp ne i32 %21, 0
  %frombool = zext i1 %tobool to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_csum) #3
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.end24.if.end38_crit_edge
  %.sink = phi i8 [ %frombool, %if.then30 ], [ 1, %if.end24.if.end38_crit_edge ]
  %22 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 23
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %22, align 4
  %24 = load i32, ptr @num_FlowControl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %1)
  %cmp39 = icmp ugt i32 %24, %1
  br i1 %cmp39, label %if.then40, label %if.end38.if.end48_crit_edge

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fc) #3
  %arrayidx41 = getelementptr [9 x i32], ptr @FlowControl, i32 0, i32 %1
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx41, align 4
  %27 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fc, align 4
  call fastcc void @ixgb_validate_option(ptr noundef nonnull %fc, ptr noundef nonnull @ixgb_check_options.opt.19)
  %28 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fc, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fc) #3
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %if.end38.if.end48_crit_edge
  %.sink244 = phi i32 [ %29, %if.then40 ], [ 2, %if.end38.if.end48_crit_edge ]
  %30 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink244, ptr %30, align 4
  %32 = load i32, ptr @num_RxFCHighThresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %1)
  %cmp49 = icmp ugt i32 %32, %1
  br i1 %cmp49, label %if.then50, label %if.else58

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx51 = getelementptr [9 x i32], ptr @RxFCHighThresh, i32 0, i32 %1
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx51, align 4
  %fc53 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2
  %35 = ptrtoint ptr %fc53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %fc53, align 8
  tail call fastcc void @ixgb_validate_option(ptr noundef %fc53, ptr noundef nonnull @ixgb_check_options.opt.22)
  br label %if.end62

if.else58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %fc60 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2
  %36 = ptrtoint ptr %fc60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 196608, ptr %fc60, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then50
  %fc64 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %30, align 4
  %and66 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end71, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #6
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %if.end62.if.end74_crit_edge
  %39 = load i32, ptr @num_RxFCLowThresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %1)
  %cmp75 = icmp ugt i32 %39, %1
  br i1 %cmp75, label %if.then76, label %if.else84

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx77 = getelementptr [9 x i32], ptr @RxFCLowThresh, i32 0, i32 %1
  %40 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx77, align 4
  %low_water = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2, i32 1
  %42 = ptrtoint ptr %low_water to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %low_water, align 4
  tail call fastcc void @ixgb_validate_option(ptr noundef %low_water, ptr noundef nonnull @ixgb_check_options.opt.28)
  br label %if.end88

if.else84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #5
  %low_water87 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2, i32 1
  %43 = ptrtoint ptr %low_water87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 163840, ptr %low_water87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then76
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %30, align 4
  %and92 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %do.end97, label %if.end88.if.end100_crit_edge

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end100

do.end97:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #6
  br label %if.end100

if.end100:                                        ; preds = %do.end97, %if.end88.if.end100_crit_edge
  %46 = load i32, ptr @num_FCReqTimeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %1)
  %cmp101 = icmp ugt i32 %46, %1
  br i1 %cmp101, label %if.then102, label %if.end100.if.end113_crit_edge

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pause_time) #3
  %arrayidx103 = getelementptr [9 x i32], ptr @FCReqTimeout, i32 0, i32 %1
  %47 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx103, align 4
  %49 = ptrtoint ptr %pause_time to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %pause_time, align 4
  call fastcc void @ixgb_validate_option(ptr noundef nonnull %pause_time, ptr noundef nonnull @ixgb_check_options.opt.34)
  %50 = ptrtoint ptr %pause_time to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pause_time, align 4
  %conv = trunc i32 %51 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pause_time) #3
  br label %if.end113

if.end113:                                        ; preds = %if.then102, %if.end100.if.end113_crit_edge
  %.sink245 = phi i16 [ %conv, %if.then102 ], [ -1, %if.end100.if.end113_crit_edge ]
  %52 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %.sink245, ptr %52, align 8
  %54 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %30, align 4
  %and117 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.end122, label %if.end113.if.end125_crit_edge

if.end113.if.end125_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end125

do.end122:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #5
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #6
  br label %if.end125

if.end125:                                        ; preds = %do.end122, %if.end113.if.end125_crit_edge
  %56 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %30, align 4
  %and129 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end125.if.end154_crit_edge, label %if.then131

if.end125.if.end154_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end154

if.then131:                                       ; preds = %if.end125
  %58 = ptrtoint ptr %fc64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fc64, align 8
  %low_water137 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 2, i32 1
  %60 = ptrtoint ptr %low_water137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %low_water137, align 4
  %add138 = add i32 %61, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %add138)
  %cmp139 = icmp ult i32 %59, %add138
  br i1 %cmp139, label %do.end144, label %if.then131.if.end154_crit_edge

if.then131.if.end154_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end154

do.end144:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #5
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #6
  %62 = ptrtoint ptr %fc64 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196608, ptr %fc64, align 8
  %63 = ptrtoint ptr %low_water137 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 163840, ptr %low_water137, align 4
  br label %if.end154

if.end154:                                        ; preds = %do.end144, %if.then131.if.end154_crit_edge, %if.end125.if.end154_crit_edge
  %64 = load i32, ptr @num_RxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %1)
  %cmp155 = icmp ugt i32 %64, %1
  br i1 %cmp155, label %if.then157, label %if.else161

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx158 = getelementptr [9 x i32], ptr @RxIntDelay, i32 0, i32 %1
  %65 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx158, align 4
  %rx_int_delay = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 22
  %67 = ptrtoint ptr %rx_int_delay to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rx_int_delay, align 16
  tail call fastcc void @ixgb_validate_option(ptr noundef %rx_int_delay, ptr noundef nonnull @ixgb_check_options.opt.43)
  br label %if.end163

if.else161:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #5
  %rx_int_delay162 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 22
  %68 = ptrtoint ptr %rx_int_delay162 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 72, ptr %rx_int_delay162, align 16
  br label %if.end163

if.end163:                                        ; preds = %if.else161, %if.then157
  %69 = load i32, ptr @num_TxIntDelay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %1)
  %cmp164 = icmp ugt i32 %69, %1
  br i1 %cmp164, label %if.then166, label %if.else170

if.then166:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx167 = getelementptr [9 x i32], ptr @TxIntDelay, i32 0, i32 %1
  %70 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx167, align 4
  %tx_int_delay = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 15
  %72 = ptrtoint ptr %tx_int_delay to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tx_int_delay, align 8
  tail call fastcc void @ixgb_validate_option(ptr noundef %tx_int_delay, ptr noundef nonnull @ixgb_check_options.opt.46)
  br label %if.end172

if.else170:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  %tx_int_delay171 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 15
  %73 = ptrtoint ptr %tx_int_delay171 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32, ptr %tx_int_delay171, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %if.then166
  %74 = load i32, ptr @num_IntDelayEnable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %1)
  %cmp173 = icmp ugt i32 %74, %1
  br i1 %cmp173, label %if.then175, label %if.end172.if.end184_crit_edge

if.end172.if.end184_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end184

if.then175:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ide) #3
  %arrayidx176 = getelementptr [9 x i32], ptr @IntDelayEnable, i32 0, i32 %1
  %75 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx176, align 4
  %77 = ptrtoint ptr %ide to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ide, align 4
  call fastcc void @ixgb_validate_option(ptr noundef nonnull %ide, ptr noundef nonnull @ixgb_check_options.opt.49)
  %78 = ptrtoint ptr %ide to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool178 = icmp ne i32 %79, 0
  %frombool179 = zext i1 %tobool178 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ide) #3
  br label %if.end184

if.end184:                                        ; preds = %if.then175, %if.end172.if.end184_crit_edge
  %.sink246 = phi i8 [ %frombool179, %if.then175 ], [ 1, %if.end172.if.end184_crit_edge ]
  %80 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 17
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.sink246, ptr %80, align 64
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %def = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.body38 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %arg20 = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 4
  %8 = ptrtoint ptr %arg20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp213 = icmp sgt i32 %9, 0
  br i1 %cmp213, label %for.body.lr.ph, label %for.cond.preheader.do.end47_crit_edge

for.cond.preheader.do.end47_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %1, label %sw.bb.do.end47_crit_edge [
    i32 1, label %do.end
    i32 0, label %do.end4
  ]

sw.bb.do.end47_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %14) #6
  br label %return

do.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %name6 = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %16) #6
  br label %return

sw.bb8:                                           ; preds = %if.end
  %arg = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 4
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %18)
  %cmp9.not = icmp ult i32 %1, %18
  br i1 %cmp9.not, label %sw.bb8.do.end47_crit_edge, label %land.lhs.true

sw.bb8.do.end47_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

land.lhs.true:                                    ; preds = %sw.bb8
  %max = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %20)
  %cmp11.not = icmp ugt i32 %1, %20
  br i1 %cmp11.not, label %land.lhs.true.do.end47_crit_edge, label %do.end14

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

do.end14:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %name16 = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 1
  %21 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %22, i32 noundef %1) #6
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgb_opt_list, ptr %11, i32 %i.04
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp24 = icmp eq i32 %1, %24
  br i1 %cmp24, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body
  %str = getelementptr %struct.ixgb_opt_list, ptr %11, i32 %i.04, i32 1
  %25 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %str, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp27.not = icmp eq i8 %28, 0
  br i1 %cmp27.not, label %if.then25.return_crit_edge, label %do.end31

if.then25.return_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %26) #6
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end47

do.body38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/intel/ixgb/ixgb_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #3, !srcloc !206
  unreachable

do.end47:                                         ; preds = %for.inc.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %sw.bb8.do.end47_crit_edge, %sw.bb.do.end47_crit_edge, %for.cond.preheader.do.end47_crit_edge
  %name49 = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 1
  %29 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name49, align 4
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value, align 4
  %err = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 2
  %33 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %err, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %30, i32 noundef %32, ptr noundef %34) #6
  %def51 = getelementptr inbounds %struct.ixgb_option, ptr %opt, i32 0, i32 3
  %35 = ptrtoint ptr %def51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %def51, align 4
  %37 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %value, align 4
  br label %return

return:                                           ; preds = %do.end47, %do.end31, %if.then25.return_crit_edge, %do.end14, %do.end4, %do.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !100, !102, !104, !105, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__param_TxDescriptors, !1, !"__param_TxDescriptors", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_TxDescriptorstype511, !1, !"__UNIQUE_ID_TxDescriptorstype511", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_TxDescriptors512, !1, !"__UNIQUE_ID_TxDescriptors512", i1 false, i1 false}
!4 = !{ptr @__param_RxDescriptors, !5, !"__param_RxDescriptors", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 47, i32 1}
!6 = !{ptr @__UNIQUE_ID_RxDescriptorstype513, !5, !"__UNIQUE_ID_RxDescriptorstype513", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_RxDescriptors514, !5, !"__UNIQUE_ID_RxDescriptors514", i1 false, i1 false}
!8 = !{ptr @__param_FlowControl, !9, !"__param_FlowControl", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 60, i32 1}
!10 = !{ptr @__UNIQUE_ID_FlowControltype515, !9, !"__UNIQUE_ID_FlowControltype515", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_FlowControl516, !9, !"__UNIQUE_ID_FlowControl516", i1 false, i1 false}
!12 = !{ptr @__param_XsumRX, !13, !"__param_XsumRX", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 72, i32 1}
!14 = !{ptr @__UNIQUE_ID_XsumRXtype517, !13, !"__UNIQUE_ID_XsumRXtype517", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_XsumRX518, !13, !"__UNIQUE_ID_XsumRX518", i1 false, i1 false}
!16 = !{ptr @__param_TxIntDelay, !17, !"__param_TxIntDelay", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 81, i32 1}
!18 = !{ptr @__UNIQUE_ID_TxIntDelaytype519, !17, !"__UNIQUE_ID_TxIntDelaytype519", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_TxIntDelay520, !17, !"__UNIQUE_ID_TxIntDelay520", i1 false, i1 false}
!20 = !{ptr @__param_RxIntDelay, !21, !"__param_RxIntDelay", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 90, i32 1}
!22 = !{ptr @__UNIQUE_ID_RxIntDelaytype521, !21, !"__UNIQUE_ID_RxIntDelaytype521", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_RxIntDelay522, !21, !"__UNIQUE_ID_RxIntDelay522", i1 false, i1 false}
!24 = !{ptr @__param_RxFCHighThresh, !25, !"__param_RxFCHighThresh", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 100, i32 1}
!26 = !{ptr @__UNIQUE_ID_RxFCHighThreshtype523, !25, !"__UNIQUE_ID_RxFCHighThreshtype523", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_RxFCHighThresh524, !25, !"__UNIQUE_ID_RxFCHighThresh524", i1 false, i1 false}
!28 = !{ptr @__param_RxFCLowThresh, !29, !"__param_RxFCLowThresh", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 111, i32 1}
!30 = !{ptr @__UNIQUE_ID_RxFCLowThreshtype525, !29, !"__UNIQUE_ID_RxFCLowThreshtype525", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_RxFCLowThresh526, !29, !"__UNIQUE_ID_RxFCLowThresh526", i1 false, i1 false}
!32 = !{ptr @__param_FCReqTimeout, !33, !"__param_FCReqTimeout", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 121, i32 1}
!34 = !{ptr @__UNIQUE_ID_FCReqTimeouttype527, !33, !"__UNIQUE_ID_FCReqTimeouttype527", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_FCReqTimeout528, !33, !"__UNIQUE_ID_FCReqTimeout528", i1 false, i1 false}
!36 = !{ptr @__param_IntDelayEnable, !37, !"__param_IntDelayEnable", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 133, i32 1}
!38 = !{ptr @__UNIQUE_ID_IntDelayEnabletype529, !37, !"__UNIQUE_ID_IntDelayEnabletype529", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_IntDelayEnable530, !37, !"__UNIQUE_ID_IntDelayEnable530", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 240, i32 3}
!42 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ixgb_check_options._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @ixgb_check_options._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.4, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 241, i32 3}
!48 = !{ptr @ixgb_check_options._entry.3, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ixgb_check_options._entry_ptr.5, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 247, i32 12}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 248, i32 12}
!54 = !{ptr @ixgb_check_options.opt, !55, !"opt", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 245, i32 35}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 266, i32 12}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 267, i32 12}
!60 = !{ptr @ixgb_check_options.opt.8, !61, !"opt", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 264, i32 35}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 285, i32 12}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 286, i32 12}
!66 = !{ptr @ixgb_check_options.opt.11, !67, !"opt", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 283, i32 35}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 301, i32 26}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 302, i32 30}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 303, i32 30}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 304, i32 26}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 305, i32 29}
!78 = !{ptr @ixgb_check_options.fc_list, !79, !"fc_list", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 300, i32 37}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 310, i32 12}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 311, i32 12}
!84 = !{ptr @ixgb_check_options.opt.19, !85, !"opt", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 308, i32 35}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 328, i32 12}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 329, i32 12}
!90 = !{ptr @ixgb_check_options.opt.22, !91, !"opt", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 326, i32 35}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 342, i32 4}
!94 = !{ptr @ixgb_check_options._entry.25, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ixgb_check_options._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 347, i32 12}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 348, i32 12}
!100 = !{ptr @ixgb_check_options.opt.28, !101, !"opt", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 345, i32 35}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 361, i32 4}
!104 = !{ptr @ixgb_check_options._entry.31, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ixgb_check_options._entry_ptr.33, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 366, i32 12}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 367, i32 12}
!110 = !{ptr @ixgb_check_options.opt.34, !111, !"opt", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 364, i32 35}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 381, i32 4}
!114 = !{ptr @ixgb_check_options._entry.37, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ixgb_check_options._entry_ptr.39, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 388, i32 4}
!118 = !{ptr @ixgb_check_options._entry.40, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ixgb_check_options._entry_ptr.42, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 396, i32 12}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 397, i32 12}
!124 = !{ptr @ixgb_check_options.opt.43, !125, !"opt", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 394, i32 35}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 413, i32 12}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 414, i32 12}
!130 = !{ptr @ixgb_check_options.opt.46, !131, !"opt", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 411, i32 35}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 431, i32 12}
!134 = !{ptr @ixgb_check_options.opt.49, !135, !"opt", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 429, i32 35}
!136 = !{ptr @__param_str_TxDescriptors, !1, !"__param_str_TxDescriptors", i1 false, i1 false}
!137 = !{ptr @__param_arr_TxDescriptors, !1, !"__param_arr_TxDescriptors", i1 false, i1 false}
!138 = !{ptr @__param_str_RxDescriptors, !5, !"__param_str_RxDescriptors", i1 false, i1 false}
!139 = !{ptr @__param_arr_RxDescriptors, !5, !"__param_arr_RxDescriptors", i1 false, i1 false}
!140 = !{ptr @__param_str_FlowControl, !9, !"__param_str_FlowControl", i1 false, i1 false}
!141 = !{ptr @__param_arr_FlowControl, !9, !"__param_arr_FlowControl", i1 false, i1 false}
!142 = !{ptr @__param_str_XsumRX, !13, !"__param_str_XsumRX", i1 false, i1 false}
!143 = !{ptr @__param_arr_XsumRX, !13, !"__param_arr_XsumRX", i1 false, i1 false}
!144 = !{ptr @__param_str_TxIntDelay, !17, !"__param_str_TxIntDelay", i1 false, i1 false}
!145 = !{ptr @__param_arr_TxIntDelay, !17, !"__param_arr_TxIntDelay", i1 false, i1 false}
!146 = !{ptr @__param_str_RxIntDelay, !21, !"__param_str_RxIntDelay", i1 false, i1 false}
!147 = !{ptr @__param_arr_RxIntDelay, !21, !"__param_arr_RxIntDelay", i1 false, i1 false}
!148 = !{ptr @__param_str_RxFCHighThresh, !25, !"__param_str_RxFCHighThresh", i1 false, i1 false}
!149 = !{ptr @__param_arr_RxFCHighThresh, !25, !"__param_arr_RxFCHighThresh", i1 false, i1 false}
!150 = !{ptr @__param_str_RxFCLowThresh, !29, !"__param_str_RxFCLowThresh", i1 false, i1 false}
!151 = !{ptr @__param_arr_RxFCLowThresh, !29, !"__param_arr_RxFCLowThresh", i1 false, i1 false}
!152 = !{ptr @__param_str_FCReqTimeout, !33, !"__param_str_FCReqTimeout", i1 false, i1 false}
!153 = !{ptr @__param_arr_FCReqTimeout, !33, !"__param_arr_FCReqTimeout", i1 false, i1 false}
!154 = !{ptr @__param_str_IntDelayEnable, !37, !"__param_str_IntDelayEnable", i1 false, i1 false}
!155 = !{ptr @__param_arr_IntDelayEnable, !37, !"__param_arr_IntDelayEnable", i1 false, i1 false}
!156 = !{ptr @num_TxDescriptors, !1, !"num_TxDescriptors", i1 false, i1 false}
!157 = !{ptr @TxDescriptors, !1, !"TxDescriptors", i1 false, i1 false}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 189, i32 4}
!160 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ixgb_validate_option._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ixgb_validate_option._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 192, i32 4}
!165 = !{ptr @ixgb_validate_option._entry.53, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @ixgb_validate_option._entry_ptr.55, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.57, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 198, i32 4}
!169 = !{ptr @ixgb_validate_option._entry.56, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @ixgb_validate_option._entry_ptr.58, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 210, i32 6}
!173 = !{ptr @ixgb_validate_option._entry.59, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @ixgb_validate_option._entry_ptr.61, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_param.c", i32 220, i32 2}
!177 = !{ptr @ixgb_validate_option._entry.62, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ixgb_validate_option._entry_ptr.64, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @num_RxDescriptors, !5, !"num_RxDescriptors", i1 false, i1 false}
!180 = !{ptr @RxDescriptors, !5, !"RxDescriptors", i1 false, i1 false}
!181 = !{ptr @num_XsumRX, !13, !"num_XsumRX", i1 false, i1 false}
!182 = !{ptr @XsumRX, !13, !"XsumRX", i1 false, i1 false}
!183 = !{ptr @num_FlowControl, !9, !"num_FlowControl", i1 false, i1 false}
!184 = !{ptr @FlowControl, !9, !"FlowControl", i1 false, i1 false}
!185 = !{ptr @num_RxFCHighThresh, !25, !"num_RxFCHighThresh", i1 false, i1 false}
!186 = !{ptr @RxFCHighThresh, !25, !"RxFCHighThresh", i1 false, i1 false}
!187 = !{ptr @num_RxFCLowThresh, !29, !"num_RxFCLowThresh", i1 false, i1 false}
!188 = !{ptr @RxFCLowThresh, !29, !"RxFCLowThresh", i1 false, i1 false}
!189 = !{ptr @num_FCReqTimeout, !33, !"num_FCReqTimeout", i1 false, i1 false}
!190 = !{ptr @FCReqTimeout, !33, !"FCReqTimeout", i1 false, i1 false}
!191 = !{ptr @num_RxIntDelay, !21, !"num_RxIntDelay", i1 false, i1 false}
!192 = !{ptr @RxIntDelay, !21, !"RxIntDelay", i1 false, i1 false}
!193 = !{ptr @num_TxIntDelay, !17, !"num_TxIntDelay", i1 false, i1 false}
!194 = !{ptr @TxIntDelay, !17, !"TxIntDelay", i1 false, i1 false}
!195 = !{ptr @num_IntDelayEnable, !37, !"num_IntDelayEnable", i1 false, i1 false}
!196 = !{ptr @IntDelayEnable, !37, !"IntDelayEnable", i1 false, i1 false}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 2158163024, i64 2158163533, i64 2158163061, i64 2158163117, i64 2158163151, i64 2158163175, i64 2158163216, i64 2158163237, i64 2158163265, i64 2158163299}
