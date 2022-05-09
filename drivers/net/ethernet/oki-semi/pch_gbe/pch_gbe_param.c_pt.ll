; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c_pt.bc'
source_filename = "../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.pch_gbe_option = type { i32, ptr, ptr, i32, %union.anon.193 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { i32, i32 }
%struct.anon.195 = type { i32, ptr }
%struct.pch_gbe_opt_list = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pch_gbe_adapter = type { %struct.spinlock, %struct.spinlock, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.napi_struct, %struct.pch_gbe_hw, %struct.pch_gbe_hw_stats, %struct.work_struct, %struct.mii_if_info, %struct.timer_list, i32, ptr, i32, ptr, ptr, i32, i32, i8, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.pch_gbe_hw = type { ptr, ptr, %struct.spinlock, %struct.pch_gbe_mac_info, %struct.pch_gbe_phy_info }
%struct.pch_gbe_mac_info = type { [6 x i8], i8, i8, i8, i32, i32, i8, i16, i16 }
%struct.pch_gbe_phy_info = type { i32, i32, i32, i32, i16 }
%struct.pch_gbe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pch_gbe_tx_ring = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.pch_gbe_rx_ring = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.170, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.170 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__param_str_TxDescriptors = internal constant [22 x i8] c"pch_gbe.TxDescriptors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@TxDescriptors = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_TxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_TxDescriptors, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @TxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_TxDescriptorstype596 = internal constant [35 x i8] c"pch_gbe.parmtype=TxDescriptors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxDescriptors597 = internal constant [58 x i8] c"pch_gbe.parm=TxDescriptors:Number of transmit descriptors\00", section ".modinfo", align 1
@__param_str_RxDescriptors = internal constant [22 x i8] c"pch_gbe.RxDescriptors\00", align 1
@RxDescriptors = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_RxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_RxDescriptors, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @RxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_RxDescriptorstype598 = internal constant [35 x i8] c"pch_gbe.parmtype=RxDescriptors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxDescriptors599 = internal constant [57 x i8] c"pch_gbe.parm=RxDescriptors:Number of receive descriptors\00", section ".modinfo", align 1
@__param_str_Speed = internal constant [14 x i8] c"pch_gbe.Speed\00", align 1
@Speed = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_Speed = internal constant %struct.kernel_param { ptr @__param_str_Speed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @Speed } }, section "__param", align 4
@__UNIQUE_ID_Speedtype600 = internal constant [27 x i8] c"pch_gbe.parmtype=Speed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_Speed601 = internal constant [33 x i8] c"pch_gbe.parm=Speed:Speed setting\00", section ".modinfo", align 1
@__param_str_Duplex = internal constant [15 x i8] c"pch_gbe.Duplex\00", align 1
@Duplex = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_Duplex = internal constant %struct.kernel_param { ptr @__param_str_Duplex, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @Duplex } }, section "__param", align 4
@__UNIQUE_ID_Duplextype602 = internal constant [28 x i8] c"pch_gbe.parmtype=Duplex:int\00", section ".modinfo", align 1
@__UNIQUE_ID_Duplex603 = internal constant [35 x i8] c"pch_gbe.parm=Duplex:Duplex setting\00", section ".modinfo", align 1
@__param_str_AutoNeg = internal constant [16 x i8] c"pch_gbe.AutoNeg\00", align 1
@AutoNeg = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_AutoNeg = internal constant %struct.kernel_param { ptr @__param_str_AutoNeg, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @AutoNeg } }, section "__param", align 4
@__UNIQUE_ID_AutoNegtype604 = internal constant [29 x i8] c"pch_gbe.parmtype=AutoNeg:int\00", section ".modinfo", align 1
@__UNIQUE_ID_AutoNeg605 = internal constant [57 x i8] c"pch_gbe.parm=AutoNeg:Advertised auto-negotiation setting\00", section ".modinfo", align 1
@__param_str_FlowControl = internal constant [20 x i8] c"pch_gbe.FlowControl\00", align 1
@FlowControl = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_FlowControl = internal constant %struct.kernel_param { ptr @__param_str_FlowControl, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @FlowControl } }, section "__param", align 4
@__UNIQUE_ID_FlowControltype606 = internal constant [33 x i8] c"pch_gbe.parmtype=FlowControl:int\00", section ".modinfo", align 1
@__UNIQUE_ID_FlowControl607 = internal constant [46 x i8] c"pch_gbe.parm=FlowControl:Flow Control setting\00", section ".modinfo", align 1
@__param_str_XsumRX = internal constant [15 x i8] c"pch_gbe.XsumRX\00", align 1
@XsumRX = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_XsumRX = internal constant %struct.kernel_param { ptr @__param_str_XsumRX, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @XsumRX } }, section "__param", align 4
@__UNIQUE_ID_XsumRXtype608 = internal constant [28 x i8] c"pch_gbe.parmtype=XsumRX:int\00", section ".modinfo", align 1
@__UNIQUE_ID_XsumRX609 = internal constant [63 x i8] c"pch_gbe.parm=XsumRX:Disable or enable Receive Checksum offload\00", section ".modinfo", align 1
@__param_str_XsumTX = internal constant [15 x i8] c"pch_gbe.XsumTX\00", align 1
@XsumTX = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_XsumTX = internal constant %struct.kernel_param { ptr @__param_str_XsumTX, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.164 { ptr @XsumTX } }, section "__param", align 4
@__UNIQUE_ID_XsumTXtype610 = internal constant [28 x i8] c"pch_gbe.parmtype=XsumTX:int\00", section ".modinfo", align 1
@__UNIQUE_ID_XsumTX611 = internal constant [64 x i8] c"pch_gbe.parm=XsumTX:Disable or enable Transmit Checksum offload\00", section ".modinfo", align 1
@pch_gbe_check_options.opt = internal constant { %struct.pch_gbe_option, [40 x i8] } { %struct.pch_gbe_option { i32 1, ptr @.str, ptr @.str.1, i32 256, %union.anon.193 { %struct.anon.194 { i32 8, i32 4096 } } }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transmit Descriptors\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 256\00", [43 x i8] zeroinitializer }, align 32
@pch_gbe_check_options.opt.2 = internal constant { %struct.pch_gbe_option, [40 x i8] } { %struct.pch_gbe_option { i32 1, ptr @.str.3, ptr @.str.1, i32 256, %union.anon.193 { %struct.anon.194 { i32 8, i32 4096 } } }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Receive Descriptors\00", [44 x i8] zeroinitializer }, align 32
@pch_gbe_check_options.opt.4 = internal constant { %struct.pch_gbe_option, [40 x i8] } { %struct.pch_gbe_option { i32 0, ptr @.str.5, ptr @.str.6, i32 1, %union.anon.193 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Checksum Offload\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"defaulting to Enabled\00", [42 x i8] zeroinitializer }, align 32
@pch_gbe_check_options.opt.7 = internal constant { %struct.pch_gbe_option, [40 x i8] } { %struct.pch_gbe_option { i32 0, ptr @.str.5, ptr @.str.6, i32 1, %union.anon.193 zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@pch_gbe_check_options.opt.8 = internal constant { { i32, ptr, ptr, i32, { %struct.anon.195 } }, [40 x i8] } { { i32, ptr, ptr, i32, { %struct.anon.195 } } { i32 2, ptr @.str.9, ptr @.str.10, i32 3, { %struct.anon.195 } { %struct.anon.195 { i32 4, ptr @fc_list } } }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flow Control\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reading default settings from EEPROM\00", [59 x i8] zeroinitializer }, align 32
@fc_list = internal constant { [4 x %struct.pch_gbe_opt_list], [32 x i8] } { [4 x %struct.pch_gbe_opt_list] [%struct.pch_gbe_opt_list { i32 0, ptr @.str.19 }, %struct.pch_gbe_opt_list { i32 1, ptr @.str.20 }, %struct.pch_gbe_opt_list { i32 2, ptr @.str.21 }, %struct.pch_gbe_opt_list { i32 3, ptr @.str.22 }], [32 x i8] zeroinitializer }, align 32
@pch_gbe_validate_option.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_gbe\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pch_gbe_validate_option\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s Enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@pch_gbe_validate_option.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s Disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@pch_gbe_validate_option.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s set to %i\0A\00", [18 x i8] zeroinitializer }, align 32
@pch_gbe_validate_option.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pch_gbe_validate_option.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.18, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flow Control Disabled\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Flow Control Receive Only\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flow Control Transmit Only\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flow Control Enabled\00", [43 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.opt = internal constant { { i32, ptr, ptr, i32, { %struct.anon.195 } }, [40 x i8] } { { i32, ptr, ptr, i32, { %struct.anon.195 } } { i32 2, ptr @.str.23, ptr @.str.24, i32 0, { %struct.anon.195 } { %struct.anon.195 { i32 4, ptr @speed_list } } }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Speed\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parameter ignored\00", [46 x i8] zeroinitializer }, align 32
@speed_list = internal constant { [4 x %struct.pch_gbe_opt_list], [32 x i8] } { [4 x %struct.pch_gbe_opt_list] [%struct.pch_gbe_opt_list { i32 0, ptr @.str.47 }, %struct.pch_gbe_opt_list { i32 10, ptr @.str.47 }, %struct.pch_gbe_opt_list { i32 100, ptr @.str.47 }, %struct.pch_gbe_opt_list { i32 1000, ptr @.str.47 }], [32 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.opt.25 = internal constant { { i32, ptr, ptr, i32, { %struct.anon.195 } }, [40 x i8] } { { i32, ptr, ptr, i32, { %struct.anon.195 } } { i32 2, ptr @.str.26, ptr @.str.24, i32 0, { %struct.anon.195 } { %struct.anon.195 { i32 3, ptr @dplx_list } } }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Duplex\00", [25 x i8] zeroinitializer }, align 32
@dplx_list = internal constant { [3 x %struct.pch_gbe_opt_list], [40 x i8] } { [3 x %struct.pch_gbe_opt_list] [%struct.pch_gbe_opt_list { i32 0, ptr @.str.47 }, %struct.pch_gbe_opt_list { i32 1, ptr @.str.47 }, %struct.pch_gbe_opt_list { i32 2, ptr @.str.47 }], [40 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.opt.27 = internal constant { { i32, ptr, ptr, i32, { %struct.anon.195 } }, [40 x i8] } { { i32, ptr, ptr, i32, { %struct.anon.195 } } { i32 2, ptr @.str.28, ptr @.str.24, i32 47, { %struct.anon.195 } { %struct.anon.195 { i32 31, ptr @an_list } } }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AutoNeg\00", [24 x i8] zeroinitializer }, align 32
@an_list = internal constant { [31 x %struct.pch_gbe_opt_list], [40 x i8] } { [31 x %struct.pch_gbe_opt_list] [%struct.pch_gbe_opt_list { i32 1, ptr @.str.48 }, %struct.pch_gbe_opt_list { i32 2, ptr @.str.49 }, %struct.pch_gbe_opt_list { i32 3, ptr @.str.50 }, %struct.pch_gbe_opt_list { i32 4, ptr @.str.51 }, %struct.pch_gbe_opt_list { i32 5, ptr @.str.52 }, %struct.pch_gbe_opt_list { i32 6, ptr @.str.53 }, %struct.pch_gbe_opt_list { i32 7, ptr @.str.54 }, %struct.pch_gbe_opt_list { i32 8, ptr @.str.55 }, %struct.pch_gbe_opt_list { i32 9, ptr @.str.56 }, %struct.pch_gbe_opt_list { i32 10, ptr @.str.57 }, %struct.pch_gbe_opt_list { i32 11, ptr @.str.58 }, %struct.pch_gbe_opt_list { i32 12, ptr @.str.59 }, %struct.pch_gbe_opt_list { i32 13, ptr @.str.60 }, %struct.pch_gbe_opt_list { i32 14, ptr @.str.61 }, %struct.pch_gbe_opt_list { i32 15, ptr @.str.62 }, %struct.pch_gbe_opt_list { i32 32, ptr @.str.63 }, %struct.pch_gbe_opt_list { i32 33, ptr @.str.64 }, %struct.pch_gbe_opt_list { i32 34, ptr @.str.65 }, %struct.pch_gbe_opt_list { i32 35, ptr @.str.66 }, %struct.pch_gbe_opt_list { i32 36, ptr @.str.67 }, %struct.pch_gbe_opt_list { i32 37, ptr @.str.68 }, %struct.pch_gbe_opt_list { i32 38, ptr @.str.69 }, %struct.pch_gbe_opt_list { i32 39, ptr @.str.70 }, %struct.pch_gbe_opt_list { i32 40, ptr @.str.71 }, %struct.pch_gbe_opt_list { i32 41, ptr @.str.72 }, %struct.pch_gbe_opt_list { i32 42, ptr @.str.73 }, %struct.pch_gbe_opt_list { i32 43, ptr @.str.74 }, %struct.pch_gbe_opt_list { i32 44, ptr @.str.75 }, %struct.pch_gbe_opt_list { i32 45, ptr @.str.76 }, %struct.pch_gbe_opt_list { i32 46, ptr @.str.77 }, %struct.pch_gbe_opt_list { i32 47, ptr @.str.78 }], [40 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.30, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pch_gbe_check_copper_options\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"AutoNeg specified along with Speed or Duplex, AutoNeg parameter ignored\0A\00", [55 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.31, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Speed and duplex autonegotiation enabled\0A\00", [54 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.32, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Half Duplex specified without Speed\0A\00", [59 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.33, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using Autonegotiation at Half Duplex only\0A\00", [53 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.34, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Full Duplex specified without Speed\0A\00", [59 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.35, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using Autonegotiation at Full Duplex only\0A\00", [53 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.36, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"10 Mbps Speed specified without Duplex\0A\00", [56 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.37, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Using Autonegotiation at 10 Mbps only\0A\00", [57 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.38, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forcing to 10 Mbps Half Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.39, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forcing to 10 Mbps Full Duplex\0A\00", [32 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.40, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"100 Mbps Speed specified without Duplex\0A\00", [55 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.41, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using Autonegotiation at 100 Mbps only\0A\00", [56 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.42, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Forcing to 100 Mbps Half Duplex\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.43, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Forcing to 100 Mbps Full Duplex\0A\00", [63 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.44, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"1000 Mbps Speed specified without Duplex\0A\00", [54 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.45, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Half Duplex is not supported at 1000 Mbps\0A\00", [53 x i8] zeroinitializer }, align 32
@pch_gbe_check_copper_options.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.29, ptr @.str.13, ptr @.str.46, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Using Autonegotiation at 1000 Mbps Full Duplex only\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AutoNeg advertising 10/HD\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AutoNeg advertising 10/FD\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AutoNeg advertising 10/FD, 10/HD\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AutoNeg advertising 100/HD\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/HD, 10/HD\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/HD, 10/FD\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AutoNeg advertising 100/HD, 10/FD, 10/HD\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AutoNeg advertising 100/FD\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/FD, 10/HD\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AutoNeg advertising 100/FD, 10/FD\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AutoNeg advertising 100/FD, 10/FD, 10/HD\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 100/FD, 100/HD\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/HD\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/FD\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"AutoNeg advertising 100/FD, 100/HD, 10/FD, 10/HD\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AutoNeg advertising 1000/FD\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 1000/FD, 10/HD\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AutoNeg advertising 1000/FD, 10/FD\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AutoNeg advertising 1000/FD, 10/FD, 10/HD\00", [54 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AutoNeg advertising 1000/FD, 100/HD\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/HD\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/FD\00", [53 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AutoNeg advertising 1000/FD, 100/HD, 10/FD, 10/HD\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AutoNeg advertising 1000/FD, 100/FD\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/HD\00", [53 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/FD\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 10/FD, 10/HD\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/HD\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/FD\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"AutoNeg advertising 1000/FD, 100/FD, 100/HD, 10/FD, 10/HD\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 10, i64 11, i64 12, i64 100, i64 101, i64 102, i64 1000, i64 1001, i64 1002]
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"TxDescriptors\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 21, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"RxDescriptors\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 30, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"Speed\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 43, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 55, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"AutoNeg\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 76, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"FlowControl\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 97, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"XsumRX\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 108, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"XsumTX\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 121, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 439, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 441, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 442, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 455, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 457, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 471, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 473, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 474, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 483, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 495, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 497, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 498, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [8 x i8] c"fc_list\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 199, i32 38 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 228, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 231, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 237, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 250, i32 6 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 261, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 200, i32 21 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 201, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 202, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 203, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 277, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 279, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 280, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant [11 x i8] c"speed_list\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 151, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 289, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 291, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant [10 x i8] c"dplx_list\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 158, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant [4 x i8] c"opt\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 302, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 304, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"an_list\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 164, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 311, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 326, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 332, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 334, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 343, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 345, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 355, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 357, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 366, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 373, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 380, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 382, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 391, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 399, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 407, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 411, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 416, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 152, i32 7 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 166, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 167, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 168, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 169, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 170, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 171, i32 11 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 172, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 173, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 174, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 175, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 176, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 177, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 178, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 179, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 180, i32 11 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 181, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 182, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 183, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 184, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 185, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 186, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 187, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 188, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 189, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 190, i32 11 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 191, i32 11 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 192, i32 11 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 193, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 194, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 195, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [57 x i8] c"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 196, i32 11 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_AutoNeg605, ptr @__UNIQUE_ID_AutoNegtype604, ptr @__UNIQUE_ID_Duplex603, ptr @__UNIQUE_ID_Duplextype602, ptr @__UNIQUE_ID_FlowControl607, ptr @__UNIQUE_ID_FlowControltype606, ptr @__UNIQUE_ID_RxDescriptors599, ptr @__UNIQUE_ID_RxDescriptorstype598, ptr @__UNIQUE_ID_Speed601, ptr @__UNIQUE_ID_Speedtype600, ptr @__UNIQUE_ID_TxDescriptors597, ptr @__UNIQUE_ID_TxDescriptorstype596, ptr @__UNIQUE_ID_XsumRX609, ptr @__UNIQUE_ID_XsumRXtype608, ptr @__UNIQUE_ID_XsumTX611, ptr @__UNIQUE_ID_XsumTXtype610, ptr @__param_AutoNeg, ptr @__param_Duplex, ptr @__param_FlowControl, ptr @__param_RxDescriptors, ptr @__param_Speed, ptr @__param_TxDescriptors, ptr @__param_XsumRX, ptr @__param_XsumTX, ptr @TxDescriptors, ptr @RxDescriptors, ptr @Speed, ptr @Duplex, ptr @AutoNeg, ptr @FlowControl, ptr @XsumRX, ptr @XsumTX, ptr @pch_gbe_check_options.opt, ptr @.str, ptr @.str.1, ptr @pch_gbe_check_options.opt.2, ptr @.str.3, ptr @pch_gbe_check_options.opt.4, ptr @.str.5, ptr @.str.6, ptr @pch_gbe_check_options.opt.7, ptr @pch_gbe_check_options.opt.8, ptr @.str.9, ptr @.str.10, ptr @fc_list, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pch_gbe_check_copper_options.opt, ptr @.str.23, ptr @.str.24, ptr @speed_list, ptr @pch_gbe_check_copper_options.opt.25, ptr @.str.26, ptr @dplx_list, ptr @pch_gbe_check_copper_options.opt.27, ptr @.str.28, ptr @an_list, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxDescriptors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Duplex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AutoNeg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FlowControl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XsumRX to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @XsumTX to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_options.opt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_options.opt.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_options.opt.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_options.opt.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_options.opt.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_copper_options.opt to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_copper_options.opt.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dplx_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_gbe_check_copper_options.opt.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @an_list to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pch_gbe_check_options(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %tx_ring2 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 16
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 8
  %4 = load i32, ptr @TxDescriptors, align 4
  %count = getelementptr inbounds %struct.pch_gbe_tx_ring, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 4
  tail call fastcc void @pch_gbe_validate_option(ptr noundef %count, ptr noundef nonnull @pch_gbe_check_options.opt, ptr noundef %adapter)
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %add = add i32 %7, 7
  %div47 = and i32 %add, -8
  store i32 %div47, ptr %count, align 4
  %rx_ring6 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 17
  %8 = ptrtoint ptr %rx_ring6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring6, align 4
  %10 = load i32, ptr @RxDescriptors, align 4
  %count7 = getelementptr inbounds %struct.pch_gbe_rx_ring, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %count7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %count7, align 4
  tail call fastcc void @pch_gbe_validate_option(ptr noundef %count7, ptr noundef nonnull @pch_gbe_check_options.opt.2, ptr noundef %adapter)
  %12 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count7, align 4
  %add14 = add i32 %13, 7
  %div1548 = and i32 %add14, -8
  store i32 %div1548, ptr %count7, align 4
  %14 = load i32, ptr @XsumRX, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %val, ptr noundef nonnull @pch_gbe_check_options.opt.4, ptr noundef %adapter)
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features, align 16
  %and = and i64 %19, -1099511627777
  store i64 %and, ptr %features, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %20 = load i32, ptr @XsumTX, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %val, ptr noundef nonnull @pch_gbe_check_options.opt.7, ptr noundef %adapter)
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  br i1 %tobool20.not, label %if.then21, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %features22 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %24 = ptrtoint ptr %features22 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features22, align 16
  %and23 = and i64 %25, -27
  store i64 %and23, ptr %features22, align 16
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp25) #3
  %26 = load i32, ptr @FlowControl, align 4
  %27 = ptrtoint ptr %tmp25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp25, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %tmp25, ptr noundef nonnull @pch_gbe_check_options.opt.8, ptr noundef %adapter)
  %28 = ptrtoint ptr %tmp25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp25, align 4
  %conv = trunc i32 %29 to i8
  %fc = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 1
  %30 = ptrtoint ptr %fc to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %fc, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp25) #3
  tail call fastcc void @pch_gbe_check_copper_options(ptr noundef %adapter)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_validate_option(ptr nocapture noundef %value, ptr nocapture noundef readonly %opt, ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
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
  %def = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 3
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
  switch i32 %6, label %do.body87 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %if.end
  %arg54 = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 4
  %8 = ptrtoint ptr %arg54 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5522 = icmp sgt i32 %9, 0
  br i1 %cmp5522, label %for.body.lr.ph, label %for.cond.preheader.do.body95_crit_edge

for.cond.preheader.do.body95_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body95

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  br label %for.body

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %1, label %sw.bb.do.body95_crit_edge [
    i32 1, label %do.body2
    i32 0, label %do.body10
  ]

sw.bb.do.body95_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body95

do.body2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_validate_option, %if.then5)) #3
          to label %return [label %if.then5], !srcloc !261

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev, align 4
  %name = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_validate_option.__UNIQUE_ID_ddebug612, ptr noundef %14, ptr noundef nonnull @.str.14, ptr noundef %16) #3
  br label %return

do.body10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_validate_option, %if.then22)) #3
          to label %return [label %if.then22], !srcloc !261

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #5
  %netdev23 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %17 = ptrtoint ptr %netdev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev23, align 4
  %name24 = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 1
  %19 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_validate_option.__UNIQUE_ID_ddebug613, ptr noundef %18, ptr noundef nonnull @.str.15, ptr noundef %20) #3
  br label %return

sw.bb28:                                          ; preds = %if.end
  %arg = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 4
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %22)
  %cmp29.not = icmp slt i32 %1, %22
  br i1 %cmp29.not, label %sw.bb28.do.body95_crit_edge, label %land.lhs.true

sw.bb28.do.body95_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body95

land.lhs.true:                                    ; preds = %sw.bb28
  %max = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %24)
  %cmp31.not = icmp sgt i32 %1, %24
  br i1 %cmp31.not, label %land.lhs.true.do.body95_crit_edge, label %do.body34

land.lhs.true.do.body95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body95

do.body34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_validate_option, %if.then46)) #3
          to label %return [label %if.then46], !srcloc !261

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  %netdev47 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %25 = ptrtoint ptr %netdev47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev47, align 4
  %name48 = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 1
  %27 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name48, align 4
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_validate_option.__UNIQUE_ID_ddebug614, ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef %28, i32 noundef %30) #3
  br label %return

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pch_gbe_opt_list, ptr %11, i32 %i.023
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %32)
  %cmp58 = icmp eq i32 %1, %32
  br i1 %cmp58, label %if.then59, label %for.inc

if.then59:                                        ; preds = %for.body
  %str = getelementptr %struct.pch_gbe_opt_list, ptr %11, i32 %i.023, i32 1
  %33 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %str, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp61.not = icmp eq i8 %36, 0
  br i1 %cmp61.not, label %if.then59.return_crit_edge, label %do.body65

if.then59.return_crit_edge:                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body65:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_validate_option, %if.then77)) #3
          to label %return [label %if.then77], !srcloc !261

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #5
  %netdev78 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %37 = ptrtoint ptr %netdev78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev78, align 4
  %39 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %str, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_validate_option.__UNIQUE_ID_ddebug615, ptr noundef %38, ptr noundef nonnull @.str.17, ptr noundef %40) #3
  br label %return

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.body95_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.body95_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body95

