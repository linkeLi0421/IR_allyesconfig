; ModuleID = '/llk/IR_all_yes/drivers/net/usb/pegasus.c_pt.bc'
source_filename = "../drivers/net/usb/pegasus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_eth_dev = type { ptr, i16, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.pegasus = type { ptr, ptr, ptr, %struct.mii_if_info, i32, i32, i32, i32, i32, i32, %struct.tasklet_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, i32, [8 x i8], [1536 x i8], [4 x i8], i8, i8 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author344 = internal constant [52 x i8] c"pegasus.author=Petko Manolov <petkan@nucleusys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description345 = internal constant [59 x i8] c"pegasus.description=Pegasus/Pegasus II USB Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [37 x i8] c"pegasus.file=drivers/net/usb/pegasus\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [20 x i8] c"pegasus.license=GPL\00", section ".modinfo", align 1
@__param_str_loopback = internal constant [17 x i8] c"pegasus.loopback\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@loopback = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_loopback = internal constant %struct.kernel_param { ptr @__param_str_loopback, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @loopback } }, section "__param", align 4
@__UNIQUE_ID_loopbacktype348 = internal constant [31 x i8] c"pegasus.parmtype=loopback:bool\00", section ".modinfo", align 1
@__param_str_mii_mode = internal constant [17 x i8] c"pegasus.mii_mode\00", align 1
@mii_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_mii_mode = internal constant %struct.kernel_param { ptr @__param_str_mii_mode, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mii_mode } }, section "__param", align 4
@__UNIQUE_ID_mii_modetype349 = internal constant [31 x i8] c"pegasus.parmtype=mii_mode:bool\00", section ".modinfo", align 1
@__param_str_devid = internal constant [14 x i8] c"pegasus.devid\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@devid = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_devid = internal constant %struct.kernel_param { ptr @__param_str_devid, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @devid } }, section "__param", align 4
@__UNIQUE_ID_devidtype350 = internal constant [29 x i8] c"pegasus.parmtype=devid:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_loopback351 = internal constant [55 x i8] c"pegasus.parm=loopback:Enable MAC loopback mode (bit 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_mii_mode352 = internal constant [71 x i8] c"pegasus.parm=mii_mode:Enable HomePNA mode (bit 0),default=MII mode = 0\00", section ".modinfo", align 1
@__UNIQUE_ID_devid353 = internal constant [69 x i8] c"pegasus.parm=devid:The format is: 'DEV_name:VendorID:DeviceID:Flags'\00", section ".modinfo", align 1
@__param_str_msg_level = internal constant [18 x i8] c"pegasus.msg_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_level = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_msg_level = internal constant %struct.kernel_param { ptr @__param_str_msg_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @msg_level } }, section "__param", align 4
@__UNIQUE_ID_msg_leveltype354 = internal constant [31 x i8] c"pegasus.parmtype=msg_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_level355 = internal constant [54 x i8] c"pegasus.parm=msg_level:Override default message level\00", section ".modinfo", align 1
@pegasus_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @pegasus_probe, ptr @pegasus_disconnect, ptr null, ptr @pegasus_suspend, ptr @pegasus_resume, ptr null, ptr null, ptr null, ptr @pegasus_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_pegasus__377_1335_pegasus_init6 = internal global ptr @pegasus_init, section ".initcall6.init", align 4
@__exitcall_pegasus_exit = internal global ptr @pegasus_exit, section ".exitcall.exit", align 4
@driver_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pegasus\00", [24 x i8] zeroinitializer }, align 32
@pegasus_ids = internal global { [76 x %struct.usb_device_id], [448 x i8] } { [76 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1286, i16 17921, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1367, i16 8199, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 4364, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16644, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 16396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 4166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 20550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2106, i16 -20476, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31469, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 -31467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 2438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1958, i16 1986, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 13108, i16 5889, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1993, i16 -20224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 19, i16 1293, i16 289, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 290, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2438, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2439, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1183, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 2440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2269, i16 -31471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1962, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 16387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3511, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4930, i16 772, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1484, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3686, i16 16396, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1008, i16 -32484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2308, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2323, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1211, i16 2362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2385, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 -21567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1390, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8707, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8708, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8710, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1915, i16 2228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 16395, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1643, i16 8204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1041, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1118, i16 122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 265, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2873, i16 2305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2257, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1799, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5608, i16 -28416, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5608, i16 -28400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1660, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer, %struct.usb_device_id zeroinitializer], [448 x i8] zeroinitializer }, align 32
@pegasus_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't allocate %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pegasus_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/usb/pegasus.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr = internal global ptr @pegasus_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"urbs\00", [27 x i8] zeroinitializer }, align 32
@pegasus_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&pegasus->carrier_check)->work)\00", [44 x i8] zeroinitializer }, align 32
@pegasus_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&pegasus->carrier_check)->timer\00", [62 x i8] zeroinitializer }, align 32
@pegasus_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pegasus_open, ptr @pegasus_close, ptr @pegasus_start_xmit, ptr null, ptr null, ptr null, ptr @pegasus_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @pegasus_siocdevprivate, ptr null, ptr null, ptr null, ptr @pegasus_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @pegasus_get_drvinfo, ptr null, ptr null, ptr @pegasus_get_wol, ptr @pegasus_set_wol, ptr @pegasus_get_msglevel, ptr @pegasus_set_msglevel, ptr @pegasus_nway_reset, ptr @pegasus_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pegasus_get_link_ksettings, ptr @pegasus_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@usb_dev_id = internal global { [76 x %struct.usb_eth_dev], [240 x i8] } { [76 x %struct.usb_eth_dev] [%struct.usb_eth_dev { ptr @.str.58, i16 1286, i16 17921, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.59, i16 1367, i16 8199, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.60, i16 1976, i16 4364, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.60, i16 1976, i16 16644, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.60, i16 1976, i16 16388, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.60, i16 1976, i16 16391, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 16642, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 16396, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.61, i16 1976, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.62, i16 2106, i16 4166, i32 36 }, %struct.usb_eth_dev { ptr @.str.63, i16 2106, i16 20550, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.64, i16 2106, i16 -20476, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.65, i16 1958, i16 -31471, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.66, i16 1958, i16 -31469, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.67, i16 1958, i16 -31467, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.68, i16 1958, i16 2438, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.69, i16 1958, i16 1986, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.70, i16 13108, i16 5889, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.71, i16 1993, i16 -20224, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.72, i16 1293, i16 289, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.73, i16 1293, i16 290, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.74, i16 2269, i16 2438, i32 36 }, %struct.usb_eth_dev { ptr @.str.75, i16 2269, i16 2439, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.76, i16 1183, i16 -31471, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.77, i16 2269, i16 2440, i32 36 }, %struct.usb_eth_dev { ptr @.str.78, i16 2269, i16 -31471, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.79, i16 1962, i16 4, i32 36 }, %struct.usb_eth_dev { ptr @.str.80, i16 1962, i16 13, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.81, i16 8193, i16 16385, i32 36 }, %struct.usb_eth_dev { ptr @.str.81, i16 8193, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.81, i16 8193, i16 16642, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.81, i16 8193, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.81, i16 8193, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.82, i16 8193, i16 16387, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.83, i16 8193, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.84, i16 3511, i16 2, i32 -1073741788 }, %struct.usb_eth_dev { ptr @.str.85, i16 1390, i16 16400, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.86, i16 4930, i16 772, i32 36 }, %struct.usb_eth_dev { ptr @.str.87, i16 1484, i16 12288, i32 36 }, %struct.usb_eth_dev { ptr @.str.88, i16 4164, i16 -32766, i32 36 }, %struct.usb_eth_dev { ptr @.str.89, i16 3686, i16 16396, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.90, i16 1008, i16 -32484, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.91, i16 1211, i16 2308, i32 36 }, %struct.usb_eth_dev { ptr @.str.92, i16 1211, i16 2323, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.93, i16 1211, i16 2362, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.94, i16 2385, i16 10, i32 36 }, %struct.usb_eth_dev { ptr @.str.95, i16 1390, i16 16386, i32 36 }, %struct.usb_eth_dev { ptr @.str.96, i16 1390, i16 16389, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.95, i16 1390, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.97, i16 1390, i16 -21567, i32 36 }, %struct.usb_eth_dev { ptr @.str.95, i16 1390, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.98, i16 1643, i16 8706, i32 36 }, %struct.usb_eth_dev { ptr @.str.99, i16 1643, i16 8707, i32 36 }, %struct.usb_eth_dev { ptr @.str.99, i16 1643, i16 8708, i32 1073741860 }, %struct.usb_eth_dev { ptr @.str.100, i16 1643, i16 8710, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.101, i16 1915, i16 2228, i32 36 }, %struct.usb_eth_dev { ptr @.str.102, i16 1643, i16 16395, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.98, i16 1643, i16 8204, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.103, i16 1041, i16 1, i32 36 }, %struct.usb_eth_dev { ptr @.str.103, i16 1041, i16 5, i32 36 }, %struct.usb_eth_dev { ptr @.str.104, i16 1041, i16 9, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.105, i16 1118, i16 122, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.106, i16 2118, i16 4128, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.107, i16 2873, i16 265, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.108, i16 2873, i16 2305, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.109, i16 2257, i16 3, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.110, i16 1799, i16 512, i32 36 }, %struct.usb_eth_dev { ptr @.str.111, i16 1799, i16 513, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.112, i16 5608, i16 -28416, i32 36 }, %struct.usb_eth_dev { ptr @.str.113, i16 5608, i16 -28400, i32 -2147483612 }, %struct.usb_eth_dev { ptr @.str.63, i16 1660, i16 4097, i32 -2147483612 }, %struct.usb_eth_dev zeroinitializer, %struct.usb_eth_dev zeroinitializer], [240 x i8] zeroinitializer }, align 32
@pegasus_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"can't reset MAC\0A\00", [47 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr.11 = internal global ptr @pegasus_probe._entry.9, section ".printk_index", align 4
@pegasus_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1185, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"setup Pegasus II specific registers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr.15 = internal global ptr @pegasus_probe._entry.12, section ".printk_index", align 4
@pegasus_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1190, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't locate MII phy, using default\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr.19 = internal global ptr @pegasus_probe._entry.16, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@pegasus_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 1203, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, %s, %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@pegasus_probe._entry_ptr.22 = internal global ptr @pegasus_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"low on memory\0A\00", [17 x i8] zeroinitializer }, align 32
@read_bulk_callback.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pegasus\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"read_bulk_callback\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset MAC\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no rx stall recovery\0A\00", [42 x i8] zeroinitializer }, align 32
@read_bulk_callback.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx unlink, %d\0A\00", [17 x i8] zeroinitializer }, align 32
@read_bulk_callback.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@read_bulk_callback.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX packet error %x\0A\00", [44 x i8] zeroinitializer }, align 32
@__mii_op.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"__mii_op\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@set_register.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_register\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s failed with %d\0A\00", [45 x i8] zeroinitializer }, align 32
@set_registers.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.35, ptr @.str.2, ptr @.str.34, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_registers\00", [18 x i8] zeroinitializer }, align 32
@pegasus_open.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pegasus_open\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed rx_urb, %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pegasus_open.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed intr_urb, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pegasus_open.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't enable_net_traffic() - %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pegasus_open.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.36, ptr @.str.2, ptr @.str.40, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"open\0A\00", [26 x i8] zeroinitializer }, align 32
@intr_callback.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intr_callback\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr status %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't resubmit interrupt urb, %d\0A\00", [62 x i8] zeroinitializer }, align 32
@enable_net_traffic.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.44, ptr @.str.2, ptr @.str.32, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_net_traffic\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fail tx, %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no tx stall recovery\0A\00", [42 x i8] zeroinitializer }, align 32
@write_bulk_callback.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_bulk_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx unlink, %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TX status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Promiscuous mode enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@pegasus_set_multicast.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pegasus_set_multicast\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set allmulti\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s returned %d\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.update_eth_regs_async = private unnamed_addr constant [22 x i8] c"update_eth_regs_async\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@async_ctrl_callback.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"async_ctrl_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s failed with %d\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"3Com USB Ethernet 3C460B\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ATEN USB Ethernet UC-110T\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB HPNA/Ethernet\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB 10/100 Fast Ethernet\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Accton USB 10/100 Ethernet Adapter\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SpeedStream USB 10/100 Ethernet\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Philips USB 10/100 Ethernet\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ADMtek ADM8511 \22Pegasus II\22 USB Ethernet\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ADMtek ADM8513 \22Pegasus II\22 USB Ethernet\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ADMtek ADM8515 \22Pegasus II\22 USB-2.0 Ethernet\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ADMtek AN986 \22Pegasus\22 USB Ethernet (evaluation board)\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AN986A USB MAC\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AEI USB Fast Ethernet Adapter\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Allied Telesyn Int. AT-USB100\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Belkin F5D5050 USB Ethernet\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Belkin F5U122 10/100 USB Ethernet\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Billionton USB-100\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Billionton USBLP-100\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iPAQ Networking 10/100 USB\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Billionton USBEL-100\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Billionton USBE-100\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Corega FEther USB-TX\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Corega FEther USB-TXS\00", [42 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"D-Link DSB-650TX\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"D-Link DSB-650TX(PNA)\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"D-Link DSB-650\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GOLDPFEIL USB Adapter\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ELECOM USB Ethernet LD-USB20\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EasiDock Ethernet\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Elsa Micolink USB2Ethernet\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"GIGABYTE GN-BR402W Wireless Router\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hawking UF100 10/100 Ethernet\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HP hn210c Ethernet USB\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IO DATA USB ET/TX\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IO DATA USB ET/TX-S\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IO DATA USB ETX-US2\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Kingston KNU101TX Ethernet\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LANEED USB Ethernet LD-USB/TX\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LANEED USB Ethernet LD-USBL/TX\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LANEED USB Ethernet LD-USB/T\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Linksys USB10TX\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Linksys USB100TX\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Linksys USB10T Ethernet Adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Linksys USBVPN1\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Linksys USB USB100TX\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MELCO/BUFFALO LUA-TX\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MELCO/BUFFALO LUA2-TX\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Microsoft MN-110\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NETGEAR FA101\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OCT Inc.\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OCT USB TO Ethernet\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smartNIC 2 PnP Adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SMC 202 USB Ethernet\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMC 2206 USB Ethernet\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOHOware NUB100 Ethernet\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOHOware NUB110 Ethernet\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"intr interval changed from %ums to %ums\0A\00", [55 x i8] zeroinitializer }, align 32
@read_eprom_word.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.115, ptr @.str.2, ptr @.str.32, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_eprom_word\00", [16 x i8] zeroinitializer }, align 32
@reset_mac.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.116, ptr @.str.2, ptr @.str.32, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset_mac\00", [22 x i8] zeroinitializer }, align 32
@set_ethernet_addr.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_ethernet_addr\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"software assigned MAC address.\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_pegasus_II.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.119, ptr @.str.2, ptr @.str.32, i8 1, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setup_pegasus_II\00", [47 x i8] zeroinitializer }, align 32
@pegasus_disconnect.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.120, ptr @.str.2, ptr @.str.121, i8 1, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pegasus_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unregistering non-bound device?\0A\00", [63 x i8] zeroinitializer }, align 32
@pegasus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Pegasus/Pegasus II USB Ethernet driver\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pegasus_init\00", [19 x i8] zeroinitializer }, align 32
@pegasus_init._entry_ptr = internal global ptr @pegasus_init._entry, section ".printk_index", align 4
@.str.124 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@parse_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: new device %s, vendor ID 0x%04x, device ID 0x%04x, flags: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"parse_id\00", [23 x i8] zeroinitializer }, align 32
@parse_id._entry_ptr = internal global ptr @parse_id._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 16, i64 1643, i64 8193]
@__sancov_gen_cov_switch_values.129 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 4294967264, i64 4294967277, i64 4294967295]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 35312, i64 35313, i64 35314]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 16, i64 1643, i64 1915, i64 8193]
@__sancov_gen_cov_switch_values.139 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 34, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant [9 x i8] c"mii_mode\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 35, i32 13 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"devid\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 36, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"msg_level\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 80, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"pegasus_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1281, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 27, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant [12 x i8] c"pegasus_ids\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 50, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1150, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1156, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"pegasus_netdev_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1270, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 992, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant [11 x i8] c"usb_dev_id\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 38, i32 27 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1179, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1185, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1190, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1202, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 581, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 475, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 480, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 485, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 488, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 497, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 207, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 135, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 116, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 847, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 858, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 864, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 873, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 658, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 689, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 451, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 718, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 619, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 624, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 627, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1036, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1040, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 169, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 95, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 696, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 912, i32 31 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 146, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 148, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 150, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 158, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 170, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 172, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 174, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 176, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 179, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 182, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 185, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 188, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 190, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 192, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 198, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 200, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 202, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 204, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 206, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 208, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 210, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 212, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 214, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 216, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 226, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 228, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 230, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 232, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 234, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 236, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 238, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 240, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 242, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 244, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 246, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 248, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 250, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 252, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 254, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 258, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 262, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 264, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 268, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 270, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 272, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 276, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 280, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 282, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 284, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 286, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 288, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 290, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 292, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 294, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 296, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [29 x i8] c"../drivers/net/usb/pegasus.h\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 298, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 760, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 273, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 411, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 365, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1100, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1222, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1324, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1296, i32 27 }
@___asan_gen_.542 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.549 = private constant [29 x i8] c"../drivers/net/usb/pegasus.c\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1304, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_devid353, ptr @__UNIQUE_ID_devidtype350, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_license347, ptr @__UNIQUE_ID_loopback351, ptr @__UNIQUE_ID_loopbacktype348, ptr @__UNIQUE_ID_mii_mode352, ptr @__UNIQUE_ID_mii_modetype349, ptr @__UNIQUE_ID_msg_level355, ptr @__UNIQUE_ID_msg_leveltype354, ptr @__exitcall_pegasus_exit, ptr @__initcall__kmod_pegasus__377_1335_pegasus_init6, ptr @__param_devid, ptr @__param_loopback, ptr @__param_mii_mode, ptr @__param_msg_level, ptr @parse_id._entry, ptr @parse_id._entry_ptr, ptr @pegasus_exit, ptr @pegasus_init._entry, ptr @pegasus_init._entry_ptr, ptr @pegasus_probe._entry, ptr @pegasus_probe._entry.12, ptr @pegasus_probe._entry.16, ptr @pegasus_probe._entry.20, ptr @pegasus_probe._entry.9, ptr @pegasus_probe._entry_ptr, ptr @pegasus_probe._entry_ptr.11, ptr @pegasus_probe._entry_ptr.15, ptr @pegasus_probe._entry_ptr.19, ptr @pegasus_probe._entry_ptr.22, ptr @loopback, ptr @mii_mode, ptr @devid, ptr @msg_level, ptr @pegasus_driver, ptr @driver_name, ptr @pegasus_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pegasus_probe.__key, ptr @.str.6, ptr @pegasus_probe.__key.7, ptr @.str.8, ptr @pegasus_netdev_ops, ptr @ops, ptr @usb_dev_id, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_ids to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_dev_id to i32), i32 912, i32 1152, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pegasus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_deregister(ptr noundef nonnull @pegasus_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @driver_name) #17
  %0 = load ptr, ptr @devid, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @parse_id(ptr noundef nonnull %0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @usb_register_driver(ptr noundef nonnull @pegasus_driver, ptr noundef null, ptr noundef nonnull @.str.24) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %wol.i = alloca %struct.ethtool_wolinfo, align 4
  %tmp.i = alloca i16, align 2
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %sub.ptr.lhs.cast = ptrtoint ptr %id to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @pegasus_ids to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %2 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %idVendor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3333, i16 %3)
  %cmp.i = icmp eq i16 %3, 3333
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %4 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %idProduct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8449, i16 %5)
  %cmp3.i = icmp eq i16 %5, 8449
  br i1 %cmp3.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %bDeviceClass.i = getelementptr i8, ptr %1, i32 932
  %6 = ptrtoint ptr %bDeviceClass.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bDeviceClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %7)
  %cmp7.i = icmp eq i8 %7, -32
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true5.i.if.end_crit_edge

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true9.i:                                 ; preds = %land.lhs.true5.i
  %bDeviceProtocol.i = getelementptr i8, ptr %1, i32 934
  %8 = ptrtoint ptr %bDeviceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDeviceProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp11.i = icmp eq i8 %9, 1
  br i1 %cmp11.i, label %land.lhs.true9.i.cleanup_crit_edge, label %land.lhs.true9.i.if.end_crit_edge