do.body87:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #3, !srcloc !262
  unreachable

do.body95:                                        ; preds = %for.inc.do.body95_crit_edge, %land.lhs.true.do.body95_crit_edge, %sw.bb28.do.body95_crit_edge, %sw.bb.do.body95_crit_edge, %for.cond.preheader.do.body95_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_validate_option, %if.then107)) #3
          to label %do.end114 [label %if.then107], !srcloc !261

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #5
  %netdev108 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %41 = ptrtoint ptr %netdev108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev108, align 4
  %name109 = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 1
  %43 = ptrtoint ptr %name109 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name109, align 4
  %45 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value, align 4
  %err = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 2
  %47 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %err, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_validate_option.__UNIQUE_ID_ddebug616, ptr noundef %42, ptr noundef nonnull @.str.18, ptr noundef %44, i32 noundef %46, ptr noundef %48) #3
  br label %do.end114

do.end114:                                        ; preds = %if.then107, %do.body95
  %def115 = getelementptr inbounds %struct.pch_gbe_option, ptr %opt, i32 0, i32 3
  %49 = ptrtoint ptr %def115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %def115, align 4
  %51 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %value, align 4
  br label %return

return:                                           ; preds = %do.end114, %if.then77, %do.body65, %if.then59.return_crit_edge, %if.then46, %do.body34, %if.then22, %do.body10, %if.then5, %do.body2, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_gbe_check_copper_options(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %speed = alloca i32, align 4
  %dplx = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dplx) #3
  %0 = load i32, ptr @Speed, align 4
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %speed, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %speed, ptr noundef nonnull @pch_gbe_check_copper_options.opt, ptr noundef %adapter)
  %2 = load i32, ptr @Duplex, align 4
  %3 = ptrtoint ptr %dplx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %dplx, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %dplx, ptr noundef nonnull @pch_gbe_check_copper_options.opt.25, ptr noundef %adapter)
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body4

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %dplx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dplx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.else, label %lor.lhs.false.do.body4_crit_edge

lor.lhs.false.do.body4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body4

do.body4:                                         ; preds = %lor.lhs.false.do.body4_crit_edge, %entry.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then9)) #3
          to label %do.end11 [label %if.then9], !srcloc !261

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #5
  %netdev = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug617, ptr noundef %9, ptr noundef nonnull @.str.30) #3
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %do.body4
  %autoneg_advertised = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %10 = ptrtoint ptr %autoneg_advertised to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 47, ptr %autoneg_advertised, align 4
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp12) #3
  %11 = load i32, ptr @AutoNeg, align 4
  %12 = ptrtoint ptr %tmp12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp12, align 4
  call fastcc void @pch_gbe_validate_option(ptr noundef nonnull %tmp12, ptr noundef nonnull @pch_gbe_check_copper_options.opt.27, ptr noundef %adapter)
  %13 = ptrtoint ptr %tmp12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp12, align 4
  %conv14 = trunc i32 %14 to i16
  %autoneg_advertised16 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %15 = ptrtoint ptr %autoneg_advertised16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv14, ptr %autoneg_advertised16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp12) #3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.end11
  %16 = ptrtoint ptr %dplx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dplx, align 4
  %add = add i32 %17, %5
  %18 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %add, label %do.body447 [
    i32 0, label %sw.bb
    i32 1, label %do.body48
    i32 2, label %do.body99
    i32 10, label %do.body150
    i32 11, label %do.body201
    i32 12, label %do.body232
    i32 100, label %do.body263
    i32 101, label %do.body314
    i32 102, label %do.body345
    i32 1000, label %do.body376
    i32 1001, label %do.body397
    i32 1002, label %if.end17.do.body418_crit_edge
  ]