land.lhs.true9.i.if.end_crit_edge:                ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9.i.if.end_crit_edge, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1764, i32 noundef 1, i32 noundef 1) #14
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i150 = getelementptr i8, ptr %call2, i32 2304
  %dev_index7 = getelementptr i8, ptr %call2, i32 2364
  %10 = ptrtoint ptr %dev_index7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.div, ptr %dev_index7, align 4
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %rx_urb.i = getelementptr i8, ptr %call2, i32 2496
  %11 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %rx_urb.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.do.end_crit_edge, label %if.end.i151

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i151:                                      ; preds = %if.end5
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %tx_urb.i = getelementptr i8, ptr %call2, i32 2500
  %12 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i, ptr %tx_urb.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i151.cleanup.sink.split.i_crit_edge, label %if.end7.i

if.end.i151.cleanup.sink.split.i_crit_edge:       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end7.i:                                        ; preds = %if.end.i151
  %call8.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #14
  %intr_urb.i = getelementptr i8, ptr %call2, i32 2504
  %13 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i, ptr %intr_urb.i, align 4
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end11

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %15) #14
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then11.i, %if.end.i151.cleanup.sink.split.i_crit_edge
  %16 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #14
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i, %if.end5.do.end_crit_edge
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #17
  br label %out1

if.end11:                                         ; preds = %if.end7.i
  %rx_tl = getelementptr i8, ptr %call2, i32 2372
  tail call void @tasklet_setup(ptr noundef %rx_tl, ptr noundef nonnull @rx_fixup) #14
  %carrier_check = getelementptr i8, ptr %call2, i32 2396
  tail call void @__init_work(ptr noundef %carrier_check, i32 noundef 0) #14
  %18 = ptrtoint ptr %carrier_check to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %carrier_check, align 4
  %lockdep_map = getelementptr i8, ptr %call2, i32 2412
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @pegasus_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry20 = getelementptr i8, ptr %call2, i32 2400
  %19 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr i8, ptr %call2, i32 2404
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call2, i32 2408
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @check_carrier, ptr %func, align 4
  %timer = getelementptr i8, ptr %call2, i32 2440
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @pegasus_probe.__key.7) #14
  %intf31 = getelementptr i8, ptr %call2, i32 2308
  %22 = ptrtoint ptr %intf31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %intf, ptr %intf31, align 4
  %23 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %add.ptr.i150, align 4
  %net32 = getelementptr i8, ptr %call2, i32 2312
  %24 = ptrtoint ptr %net32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2, ptr %net32, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 115
  %25 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %watchdog_timeo, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pegasus_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 44
  %27 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ops, ptr %ethtool_ops, align 16
  %mii = getelementptr i8, ptr %call2, i32 2316
  %dev33 = getelementptr i8, ptr %call2, i32 2336
  %28 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2, ptr %dev33, align 4
  %mdio_read = getelementptr i8, ptr %call2, i32 2340
  %29 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call2, i32 2344
  %30 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call2, i32 2324
  %31 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call2, i32 2328
  %32 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 31, ptr %reg_num_mask, align 4
  %33 = load i32, ptr @msg_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %33)
  %cmp1.i = icmp ugt i32 %33, 31
  br i1 %cmp1.i, label %if.end11.netif_msg_init.exit_crit_edge, label %if.end.i153

if.end11.netif_msg_init.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit

if.end.i153:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2.i = icmp eq i32 %33, 0
  br i1 %cmp2.i, label %if.end.i153.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i153.netif_msg_init.exit_crit_edge:        ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #16
  %notmask.i = shl nsw i32 -1, %33
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i153.netif_msg_init.exit_crit_edge, %if.end11.netif_msg_init.exit_crit_edge
  %retval.0.i154 = phi i32 [ %sub.i, %if.end4.i ], [ 7, %if.end11.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i153.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call2, i32 2356
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i154, ptr %msg_enable, align 4
  %arrayidx = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %sub.ptr.div
  %private = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %sub.ptr.div, i32 3
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %private, align 4
  %features = getelementptr i8, ptr %call2, i32 2352
  %37 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %features, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #14
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %data.i, align 2, !annotation !317
  %call.i155 = call fastcc i32 @read_eprom_word(ptr noundef %add.ptr.i150, i8 noundef zeroext 4, ptr noundef nonnull %data.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp.i156 = icmp slt i32 %call.i155, 0
  br i1 %cmp.i156, label %get_interrupt_interval.exit, label %if.end.i157

if.end.i157:                                      ; preds = %netif_msg_init.exit
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data.i, align 2
  %41 = lshr i16 %40, 8
  %conv1.i = trunc i16 %41 to i8
  %42 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i150, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp2.not.i = icmp eq i32 %45, 3
  br i1 %cmp2.not.i, label %if.end.i157.if.end42_crit_edge, label %if.then4.i

if.end.i157.if.end42_crit_edge:                   ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then4.i:                                       ; preds = %if.end.i157
  %conv5.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp6.i = icmp sgt i16 %40, -1
  br i1 %cmp6.i, label %do.body.i, label %if.then4.i.if.end42_crit_edge

if.then4.i.if.end42_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

do.body.i:                                        ; preds = %if.then4.i
  %46 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i158 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i158, label %do.body.i.if.end42_crit_edge, label %if.then9.i

do.body.i.if.end42_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %net32 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net32, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %49, ptr noundef nonnull @.str.114, i32 noundef %conv5.i, i32 noundef 128) #17
  br label %if.end42

get_interrupt_interval.exit:                      ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #14
  br label %out2

if.end42:                                         ; preds = %if.then9.i, %do.body.i.if.end42_crit_edge, %if.then4.i.if.end42_crit_edge, %if.end.i157.if.end42_crit_edge
  %interval.0.i = phi i8 [ %conv1.i, %if.then4.i.if.end42_crit_edge ], [ %conv1.i, %if.end.i157.if.end42_crit_edge ], [ -128, %if.then9.i ], [ -128, %do.body.i.if.end42_crit_edge ]
  %conv19.i = zext i8 %interval.0.i to i32
  %intr_interval.i = getelementptr i8, ptr %call2, i32 2368
  %50 = ptrtoint ptr %intr_interval.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv19.i, ptr %intr_interval.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #14
  %call43 = tail call fastcc i32 @reset_mac(ptr noundef %add.ptr.i150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %dev49 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.10) #17
  br label %out2

if.end50:                                         ; preds = %if.end42
  tail call fastcc void @set_ethernet_addr(ptr noundef %add.ptr.i150)
  %51 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %tobool52.not = icmp sgt i32 %52, -1
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %do.end56

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.13) #17
  tail call fastcc void @setup_pegasus_II(ptr noundef %add.ptr.i150)
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end50.if.end58_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -1, ptr %tmp.i, align 2, !annotation !317
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end58
  %i.024.i = phi i32 [ 0, %if.end58 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.024.i to i8
  %call.i.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i150, i8 noundef zeroext %conv.i, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i160 = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i160, label %for.body.i.mii_phy_probe.exit.thread_crit_edge, label %if.end.i161

for.body.i.mii_phy_probe.exit.thread_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_phy_probe.exit.thread

if.end.i161:                                      ; preds = %for.body.i
  %54 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tmp.i, align 2
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i16 %55, label %lor.lhs.false9.i [
    i16 0, label %if.end.i161.for.inc.i_crit_edge
    i16 -1, label %if.end.i161.for.inc.i_crit_edge188
  ]

if.end.i161.for.inc.i_crit_edge188:               ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i161.for.inc.i_crit_edge:                  ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false9.i:                                 ; preds = %if.end.i161
  %57 = and i16 %55, 30728
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp11.i162 = icmp eq i16 %57, 0
  br i1 %cmp11.i162, label %lor.lhs.false9.i.for.inc.i_crit_edge, label %mii_phy_probe.exit

lor.lhs.false9.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false9.i.for.inc.i_crit_edge, %if.end.i161.for.inc.i_crit_edge, %if.end.i161.for.inc.i_crit_edge188
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.mii_phy_probe.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.mii_phy_probe.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mii_phy_probe.exit.thread

mii_phy_probe.exit.thread:                        ; preds = %for.inc.i.mii_phy_probe.exit.thread_crit_edge, %for.body.i.mii_phy_probe.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  %phy178 = getelementptr i8, ptr %call2, i32 4064
  %58 = ptrtoint ptr %phy178 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %phy178, align 4
  br label %do.end66

mii_phy_probe.exit:                               ; preds = %lor.lhs.false9.i
  %conv.i.le = trunc i32 %i.024.i to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  %phy = getelementptr i8, ptr %call2, i32 4064
  %59 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i.le, ptr %phy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i.le)
  %cmp61 = icmp eq i8 %conv.i.le, -1
  br i1 %cmp61, label %mii_phy_probe.exit.do.end66_crit_edge, label %mii_phy_probe.exit.if.end69_crit_edge

mii_phy_probe.exit.if.end69_crit_edge:            ; preds = %mii_phy_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

mii_phy_probe.exit.do.end66_crit_edge:            ; preds = %mii_phy_probe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end66

do.end66:                                         ; preds = %mii_phy_probe.exit.do.end66_crit_edge, %mii_phy_probe.exit.thread
  %phy180 = phi ptr [ %phy178, %mii_phy_probe.exit.thread ], [ %phy, %mii_phy_probe.exit.do.end66_crit_edge ]
  %dev67 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.17) #17
  %60 = ptrtoint ptr %phy180 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %phy180, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %mii_phy_probe.exit.if.end69_crit_edge
  %phy181 = phi ptr [ %phy180, %do.end66 ], [ %phy, %mii_phy_probe.exit.if.end69_crit_edge ]
  %61 = ptrtoint ptr %phy181 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %phy181, align 4
  %conv71 = zext i8 %62 to i32
  %63 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv71, ptr %mii, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i150, ptr %driver_data.i.i, align 4
  %dev73 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %65 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %dev73, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wol.i) #14
  %66 = call ptr @memset(ptr %wol.i, i32 0, i32 20)
  %call.i164 = call i32 @pegasus_set_wol(ptr noundef %call2, ptr noundef nonnull %wol.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wol.i) #14
  %call75 = tail call i32 @register_netdev(ptr noundef nonnull %call2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %out3

if.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %67 = load ptr, ptr @system_long_wq, align 4
  %call.i165 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %carrier_check, i32 noundef 200) #14
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 86
  %70 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev73, ptr noundef nonnull @.str.21, ptr noundef nonnull %call2, ptr noundef %69, ptr noundef %71) #17
  br label %cleanup

out3:                                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %out2

out2:                                             ; preds = %out3, %do.end48, %get_interrupt_interval.exit
  %res.0 = phi i32 [ %call.i155, %get_interrupt_interval.exit ], [ -5, %do.end48 ], [ %call75, %out3 ]
  %73 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %74) #14
  %75 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %76) #14
  %77 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %78) #14
  br label %out1

out1:                                             ; preds = %out2, %do.end
  %res.1 = phi i32 [ -12, %do.end ], [ %res.0, %out2 ]
  tail call void @free_netdev(ptr noundef nonnull %call2) #14
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end78, %if.end.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ %res.1, %out1 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %land.lhs.true9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_disconnect.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_disconnect, %if.then5)) #14
          to label %cleanup [label %if.then5], !srcloc !318

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pegasus_disconnect.__UNIQUE_ID_ddebug376, ptr noundef %dev, ptr noundef nonnull @.str.121) #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 64
  store i32 %or, ptr %flags, align 4
  %carrier_check = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %carrier_check) #14
  %net = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  tail call void @unregister_netdev(ptr noundef %5) #14
  %intr_urb.i = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #14
  %tx_urb.i = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  %rx_urb.i = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #14
  %12 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intr_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #14
  %14 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %15) #14
  %16 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #14
  %rx_skb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb, align 4
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef nonnull %19) #14
  %20 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  tail call void @free_netdev(ptr noundef %22) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void @netif_device_detach(ptr noundef %3) #14
  %carrier_check = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %carrier_check) #14
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rx_urb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #14
  %intr_urb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %net = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void @netif_device_attach(ptr noundef %3) #14
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rx_urb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %11 = load ptr, ptr %rx_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %actual_length, align 4
  %13 = load ptr, ptr %rx_urb, align 4
  tail call void @read_bulk_callback(ptr noundef %13)
  %intr_urb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr_urb, align 4
  %status5 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %status5, align 4
  %17 = load ptr, ptr %intr_urb, align 4
  %actual_length7 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %actual_length7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %actual_length7, align 4
  %19 = load ptr, ptr %intr_urb, align 4
  tail call void @intr_callback(ptr noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %20 = load ptr, ptr @system_long_wq, align 4
  %carrier_check = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %carrier_check, i32 noundef 200) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_fixup(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -68
  %flags = getelementptr i8, ptr %t, i32 -24
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %rx_skb = getelementptr i8, ptr %t, i32 136
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.then4.if.end8_crit_edge, label %if.then4.try_again_crit_edge

if.then4.try_again_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %try_again

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rx_skb9 = getelementptr i8, ptr %t, i32 136
  %4 = ptrtoint ptr %rx_skb9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb9, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then10, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then10:                                        ; preds = %if.end8
  %net = getelementptr i8, ptr %t, i32 -60
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef 1538, i32 noundef 2592) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end12

if.end12:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %12 = ptrtoint ptr %rx_skb9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %rx_skb9, align 4
  br label %if.end21

do.body:                                          ; preds = %if.then10
  %13 = ptrtoint ptr %rx_skb9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_skb9, align 4
  %msg_enable = getelementptr i8, ptr %t, i32 -16
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.do.end_crit_edge, label %if.then18

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.23) #17
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body.do.end_crit_edge
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.then.i64, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i64:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__tasklet_schedule(ptr noundef %t) #14
  br label %cleanup

if.end21:                                         ; preds = %if.end12, %if.end8.if.end21_crit_edge
  %18 = phi ptr [ %call.i, %if.end12 ], [ %5, %if.end8.if.end21_crit_edge ]
  %rx_urb = getelementptr i8, ptr %t, i32 124
  %19 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_urb, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i = shl i32 %24, 8
  %or24 = or i32 %shl.i, -1073708928
  %data = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or24, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %context4.i, align 4
  br label %try_again

try_again:                                        ; preds = %if.end21, %if.then4.try_again_crit_edge
  %rx_urb26 = getelementptr i8, ptr %t, i32 124
  %33 = ptrtoint ptr %rx_urb26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_urb26, align 4
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 2592) #14
  %35 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call27, label %if.then32 [
    i32 -19, label %if.then29
    i32 0, label %if.else36
  ]

if.then29:                                        ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #16
  %net30 = getelementptr i8, ptr %t, i32 -60
  %36 = ptrtoint ptr %net30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net30, align 4
  tail call void @netif_device_detach(ptr noundef %37) #14
  br label %cleanup

if.then32:                                        ; preds = %try_again
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or34 = or i32 %39, 128
  store i32 %or34, ptr %flags, align 4
  %state.i65 = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i66 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %if.then.i68, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i68:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__tasklet_schedule(ptr noundef %t) #14
  br label %cleanup

if.else36:                                        ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and38 = and i32 %41, -129
  store i32 %and38, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else36, %if.then.i68, %if.then32.cleanup_crit_edge, %if.then29, %if.then.i64, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_carrier(ptr noundef %work) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %work, i32 -84
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %tmp.i, align 2, !annotation !317
  %phy.i = getelementptr i8, ptr %1, i32 4064
  %3 = ptrtoint ptr %phy.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy.i, align 4
  %call.i.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i.i, i8 noundef zeroext %4, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.set_carrier.exit_crit_edge

entry.set_carrier.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_carrier.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tmp.i, align 2
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not.i = icmp eq i16 %7, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %1) #14
  br label %set_carrier.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %1) #14
  br label %set_carrier.exit

set_carrier.exit:                                 ; preds = %if.else.i, %if.then3.i, %entry.set_carrier.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  %flags = getelementptr i8, ptr %work, i32 -48
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %set_carrier.exit.if.end_crit_edge

set_carrier.exit.if.end_crit_edge:                ; preds = %set_carrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %set_carrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %10 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 200) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %set_carrier.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #14
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !317
  %conv = trunc i32 %phy_id to i8
  %conv1 = trunc i32 %loc to i8
  %call.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef nonnull %res, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %res, align 2
  %conv4 = zext i16 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #14
  %conv = trunc i32 %val to i16
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %data, align 2
  %conv1 = trunc i32 %phy_id to i8
  %conv2 = trunc i32 %loc to i8
  %call.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %conv1, i8 noundef zeroext %conv2, ptr noundef nonnull %data, i8 noundef zeroext 32) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_mac(ptr noundef readonly %pegasus) unnamed_addr #5 align 64 {
entry:
  %data.addr.i145 = alloca i8, align 1
  %data.addr.i134 = alloca i8, align 1
  %data.addr.i123 = alloca i8, align 1
  %data.addr.i112 = alloca i8, align 1
  %data.addr.i101 = alloca i8, align 1
  %data.addr.i90 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %data = alloca i8, align 1
  %auxmode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %1 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %data.addr.i, align 1
  %2 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pegasus, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef nonnull %data.addr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.set_register.exit_crit_edge

entry.set_register.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_register.exit_crit_edge, label %do.body3.i

do.body.i.set_register.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i)) #14
          to label %set_register.exit [label %if.then8.i], !srcloc !318

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %set_register.exit

set_register.exit:                                ; preds = %if.then8.i, %do.body3.i, %do.body.i.set_register.exit_crit_edge, %entry.set_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %set_register.exit
  %i.0165 = phi i32 [ 0, %set_register.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pegasus, align 4
  %call.i89 = call i32 @usb_control_msg_recv(ptr noundef %9, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp2 = icmp slt i32 %call.i89, 0
  br i1 %cmp2, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = and i8 %11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.not = icmp eq i8 %12, 0
  br i1 %tobool.not.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %if.end
  %13 = load i8, ptr @loopback, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.if.end23_crit_edge

if.then3.if.end23_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end6:                                          ; preds = %if.then3
  %14 = load i8, ptr @mii_mode, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %features = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 5
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features, align 4
  %and9 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else_crit_edge, label %if.then11

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i90)
  %17 = ptrtoint ptr %data.addr.i90 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 52, ptr %data.addr.i90, align 1
  %18 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pegasus, align 4
  %call.i91 = call i32 @usb_control_msg_send(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 52, i16 noundef zeroext 127, ptr noundef nonnull %data.addr.i90, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %do.body.i96, label %if.then11.set_register.exit100_crit_edge

if.then11.set_register.exit100_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit100

do.body.i96:                                      ; preds = %if.then11
  %msg_enable.i93 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %20 = ptrtoint ptr %msg_enable.i93 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable.i93, align 4
  %and.i94 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %do.body.i96.set_register.exit100_crit_edge, label %do.body3.i97

do.body.i96.set_register.exit100_crit_edge:       ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit100

do.body3.i97:                                     ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i99)) #14
          to label %set_register.exit100 [label %if.then8.i99], !srcloc !318

if.then8.i99:                                     ; preds = %do.body3.i97
  call void @__sanitizer_cov_trace_pc() #16
  %net.i98 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %22 = ptrtoint ptr %net.i98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i98, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %23, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i91) #14
  br label %set_register.exit100

set_register.exit100:                             ; preds = %if.then8.i99, %do.body3.i97, %do.body.i96.set_register.exit100_crit_edge, %if.then11.set_register.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i90)
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i101)
  %24 = ptrtoint ptr %data.addr.i101 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 38, ptr %data.addr.i101, align 1
  %25 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pegasus, align 4
  %call.i102 = call i32 @usb_control_msg_send(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 127, ptr noundef nonnull %data.addr.i101, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp slt i32 %call.i102, 0
  br i1 %cmp.i103, label %do.body.i107, label %if.else.set_register.exit111_crit_edge

if.else.set_register.exit111_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit111

do.body.i107:                                     ; preds = %if.else
  %msg_enable.i104 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %27 = ptrtoint ptr %msg_enable.i104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i104, align 4
  %and.i105 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %do.body.i107.set_register.exit111_crit_edge, label %do.body3.i108

do.body.i107.set_register.exit111_crit_edge:      ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit111

do.body3.i108:                                    ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i110)) #14
          to label %set_register.exit111 [label %if.then8.i110], !srcloc !318

if.then8.i110:                                    ; preds = %do.body3.i108
  call void @__sanitizer_cov_trace_pc() #16
  %net.i109 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %29 = ptrtoint ptr %net.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i109, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %30, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i102) #14
  br label %set_register.exit111

set_register.exit111:                             ; preds = %if.then8.i110, %do.body3.i108, %do.body.i107.set_register.exit111_crit_edge, %if.else.set_register.exit111_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i101)
  br label %if.end14

if.end14:                                         ; preds = %set_register.exit111, %set_register.exit100
  %features15 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 5
  %31 = ptrtoint ptr %features15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %features15, align 4
  %conv16 = trunc i32 %32 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i112)
  %33 = ptrtoint ptr %data.addr.i112 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv16, ptr %data.addr.i112, align 1
  %34 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pegasus, align 4
  %36 = trunc i32 %32 to i16
  %conv.i = and i16 %36, 255
  %call.i113 = call i32 @usb_control_msg_send(ptr noundef %35, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 126, ptr noundef nonnull %data.addr.i112, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp.i114 = icmp slt i32 %call.i113, 0
  br i1 %cmp.i114, label %do.body.i118, label %if.end14.set_register.exit122_crit_edge

if.end14.set_register.exit122_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit122

do.body.i118:                                     ; preds = %if.end14
  %msg_enable.i115 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %37 = ptrtoint ptr %msg_enable.i115 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i115, align 4
  %and.i116 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i117 = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i117, label %do.body.i118.set_register.exit122_crit_edge, label %do.body3.i119

do.body.i118.set_register.exit122_crit_edge:      ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit122

do.body3.i119:                                    ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i121)) #14
          to label %set_register.exit122 [label %if.then8.i121], !srcloc !318

if.then8.i121:                                    ; preds = %do.body3.i119
  call void @__sanitizer_cov_trace_pc() #16
  %net.i120 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %39 = ptrtoint ptr %net.i120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i120, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %40, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i113) #14
  br label %set_register.exit122

set_register.exit122:                             ; preds = %if.then8.i121, %do.body3.i119, %do.body.i118.set_register.exit122_crit_edge, %if.end14.set_register.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i112)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i123)
  %41 = ptrtoint ptr %data.addr.i123 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 38, ptr %data.addr.i123, align 1
  %42 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pegasus, align 4
  %call.i124 = call i32 @usb_control_msg_send(ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 126, ptr noundef nonnull %data.addr.i123, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %do.body.i129, label %set_register.exit122.set_register.exit133_crit_edge

set_register.exit122.set_register.exit133_crit_edge: ; preds = %set_register.exit122
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit133

do.body.i129:                                     ; preds = %set_register.exit122
  %msg_enable.i126 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %44 = ptrtoint ptr %msg_enable.i126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i126, align 4
  %and.i127 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %do.body.i129.set_register.exit133_crit_edge, label %do.body3.i130

do.body.i129.set_register.exit133_crit_edge:      ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit133

do.body3.i130:                                    ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i132)) #14
          to label %set_register.exit133 [label %if.then8.i132], !srcloc !318

if.then8.i132:                                    ; preds = %do.body3.i130
  call void @__sanitizer_cov_trace_pc() #16
  %net.i131 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %46 = ptrtoint ptr %net.i131 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net.i131, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %47, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i124) #14
  br label %set_register.exit133

set_register.exit133:                             ; preds = %if.then8.i132, %do.body3.i130, %do.body.i129.set_register.exit133_crit_edge, %set_register.exit122.set_register.exit133_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i123)
  br label %if.end23

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc.cleanup66_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup66

if.end23:                                         ; preds = %set_register.exit133, %if.then3.if.end23_crit_edge
  %dev_index = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 8
  %48 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_index, align 4
  %vendor = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %49, i32 1
  %50 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vendor, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %51, label %if.end23.if.end36_crit_edge [
    i16 1643, label %if.end23.if.then33_crit_edge
    i16 8193, label %if.end23.if.then33_crit_edge176
  ]

if.end23.if.then33_crit_edge176:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

if.end23.if.then33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then33

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then33:                                        ; preds = %if.end23.if.then33_crit_edge, %if.end23.if.then33_crit_edge176
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i134)
  %53 = ptrtoint ptr %data.addr.i134 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 36, ptr %data.addr.i134, align 1
  %54 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pegasus, align 4
  %call.i135 = call i32 @usb_control_msg_send(ptr noundef %55, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 36, i16 noundef zeroext 126, ptr noundef nonnull %data.addr.i134, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %do.body.i140, label %if.then33.set_register.exit144_crit_edge

if.then33.set_register.exit144_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit144

do.body.i140:                                     ; preds = %if.then33
  %msg_enable.i137 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %56 = ptrtoint ptr %msg_enable.i137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable.i137, align 4
  %and.i138 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  br i1 %tobool.not.i139, label %do.body.i140.set_register.exit144_crit_edge, label %do.body3.i141

do.body.i140.set_register.exit144_crit_edge:      ; preds = %do.body.i140
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit144

do.body3.i141:                                    ; preds = %do.body.i140
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i143)) #14
          to label %set_register.exit144 [label %if.then8.i143], !srcloc !318

if.then8.i143:                                    ; preds = %do.body3.i141
  call void @__sanitizer_cov_trace_pc() #16
  %net.i142 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %58 = ptrtoint ptr %net.i142 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net.i142, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %59, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i135) #14
  br label %set_register.exit144

set_register.exit144:                             ; preds = %if.then8.i143, %do.body3.i141, %do.body.i140.set_register.exit144_crit_edge, %if.then33.set_register.exit144_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i134)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i145)
  %60 = ptrtoint ptr %data.addr.i145 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 38, ptr %data.addr.i145, align 1
  %61 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pegasus, align 4
  %call.i146 = call i32 @usb_control_msg_send(ptr noundef %62, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 38, i16 noundef zeroext 126, ptr noundef nonnull %data.addr.i145, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i147 = icmp slt i32 %call.i146, 0
  br i1 %cmp.i147, label %do.body.i151, label %set_register.exit144.set_register.exit155_crit_edge

set_register.exit144.set_register.exit155_crit_edge: ; preds = %set_register.exit144
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit155

do.body.i151:                                     ; preds = %set_register.exit144
  %msg_enable.i148 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %63 = ptrtoint ptr %msg_enable.i148 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable.i148, align 4
  %and.i149 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %do.body.i151.set_register.exit155_crit_edge, label %do.body3.i152

do.body.i151.set_register.exit155_crit_edge:      ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit155

do.body3.i152:                                    ; preds = %do.body.i151
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then8.i154)) #14
          to label %set_register.exit155 [label %if.then8.i154], !srcloc !318

if.then8.i154:                                    ; preds = %do.body3.i152
  call void @__sanitizer_cov_trace_pc() #16
  %net.i153 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %65 = ptrtoint ptr %net.i153 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net.i153, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %66, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i146) #14
  br label %set_register.exit155

set_register.exit155:                             ; preds = %if.then8.i154, %do.body3.i152, %do.body.i151.set_register.exit155_crit_edge, %set_register.exit144.set_register.exit155_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i145)
  br label %if.end36

if.end36:                                         ; preds = %set_register.exit155, %if.end23.if.end36_crit_edge
  %67 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dev_index, align 4
  %vendor39 = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %68, i32 1
  %69 = ptrtoint ptr %vendor39 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vendor39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3511, i16 %70)
  %cmp41 = icmp eq i16 %70, 3511
  br i1 %cmp41, label %if.then43, label %if.end36.cleanup66_crit_edge

if.end36.cleanup66_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup66

if.then43:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %auxmode) #14
  %71 = ptrtoint ptr %auxmode to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %auxmode, align 2, !annotation !317
  %call.i156 = call fastcc i32 @__mii_op(ptr noundef %pegasus, i8 noundef zeroext 3, i8 noundef zeroext 27, ptr noundef nonnull %auxmode, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp45 = icmp slt i32 %call.i156, 0
  br i1 %cmp45, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auxmode) #14
  br label %do.body

cleanup:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  %72 = ptrtoint ptr %auxmode to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %auxmode, align 2
  %74 = or i16 %73, 4
  store i16 %74, ptr %auxmode, align 2
  %call.i157 = call fastcc i32 @__mii_op(ptr noundef %pegasus, i8 noundef zeroext 3, i8 noundef zeroext 27, ptr noundef nonnull %auxmode, i8 noundef zeroext 32) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auxmode) #14
  br label %cleanup66

do.body:                                          ; preds = %cleanup.thread, %for.body.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i156, %cleanup.thread ], [ %call.i89, %for.body.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable, align 4
  %and53 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body.cleanup66_crit_edge, label %do.body56

do.body.cleanup66_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup66

do.body56:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_mac.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_mac, %if.then61)) #14
          to label %cleanup66 [label %if.then61], !srcloc !318

if.then61:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %77 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @reset_mac.__UNIQUE_ID_ddebug362, ptr noundef %78, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.116) #14
  br label %cleanup66

cleanup66:                                        ; preds = %if.then61, %do.body56, %do.body.cleanup66_crit_edge, %cleanup, %if.end36.cleanup66_crit_edge, %for.inc.cleanup66_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup ], [ 0, %if.end36.cleanup66_crit_edge ], [ %ret.0, %if.then61 ], [ %ret.0, %do.body.cleanup66_crit_edge ], [ %ret.0, %do.body56 ], [ -110, %for.inc.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_ethernet_addr(ptr nocapture noundef readonly %pegasus) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %w16.i = alloca i16, align 2
  %node_id = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %node_id) #14
  %0 = getelementptr inbounds [6 x i8], ptr %node_id, i32 0, i32 2
  %1 = getelementptr inbounds [6 x i8], ptr %node_id, i32 0, i32 4
  %features = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 5
  %2 = call ptr @memset(ptr %node_id, i32 255, i32 6)
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pegasus, align 4
  %call.i = call i32 @usb_control_msg_recv(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %node_id, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.err_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w16.i) #14
  %7 = ptrtoint ptr %w16.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %w16.i, align 2, !annotation !317
  %call.i39 = call fastcc i32 @read_eprom_word(ptr noundef %pegasus, i8 noundef zeroext 0, ptr noundef nonnull %w16.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp1.i = icmp slt i32 %call.i39, 0
  br i1 %cmp1.i, label %if.else.get_node_id.exit.thread_crit_edge, label %if.end.i

if.else.get_node_id.exit.thread_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_node_id.exit.thread

if.end.i:                                         ; preds = %if.else
  %8 = ptrtoint ptr %w16.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %w16.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #14
  %11 = ptrtoint ptr %node_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %node_id, align 2
  %call.1.i = call fastcc i32 @read_eprom_word(ptr noundef %pegasus, i8 noundef zeroext 1, ptr noundef nonnull %w16.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %if.end.i.get_node_id.exit.thread_crit_edge, label %if.end.1.i

if.end.i.get_node_id.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_node_id.exit.thread

if.end.1.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %w16.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %w16.i, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #14
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %0, align 2
  %call.2.i = call fastcc i32 @read_eprom_word(ptr noundef %pegasus, i8 noundef zeroext 2, ptr noundef nonnull %w16.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %if.end.1.i.get_node_id.exit.thread_crit_edge, label %if.end6

if.end.1.i.get_node_id.exit.thread_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_node_id.exit.thread

get_node_id.exit.thread:                          ; preds = %if.end.1.i.get_node_id.exit.thread_crit_edge, %if.end.i.get_node_id.exit.thread_crit_edge, %if.else.get_node_id.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w16.i) #14
  br label %err

if.end6:                                          ; preds = %if.end.1.i
  %16 = ptrtoint ptr %w16.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %w16.i, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #14
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w16.i) #14
  %20 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pegasus, align 4
  %call.i41 = call i32 @usb_control_msg_send(ptr noundef %21, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %node_id, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i = icmp slt i32 %call.i41, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.body.i:                                        ; preds = %if.end6
  %msg_enable.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.err_crit_edge, label %do.body2.i

do.body.i.err_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_registers.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_ethernet_addr, %if.then7.i)) #14
          to label %err [label %if.then7.i], !srcloc !318

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %24 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_registers.__UNIQUE_ID_ddebug357, ptr noundef %25, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call.i41) #14
  br label %err