if.end17.do.body418_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body418

sw.bb:                                            ; preds = %if.end17
  %fc_autoneg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %19 = ptrtoint ptr %fc_autoneg to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %fc_autoneg, align 1
  %autoneg = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %20 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %do.body24

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then36)) #3
          to label %sw.epilog [label %if.then36], !srcloc !261

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  %netdev37 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %21 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug618, ptr noundef %22, ptr noundef nonnull @.str.31) #3
  br label %sw.epilog

do.body48:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then60)) #3
          to label %do.body68 [label %if.then60], !srcloc !261

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #5
  %netdev61 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %23 = ptrtoint ptr %netdev61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug619, ptr noundef %24, ptr noundef nonnull @.str.32) #3
  br label %do.body68

do.body68:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then80)) #3
          to label %do.end86 [label %if.then80], !srcloc !261

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #5
  %netdev81 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %25 = ptrtoint ptr %netdev81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev81, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug620, ptr noundef %26, ptr noundef nonnull @.str.33) #3
  br label %do.end86

do.end86:                                         ; preds = %if.then80, %do.body68
  %fc_autoneg88 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %27 = ptrtoint ptr %fc_autoneg88 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fc_autoneg88, align 1
  %autoneg90 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %28 = ptrtoint ptr %autoneg90 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %autoneg90, align 4
  %autoneg_advertised92 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %29 = ptrtoint ptr %autoneg_advertised92 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 5, ptr %autoneg_advertised92, align 4
  br label %sw.epilog