if.end12:                                         ; preds = %if.end6.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %net = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %26 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %node_id, i32 noundef 6) #14
  br label %cleanup

err:                                              ; preds = %if.then7.i, %do.body2.i, %do.body.i.err_crit_edge, %get_node_id.exit.thread, %if.then.err_crit_edge
  %net14 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %28 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net14, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %30 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %addr.i, align 1
  %33 = and i8 %32, -4
  %34 = or i8 %33, 2
  store i8 %34, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %29, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 55
  %35 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %err.cleanup_crit_edge, label %do.body18

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body18:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ethernet_addr.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_ethernet_addr, %if.then23)) #14
          to label %cleanup [label %if.then23], !srcloc !318

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %net14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_ethernet_addr.__UNIQUE_ID_ddebug361, ptr noundef %39, ptr noundef nonnull @.str.118) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body18, %err.cleanup_crit_edge, %if.end12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %node_id) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_pegasus_II(ptr noundef %pegasus) unnamed_addr #5 align 64 {
entry:
  %data.addr.i148 = alloca i8, align 1
  %data.addr.i137 = alloca i8, align 1
  %data.addr.i126 = alloca i8, align 1
  %data.addr.i115 = alloca i8, align 1
  %data.addr.i104 = alloca i8, align 1
  %data.addr.i92 = alloca i8, align 1
  %data.addr.i81 = alloca i8, align 1
  %data.addr.i70 = alloca i8, align 1
  %data.addr.i59 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #14
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -91, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %1 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data.addr.i, align 1
  %2 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pegasus, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 29, ptr noundef nonnull %data.addr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.set_register.exit_crit_edge

entry.set_register.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_register.exit_crit_edge, label %do.body3.i

do.body.i.set_register.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i)) #14
          to label %set_register.exit [label %if.then8.i], !srcloc !318

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %set_register.exit

set_register.exit:                                ; preds = %if.then8.i, %do.body3.i, %do.body.i.set_register.exit_crit_edge, %entry.set_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i59)
  %8 = ptrtoint ptr %data.addr.i59 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %data.addr.i59, align 1
  %9 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pegasus, align 4
  %call.i60 = call i32 @usb_control_msg_send(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 123, ptr noundef nonnull %data.addr.i59, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %do.body.i65, label %set_register.exit.set_register.exit69_crit_edge

set_register.exit.set_register.exit69_crit_edge:  ; preds = %set_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit69

do.body.i65:                                      ; preds = %set_register.exit
  %msg_enable.i62 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %11 = ptrtoint ptr %msg_enable.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i62, align 4
  %and.i63 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %do.body.i65.set_register.exit69_crit_edge, label %do.body3.i66

do.body.i65.set_register.exit69_crit_edge:        ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit69

do.body3.i66:                                     ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i68)) #14
          to label %set_register.exit69 [label %if.then8.i68], !srcloc !318

if.then8.i68:                                     ; preds = %do.body3.i66
  call void @__sanitizer_cov_trace_pc() #16
  %net.i67 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %13 = ptrtoint ptr %net.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i60) #14
  br label %set_register.exit69

set_register.exit69:                              ; preds = %if.then8.i68, %do.body3.i66, %do.body.i65.set_register.exit69_crit_edge, %set_register.exit.set_register.exit69_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i59)
  call void @msleep(i32 noundef 100) #14
  %features = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 5
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features, align 4
  %and = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %set_register.exit69.if.else_crit_edge, label %land.lhs.true

set_register.exit69.if.else_crit_edge:            ; preds = %set_register.exit69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %set_register.exit69
  %17 = load i8, ptr @mii_mode, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i70)
  %18 = ptrtoint ptr %data.addr.i70 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %data.addr.i70, align 1
  %19 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pegasus, align 4
  %call.i71 = call i32 @usb_control_msg_send(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 123, ptr noundef nonnull %data.addr.i70, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %do.body.i76, label %if.then.set_register.exit80_crit_edge

if.then.set_register.exit80_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit80

do.body.i76:                                      ; preds = %if.then
  %msg_enable.i73 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %21 = ptrtoint ptr %msg_enable.i73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i73, align 4
  %and.i74 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %do.body.i76.set_register.exit80_crit_edge, label %do.body3.i77

do.body.i76.set_register.exit80_crit_edge:        ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit80

do.body3.i77:                                     ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i79)) #14
          to label %set_register.exit80 [label %if.then8.i79], !srcloc !318

if.then8.i79:                                     ; preds = %do.body3.i77
  call void @__sanitizer_cov_trace_pc() #16
  %net.i78 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %23 = ptrtoint ptr %net.i78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i78, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i71) #14
  br label %set_register.exit80

set_register.exit80:                              ; preds = %if.then8.i79, %do.body3.i77, %do.body.i76.set_register.exit80_crit_edge, %if.then.set_register.exit80_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i70)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %set_register.exit69.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i81)
  %25 = ptrtoint ptr %data.addr.i81 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %data.addr.i81, align 1
  %26 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pegasus, align 4
  %call.i82 = call i32 @usb_control_msg_send(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 123, ptr noundef nonnull %data.addr.i81, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %do.body.i87, label %if.else.set_register.exit91_crit_edge

if.else.set_register.exit91_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit91

do.body.i87:                                      ; preds = %if.else
  %msg_enable.i84 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %28 = ptrtoint ptr %msg_enable.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable.i84, align 4
  %and.i85 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %do.body.i87.set_register.exit91_crit_edge, label %do.body3.i88

do.body.i87.set_register.exit91_crit_edge:        ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit91

do.body3.i88:                                     ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i90)) #14
          to label %set_register.exit91 [label %if.then8.i90], !srcloc !318

if.then8.i90:                                     ; preds = %do.body3.i88
  call void @__sanitizer_cov_trace_pc() #16
  %net.i89 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %30 = ptrtoint ptr %net.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i89, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %31, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i82) #14
  br label %set_register.exit91

set_register.exit91:                              ; preds = %if.then8.i90, %do.body3.i88, %do.body.i87.set_register.exit91_crit_edge, %if.else.set_register.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i81)
  br label %if.end

if.end:                                           ; preds = %set_register.exit91, %set_register.exit80
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i92)
  %34 = ptrtoint ptr %data.addr.i92 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %data.addr.i92, align 1
  %35 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pegasus, align 4
  %conv.i = zext i8 %33 to i16
  %call.i93 = call i32 @usb_control_msg_send(ptr noundef %36, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 131, ptr noundef nonnull %data.addr.i92, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %do.body.i98, label %if.end.set_register.exit102_crit_edge

if.end.set_register.exit102_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit102

do.body.i98:                                      ; preds = %if.end
  %msg_enable.i95 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %37 = ptrtoint ptr %msg_enable.i95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i95, align 4
  %and.i96 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %do.body.i98.set_register.exit102_crit_edge, label %do.body3.i99

do.body.i98.set_register.exit102_crit_edge:       ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit102

do.body3.i99:                                     ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i101)) #14
          to label %set_register.exit102 [label %if.then8.i101], !srcloc !318

if.then8.i101:                                    ; preds = %do.body3.i99
  call void @__sanitizer_cov_trace_pc() #16
  %net.i100 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %39 = ptrtoint ptr %net.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i100, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %40, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i93) #14
  br label %set_register.exit102

set_register.exit102:                             ; preds = %if.then8.i101, %do.body3.i99, %do.body.i98.set_register.exit102_crit_edge, %if.end.set_register.exit102_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i92)
  %41 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pegasus, align 4
  %call.i103 = call i32 @usb_control_msg_recv(ptr noundef %42, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 131, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp = icmp slt i32 %call.i103, 0
  br i1 %cmp, label %do.body, label %if.end8

if.end8:                                          ; preds = %set_register.exit102
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %44)
  %cmp9 = icmp eq i8 %44, -91
  %spec.select = select i1 %cmp9, i32 34067, i32 0
  %45 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 16
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i104)
  %47 = ptrtoint ptr %data.addr.i104 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -64, ptr %data.addr.i104, align 1
  %48 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pegasus, align 4
  %call.i105 = call i32 @usb_control_msg_send(ptr noundef %49, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 192, i16 noundef zeroext 128, ptr noundef nonnull %data.addr.i104, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %do.body.i110, label %if.end8.set_register.exit114_crit_edge

if.end8.set_register.exit114_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit114

do.body.i110:                                     ; preds = %if.end8
  %msg_enable.i107 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %50 = ptrtoint ptr %msg_enable.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable.i107, align 4
  %and.i108 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  br i1 %tobool.not.i109, label %do.body.i110.set_register.exit114_crit_edge, label %do.body3.i111

do.body.i110.set_register.exit114_crit_edge:      ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit114

do.body3.i111:                                    ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i113)) #14
          to label %set_register.exit114 [label %if.then8.i113], !srcloc !318

if.then8.i113:                                    ; preds = %do.body3.i111
  call void @__sanitizer_cov_trace_pc() #16
  %net.i112 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %52 = ptrtoint ptr %net.i112 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net.i112, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %53, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i105) #14
  br label %set_register.exit114

set_register.exit114:                             ; preds = %if.then8.i113, %do.body3.i111, %do.body.i110.set_register.exit114_crit_edge, %if.end8.set_register.exit114_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i104)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i115)
  %54 = ptrtoint ptr %data.addr.i115 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %data.addr.i115, align 1
  %55 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pegasus, align 4
  %call.i116 = call i32 @usb_control_msg_send(ptr noundef %56, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 255, i16 noundef zeroext 131, ptr noundef nonnull %data.addr.i115, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp.i117 = icmp slt i32 %call.i116, 0
  br i1 %cmp.i117, label %do.body.i121, label %set_register.exit114.set_register.exit125_crit_edge

set_register.exit114.set_register.exit125_crit_edge: ; preds = %set_register.exit114
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit125

do.body.i121:                                     ; preds = %set_register.exit114
  %msg_enable.i118 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %57 = ptrtoint ptr %msg_enable.i118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable.i118, align 4
  %and.i119 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %do.body.i121.set_register.exit125_crit_edge, label %do.body3.i122

do.body.i121.set_register.exit125_crit_edge:      ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit125

do.body3.i122:                                    ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i124)) #14
          to label %set_register.exit125 [label %if.then8.i124], !srcloc !318

if.then8.i124:                                    ; preds = %do.body3.i122
  call void @__sanitizer_cov_trace_pc() #16
  %net.i123 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %59 = ptrtoint ptr %net.i123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i123, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %60, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i116) #14
  br label %set_register.exit125

set_register.exit125:                             ; preds = %if.then8.i124, %do.body3.i122, %do.body.i121.set_register.exit125_crit_edge, %set_register.exit114.set_register.exit125_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i115)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i126)
  %61 = ptrtoint ptr %data.addr.i126 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %data.addr.i126, align 1
  %62 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pegasus, align 4
  %call.i127 = call i32 @usb_control_msg_send(ptr noundef %63, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 132, ptr noundef nonnull %data.addr.i126, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp.i128 = icmp slt i32 %call.i127, 0
  br i1 %cmp.i128, label %do.body.i132, label %set_register.exit125.set_register.exit136_crit_edge

set_register.exit125.set_register.exit136_crit_edge: ; preds = %set_register.exit125
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit136

do.body.i132:                                     ; preds = %set_register.exit125
  %msg_enable.i129 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %64 = ptrtoint ptr %msg_enable.i129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable.i129, align 4
  %and.i130 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %do.body.i132.set_register.exit136_crit_edge, label %do.body3.i133

do.body.i132.set_register.exit136_crit_edge:      ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit136

do.body3.i133:                                    ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i135)) #14
          to label %set_register.exit136 [label %if.then8.i135], !srcloc !318

if.then8.i135:                                    ; preds = %do.body3.i133
  call void @__sanitizer_cov_trace_pc() #16
  %net.i134 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %66 = ptrtoint ptr %net.i134 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %net.i134, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %67, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i127) #14
  br label %set_register.exit136

set_register.exit136:                             ; preds = %if.then8.i135, %do.body3.i133, %do.body.i132.set_register.exit136_crit_edge, %set_register.exit125.set_register.exit136_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i126)
  %68 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %features, align 4
  %and19 = and i32 %69, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %set_register.exit136.if.else26_crit_edge, label %land.lhs.true21

set_register.exit136.if.else26_crit_edge:         ; preds = %set_register.exit136
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else26

land.lhs.true21:                                  ; preds = %set_register.exit136
  %70 = load i8, ptr @mii_mode, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool22.not = icmp eq i8 %70, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.else26_crit_edge, label %if.then24

land.lhs.true21.if.else26_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else26

if.then24:                                        ; preds = %land.lhs.true21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i137)
  %71 = ptrtoint ptr %data.addr.i137 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 6, ptr %data.addr.i137, align 1
  %72 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pegasus, align 4
  %call.i138 = call i32 @usb_control_msg_send(ptr noundef %73, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 6, i16 noundef zeroext 129, ptr noundef nonnull %data.addr.i137, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i139 = icmp slt i32 %call.i138, 0
  br i1 %cmp.i139, label %do.body.i143, label %if.then24.set_register.exit147_crit_edge

if.then24.set_register.exit147_crit_edge:         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit147

do.body.i143:                                     ; preds = %if.then24
  %msg_enable.i140 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %74 = ptrtoint ptr %msg_enable.i140 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable.i140, align 4
  %and.i141 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %do.body.i143.set_register.exit147_crit_edge, label %do.body3.i144

do.body.i143.set_register.exit147_crit_edge:      ; preds = %do.body.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit147

do.body3.i144:                                    ; preds = %do.body.i143
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i146)) #14
          to label %set_register.exit147 [label %if.then8.i146], !srcloc !318

if.then8.i146:                                    ; preds = %do.body3.i144
  call void @__sanitizer_cov_trace_pc() #16
  %net.i145 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %76 = ptrtoint ptr %net.i145 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net.i145, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %77, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i138) #14
  br label %set_register.exit147

set_register.exit147:                             ; preds = %if.then8.i146, %do.body3.i144, %do.body.i143.set_register.exit147_crit_edge, %if.then24.set_register.exit147_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i137)
  br label %cleanup

if.else26:                                        ; preds = %land.lhs.true21.if.else26_crit_edge, %set_register.exit136.if.else26_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i148)
  %78 = ptrtoint ptr %data.addr.i148 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 2, ptr %data.addr.i148, align 1
  %79 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pegasus, align 4
  %call.i149 = call i32 @usb_control_msg_send(ptr noundef %80, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 129, ptr noundef nonnull %data.addr.i148, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp.i150 = icmp slt i32 %call.i149, 0
  br i1 %cmp.i150, label %do.body.i154, label %if.else26.set_register.exit158_crit_edge

if.else26.set_register.exit158_crit_edge:         ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit158

do.body.i154:                                     ; preds = %if.else26
  %msg_enable.i151 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %81 = ptrtoint ptr %msg_enable.i151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable.i151, align 4
  %and.i152 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool.not.i153 = icmp eq i32 %and.i152, 0
  br i1 %tobool.not.i153, label %do.body.i154.set_register.exit158_crit_edge, label %do.body3.i155

do.body.i154.set_register.exit158_crit_edge:      ; preds = %do.body.i154
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit158

do.body3.i155:                                    ; preds = %do.body.i154
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then8.i157)) #14
          to label %set_register.exit158 [label %if.then8.i157], !srcloc !318

if.then8.i157:                                    ; preds = %do.body3.i155
  call void @__sanitizer_cov_trace_pc() #16
  %net.i156 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %83 = ptrtoint ptr %net.i156 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net.i156, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %84, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i149) #14
  br label %set_register.exit158

set_register.exit158:                             ; preds = %if.then8.i157, %do.body3.i155, %do.body.i154.set_register.exit158_crit_edge, %if.else26.set_register.exit158_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i148)
  br label %cleanup

do.body:                                          ; preds = %set_register.exit102
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable, align 4
  %and29 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body.cleanup_crit_edge, label %do.body32

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_pegasus_II.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_pegasus_II, %if.then37)) #14
          to label %cleanup [label %if.then37], !srcloc !318

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %87 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @setup_pegasus_II.__UNIQUE_ID_ddebug375, ptr noundef %88, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.119) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body32, %do.body.cleanup_crit_edge, %set_register.exit158, %set_register.exit147
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %net2 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i281.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i281.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %15 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %7, label %do.body53 [
    i32 0, label %if.end5.sw.epilog_crit_edge
    i32 -62, label %do.body
    i32 -32, label %do.body20
    i32 -2, label %if.end5.do.body29_crit_edge
    i32 -104, label %if.end5.do.body29_crit_edge290
    i32 -108, label %if.end5.do.body29_crit_edge291
  ]

if.end5.do.body29_crit_edge291:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

if.end5.do.body29_crit_edge290:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

if.end5.do.body29_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body29

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %if.end5
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end17_crit_edge, label %do.body8

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_bulk_callback.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_bulk_callback, %if.then13)) #14
          to label %do.end17 [label %if.then13], !srcloc !318

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @read_bulk_callback.__UNIQUE_ID_ddebug364, ptr noundef %9, ptr noundef nonnull @.str.26) #14
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8, %do.body.do.end17_crit_edge
  %flags = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and18 = and i32 %19, -9
  store i32 %and18, ptr %flags, align 4
  br label %sw.epilog

do.body20:                                        ; preds = %if.end5
  %msg_enable21 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable21, align 4
  %and22 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.cleanup_crit_edge, label %if.then24

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.27) #17
  br label %cleanup

do.body29:                                        ; preds = %if.end5.do.body29_crit_edge, %if.end5.do.body29_crit_edge290, %if.end5.do.body29_crit_edge291
  %msg_enable30 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.cleanup_crit_edge, label %do.body34

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_bulk_callback.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_bulk_callback, %if.then46)) #14
          to label %cleanup [label %if.then46], !srcloc !318

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @read_bulk_callback.__UNIQUE_ID_ddebug365, ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %7) #14
  br label %cleanup

do.body53:                                        ; preds = %if.end5
  %msg_enable54 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %msg_enable54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable54, align 4
  %and55 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.goon_crit_edge, label %do.body58

do.body53.goon_crit_edge:                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %goon

do.body58:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_bulk_callback.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_bulk_callback, %if.then70)) #14
          to label %goon [label %if.then70], !srcloc !318

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @read_bulk_callback.__UNIQUE_ID_ddebug366, ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %7) #14
  br label %goon

sw.epilog:                                        ; preds = %do.end17, %if.end5.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp slt i32 %5, 4
  br i1 %cmp, label %sw.epilog.goon_crit_edge, label %if.end78

sw.epilog.goon_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %goon

if.end78:                                         ; preds = %sw.epilog
  %sub = add nsw i32 %5, -2
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %27 to i32
  %and79 = and i32 %conv, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end124, label %do.body82

do.body82:                                        ; preds = %if.end78
  %msg_enable83 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %msg_enable83 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable83, align 4
  %and84 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body82.do.end105_crit_edge, label %do.body87

do.body82.do.end105_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end105

do.body87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_bulk_callback.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_bulk_callback, %if.then99)) #14
          to label %do.end105 [label %if.then99], !srcloc !318

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @read_bulk_callback.__UNIQUE_ID_ddebug367, ptr noundef %9, ptr noundef nonnull @.str.30, i32 noundef %conv) #14
  br label %do.end105

do.end105:                                        ; preds = %if.then99, %do.body87, %do.body82.do.end105_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 4
  %30 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and106 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.end105.if.end111_crit_edge, label %if.then108

do.end105.if.end111_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then108:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #16
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 10
  %32 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_length_errors, align 8
  %inc110 = add i32 %33, 1
  store i32 %inc110, ptr %rx_length_errors, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %do.end105.if.end111_crit_edge
  %and112 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end111.if.end117_crit_edge, label %if.then114

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 12
  %34 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_crc_errors, align 8
  %inc116 = add i32 %35, 1
  store i32 %inc116, ptr %rx_crc_errors, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end111.if.end117_crit_edge
  %and118 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.goon_crit_edge, label %if.then120

if.end117.goon_crit_edge:                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %goon

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 13
  %36 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_frame_errors, align 4
  %inc122 = add i32 %37, 1
  store i32 %inc122, ptr %rx_frame_errors, align 4
  br label %goon

if.end124:                                        ; preds = %if.end78
  %chip = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34067, i32 %39)
  %cmp125 = icmp eq i32 %39, 34067
  br i1 %cmp125, label %if.then127, label %if.else

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transfer_buffer, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = and i32 %43, -15794176
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %rx_skb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 2
  store ptr %add.ptr, ptr %data, align 4
  br label %if.end148

if.else:                                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %sub133 = add nsw i32 %5, -3
  %arrayidx134 = getelementptr i8, ptr %3, i32 %sub133
  %50 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx134, align 1
  %conv135 = zext i8 %51 to i32
  %shl = shl nuw nsw i32 %conv135, 8
  %sub137 = add nsw i32 %5, -4
  %arrayidx138 = getelementptr i8, ptr %3, i32 %sub137
  %52 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %53 to i32
  %shl.masked = and i32 %shl, 3840
  %and143 = add nuw nsw i32 %conv139, 65532
  %sub146 = add nuw nsw i32 %and143, %shl.masked
  br label %if.end148

if.end148:                                        ; preds = %if.else, %if.then127
  %pkt_len.0 = phi i32 [ %45, %if.then127 ], [ %sub146, %if.else ]
  %conv149 = and i32 %pkt_len.0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %conv149)
  %cmp150 = icmp ugt i32 %conv149, 1536
  br i1 %cmp150, label %if.end148.goon_crit_edge, label %if.end153

if.end148.goon_crit_edge:                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #16
  br label %goon

if.end153:                                        ; preds = %if.end148
  %rx_skb154 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %rx_skb154 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_skb154, align 4
  %call156 = tail call ptr @skb_put(ptr noundef %55, i32 noundef %conv149) #14
  %56 = ptrtoint ptr %rx_skb154 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_skb154, align 4
  %call158 = tail call zeroext i16 @eth_type_trans(ptr noundef %57, ptr noundef %9) #14
  %58 = ptrtoint ptr %rx_skb154 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_skb154, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 15, i32 0, i32 18
  %60 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %call158, ptr %protocol, align 8
  %61 = load ptr, ptr %rx_skb154, align 4
  %call161 = tail call i32 @netif_rx(ptr noundef %61) #14
  %stats162 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36
  %62 = ptrtoint ptr %stats162 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stats162, align 8
  %inc163 = add i32 %63, 1
  store i32 %inc163, ptr %stats162, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 2
  %64 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_bytes, align 8
  %add166 = add i32 %65, %conv149
  store i32 %add166, ptr %rx_bytes, align 8
  %flags167 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %flags167 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags167, align 4
  %and168 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end171:                                        ; preds = %if.end153
  %68 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net2, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %69, i32 noundef 1538, i32 noundef 2592) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %__netdev_alloc_skb_ip_align.exit.thread, label %__netdev_alloc_skb_ip_align.exit

__netdev_alloc_skb_ip_align.exit.thread:          ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %rx_skb154 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rx_skb154, align 4
  br label %tl_sched

__netdev_alloc_skb_ip_align.exit:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %73 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %74, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %75 = ptrtoint ptr %rx_skb154 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %rx_skb154, align 4
  br label %goon

goon:                                             ; preds = %__netdev_alloc_skb_ip_align.exit, %if.end148.goon_crit_edge, %if.then120, %if.end117.goon_crit_edge, %sw.epilog.goon_crit_edge, %if.then70, %do.body58, %do.body53.goon_crit_edge
  %rx_urb = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 12
  %76 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_urb, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %shl.i = shl i32 %81, 8
  %or182 = or i32 %shl.i, -1073708928
  %rx_skb183 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 15
  %82 = ptrtoint ptr %rx_skb183 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_skb183, align 4
  %data184 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 19
  %84 = ptrtoint ptr %data184 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data184, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 8
  %86 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %79, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 10
  %87 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or182, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 14
  %88 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 19
  %89 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 28
  %90 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %77, i32 0, i32 27
  %91 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %1, ptr %context4.i, align 4
  %92 = load ptr, ptr %rx_urb, align 4
  %call186 = tail call i32 @usb_submit_urb(ptr noundef %92, i32 noundef 2592) #14
  %93 = zext i32 %call186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call186, label %if.then193 [
    i32 -19, label %if.then189
    i32 0, label %if.else196
  ]

if.then189:                                       ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %net2, align 4
  tail call void @netif_device_detach(ptr noundef %95) #14
  br label %cleanup

if.then193:                                       ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #16
  %flags194 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %96 = ptrtoint ptr %flags194 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags194, align 4
  %or195 = or i32 %97, 128
  store i32 %or195, ptr %flags194, align 4
  br label %tl_sched

if.else196:                                       ; preds = %goon
  call void @__sanitizer_cov_trace_pc() #16
  %flags197 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 4
  %98 = ptrtoint ptr %flags197 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags197, align 4
  %and198 = and i32 %99, -129
  store i32 %and198, ptr %flags197, align 4
  br label %cleanup

tl_sched:                                         ; preds = %if.then193, %__netdev_alloc_skb_ip_align.exit.thread
  %state.i282 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 10, i32 1
  %call.i283 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i282) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %tobool.not.i284 = icmp eq i32 %call.i283, 0
  br i1 %tobool.not.i284, label %if.then.i285, label %tl_sched.cleanup_crit_edge

tl_sched.cleanup_crit_edge:                       ; preds = %tl_sched
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i285:                                     ; preds = %tl_sched
  call void @__sanitizer_cov_trace_pc() #16
  %rx_tl = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %rx_tl) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i285, %tl_sched.cleanup_crit_edge, %if.else196, %if.then189, %if.end153.cleanup_crit_edge, %if.then46, %do.body34, %do.body29.cleanup_crit_edge, %if.then24, %do.body20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mii_op(ptr nocapture noundef readonly %p, i8 noundef zeroext %phy, i8 noundef zeroext %indx, ptr nocapture noundef %regd, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %data.addr.i73 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %regdi = alloca i16, align 2
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regdi) #14
  %0 = ptrtoint ptr %regdi to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %regdi, align 2, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %phy, ptr %data, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %indx, ptr %3, align 1
  %conv = zext i8 %cmd to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %regd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %regd, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %1, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %12 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %data.addr.i, align 1
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %data.addr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.set_register.exit_crit_edge

if.end.set_register.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body.i:                                        ; preds = %if.end
  %msg_enable.i = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 6
  %15 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_register.exit_crit_edge, label %do.body3.i

do.body.i.set_register.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mii_op, %if.then8.i)) #14
          to label %set_register.exit [label %if.then8.i], !srcloc !318

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 2
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %18, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %set_register.exit

set_register.exit:                                ; preds = %if.then8.i, %do.body3.i, %do.body.i.set_register.exit_crit_edge, %if.end.set_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 4
  %call.i66 = call i32 @usb_control_msg_send(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 37, ptr noundef nonnull %data, i16 noundef zeroext 4, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i67 = icmp slt i32 %call.i66, 0
  br i1 %cmp.i67, label %do.body.i71, label %set_register.exit.set_registers.exit_crit_edge

set_register.exit.set_registers.exit_crit_edge:   ; preds = %set_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body.i71:                                      ; preds = %set_register.exit
  %msg_enable.i68 = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 6
  %21 = ptrtoint ptr %msg_enable.i68 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i68, align 4
  %and.i69 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %do.body.i71.set_registers.exit_crit_edge, label %do.body2.i

do.body.i71.set_registers.exit_crit_edge:         ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body2.i:                                       ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_registers.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mii_op, %if.then7.i)) #14
          to label %set_registers.exit [label %if.then7.i], !srcloc !318

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i72 = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 2
  %23 = ptrtoint ptr %net.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i72, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_registers.__UNIQUE_ID_ddebug357, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call.i66) #14
  br label %set_registers.exit

set_registers.exit:                               ; preds = %if.then7.i, %do.body2.i, %do.body.i71.set_registers.exit_crit_edge, %set_register.exit.set_registers.exit_crit_edge
  %or65 = or i8 %cmd, %indx
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i73)
  %25 = ptrtoint ptr %data.addr.i73 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or65, ptr %data.addr.i73, align 1
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 4
  %conv.i = zext i8 %or65 to i16
  %call.i74 = call i32 @usb_control_msg_send(ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 40, ptr noundef nonnull %data.addr.i73, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %do.body.i79, label %set_registers.exit.set_register.exit83_crit_edge

set_registers.exit.set_register.exit83_crit_edge: ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit83

do.body.i79:                                      ; preds = %set_registers.exit
  %msg_enable.i76 = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 6
  %28 = ptrtoint ptr %msg_enable.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable.i76, align 4
  %and.i77 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %do.body.i79.set_register.exit83_crit_edge, label %do.body3.i80

do.body.i79.set_register.exit83_crit_edge:        ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit83

do.body3.i80:                                     ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mii_op, %if.then8.i82)) #14
          to label %set_register.exit83 [label %if.then8.i82], !srcloc !318

if.then8.i82:                                     ; preds = %do.body3.i80
  call void @__sanitizer_cov_trace_pc() #16
  %net.i81 = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 2
  %30 = ptrtoint ptr %net.i81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %31, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i74) #14
  br label %set_register.exit83

set_register.exit83:                              ; preds = %if.then8.i82, %do.body3.i80, %do.body.i79.set_register.exit83_crit_edge, %set_registers.exit.set_register.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i73)
  br label %for.body

for.cond:                                         ; preds = %if.end14
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.do.body_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %set_register.exit83
  %i.088 = phi i32 [ 0, %set_register.exit83 ], [ %inc, %for.cond.for.body_crit_edge ]
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 4
  %call.i84 = call i32 @usb_control_msg_recv(ptr noundef %33, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef nonnull %data, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp11 = icmp slt i32 %call.i84, 0
  br i1 %cmp11, label %for.body.do.body_crit_edge, label %if.end14

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end14:                                         ; preds = %for.body
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool18.not = icmp sgt i8 %35, -1
  br i1 %tobool18.not, label %for.cond, label %if.end24

if.end24:                                         ; preds = %if.end14
  %and26 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.then28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  %36 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p, align 4
  %call.i85 = call i32 @usb_control_msg_recv(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 38, ptr noundef nonnull %regdi, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp30 = icmp slt i32 %call.i85, 0
  br i1 %cmp30, label %if.then28.do.body_crit_edge, label %if.end33

if.then28.do.body_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end33:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %regdi to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %regdi, align 2
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %41 = ptrtoint ptr %regd to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %regd, align 2
  br label %cleanup

do.body:                                          ; preds = %if.then28.do.body_crit_edge, %for.body.do.body_crit_edge, %for.cond.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i85, %if.then28.do.body_crit_edge ], [ -110, %for.cond.do.body_crit_edge ], [ %call.i84, %for.body.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 6
  %42 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable, align 4
  %and35 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body.cleanup_crit_edge, label %do.body38

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mii_op.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mii_op, %if.then43)) #14
          to label %cleanup [label %if.then43], !srcloc !318

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr inbounds %struct.pegasus, ptr %p, i32 0, i32 2
  %44 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mii_op.__UNIQUE_ID_ddebug359, ptr noundef %45, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body38, %do.body.cleanup_crit_edge, %if.end33, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 0, %if.end24.cleanup_crit_edge ], [ %ret.0, %if.then43 ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0, %do.body38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regdi) #14
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_open(ptr noundef %net) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %rx_skb = getelementptr i8, ptr %net, i32 2508
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  %net1 = getelementptr i8, ptr %net, i32 2312
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef 1538, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.thread193, label %if.end

if.end.thread193:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rx_skb, align 4
  br label %exit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %8, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %rx_skb, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %call.i177 = tail call i32 @usb_control_msg_send(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %11, i16 noundef zeroext 6, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp.i = icmp slt i32 %call.i177, 0
  br i1 %cmp.i, label %do.body.i, label %if.end6.set_registers.exit_crit_edge

if.end6.set_registers.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body.i:                                        ; preds = %if.end6
  %msg_enable.i = getelementptr i8, ptr %net, i32 2356
  %14 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i178 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i178, label %do.body.i.set_registers.exit_crit_edge, label %do.body2.i

do.body.i.set_registers.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_registers.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_open, %if.then7.i)) #14
          to label %set_registers.exit [label %if.then7.i], !srcloc !318

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr i8, ptr %net, i32 2312
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_registers.__UNIQUE_ID_ddebug357, ptr noundef %17, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call.i177) #14
  br label %set_registers.exit

set_registers.exit:                               ; preds = %if.then7.i, %do.body2.i, %do.body.i.set_registers.exit_crit_edge, %if.end6.set_registers.exit_crit_edge
  %rx_urb = getelementptr i8, ptr %net, i32 2496
  %18 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_urb, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %shl.i = shl i32 %23, 8
  %or10 = or i32 %shl.i, -1073708928
  %24 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or10, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1536, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 28
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @read_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %33 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %34 = load ptr, ptr %rx_urb, align 4
  %call13 = tail call i32 @usb_submit_urb(ptr noundef %34, i32 noundef 3264) #14
  %35 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call13, label %set_registers.exit.do.body_crit_edge [
    i32 0, label %if.end32
    i32 -19, label %if.then17
  ]

set_registers.exit.do.body_crit_edge:             ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then17:                                        ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  %net18 = getelementptr i8, ptr %net, i32 2312
  %36 = ptrtoint ptr %net18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net18, align 4
  tail call void @netif_device_detach(ptr noundef %37) #14
  br label %do.body

do.body:                                          ; preds = %if.then17, %set_registers.exit.do.body_crit_edge
  %msg_enable = getelementptr i8, ptr %net, i32 2356
  %38 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable, align 4
  %and = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.body.exit_crit_edge, label %do.body22

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

do.body22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_open.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_open, %if.then27)) #14
          to label %exit [label %if.then27], !srcloc !318

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pegasus_open.__UNIQUE_ID_ddebug370, ptr noundef %net, ptr noundef nonnull @.str.37, i32 noundef %call13) #14
  br label %exit