do.body99:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then111)) #3
          to label %do.body119 [label %if.then111], !srcloc !261

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #5
  %netdev112 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %30 = ptrtoint ptr %netdev112 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev112, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug621, ptr noundef %31, ptr noundef nonnull @.str.34) #3
  br label %do.body119

do.body119:                                       ; preds = %if.then111, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then131)) #3
          to label %do.end137 [label %if.then131], !srcloc !261

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #5
  %netdev132 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %32 = ptrtoint ptr %netdev132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev132, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug622, ptr noundef %33, ptr noundef nonnull @.str.35) #3
  br label %do.end137

do.end137:                                        ; preds = %if.then131, %do.body119
  %fc_autoneg139 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %34 = ptrtoint ptr %fc_autoneg139 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %fc_autoneg139, align 1
  %autoneg141 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %35 = ptrtoint ptr %autoneg141 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %autoneg141, align 4
  %autoneg_advertised143 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %36 = ptrtoint ptr %autoneg_advertised143 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 42, ptr %autoneg_advertised143, align 4
  br label %sw.epilog

do.body150:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then162)) #3
          to label %do.body170 [label %if.then162], !srcloc !261

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #5
  %netdev163 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %37 = ptrtoint ptr %netdev163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev163, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug623, ptr noundef %38, ptr noundef nonnull @.str.36) #3
  br label %do.body170

do.body170:                                       ; preds = %if.then162, %do.body150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then182)) #3
          to label %do.end188 [label %if.then182], !srcloc !261

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #5
  %netdev183 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %39 = ptrtoint ptr %netdev183 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev183, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug624, ptr noundef %40, ptr noundef nonnull @.str.37) #3
  br label %do.end188

do.end188:                                        ; preds = %if.then182, %do.body170
  %fc_autoneg190 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %41 = ptrtoint ptr %fc_autoneg190 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %fc_autoneg190, align 1
  %autoneg192 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %42 = ptrtoint ptr %autoneg192 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %autoneg192, align 4
  %autoneg_advertised194 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %43 = ptrtoint ptr %autoneg_advertised194 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 3, ptr %autoneg_advertised194, align 4
  br label %sw.epilog

do.body201:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then213)) #3
          to label %do.end219 [label %if.then213], !srcloc !261

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #5
  %netdev214 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %44 = ptrtoint ptr %netdev214 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev214, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug625, ptr noundef %45, ptr noundef nonnull @.str.38) #3
  br label %do.end219

do.end219:                                        ; preds = %if.then213, %do.body201
  %fc_autoneg221 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %46 = ptrtoint ptr %fc_autoneg221 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fc_autoneg221, align 1
  %autoneg223 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %47 = ptrtoint ptr %autoneg223 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %autoneg223, align 4
  %autoneg_advertised225 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %48 = ptrtoint ptr %autoneg_advertised225 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %autoneg_advertised225, align 4
  br label %sw.epilog

do.body232:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then244)) #3
          to label %do.end250 [label %if.then244], !srcloc !261

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #5
  %netdev245 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %49 = ptrtoint ptr %netdev245 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev245, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug626, ptr noundef %50, ptr noundef nonnull @.str.39) #3
  br label %do.end250

do.end250:                                        ; preds = %if.then244, %do.body232
  %fc_autoneg252 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %51 = ptrtoint ptr %fc_autoneg252 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %fc_autoneg252, align 1
  %autoneg254 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %52 = ptrtoint ptr %autoneg254 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %autoneg254, align 4
  %autoneg_advertised256 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %53 = ptrtoint ptr %autoneg_advertised256 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %autoneg_advertised256, align 4
  br label %sw.epilog

do.body263:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then275)) #3
          to label %do.body283 [label %if.then275], !srcloc !261

if.then275:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #5
  %netdev276 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %54 = ptrtoint ptr %netdev276 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev276, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug627, ptr noundef %55, ptr noundef nonnull @.str.40) #3
  br label %do.body283

do.body283:                                       ; preds = %if.then275, %do.body263
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then295)) #3
          to label %do.end301 [label %if.then295], !srcloc !261

if.then295:                                       ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #5
  %netdev296 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %56 = ptrtoint ptr %netdev296 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev296, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug628, ptr noundef %57, ptr noundef nonnull @.str.41) #3
  br label %do.end301

do.end301:                                        ; preds = %if.then295, %do.body283
  %fc_autoneg303 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %58 = ptrtoint ptr %fc_autoneg303 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %fc_autoneg303, align 1
  %autoneg305 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %59 = ptrtoint ptr %autoneg305 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %autoneg305, align 4
  %autoneg_advertised307 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %60 = ptrtoint ptr %autoneg_advertised307 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 12, ptr %autoneg_advertised307, align 4
  br label %sw.epilog

do.body314:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then326)) #3
          to label %do.end332 [label %if.then326], !srcloc !261

if.then326:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #5
  %netdev327 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %61 = ptrtoint ptr %netdev327 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev327, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug629, ptr noundef %62, ptr noundef nonnull @.str.42) #3
  br label %do.end332

do.end332:                                        ; preds = %if.then326, %do.body314
  %fc_autoneg334 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %63 = ptrtoint ptr %fc_autoneg334 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %fc_autoneg334, align 1
  %autoneg336 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %64 = ptrtoint ptr %autoneg336 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %autoneg336, align 4
  %autoneg_advertised338 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %65 = ptrtoint ptr %autoneg_advertised338 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %autoneg_advertised338, align 4
  br label %sw.epilog

do.body345:                                       ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then357)) #3
          to label %do.end363 [label %if.then357], !srcloc !261

if.then357:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #5
  %netdev358 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %66 = ptrtoint ptr %netdev358 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev358, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug630, ptr noundef %67, ptr noundef nonnull @.str.43) #3
  br label %do.end363

do.end363:                                        ; preds = %if.then357, %do.body345
  %fc_autoneg365 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %68 = ptrtoint ptr %fc_autoneg365 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %fc_autoneg365, align 1
  %autoneg367 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %69 = ptrtoint ptr %autoneg367 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %autoneg367, align 4
  %autoneg_advertised369 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %70 = ptrtoint ptr %autoneg_advertised369 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %autoneg_advertised369, align 4
  br label %sw.epilog

do.body376:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then388)) #3
          to label %do.body418 [label %if.then388], !srcloc !261

if.then388:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #5
  %netdev389 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %71 = ptrtoint ptr %netdev389 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev389, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug631, ptr noundef %72, ptr noundef nonnull @.str.44) #3
  br label %do.body418

do.body397:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then409)) #3
          to label %do.body418 [label %if.then409], !srcloc !261

if.then409:                                       ; preds = %do.body397
  call void @__sanitizer_cov_trace_pc() #5
  %netdev410 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %73 = ptrtoint ptr %netdev410 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev410, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug632, ptr noundef %74, ptr noundef nonnull @.str.45) #3
  br label %do.body418

do.body418:                                       ; preds = %if.then409, %do.body397, %if.then388, %do.body376, %if.end17.do.body418_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pch_gbe_check_copper_options, %if.then430)) #3
          to label %do.end436 [label %if.then430], !srcloc !261

if.then430:                                       ; preds = %do.body418
  call void @__sanitizer_cov_trace_pc() #5
  %netdev431 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 3
  %75 = ptrtoint ptr %netdev431 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev431, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug633, ptr noundef %76, ptr noundef nonnull @.str.46) #3
  br label %do.end436