if.end32:                                         ; preds = %set_registers.exit
  %intr_urb = getelementptr i8, ptr %net, i32 2504
  %40 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intr_urb, align 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i179 = shl i32 %45, 8
  %or37 = or i32 %shl.i179, 1073840256
  %intr_buff = getelementptr i8, ptr %net, i32 2516
  %intr_interval = getelementptr i8, ptr %net, i32 2368
  %46 = ptrtoint ptr %intr_interval to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %intr_interval, align 4
  %dev1.i181 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 8
  %48 = ptrtoint ptr %dev1.i181 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %43, ptr %dev1.i181, align 4
  %pipe2.i182 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 10
  %49 = ptrtoint ptr %pipe2.i182 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or37, ptr %pipe2.i182, align 4
  %transfer_buffer3.i183 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 14
  %50 = ptrtoint ptr %transfer_buffer3.i183 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %intr_buff, ptr %transfer_buffer3.i183, align 4
  %transfer_buffer_length.i184 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 19
  %51 = ptrtoint ptr %transfer_buffer_length.i184 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %transfer_buffer_length.i184, align 4
  %complete.i185 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 28
  %52 = ptrtoint ptr %complete.i185 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @intr_callback, ptr %complete.i185, align 4
  %context4.i186 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 27
  %53 = ptrtoint ptr %context4.i186 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i, ptr %context4.i186, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 4
  %54 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.i187 = icmp eq i32 %55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp6.i = icmp ugt i32 %55, 4
  %or.cond.i = or i1 %cmp.i187, %cmp6.i
  br i1 %or.cond.i, label %if.then.i189, label %if.end32.usb_fill_int_urb.exit_crit_edge

if.end32.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %usb_fill_int_urb.exit

if.then.i189:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %56 = tail call i32 @llvm.smax.i32(i32 %47, i32 1) #14
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 16) #14
  %sub.i = add nsw i32 %57, -1
  %shl.i188 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i189, %if.end32.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i188, %if.then.i189 ], [ %47, %if.end32.usb_fill_int_urb.exit_crit_edge ]
  %58 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 25
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %interval.sink.i, ptr %58, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 23
  %60 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %start_frame.i, align 4
  %61 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %intr_urb, align 4
  %call39 = tail call i32 @usb_submit_urb(ptr noundef %62, i32 noundef 3264) #14
  %63 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call39, label %usb_fill_int_urb.exit.do.body46_crit_edge [
    i32 0, label %if.end71
    i32 -19, label %if.then43
  ]

usb_fill_int_urb.exit.do.body46_crit_edge:        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body46

if.then43:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #16
  %net44 = getelementptr i8, ptr %net, i32 2312
  %64 = ptrtoint ptr %net44 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net44, align 4
  tail call void @netif_device_detach(ptr noundef %65) #14
  br label %do.body46

do.body46:                                        ; preds = %if.then43, %usb_fill_int_urb.exit.do.body46_crit_edge
  %msg_enable47 = getelementptr i8, ptr %net, i32 2356
  %66 = ptrtoint ptr %msg_enable47 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable47, align 4
  %and48 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body46.do.end69_crit_edge, label %do.body51

do.body46.do.end69_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end69

do.body51:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_open.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_open, %if.then63)) #14
          to label %do.end69 [label %if.then63], !srcloc !318

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pegasus_open.__UNIQUE_ID_ddebug371, ptr noundef %net, ptr noundef nonnull @.str.38, i32 noundef %call39) #14
  br label %do.end69

do.end69:                                         ; preds = %if.then63, %do.body51, %do.body46.do.end69_crit_edge
  %68 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %69) #14
  br label %exit

if.end71:                                         ; preds = %usb_fill_int_urb.exit
  %call73 = tail call fastcc i32 @enable_net_traffic(ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.body76, label %if.end102

do.body76:                                        ; preds = %if.end71
  %msg_enable77 = getelementptr i8, ptr %net, i32 2356
  %70 = ptrtoint ptr %msg_enable77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable77, align 4
  %and78 = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %do.body76.do.end99_crit_edge, label %do.body81

do.body76.do.end99_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end99

do.body81:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_open.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_open, %if.then93)) #14
          to label %do.end99 [label %if.then93], !srcloc !318

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pegasus_open.__UNIQUE_ID_ddebug372, ptr noundef %net, ptr noundef nonnull @.str.39, i32 noundef %call73) #14
  br label %do.end99

do.end99:                                         ; preds = %if.then93, %do.body81, %do.body76.do.end99_crit_edge
  %72 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %73) #14
  %74 = ptrtoint ptr %intr_urb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intr_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %75) #14
  br label %exit

if.end102:                                        ; preds = %if.end71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %76 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %tmp.i, align 2, !annotation !317
  %phy.i = getelementptr i8, ptr %net, i32 4064
  %77 = ptrtoint ptr %phy.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %phy.i, align 4
  %call.i.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %78, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i191 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i191, label %if.end.i, label %if.end102.set_carrier.exit_crit_edge

if.end102.set_carrier.exit_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_carrier.exit

if.end.i:                                         ; preds = %if.end102
  %79 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %tmp.i, align 2
  %81 = and i16 %80, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool2.not.i = icmp eq i16 %81, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_on(ptr noundef %net) #14
  br label %set_carrier.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_carrier_off(ptr noundef %net) #14
  br label %set_carrier.exit

set_carrier.exit:                                 ; preds = %if.else.i, %if.then3.i, %if.end102.set_carrier.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %82 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %83, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %msg_enable104 = getelementptr i8, ptr %net, i32 2356
  %84 = ptrtoint ptr %msg_enable104 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable104, align 4
  %and105 = and i32 %85, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %set_carrier.exit.exit_crit_edge, label %do.body108

set_carrier.exit.exit_crit_edge:                  ; preds = %set_carrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

do.body108:                                       ; preds = %set_carrier.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_open.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_open, %if.then120)) #14
          to label %exit [label %if.then120], !srcloc !318

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pegasus_open.__UNIQUE_ID_ddebug373, ptr noundef %net, ptr noundef nonnull @.str.40) #14
  br label %exit

exit:                                             ; preds = %if.then120, %do.body108, %set_carrier.exit.exit_crit_edge, %do.end99, %do.end69, %if.then27, %do.body22, %do.body.exit_crit_edge, %if.end.thread193
  %res.0 = phi i32 [ %call13, %if.then27 ], [ %call13, %do.body.exit_crit_edge ], [ %call39, %do.end69 ], [ -5, %do.end99 ], [ 0, %if.then120 ], [ 0, %set_carrier.exit.exit_crit_edge ], [ -12, %if.end.thread193 ], [ %call13, %do.body22 ], [ 0, %do.body108 ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_close(ptr noundef %net) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %flags = getelementptr i8, ptr %net, i32 2348
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %tmp.i, align 2
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = call i32 @usb_control_msg_send(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then.disable_net_traffic.exit_crit_edge

if.then.disable_net_traffic.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_net_traffic.exit

do.body.i.i:                                      ; preds = %if.then
  %msg_enable.i.i = getelementptr i8, ptr %net, i32 2356
  %7 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.disable_net_traffic.exit_crit_edge, label %do.body2.i.i

do.body.i.i.disable_net_traffic.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %disable_net_traffic.exit

do.body2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_registers.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_close, %if.then7.i.i)) #14
          to label %disable_net_traffic.exit [label %if.then7.i.i], !srcloc !318

if.then7.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i.i = getelementptr i8, ptr %net, i32 2312
  %9 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_registers.__UNIQUE_ID_ddebug357, ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #14
  br label %disable_net_traffic.exit

disable_net_traffic.exit:                         ; preds = %if.then7.i.i, %do.body2.i.i, %do.body.i.i.disable_net_traffic.exit_crit_edge, %if.then.disable_net_traffic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  br label %if.end

if.end:                                           ; preds = %disable_net_traffic.exit, %entry.if.end_crit_edge
  %rx_tl = getelementptr i8, ptr %net, i32 2372
  call void @tasklet_kill(ptr noundef %rx_tl) #14
  %intr_urb.i = getelementptr i8, ptr %net, i32 2504
  %11 = ptrtoint ptr %intr_urb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intr_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %12) #14
  %tx_urb.i = getelementptr i8, ptr %net, i32 2500
  %13 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %14) #14
  %rx_urb.i = getelementptr i8, ptr %net, i32 2496
  %15 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_urb.i, align 4
  call void @usb_kill_urb(ptr noundef %16) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_start_xmit(ptr noundef %skb, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add4 = add i32 %1, 3
  %cond = select i1 %tobool.not, i32 %add4, i32 %add
  %conv = trunc i32 %1 to i16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %tx_buff = getelementptr i8, ptr %net, i32 2524
  %5 = ptrtoint ptr %tx_buff to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tx_buff, align 4
  %add.ptr = getelementptr i8, ptr %net, i32 2526
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %9, i32 %7)
  %tx_urb = getelementptr i8, ptr %net, i32 2500
  %11 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_urb, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 8
  %or = or i32 %shl.i, -1073676288
  %dev1.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tx_buff, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %23 = load ptr, ptr %tx_urb, align 4
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %23, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %net, i32 2356
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.do.end_crit_edge, label %if.then18

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net, ptr noundef nonnull @.str.45, i32 noundef %call14) #17
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body.do.end_crit_edge
  %26 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call14, label %sw.default [
    i32 -32, label %do.end.if.end25_crit_edge
    i32 -19, label %do.end.sw.bb_crit_edge
    i32 -1, label %do.end.sw.bb_crit_edge51
  ]

do.end.sw.bb_crit_edge51:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge51
  %net19 = getelementptr i8, ptr %net, i32 2312
  %27 = ptrtoint ptr %net19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net19, align 4
  tail call void @netif_device_detach(ptr noundef %28) #14
  br label %if.end25

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %29 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %tx_errors, align 4
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i50 = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i50) #14
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 1
  %33 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_packets, align 4
  %inc21 = add i32 %34, 1
  store i32 %inc21, ptr %tx_packets, align 4
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes, align 4
  %add24 = add i32 %38, %36
  store i32 %add24, ptr %tx_bytes, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %sw.default, %sw.bb, %do.end.if.end25_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %net, i32 4062
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %4 = or i8 %3, 4
  store i8 %4, ptr %arrayidx, align 2
  %msg_enable = getelementptr i8, ptr %net, i32 2356
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end49_crit_edge, label %if.then4

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %net, ptr noundef nonnull @.str.50) #17
  br label %if.end49

if.else:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %and7 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp, i1 %tobool8.not, i1 false
  %eth_regs38 = getelementptr i8, ptr %net, i32 4060
  %9 = ptrtoint ptr %eth_regs38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eth_regs38, align 4
  br i1 %or.cond, label %if.else37, label %if.then9

if.then9:                                         ; preds = %if.else
  %11 = or i8 %10, 2
  %12 = ptrtoint ptr %eth_regs38 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %eth_regs38, align 4
  %arrayidx16 = getelementptr i8, ptr %net, i32 4062
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx16, align 2
  %15 = and i8 %14, -5
  store i8 %15, ptr %arrayidx16, align 2
  %msg_enable21 = getelementptr i8, ptr %net, i32 2356
  %16 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable21, align 4
  %and22 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then9.if.end49_crit_edge, label %do.body25

if.then9.if.end49_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.body25:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pegasus_set_multicast.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_set_multicast, %if.then30)) #14
          to label %if.end49 [label %if.then30], !srcloc !318

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pegasus_set_multicast.__UNIQUE_ID_ddebug374, ptr noundef %net, ptr noundef nonnull @.str.52) #14
  br label %if.end49

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %18 = and i8 %10, -3
  %19 = ptrtoint ptr %eth_regs38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %eth_regs38, align 4
  %arrayidx44 = getelementptr i8, ptr %net, i32 4062
  %20 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx44, align 2
  %22 = and i8 %21, -5
  store i8 %22, ptr %arrayidx44, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.else37, %if.then30, %do.body25, %if.then9.if.end49_crit_edge, %if.then4, %if.then.if.end49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2592, i32 noundef 8) #19
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end49.update_eth_regs_async.exit_crit_edge, label %if.end.i

if.end49.update_eth_regs_async.exit_crit_edge:    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_eth_regs_async.exit

if.end.i:                                         ; preds = %if.end49
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #14
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %update_eth_regs_async.exit

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 64, ptr %call7.i.i, align 8
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -15, ptr %bRequest.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %wValue.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %wValue.i, align 2
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %wIndex.i, align 4
  %wLength.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %wLength.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 768, ptr %wLength.i, align 2
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %32, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %eth_regs.i = getelementptr i8, ptr %net, i32 4060
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %33 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %34 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %setup_packet3.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 21
  %35 = ptrtoint ptr %setup_packet3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %setup_packet3.i.i, align 4
  %transfer_buffer4.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer4.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %eth_regs.i, ptr %transfer_buffer4.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %37 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %38 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @async_ctrl_callback, ptr %complete.i.i, align 4
  %context5.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %39 = ptrtoint ptr %context5.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %context5.i.i, align 4
  %call7.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i, i32 noundef 2592) #14
  %40 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call7.i, label %if.end4.i.do.body.i_crit_edge [
    i32 0, label %if.end4.i.update_eth_regs_async.exit_crit_edge
    i32 -19, label %if.then10.i
  ]

if.end4.i.update_eth_regs_async.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_eth_regs_async.exit

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr i8, ptr %net, i32 2312
  %41 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i, align 4
  tail call void @netif_device_detach(ptr noundef %42) #14
  br label %do.body.i

do.body.i:                                        ; preds = %if.then10.i, %if.end4.i.do.body.i_crit_edge
  %msg_enable.i = getelementptr i8, ptr %net, i32 2356
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %do.body.i.update_eth_regs_async.exit_crit_edge, label %if.then13.i

do.body.i.update_eth_regs_async.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_eth_regs_async.exit

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %net14.i = getelementptr i8, ptr %net, i32 2312
  %45 = ptrtoint ptr %net14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net14.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.update_eth_regs_async, i32 noundef %call7.i) #17
  br label %update_eth_regs_async.exit

update_eth_regs_async.exit:                       ; preds = %if.then13.i, %do.body.i.update_eth_regs_async.exit_crit_edge, %if.end4.i.update_eth_regs_async.exit_crit_edge, %if.then3.i, %if.end49.update_eth_regs_async.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_siocdevprivate(ptr nocapture noundef readonly %net, ptr nocapture noundef %rq, ptr nocapture noundef readnone %udata, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %entry.sw.bb1_crit_edge
    i32 35314, label %sw.bb9
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %phy = getelementptr i8, ptr %net, i32 4064
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %phy, align 4
  %conv = zext i8 %2 to i16
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru, align 2
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %4 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ifr_ifru, align 2
  %conv3 = trunc i16 %5 to i8
  %arrayidx4 = getelementptr i16, ptr %ifr_ifru, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  %8 = trunc i16 %7 to i8
  %conv6 = and i8 %8, 31
  %arrayidx7 = getelementptr i16, ptr %ifr_ifru, i32 3
  %call.i = tail call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %conv3, i8 noundef zeroext %conv6, ptr noundef %arrayidx7, i8 noundef zeroext 64) #14
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call10, label %if.end, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #16
  %phy11 = getelementptr i8, ptr %net, i32 4064
  %9 = ptrtoint ptr %phy11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy11, align 4
  %arrayidx12 = getelementptr i16, ptr %ifr_ifru, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx12, align 2
  %13 = trunc i16 %12 to i8
  %conv15 = and i8 %13, 31
  %arrayidx16 = getelementptr %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %call.i28 = tail call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %10, i8 noundef zeroext %conv15, ptr noundef %arrayidx16, i8 noundef zeroext 32) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb9.cleanup_crit_edge, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb9.cleanup_crit_edge ], [ 0, %if.end ], [ %call.i, %sw.bb1 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_tx_timeout(ptr noundef %net, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %net, ptr noundef nonnull @.str.56) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %tx_urb = getelementptr i8, ptr %net, i32 2500
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  %call1 = tail call i32 @usb_unlink_urb(ptr noundef %3) #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_errors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intr_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %net2 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net2, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %3, label %do.body [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -104, label %if.end.cleanup_crit_edge
    i32 -2, label %if.end.cleanup_crit_edge93
    i32 -108, label %if.end.cleanup_crit_edge94
  ]

if.end.cleanup_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.cleanup_crit_edge93:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.sw.epilog_crit_edge, label %do.body5

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intr_callback.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intr_callback, %if.then9)) #14
          to label %sw.epilog [label %if.then9], !srcloc !318

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @intr_callback.__UNIQUE_ID_ddebug369, ptr noundef %5, ptr noundef nonnull @.str.42, i32 noundef %3) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %do.body5, %do.body.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp = icmp ugt i32 %10, 5
  br i1 %cmp, label %if.then14, label %sw.epilog.if.end49_crit_edge

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then14:                                        ; preds = %sw.epilog
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = and i8 %14, -28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %if.then14.if.end42_crit_edge, label %if.then17

if.then14.if.end42_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then17:                                        ; preds = %if.then14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 5
  %16 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_errors, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool21.not = icmp sgt i8 %19, -1
  br i1 %tobool21.not, label %if.then17.if.end25_crit_edge, label %if.then22

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 18
  %20 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_fifo_errors, align 8
  %inc24 = add i32 %21, 1
  store i32 %inc24, ptr %tx_fifo_errors, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then17.if.end25_crit_edge
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %12, align 1
  %24 = and i8 %23, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %if.end25.if.end33_crit_edge, label %if.then30

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 16
  %25 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_aborted_errors, align 8
  %inc32 = add i32 %26, 1
  store i32 %inc32, ptr %tx_aborted_errors, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end25.if.end33_crit_edge
  %27 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %12, align 1
  %29 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool37.not = icmp eq i8 %29, 0
  br i1 %tobool37.not, label %if.end33.if.end42_crit_edge, label %if.then38

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 20
  %30 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_window_errors, align 8
  %inc40 = add i32 %31, 1
  store i32 %inc40, ptr %tx_window_errors, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end33.if.end42_crit_edge, %if.then14.if.end42_crit_edge
  %arrayidx43 = getelementptr i8, ptr %12, i32 3
  %32 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx43, align 1
  %34 = and i8 %33, 127
  %and45 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %and45, 8
  %arrayidx46 = getelementptr i8, ptr %12, i32 4
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %36 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 15
  %37 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_missed_errors, align 4
  %or = add i32 %38, %conv47
  %add = add i32 %or, %shl
  store i32 %add, ptr %rx_missed_errors, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end42, %sw.epilog.if.end49_crit_edge
  %call50 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #14
  %39 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call50, label %if.end49.do.body58_crit_edge [
    i32 -19, label %if.then53
    i32 0, label %if.end49.cleanup_crit_edge
  ]

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49.do.body58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body58

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net2, align 4
  tail call void @netif_device_detach(ptr noundef %41) #14
  br label %do.body58

do.body58:                                        ; preds = %if.then53, %if.end49.do.body58_crit_edge
  %msg_enable59 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %msg_enable59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable59, align 4
  %and60 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body58.cleanup_crit_edge, label %if.then62

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %call50) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.body58.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge93, %if.end.cleanup_crit_edge94, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_net_traffic(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  %linkpart = alloca i16, align 2
  %data = alloca [4 x i8], align 4
  %auxmode = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %linkpart) #14
  %0 = ptrtoint ptr %linkpart to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %linkpart, align 2, !annotation !317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #14
  %phy = getelementptr i8, ptr %dev, i32 4064
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data, align 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy, align 4
  %call.i = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext %3, i8 noundef zeroext 5, ptr noundef nonnull %linkpart, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -56, ptr %data, align 4
  %7 = ptrtoint ptr %linkpart to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %linkpart, align 2
  %9 = and i16 %8, 320
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %spec.store.select = select i1 %tobool.not, i8 0, i8 32
  %10 = and i16 %8, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  %11 = or i8 %spec.store.select, 16
  %spec.select = select i1 %tobool10.not, i8 %spec.store.select, i8 %11
  %12 = load i8, ptr @mii_mode, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  %spec.store.select8 = select i1 %tobool17.not, i8 %spec.select, i8 0
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.store.select8, ptr %5, align 1
  %14 = load i8, ptr @loopback, align 1, !range !319
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %conv23 = select i1 %tobool21.not, i8 1, i8 9
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv23, ptr %4, align 2
  %eth_regs = getelementptr i8, ptr %dev, i32 4060
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %18 = ptrtoint ptr %eth_regs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %eth_regs, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %call.i2 = call i32 @usb_control_msg_send(ptr noundef %20, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %data, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.i = icmp slt i32 %call.i2, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.set_registers.exit_crit_edge

if.end.set_registers.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body.i:                                        ; preds = %if.end
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2356
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_registers.exit_crit_edge, label %do.body2.i

do.body.i.set_registers.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_registers.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_registers.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_net_traffic, %if.then7.i)) #14
          to label %set_registers.exit [label %if.then7.i], !srcloc !318

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr i8, ptr %dev, i32 2312
  %23 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_registers.__UNIQUE_ID_ddebug357, ptr noundef %24, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %call.i2) #14
  br label %set_registers.exit

set_registers.exit:                               ; preds = %if.then7.i, %do.body2.i, %do.body.i.set_registers.exit_crit_edge, %if.end.set_registers.exit_crit_edge
  %dev_index = getelementptr i8, ptr %dev, i32 2364
  %25 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_index, align 4
  %vendor = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vendor, align 4
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %28, label %set_registers.exit.cleanup69_crit_edge [
    i16 1643, label %set_registers.exit.if.then45_crit_edge
    i16 1915, label %set_registers.exit.if.then45_crit_edge9
    i16 8193, label %set_registers.exit.if.then45_crit_edge10
  ]

set_registers.exit.if.then45_crit_edge10:         ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

set_registers.exit.if.then45_crit_edge9:          ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

set_registers.exit.if.then45_crit_edge:           ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then45

set_registers.exit.cleanup69_crit_edge:           ; preds = %set_registers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

if.then45:                                        ; preds = %set_registers.exit.if.then45_crit_edge, %set_registers.exit.if.then45_crit_edge9, %set_registers.exit.if.then45_crit_edge10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %auxmode) #14
  %30 = ptrtoint ptr %auxmode to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %auxmode, align 2, !annotation !317
  %call.i3 = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 27, ptr noundef nonnull %auxmode, i8 noundef zeroext 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp47 = icmp slt i32 %call.i3, 0
  br i1 %cmp47, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %auxmode to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %auxmode, align 2
  %33 = or i16 %32, 4
  store i16 %33, ptr %auxmode, align 2
  %call.i4 = call fastcc i32 @__mii_op(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 27, ptr noundef nonnull %auxmode, i8 noundef zeroext 32) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auxmode) #14
  br label %cleanup69

cleanup:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %auxmode) #14
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry.do.body_crit_edge
  %ret.1 = phi i32 [ %call.i, %entry.do.body_crit_edge ], [ %call.i3, %cleanup ]
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and56 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body.cleanup69_crit_edge, label %do.body59

do.body.cleanup69_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup69

do.body59:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_net_traffic.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_net_traffic, %if.then64)) #14
          to label %cleanup69 [label %if.then64], !srcloc !318

if.then64:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr i8, ptr %dev, i32 2312
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @enable_net_traffic.__UNIQUE_ID_ddebug363, ptr noundef %37, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.44) #14
  br label %cleanup69

cleanup69:                                        ; preds = %if.then64, %do.body59, %do.body.cleanup69_crit_edge, %cleanup.thread, %set_registers.exit.cleanup69_crit_edge
  %retval.0 = phi i32 [ %call.i2, %set_registers.exit.cleanup69_crit_edge ], [ %ret.1, %if.then64 ], [ %ret.1, %do.body.cleanup69_crit_edge ], [ %call.i3, %cleanup.thread ], [ %ret.1, %do.body59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %linkpart) #14
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %net2 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i52.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i52.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %11 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %3, label %do.body27 [
    i32 -32, label %sw.bb
    i32 -2, label %if.end5.do.body10_crit_edge
    i32 -104, label %if.end5.do.body10_crit_edge56
    i32 -108, label %if.end5.do.body10_crit_edge57
    i32 0, label %if.end5.sw.epilog_crit_edge
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end5.do.body10_crit_edge57:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.end5.do.body10_crit_edge56:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

if.end5.do.body10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10

sw.bb:                                            ; preds = %if.end5
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %sw.bb.cleanup_crit_edge, label %if.then7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.46) #17
  br label %cleanup

do.body10:                                        ; preds = %if.end5.do.body10_crit_edge, %if.end5.do.body10_crit_edge56, %if.end5.do.body10_crit_edge57
  %msg_enable11 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %msg_enable11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable11, align 4
  %and12 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body10.cleanup_crit_edge, label %do.body15

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_bulk_callback.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_bulk_callback, %if.then20)) #14
          to label %cleanup [label %if.then20], !srcloc !318

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @write_bulk_callback.__UNIQUE_ID_ddebug368, ptr noundef %5, ptr noundef nonnull @.str.48, i32 noundef %3) #14
  br label %cleanup

do.body27:                                        ; preds = %if.end5
  %msg_enable28 = getelementptr inbounds %struct.pegasus, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable28, align 4
  %and29 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.sw.epilog_crit_edge, label %if.then31

do.body27.sw.epilog_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %3) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then31, %do.body27.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %_tx.i.i53 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i53, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 12
  %23 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not.i.i = icmp eq i32 %24, %22
  br i1 %cmp.not.i.i, label %sw.epilog.netif_trans_update.exit_crit_edge, label %do.body5.i.i

sw.epilog.netif_trans_update.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 %22, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %sw.epilog.netif_trans_update.exit_crit_edge
  %26 = ptrtoint ptr %_tx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i53, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #14
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.then20, %do.body15, %do.body10.cleanup_crit_edge, %if.then7, %sw.bb.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_ctrl_callback(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.body, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_ctrl_callback.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_ctrl_callback, %if.then4)) #14
          to label %if.end6 [label %if.then4], !srcloc !318

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @async_ctrl_callback.__UNIQUE_ID_ddebug356, ptr noundef %dev5, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %3) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body, %entry.if.end6_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  tail call void @usb_free_urb(ptr noundef %urb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pegasus_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @driver_name, i32 noundef 32) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.57, ptr noundef %5, ptr noundef %devpath.i) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pegasus_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %wolopts = getelementptr i8, ptr %dev, i32 2360
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts, align 4
  %wolopts1 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %wolopts1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i8 4, i8 -124
  %2 = trunc i32 %1 to i8
  %3 = shl i8 %2, 6
  %4 = and i8 %3, 64
  %5 = or i8 %4, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool16.not = icmp eq i32 %1, 0
  %eth_regs21 = getelementptr i8, ptr %dev, i32 4060
  %6 = ptrtoint ptr %eth_regs21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eth_regs21, align 4
  %8 = and i8 %7, -17
  %masksel = select i1 %tobool16.not, i8 0, i8 16
  %.sink = or i8 %8, %masksel
  store i8 %.sink, ptr %eth_regs21, align 4
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %wolopts28 = getelementptr i8, ptr %dev, i32 2360
  %11 = ptrtoint ptr %wolopts28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %wolopts28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %12 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %5, ptr %data.addr.i, align 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %conv.i = zext i8 %5 to i16
  %call.i = call i32 @usb_control_msg_send(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 120, ptr noundef nonnull %data.addr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end.set_register.exit_crit_edge

if.end.set_register.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body.i:                                        ; preds = %if.end
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2356
  %15 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_register.exit.thread_crit_edge, label %do.body3.i

do.body.i.set_register.exit.thread_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit.thread

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pegasus_set_wol, %if.then8.i)) #14
          to label %set_register.exit [label %if.then8.i], !srcloc !318

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr i8, ptr %dev, i32 2312
  %17 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %18, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %set_register.exit.thread

set_register.exit.thread:                         ; preds = %if.then8.i, %do.body.i.set_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  br label %cleanup

set_register.exit:                                ; preds = %do.body3.i, %if.end.set_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.then31, label %set_register.exit.cleanup_crit_edge

set_register.exit.cleanup_crit_edge:              ; preds = %set_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then31:                                        ; preds = %set_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34 = icmp ne i32 %22, 0
  %call35 = call i32 @device_set_wakeup_enable(ptr noundef %dev32, i1 noundef zeroext %tobool34) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %set_register.exit.cleanup_crit_edge, %set_register.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %set_register.exit.cleanup_crit_edge ], [ %call35, %if.then31 ], [ %call.i, %set_register.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pegasus_get_msglevel(ptr nocapture noundef readonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pegasus_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %v) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2356
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %v, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2316
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2316
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2316
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %ecmd) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pegasus_set_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2316
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %ecmd) #14
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_eprom_word(ptr nocapture noundef readonly %pegasus, i8 noundef zeroext %index, ptr nocapture noundef writeonly %retdata) unnamed_addr #2 align 64 {
entry:
  %data.addr.i55 = alloca i8, align 1
  %data.addr.i44 = alloca i8, align 1
  %data.addr.i = alloca i8, align 1
  %retdatai = alloca i16, align 2
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %retdatai) #14
  %0 = ptrtoint ptr %retdatai to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %retdatai, align 2, !annotation !317
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #14
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %data.addr.i, align 1
  %3 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pegasus, align 4
  %call.i = call i32 @usb_control_msg_send(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef nonnull %data.addr.i, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.set_register.exit_crit_edge

entry.set_register.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.set_register.exit_crit_edge, label %do.body3.i

do.body.i.set_register.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_eprom_word, %if.then8.i)) #14
          to label %set_register.exit [label %if.then8.i], !srcloc !318

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  %net.i = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i) #14
  br label %set_register.exit

set_register.exit:                                ; preds = %if.then8.i, %do.body3.i, %do.body.i.set_register.exit_crit_edge, %entry.set_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i44)
  %9 = ptrtoint ptr %data.addr.i44 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %data.addr.i44, align 1
  %10 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pegasus, align 4
  %conv.i = zext i8 %index to i16
  %call.i45 = call i32 @usb_control_msg_send(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 32, ptr noundef nonnull %data.addr.i44, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %do.body.i50, label %set_register.exit.set_register.exit54_crit_edge

set_register.exit.set_register.exit54_crit_edge:  ; preds = %set_register.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit54

do.body.i50:                                      ; preds = %set_register.exit
  %msg_enable.i47 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %12 = ptrtoint ptr %msg_enable.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i47, align 4
  %and.i48 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %do.body.i50.set_register.exit54_crit_edge, label %do.body3.i51

do.body.i50.set_register.exit54_crit_edge:        ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit54

do.body3.i51:                                     ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_eprom_word, %if.then8.i53)) #14
          to label %set_register.exit54 [label %if.then8.i53], !srcloc !318

if.then8.i53:                                     ; preds = %do.body3.i51
  call void @__sanitizer_cov_trace_pc() #16
  %net.i52 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %14 = ptrtoint ptr %net.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i52, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %15, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i45) #14
  br label %set_register.exit54

set_register.exit54:                              ; preds = %if.then8.i53, %do.body3.i51, %do.body.i50.set_register.exit54_crit_edge, %set_register.exit.set_register.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i44)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i55)
  %16 = ptrtoint ptr %data.addr.i55 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %data.addr.i55, align 1
  %17 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pegasus, align 4
  %call.i56 = call i32 @usb_control_msg_send(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 64, i16 noundef zeroext 2, i16 noundef zeroext 35, ptr noundef nonnull %data.addr.i55, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %do.body.i61, label %set_register.exit54.set_register.exit65_crit_edge

set_register.exit54.set_register.exit65_crit_edge: ; preds = %set_register.exit54
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit65

do.body.i61:                                      ; preds = %set_register.exit54
  %msg_enable.i58 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %19 = ptrtoint ptr %msg_enable.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i58, align 4
  %and.i59 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %do.body.i61.set_register.exit65_crit_edge, label %do.body3.i62

do.body.i61.set_register.exit65_crit_edge:        ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_register.exit65

do.body3.i62:                                     ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_register.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_eprom_word, %if.then8.i64)) #14
          to label %set_register.exit65 [label %if.then8.i64], !srcloc !318

if.then8.i64:                                     ; preds = %do.body3.i62
  call void @__sanitizer_cov_trace_pc() #16
  %net.i63 = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %21 = ptrtoint ptr %net.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i63, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @set_register.__UNIQUE_ID_ddebug358, ptr noundef %22, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %call.i56) #14
  br label %set_register.exit65

set_register.exit65:                              ; preds = %if.then8.i64, %do.body3.i62, %do.body.i61.set_register.exit65_crit_edge, %set_register.exit54.set_register.exit65_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i55)
  br label %for.body

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.do.body_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %set_register.exit65
  %i.070 = phi i32 [ 0, %set_register.exit65 ], [ %inc, %for.cond.for.body_crit_edge ]
  %23 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pegasus, align 4
  %call.i66 = call i32 @usb_control_msg_recv(ptr noundef %24, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 35, ptr noundef nonnull %tmp, i16 noundef zeroext 1, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp4 = icmp slt i32 %call.i66, 0
  br i1 %cmp4, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end:                                           ; preds = %for.body
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp, align 1
  %27 = and i8 %26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %for.cond, label %if.end10

if.end10:                                         ; preds = %if.end
  %28 = ptrtoint ptr %pegasus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pegasus, align 4
  %call.i67 = call i32 @usb_control_msg_recv(ptr noundef %29, i8 noundef zeroext 0, i8 noundef zeroext -16, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef nonnull %retdatai, i16 noundef zeroext 2, i32 noundef 1000, i32 noundef 3072) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp12 = icmp slt i32 %call.i67, 0
  br i1 %cmp12, label %if.end10.do.body_crit_edge, label %if.end15

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %retdatai to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %retdatai, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %33 = ptrtoint ptr %retdata to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %retdata, align 2
  br label %cleanup

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %for.body.do.body_crit_edge, %for.cond.do.body_crit_edge
  %ret.0 = phi i32 [ %call.i67, %if.end10.do.body_crit_edge ], [ -110, %for.cond.do.body_crit_edge ], [ %call.i66, %for.body.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 6
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body.cleanup_crit_edge, label %do.body19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_eprom_word.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_eprom_word, %if.then25)) #14
          to label %cleanup [label %if.then25], !srcloc !318

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr inbounds %struct.pegasus, ptr %pegasus, i32 0, i32 2
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @read_eprom_word.__UNIQUE_ID_ddebug360, ptr noundef %37, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.115) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body19, %do.body.cleanup_crit_edge, %if.end15
  %retval.0 = phi i32 [ %call.i67, %if.end15 ], [ %ret.0, %if.then25 ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %retdatai) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parse_id(ptr noundef %id) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %id, ptr %id.addr, align 4
  %call = call ptr @strsep(ptr noundef nonnull %id.addr, ptr noundef nonnull @.str.124) #14
  %call1 = call ptr @strsep(ptr noundef nonnull %id.addr, ptr noundef nonnull @.str.124) #14
  %cmp2.not = icmp eq ptr %call1, null
  br i1 %cmp2.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = call i32 @simple_strtoul(ptr noundef nonnull %call1, ptr noundef null, i32 noundef 16) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %vendor_id.0 = phi i32 [ %call4, %if.then3 ], [ 0, %entry.if.end5_crit_edge ]
  %call6 = call ptr @strsep(ptr noundef nonnull %id.addr, ptr noundef nonnull @.str.124) #14
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = call i32 @simple_strtoul(ptr noundef nonnull %call6, ptr noundef null, i32 noundef 16) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %device_id.0 = phi i32 [ %call9, %if.then8 ], [ 0, %if.end5.if.end10_crit_edge ]
  %1 = ptrtoint ptr %id.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %id.addr, align 4
  %call11 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 16) #14
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @driver_name, ptr noundef %call, i32 noundef %vendor_id.0, i32 noundef %device_id.0, i32 noundef %call11) #17
  %3 = add i32 %vendor_id.0, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %3)
  %4 = icmp ult i32 %3, -65536
  %5 = add i32 %device_id.0, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %5)
  %6 = icmp ult i32 %5, -65536
  %or.cond = select i1 %4, i1 true, i1 %6
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end10.for.cond_crit_edge