do.end436:                                        ; preds = %if.then430, %do.body418
  %fc_autoneg438 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 2
  %77 = ptrtoint ptr %fc_autoneg438 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %fc_autoneg438, align 1
  %autoneg440 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 6
  %78 = ptrtoint ptr %autoneg440 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %autoneg440, align 4
  %autoneg_advertised442 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 4, i32 4
  %79 = ptrtoint ptr %autoneg_advertised442 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 32, ptr %autoneg_advertised442, align 4
  br label %sw.epilog

do.body447:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #3, !srcloc !263
  unreachable

sw.epilog:                                        ; preds = %do.end436, %do.end363, %do.end332, %do.end301, %do.end250, %do.end219, %do.end188, %do.end137, %do.end86, %if.then36, %do.body24, %sw.bb.sw.epilog_crit_edge
  %.sink588 = phi i16 [ 1000, %do.end436 ], [ 100, %do.end363 ], [ 100, %do.end332 ], [ 100, %do.end301 ], [ 10, %do.end250 ], [ 10, %do.end219 ], [ 10, %do.end188 ], [ 10, %do.end137 ], [ 10, %do.end86 ], [ 10, %sw.bb.sw.epilog_crit_edge ], [ 10, %do.body24 ], [ 10, %if.then36 ]
  %.sink = phi i16 [ 1, %do.end436 ], [ 1, %do.end363 ], [ 0, %do.end332 ], [ 0, %do.end301 ], [ 1, %do.end250 ], [ 0, %do.end219 ], [ 0, %do.end188 ], [ 1, %do.end137 ], [ 0, %do.end86 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %do.body24 ], [ 0, %if.then36 ]
  %link_speed444 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 7
  %80 = ptrtoint ptr %link_speed444 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %.sink588, ptr %link_speed444, align 2
  %link_duplex446 = getelementptr inbounds %struct.pch_gbe_adapter, ptr %adapter, i32 0, i32 8, i32 3, i32 8
  %81 = ptrtoint ptr %link_duplex446 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %.sink, ptr %link_duplex446, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dplx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !91, !92, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__param_TxDescriptors, !1, !"__param_TxDescriptors", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_TxDescriptorstype596, !1, !"__UNIQUE_ID_TxDescriptorstype596", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_TxDescriptors597, !4, !"__UNIQUE_ID_TxDescriptors597", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 23, i32 1}