if.end10.for.cond_crit_edge:                      ; preds = %if.end10
  br label %for.cond

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end10.for.cond_crit_edge
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %if.end10.for.cond_crit_edge ]
  %arrayidx = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  %inc = add i32 %i.0, 1
  br i1 %tobool.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %arrayidx, align 4
  %conv = trunc i32 %vendor_id.0 to i16
  %vendor = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %i.0, i32 1
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %vendor, align 4
  %conv26 = trunc i32 %device_id.0 to i16
  %device = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %i.0, i32 2
  %11 = ptrtoint ptr %device to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv26, ptr %device, align 2
  %private = getelementptr [76 x %struct.usb_eth_dev], ptr @usb_dev_id, i32 0, i32 %i.0, i32 3
  %12 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call11, ptr %private, align 4
  %arrayidx29 = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %i.0
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %arrayidx29, align 4
  %idVendor = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %i.0, i32 1
  %14 = ptrtoint ptr %idVendor to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %idVendor, align 2
  %idProduct = getelementptr [76 x %struct.usb_device_id], ptr @pegasus_ids, i32 0, i32 %i.0, i32 2
  %15 = ptrtoint ptr %idProduct to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv26, ptr %idProduct, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !131, !132, !134, !136, !138, !139, !140, !142, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !280, !282, !283, !285, !286, !287, !289, !290, !292, !293, !294, !296, !298, !299, !300, !301, !303, !305, !306, !307}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314, !315}
!llvm.ident = !{!316}

!0 = !{ptr @__UNIQUE_ID_author344, !1, !"__UNIQUE_ID_author344", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/pegasus.c", i32 69, i32 1}
!2 = !{ptr @__UNIQUE_ID_description345, !3, !"__UNIQUE_ID_description345", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/pegasus.c", i32 70, i32 1}
!4 = !{ptr @__UNIQUE_ID_file346, !5, !"__UNIQUE_ID_file346", i1 false, i1 false}
!5 = !{!"../drivers/net/usb/pegasus.c", i32 71, i32 1}
!6 = !{ptr @__UNIQUE_ID_license347, !5, !"__UNIQUE_ID_license347", i1 false, i1 false}
!7 = !{ptr @__param_loopback, !8, !"__param_loopback", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/pegasus.c", i32 72, i32 1}
!9 = !{ptr @__UNIQUE_ID_loopbacktype348, !8, !"__UNIQUE_ID_loopbacktype348", i1 false, i1 false}
!10 = !{ptr @__param_mii_mode, !11, !"__param_mii_mode", i1 false, i1 false}
!11 = !{!"../drivers/net/usb/pegasus.c", i32 73, i32 1}
!12 = !{ptr @__UNIQUE_ID_mii_modetype349, !11, !"__UNIQUE_ID_mii_modetype349", i1 false, i1 false}
!13 = !{ptr @__param_devid, !14, !"__param_devid", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/pegasus.c", i32 74, i32 1}
!15 = !{ptr @__UNIQUE_ID_devidtype350, !14, !"__UNIQUE_ID_devidtype350", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_loopback351, !17, !"__UNIQUE_ID_loopback351", i1 false, i1 false}
!17 = !{!"../drivers/net/usb/pegasus.c", i32 75, i32 1}
!18 = !{ptr @__UNIQUE_ID_mii_mode352, !19, !"__UNIQUE_ID_mii_mode352", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/pegasus.c", i32 76, i32 1}
!20 = !{ptr @__UNIQUE_ID_devid353, !21, !"__UNIQUE_ID_devid353", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/pegasus.c", i32 77, i32 1}
!22 = !{ptr @__param_msg_level, !23, !"__param_msg_level", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/pegasus.c", i32 81, i32 1}
!24 = !{ptr @__UNIQUE_ID_msg_leveltype354, !23, !"__UNIQUE_ID_msg_leveltype354", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_msg_level355, !26, !"__UNIQUE_ID_msg_level355", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/pegasus.c", i32 82, i32 1}
!27 = !{ptr @__initcall__kmod_pegasus__377_1335_pegasus_init6, !28, !"__initcall__kmod_pegasus__377_1335_pegasus_init6", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/pegasus.c", i32 1335, i32 1}
!29 = !{ptr @__exitcall_pegasus_exit, !30, !"__exitcall_pegasus_exit", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/pegasus.c", i32 1336, i32 1}
!31 = !{ptr @loopback, !32, !"loopback", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/pegasus.c", i32 34, i32 13}
!33 = !{ptr @mii_mode, !34, !"mii_mode", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/pegasus.c", i32 35, i32 13}
!35 = !{ptr @devid, !36, !"devid", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/pegasus.c", i32 36, i32 14}
!37 = !{ptr @__param_str_loopback, !8, !"__param_str_loopback", i1 false, i1 false}
!38 = !{ptr @__param_str_mii_mode, !11, !"__param_str_mii_mode", i1 false, i1 false}
!39 = !{ptr @__param_str_devid, !14, !"__param_str_devid", i1 false, i1 false}
!40 = !{ptr @__param_str_msg_level, !23, !"__param_str_msg_level", i1 false, i1 false}
!41 = !{ptr @msg_level, !42, !"msg_level", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/pegasus.c", i32 80, i32 12}
!43 = !{ptr @pegasus_driver, !44, !"pegasus_driver", i1 false, i1 false}
!44 = !{!"../drivers/net/usb/pegasus.c", i32 1281, i32 26}
!45 = !{ptr @driver_name, !46, !"driver_name", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/pegasus.c", i32 27, i32 19}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/pegasus.c", i32 1150, i32 3}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pegasus_probe._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @pegasus_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @pegasus_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/usb/pegasus.c", i32 1156, i32 2}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pegasus_probe.__key.7, !57, !"__key", i1 false, i1 false}
!60 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/pegasus.c", i32 1179, i32 3}
!63 = !{ptr @pegasus_probe._entry.9, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @pegasus_probe._entry_ptr.11, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/usb/pegasus.c", i32 1185, i32 3}
!67 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @pegasus_probe._entry.12, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @pegasus_probe._entry_ptr.15, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/pegasus.c", i32 1190, i32 3}
!72 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pegasus_probe._entry.16, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pegasus_probe._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/usb/pegasus.c", i32 1202, i32 2}
!77 = !{ptr @pegasus_probe._entry.20, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pegasus_probe._entry_ptr.22, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/usb/pegasus.c", i32 581, i32 3}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/usb/pegasus.c", i32 475, i32 3}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @read_bulk_callback.__UNIQUE_ID_ddebug364, !82, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/pegasus.c", i32 480, i32 3}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/pegasus.c", i32 485, i32 3}
!90 = !{ptr @read_bulk_callback.__UNIQUE_ID_ddebug365, !89, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/usb/pegasus.c", i32 488, i32 3}
!93 = !{ptr @read_bulk_callback.__UNIQUE_ID_ddebug366, !92, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/pegasus.c", i32 497, i32 3}
!96 = !{ptr @read_bulk_callback.__UNIQUE_ID_ddebug367, !95, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/usb/pegasus.c", i32 207, i32 2}
!99 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @__mii_op.__UNIQUE_ID_ddebug359, !98, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/usb/pegasus.c", i32 135, i32 3}
!103 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @set_register.__UNIQUE_ID_ddebug358, !102, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/usb/pegasus.c", i32 116, i32 3}
!107 = !{ptr @set_registers.__UNIQUE_ID_ddebug357, !106, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!108 = !{ptr @pegasus_netdev_ops, !109, !"pegasus_netdev_ops", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/pegasus.c", i32 1270, i32 36}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/usb/pegasus.c", i32 847, i32 3}
!112 = !{ptr @.str.37, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @pegasus_open.__UNIQUE_ID_ddebug370, !111, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/pegasus.c", i32 858, i32 3}
!116 = !{ptr @pegasus_open.__UNIQUE_ID_ddebug371, !115, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/pegasus.c", i32 864, i32 3}
!119 = !{ptr @pegasus_open.__UNIQUE_ID_ddebug372, !118, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/usb/pegasus.c", i32 873, i32 2}
!122 = !{ptr @pegasus_open.__UNIQUE_ID_ddebug373, !121, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/usb/pegasus.c", i32 658, i32 3}
!125 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @intr_callback.__UNIQUE_ID_ddebug369, !124, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/usb/pegasus.c", i32 689, i32 3}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/usb/pegasus.c", i32 451, i32 2}
!131 = !{ptr @enable_net_traffic.__UNIQUE_ID_ddebug363, !130, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/usb/pegasus.c", i32 718, i32 3}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/usb/pegasus.c", i32 619, i32 3}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/usb/pegasus.c", i32 624, i32 3}
!138 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @write_bulk_callback.__UNIQUE_ID_ddebug368, !137, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/usb/pegasus.c", i32 627, i32 3}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/usb/pegasus.c", i32 1036, i32 3}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/usb/pegasus.c", i32 1040, i32 3}
!146 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @pegasus_set_multicast.__UNIQUE_ID_ddebug374, !145, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/usb/pegasus.c", i32 169, i32 3}
!150 = !{ptr @__func__.update_eth_regs_async, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/usb/pegasus.c", i32 95, i32 3}
!153 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @async_ctrl_callback.__UNIQUE_ID_ddebug356, !152, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/usb/pegasus.c", i32 696, i32 2}
!157 = !{ptr @ops, !158, !"ops", i1 false, i1 false}
!158 = !{!"../drivers/net/usb/pegasus.c", i32 992, i32 33}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/linux/usb.h", i32 912, i32 31}
!161 = !{ptr @.str.58, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/usb/pegasus.h", i32 146, i32 1}
!163 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/usb/pegasus.h", i32 148, i32 1}
!165 = !{ptr @.str.60, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/usb/pegasus.h", i32 150, i32 1}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/usb/pegasus.h", i32 158, i32 1}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/usb/pegasus.h", i32 170, i32 1}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/usb/pegasus.h", i32 172, i32 1}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/usb/pegasus.h", i32 174, i32 1}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/usb/pegasus.h", i32 176, i32 1}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/usb/pegasus.h", i32 179, i32 1}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/usb/pegasus.h", i32 182, i32 1}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/usb/pegasus.h", i32 185, i32 1}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/usb/pegasus.h", i32 188, i32 1}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/usb/pegasus.h", i32 190, i32 1}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/usb/pegasus.h", i32 192, i32 1}
!189 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/usb/pegasus.h", i32 198, i32 1}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/usb/pegasus.h", i32 200, i32 1}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/usb/pegasus.h", i32 202, i32 1}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/usb/pegasus.h", i32 204, i32 1}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/usb/pegasus.h", i32 206, i32 1}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/usb/pegasus.h", i32 208, i32 1}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/usb/pegasus.h", i32 210, i32 1}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/usb/pegasus.h", i32 212, i32 1}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/usb/pegasus.h", i32 214, i32 1}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/usb/pegasus.h", i32 216, i32 1}
!209 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/usb/pegasus.h", i32 226, i32 1}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/usb/pegasus.h", i32 228, i32 1}
!213 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/usb/pegasus.h", i32 230, i32 1}
!215 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/usb/pegasus.h", i32 232, i32 1}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/usb/pegasus.h", i32 234, i32 1}
!219 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/usb/pegasus.h", i32 236, i32 1}
!221 = !{ptr @.str.88, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/usb/pegasus.h", i32 238, i32 1}
!223 = !{ptr @.str.89, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/usb/pegasus.h", i32 240, i32 1}
!225 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/usb/pegasus.h", i32 242, i32 1}
!227 = !{ptr @.str.91, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/usb/pegasus.h", i32 244, i32 1}
!229 = !{ptr @.str.92, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/usb/pegasus.h", i32 246, i32 1}
!231 = !{ptr @.str.93, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/usb/pegasus.h", i32 248, i32 1}
!233 = !{ptr @.str.94, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/usb/pegasus.h", i32 250, i32 1}
!235 = !{ptr @.str.95, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/usb/pegasus.h", i32 252, i32 1}
!237 = !{ptr @.str.96, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/usb/pegasus.h", i32 254, i32 1}
!239 = !{ptr @.str.97, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/usb/pegasus.h", i32 258, i32 1}
!241 = !{ptr @.str.98, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/usb/pegasus.h", i32 262, i32 1}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/usb/pegasus.h", i32 264, i32 1}
!245 = !{ptr @.str.100, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/usb/pegasus.h", i32 268, i32 1}
!247 = !{ptr @.str.101, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/usb/pegasus.h", i32 270, i32 1}
!249 = !{ptr @.str.102, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/usb/pegasus.h", i32 272, i32 1}
!251 = !{ptr @.str.103, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/usb/pegasus.h", i32 276, i32 1}
!253 = !{ptr @.str.104, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/usb/pegasus.h", i32 280, i32 1}
!255 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/usb/pegasus.h", i32 282, i32 1}
!257 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/usb/pegasus.h", i32 284, i32 1}
!259 = !{ptr @.str.107, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/usb/pegasus.h", i32 286, i32 1}
!261 = !{ptr @.str.108, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/usb/pegasus.h", i32 288, i32 1}
!263 = !{ptr @.str.109, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/usb/pegasus.h", i32 290, i32 1}
!265 = !{ptr @.str.110, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/usb/pegasus.h", i32 292, i32 1}
!267 = !{ptr @.str.111, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/usb/pegasus.h", i32 294, i32 1}
!269 = !{ptr @.str.112, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/usb/pegasus.h", i32 296, i32 1}
!271 = !{ptr @.str.113, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/usb/pegasus.h", i32 298, i32 1}
!273 = !{ptr @usb_dev_id, !274, !"usb_dev_id", i1 false, i1 false}
!274 = !{!"../drivers/net/usb/pegasus.c", i32 38, i32 27}
!275 = !{ptr @.str.114, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/usb/pegasus.c", i32 760, i32 4}
!277 = !{ptr @.str.115, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/usb/pegasus.c", i32 273, i32 2}
!279 = !{ptr @read_eprom_word.__UNIQUE_ID_ddebug360, !278, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!280 = !{ptr @.str.116, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/usb/pegasus.c", i32 411, i32 2}
!282 = !{ptr @reset_mac.__UNIQUE_ID_ddebug362, !281, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/usb/pegasus.c", i32 365, i32 2}
!285 = !{ptr @.str.118, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @set_ethernet_addr.__UNIQUE_ID_ddebug361, !284, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/usb/pegasus.c", i32 1100, i32 2}
!289 = !{ptr @setup_pegasus_II.__UNIQUE_ID_ddebug375, !288, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!290 = !{ptr @.str.120, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/usb/pegasus.c", i32 1222, i32 3}
!292 = !{ptr @.str.121, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @pegasus_disconnect.__UNIQUE_ID_ddebug376, !291, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!294 = !{ptr @pegasus_ids, !295, !"pegasus_ids", i1 false, i1 false}
!295 = !{!"../drivers/net/usb/pegasus.c", i32 50, i32 29}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/usb/pegasus.c", i32 1324, i32 2}
!298 = !{ptr @.str.123, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @pegasus_init._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @pegasus_init._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.124, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/usb/pegasus.c", i32 1296, i32 27}
!303 = !{ptr @.str.125, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/usb/pegasus.c", i32 1304, i32 2}
!305 = !{ptr @.str.126, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @parse_id._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @parse_id._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{i32 1, !"wchar_size", i32 2}
!309 = !{i32 1, !"min_enum_size", i32 4}
!310 = !{i32 8, !"branch-target-enforcement", i32 0}
!311 = !{i32 8, !"sign-return-address", i32 0}
!312 = !{i32 8, !"sign-return-address-all", i32 0}
!313 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!314 = !{i32 7, !"uwtable", i32 1}
!315 = !{i32 7, !"frame-pointer", i32 2}
!316 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!317 = !{!"auto-init"}
!318 = !{i64 2148263946, i64 2148263951, i64 2148263964, i64 2148264008, i64 2148264042, i64 2148264063}
!319 = !{i8 0, i8 2}