!5 = !{ptr @__param_RxDescriptors, !6, !"__param_RxDescriptors", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_RxDescriptorstype598, !6, !"__UNIQUE_ID_RxDescriptorstype598", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_RxDescriptors599, !9, !"__UNIQUE_ID_RxDescriptors599", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 32, i32 1}
!10 = !{ptr @__param_Speed, !11, !"__param_Speed", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 44, i32 1}
!12 = !{ptr @__UNIQUE_ID_Speedtype600, !11, !"__UNIQUE_ID_Speedtype600", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_Speed601, !14, !"__UNIQUE_ID_Speed601", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 45, i32 1}
!15 = !{ptr @__param_Duplex, !16, !"__param_Duplex", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 56, i32 1}
!17 = !{ptr @__UNIQUE_ID_Duplextype602, !16, !"__UNIQUE_ID_Duplextype602", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_Duplex603, !19, !"__UNIQUE_ID_Duplex603", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 57, i32 1}
!20 = !{ptr @__param_AutoNeg, !21, !"__param_AutoNeg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 77, i32 1}
!22 = !{ptr @__UNIQUE_ID_AutoNegtype604, !21, !"__UNIQUE_ID_AutoNegtype604", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_AutoNeg605, !24, !"__UNIQUE_ID_AutoNeg605", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 78, i32 1}
!25 = !{ptr @__param_FlowControl, !26, !"__param_FlowControl", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 98, i32 1}
!27 = !{ptr @__UNIQUE_ID_FlowControltype606, !26, !"__UNIQUE_ID_FlowControltype606", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_FlowControl607, !29, !"__UNIQUE_ID_FlowControl607", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 99, i32 1}
!30 = !{ptr @__param_XsumRX, !31, !"__param_XsumRX", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 109, i32 1}
!32 = !{ptr @__UNIQUE_ID_XsumRXtype608, !31, !"__UNIQUE_ID_XsumRXtype608", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_XsumRX609, !34, !"__UNIQUE_ID_XsumRX609", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 110, i32 1}
!35 = !{ptr @__param_XsumTX, !36, !"__param_XsumTX", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 122, i32 1}
!37 = !{ptr @__UNIQUE_ID_XsumTXtype610, !36, !"__UNIQUE_ID_XsumTXtype610", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_XsumTX611, !39, !"__UNIQUE_ID_XsumTX611", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 123, i32 1}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 441, i32 12}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 442, i32 12}
!44 = !{ptr @pch_gbe_check_options.opt, !45, !"opt", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 439, i32 38}
!46 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 457, i32 12}
!48 = !{ptr @pch_gbe_check_options.opt.2, !49, !"opt", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 455, i32 38}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 473, i32 12}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 474, i32 12}
!54 = !{ptr @pch_gbe_check_options.opt.4, !55, !"opt", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 471, i32 38}
!56 = !{ptr @pch_gbe_check_options.opt.7, !57, !"opt", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 483, i32 38}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 497, i32 12}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 498, i32 12}
!62 = !{ptr @pch_gbe_check_options.opt.8, !63, !"opt", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 495, i32 38}
!64 = !{ptr @__param_str_TxDescriptors, !1, !"__param_str_TxDescriptors", i1 false, i1 false}
!65 = !{ptr @TxDescriptors, !66, !"TxDescriptors", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 21, i32 12}
!67 = !{ptr @__param_str_RxDescriptors, !6, !"__param_str_RxDescriptors", i1 false, i1 false}
!68 = !{ptr @RxDescriptors, !69, !"RxDescriptors", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 30, i32 12}
!70 = !{ptr @__param_str_Speed, !11, !"__param_str_Speed", i1 false, i1 false}
!71 = !{ptr @Speed, !72, !"Speed", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 43, i32 12}
!73 = !{ptr @__param_str_Duplex, !16, !"__param_str_Duplex", i1 false, i1 false}
!74 = !{ptr @Duplex, !75, !"Duplex", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 55, i32 12}
!76 = !{ptr @__param_str_AutoNeg, !21, !"__param_str_AutoNeg", i1 false, i1 false}
!77 = !{ptr @AutoNeg, !78, !"AutoNeg", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 76, i32 12}
!79 = !{ptr @__param_str_FlowControl, !26, !"__param_str_FlowControl", i1 false, i1 false}
!80 = !{ptr @FlowControl, !81, !"FlowControl", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 97, i32 12}
!82 = !{ptr @__param_str_XsumRX, !31, !"__param_str_XsumRX", i1 false, i1 false}
!83 = !{ptr @XsumRX, !84, !"XsumRX", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 108, i32 12}
!85 = !{ptr @__param_str_XsumTX, !36, !"__param_str_XsumTX", i1 false, i1 false}
!86 = !{ptr @XsumTX, !87, !"XsumTX", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 121, i32 12}
!88 = !{ptr @.str.11, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 228, i32 4}
!90 = !{ptr @.str.12, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.13, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.14, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug612, !89, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!94 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 231, i32 4}
!96 = !{ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug613, !95, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!97 = !{ptr @.str.16, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 237, i32 4}
!99 = !{ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug614, !98, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!100 = !{ptr @.str.17, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 250, i32 6}
!102 = !{ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug615, !101, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!103 = !{ptr @.str.18, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 261, i32 2}
!105 = !{ptr @pch_gbe_validate_option.__UNIQUE_ID_ddebug616, !104, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!106 = !{ptr @.str.19, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 200, i32 21}
!108 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 201, i32 25}
!110 = !{ptr @.str.21, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 202, i32 25}
!112 = !{ptr @.str.22, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 203, i32 21}
!114 = !{ptr @fc_list, !115, !"fc_list", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 199, i32 38}
!116 = !{ptr @.str.23, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 279, i32 12}
!118 = !{ptr @.str.24, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 280, i32 12}
!120 = !{ptr @pch_gbe_check_copper_options.opt, !121, !"opt", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 277, i32 38}
!122 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 291, i32 12}
!124 = !{ptr @pch_gbe_check_copper_options.opt.25, !125, !"opt", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 289, i32 38}
!126 = !{ptr @.str.28, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 304, i32 12}
!128 = !{ptr @pch_gbe_check_copper_options.opt.27, !129, !"opt", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 302, i32 38}
!130 = !{ptr @.str.29, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 311, i32 4}
!132 = !{ptr @.str.30, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug617, !131, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!134 = !{ptr @.str.31, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 326, i32 4}
!136 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug618, !135, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!137 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 332, i32 3}
!139 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug619, !138, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!140 = !{ptr @.str.33, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 334, i32 3}
!142 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug620, !141, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!143 = !{ptr @.str.34, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 343, i32 3}
!145 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug621, !144, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 345, i32 3}
!148 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug622, !147, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!149 = !{ptr @.str.36, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 355, i32 3}
!151 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug623, !150, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!152 = !{ptr @.str.37, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 357, i32 3}
!154 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug624, !153, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!155 = !{ptr @.str.38, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 366, i32 3}
!157 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug625, !156, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!158 = !{ptr @.str.39, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 373, i32 3}
!160 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug626, !159, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!161 = !{ptr @.str.40, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 380, i32 3}
!163 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug627, !162, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!164 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 382, i32 3}
!166 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug628, !165, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!167 = !{ptr @.str.42, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 391, i32 3}
!169 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug629, !168, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!170 = !{ptr @.str.43, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 399, i32 3}
!172 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug630, !171, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!173 = !{ptr @.str.44, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 407, i32 3}
!175 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug631, !174, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!176 = !{ptr @.str.45, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 411, i32 3}
!178 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug632, !177, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!179 = !{ptr @.str.46, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 416, i32 3}
!181 = !{ptr @pch_gbe_check_copper_options.__UNIQUE_ID_ddebug633, !180, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!182 = !{ptr @.str.47, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 152, i32 7}
!184 = !{ptr @speed_list, !185, !"speed_list", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 151, i32 38}
!186 = !{ptr @dplx_list, !187, !"dplx_list", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 158, i32 38}
!188 = !{ptr @.str.48, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 166, i32 11}
!190 = !{ptr @.str.49, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 167, i32 11}
!192 = !{ptr @.str.50, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 168, i32 11}
!194 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 169, i32 11}
!196 = !{ptr @.str.52, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 170, i32 11}
!198 = !{ptr @.str.53, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 171, i32 11}
!200 = !{ptr @.str.54, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 172, i32 11}
!202 = !{ptr @.str.55, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 173, i32 11}
!204 = !{ptr @.str.56, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 174, i32 11}
!206 = !{ptr @.str.57, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 175, i32 11}
!208 = !{ptr @.str.58, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 176, i32 11}
!210 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 177, i32 11}
!212 = !{ptr @.str.60, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 178, i32 11}
!214 = !{ptr @.str.61, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 179, i32 11}
!216 = !{ptr @.str.62, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 180, i32 11}
!218 = !{ptr @.str.63, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 181, i32 11}
!220 = !{ptr @.str.64, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 182, i32 11}
!222 = !{ptr @.str.65, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 183, i32 11}
!224 = !{ptr @.str.66, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 184, i32 11}
!226 = !{ptr @.str.67, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 185, i32 11}
!228 = !{ptr @.str.68, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 186, i32 11}
!230 = !{ptr @.str.69, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 187, i32 11}
!232 = !{ptr @.str.70, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 188, i32 11}
!234 = !{ptr @.str.71, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 189, i32 11}
!236 = !{ptr @.str.72, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 190, i32 11}
!238 = !{ptr @.str.73, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 191, i32 11}
!240 = !{ptr @.str.74, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 192, i32 11}
!242 = !{ptr @.str.75, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 193, i32 11}
!244 = !{ptr @.str.76, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 194, i32 11}
!246 = !{ptr @.str.77, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 195, i32 11}
!248 = !{ptr @.str.78, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 196, i32 11}
!250 = !{ptr @an_list, !251, !"an_list", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/oki-semi/pch_gbe/pch_gbe_param.c", i32 164, i32 38}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{i64 2148797692, i64 2148797697, i64 2148797710, i64 2148797754, i64 2148797788, i64 2148797809}
!262 = !{i64 2159207677, i64 2159208195, i64 2159207714, i64 2159207770, i64 2159207804, i64 2159207828, i64 2159207869, i64 2159207890, i64 2159207918, i64 2159207952}
!263 = !{i64 2159254596, i64 2159255114, i64 2159254633, i64 2159254689, i64 2159254723, i64 2159254747, i64 2159254788, i64 2159254809, i64 2159254837, i64 2159254871}
