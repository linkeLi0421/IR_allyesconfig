; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/8390/pcnet_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/8390/pcnet_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hw_info = type { i32, i8, i8, i8, i32 }
%struct.anon.123 = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
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
%struct.e8390_pkt_hdr = type { i8, i8, i16 }

@__UNIQUE_ID_author345 = internal constant [60 x i8] c"pcnet_cs.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [62 x i8] c"pcnet_cs.description=NE2000 compatible PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [49 x i8] c"pcnet_cs.file=drivers/net/ethernet/8390/pcnet_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [21 x i8] c"pcnet_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_if_port = internal constant [17 x i8] c"pcnet_cs.if_port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@if_port = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_if_port = internal constant %struct.kernel_param { ptr @__param_str_if_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @if_port } }, section "__param", align 4
@__UNIQUE_ID_if_porttype349 = internal constant [30 x i8] c"pcnet_cs.parmtype=if_port:int\00", section ".modinfo", align 1
@__param_str_use_big_buf = internal constant [21 x i8] c"pcnet_cs.use_big_buf\00", align 1
@use_big_buf = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_use_big_buf = internal constant %struct.kernel_param { ptr @__param_str_use_big_buf, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_big_buf } }, section "__param", align 4
@__UNIQUE_ID_use_big_buftype350 = internal constant [34 x i8] c"pcnet_cs.parmtype=use_big_buf:int\00", section ".modinfo", align 1
@__param_str_mem_speed = internal constant [19 x i8] c"pcnet_cs.mem_speed\00", align 1
@mem_speed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mem_speed = internal constant %struct.kernel_param { ptr @__param_str_mem_speed, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @mem_speed } }, section "__param", align 4
@__UNIQUE_ID_mem_speedtype351 = internal constant [32 x i8] c"pcnet_cs.parmtype=mem_speed:int\00", section ".modinfo", align 1
@__param_str_delay_output = internal constant [22 x i8] c"pcnet_cs.delay_output\00", align 1
@delay_output = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_delay_output = internal constant %struct.kernel_param { ptr @__param_str_delay_output, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @delay_output } }, section "__param", align 4
@__UNIQUE_ID_delay_outputtype352 = internal constant [35 x i8] c"pcnet_cs.parmtype=delay_output:int\00", section ".modinfo", align 1
@__param_str_delay_time = internal constant [20 x i8] c"pcnet_cs.delay_time\00", align 1
@delay_time = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_delay_time = internal constant %struct.kernel_param { ptr @__param_str_delay_time, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @delay_time } }, section "__param", align 4
@__UNIQUE_ID_delay_timetype353 = internal constant [33 x i8] c"pcnet_cs.parmtype=delay_time:int\00", section ".modinfo", align 1
@__param_str_use_shmem = internal constant [19 x i8] c"pcnet_cs.use_shmem\00", align 1
@use_shmem = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_use_shmem = internal constant %struct.kernel_param { ptr @__param_str_use_shmem, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_shmem } }, section "__param", align 4
@__UNIQUE_ID_use_shmemtype354 = internal constant [32 x i8] c"pcnet_cs.parmtype=use_shmem:int\00", section ".modinfo", align 1
@__param_str_full_duplex = internal constant [21 x i8] c"pcnet_cs.full_duplex\00", align 1
@full_duplex = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_full_duplex = internal constant %struct.kernel_param { ptr @__param_str_full_duplex, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @full_duplex } }, section "__param", align 4
@__UNIQUE_ID_full_duplextype355 = internal constant [34 x i8] c"pcnet_cs.parmtype=full_duplex:int\00", section ".modinfo", align 1
@__param_str_hw_addr = internal constant [17 x i8] c"pcnet_cs.hw_addr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_hw_addr = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @hw_addr }, align 4
@__param_hw_addr = internal constant %struct.kernel_param { ptr @__param_str_hw_addr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_hw_addr } }, section "__param", align 4
@__UNIQUE_ID_hw_addrtype356 = internal constant [39 x i8] c"pcnet_cs.parmtype=hw_addr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [34 x i8] c"pcnet_cs.firmware=cis/PCMLM28.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [34 x i8] c"pcnet_cs.firmware=cis/DP83903.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [33 x i8] c"pcnet_cs.firmware=cis/LA-PCM.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware368 = internal constant [32 x i8] c"pcnet_cs.firmware=cis/PE520.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware369 = internal constant [31 x i8] c"pcnet_cs.firmware=cis/NE2K.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware370 = internal constant [33 x i8] c"pcnet_cs.firmware=cis/PE-200.cis\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware371 = internal constant [35 x i8] c"pcnet_cs.firmware=cis/tamarack.cis\00", section ".modinfo", align 1
@__initcall__kmod_pcnet_cs__372_1718_pcnet_driver_init6 = internal global ptr @pcnet_driver_init, section ".initcall6.init", align 4
@pcnet_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @pcnet_probe, ptr @pcnet_detach, ptr @pcnet_suspend, ptr @pcnet_resume, ptr null, ptr @pcnet_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_pcnet_driver_exit = internal global ptr @pcnet_driver_exit, section ".exitcall.exit", align 4
@hw_addr = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcnet_cs\00", [23 x i8] zeroinitializer }, align 32
@pcnet_ids = internal constant { [210 x %struct.pcmcia_device_id], [2744 x i8] } { [210 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 259, i16 87, i16 33, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 260, i16 10, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 261, i16 -5611, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 323, i16 13121, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 323, i16 -16213, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 539, i16 257, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 259, i16 2209, i16 -16213, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1468770023, i32 -1330879804, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr @.str.74, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1164003358, i32 125572942, i32 0, i32 0], [4 x ptr] [ptr @.str.75, ptr @.str.76, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 440551964, i32 -1304913921, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 706027436, i32 1220096686, i32 0, i32 0], [4 x ptr] [ptr @.str.79, ptr @.str.80, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 -1284091853, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.82, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -137688313, i32 2055347032, i32 0, i32 0], [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1295069083, i32 1022166357, i32 0, i32 0], [4 x ptr] [ptr @.str.85, ptr @.str.86, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -587328813, i32 -846657844, i32 0, i32 0], [4 x ptr] [ptr @.str.87, ptr @.str.88, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 304, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -587328813, i32 -964926321, i32 0, i32 0], [4 x ptr] [ptr @.str.87, ptr @.str.89, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 1540685612, i32 0, i32 0], [4 x ptr] [ptr @.str.90, ptr @.str.91, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 1272911299, i32 0, i32 0], [4 x ptr] [ptr @.str.90, ptr @.str.92, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1251367195, i32 -1366221803, i32 0, i32 0], [4 x ptr] [ptr @.str.90, ptr @.str.93, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 120, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 297982473, i32 1921637469, i32 -1428595169, i32 0], [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 40, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 0, i32 517313282, i32 0, i32 0], [4 x ptr] [ptr null, ptr @.str.97, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 87, i16 4100, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 260, i16 13, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 260, i16 117, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 260, i16 325, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 329, i16 560, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 329, i16 17712, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 329, i16 -15957, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 390, i16 272, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 447, i16 -32703, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 531, i16 9298, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 768, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 775, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 623, i16 778, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 628, i16 4355, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 628, i16 4385, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 3, i16 -16383, i16 9, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 892338047, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.98, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 240, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1282683858, i32 1307083602, i32 -355832691, i32 2119680558], [4 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1791793362, i32 673127517, i32 1073157979, i32 0], [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1612358339, i32 -2057301608, i32 1073157979, i32 0], [4 x ptr] [ptr @.str.107, ptr @.str.108, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1717982411, i32 11725121, i32 1259176606, i32 0], [4 x ptr] [ptr @.str.109, ptr @.str.99, ptr @.str.110, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1938423833, i32 673127517, i32 1587385024, i32 0], [4 x ptr] [ptr @.str.111, ptr @.str.105, ptr @.str.112, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1026116580, i32 -342185108, i32 1073157979, i32 0], [4 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 492165100, i32 -456766156, i32 1073157979, i32 0], [4 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1417570012, i32 1797654355, i32 1073157979, i32 0], [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.106, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1825869431, i32 1771979830, i32 1868976864, i32 0], [4 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -724750560, i32 -1199907454, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.122, ptr @.str.123, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -724750560, i32 2101183400, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.122, ptr @.str.124, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1743926955, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.125, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -540625486, i32 -888067567, i32 0, i32 0], [4 x ptr] [ptr @.str.126, ptr @.str.127, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -540625486, i32 1430437887, i32 0, i32 0], [4 x ptr] [ptr @.str.126, ptr @.str.128, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1149256233, i32 -846082968, i32 0, i32 0], [4 x ptr] [ptr @.str.129, ptr @.str.130, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 912476774, i32 -959424105, i32 0, i32 0], [4 x ptr] [ptr @.str.131, ptr @.str.132, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1149256233, i32 685939192, i32 0, i32 0], [4 x ptr] [ptr @.str.129, ptr @.str.133, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 912476774, i32 1646534038, i32 0, i32 0], [4 x ptr] [ptr @.str.131, ptr @.str.134, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1349560313, i32 -2097582442, i32 0, i32 0], [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1349560313, i32 -2039213532, i32 0, i32 0], [4 x ptr] [ptr @.str.135, ptr @.str.137, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1817094800, i32 1978416891, i32 0, i32 0], [4 x ptr] [ptr @.str.138, ptr @.str.139, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1817094800, i32 1176261191, i32 0, i32 0], [4 x ptr] [ptr @.str.138, ptr @.str.140, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1817094800, i32 -2097582442, i32 0, i32 0], [4 x ptr] [ptr @.str.138, ptr @.str.136, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1468770023, i32 177768641, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr @.str.141, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1468770023, i32 -1818235459, i32 0, i32 0], [4 x ptr] [ptr @.str.73, ptr @.str.142, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 825940936, i32 148500880, i32 0, i32 0], [4 x ptr] [ptr @.str.143, ptr @.str.144, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 981130767, i32 1103512836, i32 0, i32 0], [4 x ptr] [ptr @.str.145, ptr @.str.146, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1428862594, i32 -290342294, i32 0, i32 0], [4 x ptr] [ptr @.str.147, ptr @.str.148, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1156315235, i32 -1817293447, i32 0, i32 0], [4 x ptr] [ptr @.str.149, ptr @.str.150, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1136165410, i32 -72911449, i32 0, i32 0], [4 x ptr] [ptr @.str.151, ptr @.str.152, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -97631667, i32 -384234102, i32 0, i32 0], [4 x ptr] [ptr @.str.153, ptr @.str.154, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -97631667, i32 961796537, i32 0, i32 0], [4 x ptr] [ptr @.str.153, ptr @.str.155, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 566932818, i32 -151451870, i32 0, i32 0], [4 x ptr] [ptr @.str.156, ptr @.str.157, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 169955354, i32 -1525324638, i32 0, i32 0], [4 x ptr] [ptr @.str.158, ptr @.str.159, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 169955354, i32 1703490570, i32 0, i32 0], [4 x ptr] [ptr @.str.158, ptr @.str.160, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 -2020121029, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.162, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 -90339907, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.163, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 -996419779, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.164, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -721564712, i32 -996419779, i32 0, i32 0], [4 x ptr] [ptr @.str.165, ptr @.str.164, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1728445610, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.166, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1205193347, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.167, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1214154201, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.168, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 286074585, i32 -1613565790, i32 0, i32 0], [4 x ptr] [ptr @.str.169, ptr @.str.170, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1752061682, i32 -1613565790, i32 0, i32 0], [4 x ptr] [ptr @.str.171, ptr @.str.170, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1382106127, i32 1944849800, i32 0, i32 0], [4 x ptr] [ptr @.str.161, ptr @.str.172, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -296030035, i32 2083183876, i32 0, i32 0], [4 x ptr] [ptr @.str.173, ptr @.str.174, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1996523897, i32 -1651686307, i32 0, i32 0], [4 x ptr] [ptr @.str.175, ptr @.str.176, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1996523897, i32 -48740332, i32 0, i32 0], [4 x ptr] [ptr @.str.175, ptr @.str.177, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1557556637, i32 -2073461536, i32 0, i32 0], [4 x ptr] [ptr @.str.178, ptr @.str.179, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 207786789, i32 -1259873361, i32 0, i32 0], [4 x ptr] [ptr @.str.180, ptr @.str.181, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1769210840, i32 -513754731, i32 0, i32 0], [4 x ptr] [ptr @.str.182, ptr @.str.183, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1769210840, i32 -1496075725, i32 0, i32 0], [4 x ptr] [ptr @.str.182, ptr @.str.184, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1767992499, i32 -436148370, i32 0, i32 0], [4 x ptr] [ptr @.str.185, ptr @.str.186, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 440551964, i32 -225672296, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.187, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 440551964, i32 -643706789, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.188, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 440551964, i32 1356648684, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.189, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 440551964, i32 251687929, i32 0, i32 0], [4 x ptr] [ptr @.str.77, ptr @.str.190, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1918600237, i32 -235934076, i32 0, i32 0], [4 x ptr] [ptr @.str.191, ptr @.str.192, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1918600237, i32 766638313, i32 0, i32 0], [4 x ptr] [ptr @.str.191, ptr @.str.193, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1432563669, i32 -597298511, i32 0, i32 0], [4 x ptr] [ptr @.str.194, ptr @.str.195, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1780928975, i32 -597298511, i32 0, i32 0], [4 x ptr] [ptr @.str.196, ptr @.str.195, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1780928975, i32 -990359813, i32 0, i32 0], [4 x ptr] [ptr @.str.196, ptr @.str.197, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1728174609, i32 1728174609, i32 0, i32 0], [4 x ptr] [ptr @.str.198, ptr @.str.198, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1405641926, i32 -305112586, i32 0, i32 0], [4 x ptr] [ptr @.str.199, ptr @.str.200, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1405641926, i32 -1835251604, i32 0, i32 0], [4 x ptr] [ptr @.str.199, ptr @.str.201, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 11725121, i32 1259176606, i32 0, i32 0], [4 x ptr] [ptr @.str.99, ptr @.str.110, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1770622207, i32 1912323169, i32 0, i32 0], [4 x ptr] [ptr @.str.202, ptr @.str.203, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1915199103, i32 -223009513, i32 0, i32 0], [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1262611229, i32 1259176606, i32 0, i32 0], [4 x ptr] [ptr @.str.206, ptr @.str.110, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 706027436, i32 -268085813, i32 0, i32 0], [4 x ptr] [ptr @.str.79, ptr @.str.207, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 706027436, i32 -1044913369, i32 0, i32 0], [4 x ptr] [ptr @.str.79, ptr @.str.208, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1994486205, i32 1857145159, i32 0, i32 0], [4 x ptr] [ptr @.str.209, ptr @.str.210, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -478974840, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.211, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1623919014, i32 1623919014, i32 0, i32 0], [4 x ptr] [ptr @.str.212, ptr @.str.212, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1821821804, i32 -1821821804, i32 0, i32 0], [4 x ptr] [ptr @.str.213, ptr @.str.213, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1417570012, i32 1875199387, i32 0, i32 0], [4 x ptr] [ptr @.str.117, ptr @.str.214, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1455765714, i32 296812480, i32 0, i32 0], [4 x ptr] [ptr @.str.215, ptr @.str.216, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1316109388, i32 -867063466, i32 0, i32 0], [4 x ptr] [ptr @.str.217, ptr @.str.218, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1350482743, i32 -2037422570, i32 0, i32 0], [4 x ptr] [ptr @.str.219, ptr @.str.220, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1466202157, i32 515411556, i32 0, i32 0], [4 x ptr] [ptr @.str.221, ptr @.str.222, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 2076919194, i32 -1513611355, i32 0, i32 0], [4 x ptr] [ptr @.str.223, ptr @.str.224, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 287893043, i32 -836073037, i32 0, i32 0], [4 x ptr] [ptr @.str.225, ptr @.str.226, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 826047459, i32 184243362, i32 0, i32 0], [4 x ptr] [ptr @.str.227, ptr @.str.228, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 460859314, i32 -844686052, i32 0, i32 0], [4 x ptr] [ptr @.str.229, ptr @.str.230, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 460859314, i32 -20505024, i32 0, i32 0], [4 x ptr] [ptr @.str.229, ptr @.str.231, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 460859314, i32 2046534903, i32 0, i32 0], [4 x ptr] [ptr @.str.229, ptr @.str.232, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 460859314, i32 -1826948437, i32 0, i32 0], [4 x ptr] [ptr @.str.229, ptr @.str.233, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1141918417, i32 -762742121, i32 0, i32 0], [4 x ptr] [ptr @.str.234, ptr @.str.235, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 854494328, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.236, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -137688313, i32 1728174609, i32 0, i32 0], [4 x ptr] [ptr @.str.83, ptr @.str.198, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 1161576349, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.237, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 1724228489, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.238, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 976955625, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.239, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 120835201, i32 2050907194, i32 0, i32 0], [4 x ptr] [ptr @.str.81, ptr @.str.240, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1996693798, i32 1836525367, i32 0, i32 0], [4 x ptr] [ptr @.str.241, ptr @.str.242, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1996693798, i32 242306030, i32 0, i32 0], [4 x ptr] [ptr @.str.241, ptr @.str.243, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1996693798, i32 -2130114270, i32 0, i32 0], [4 x ptr] [ptr @.str.241, ptr @.str.244, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1996693798, i32 -1042132452, i32 0, i32 0], [4 x ptr] [ptr @.str.241, ptr @.str.245, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -127487824, i32 1868976864, i32 0, i32 0], [4 x ptr] [ptr @.str.246, ptr @.str.121, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 545528680, i32 -1349896840, i32 0, i32 0], [4 x ptr] [ptr @.str.247, ptr @.str.248, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -667932289, i32 -765082873, i32 0, i32 0], [4 x ptr] [ptr @.str.249, ptr @.str.250, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1145328502, i32 -1913830956, i32 0, i32 0], [4 x ptr] [ptr @.str.251, ptr @.str.252, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 2027310016, i32 -905141064, i32 0, i32 0], [4 x ptr] [ptr @.str.253, ptr @.str.254, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1209925780, i32 -1561654029, i32 0, i32 0], [4 x ptr] [ptr @.str.255, ptr @.str.256, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1209925780, i32 1101435244, i32 0, i32 0], [4 x ptr] [ptr @.str.255, ptr @.str.257, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1267846855, i32 -419290922, i32 0, i32 0], [4 x ptr] [ptr @.str.258, ptr @.str.259, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 778937755, i32 75031666, i32 0, i32 0], [4 x ptr] [ptr @.str.260, ptr @.str.261, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1686984129, i32 -1109055801, i32 0, i32 0], [4 x ptr] [ptr @.str.262, ptr @.str.263, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 920721695, i32 1623337401, i32 0, i32 0], [4 x ptr] [ptr @.str.264, ptr @.str.265, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 920721695, i32 -1503559992, i32 0, i32 0], [4 x ptr] [ptr @.str.264, ptr @.str.266, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 417270688, i32 -1131336330, i32 0, i32 0], [4 x ptr] [ptr @.str.267, ptr @.str.268, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1700291133, i32 1625668622, i32 0, i32 0], [4 x ptr] [ptr @.str.269, ptr @.str.270, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2113247306, i32 837622367, i32 0, i32 0], [4 x ptr] [ptr @.str.271, ptr @.str.272, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1361384332, i32 -1392177423, i32 0, i32 0], [4 x ptr] [ptr @.str.273, ptr @.str.274, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1849784123, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.275, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1073157979, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.106, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1306719944, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.276, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1587385024, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.112, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -1835251604, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.201, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1300764616, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.277, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -24699157, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.278, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1173484468, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.279, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -329401177, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.280, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1962992198, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.281, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -418908607, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.282, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -587328813, i32 -846657844, i32 0, i32 0], [4 x ptr] [ptr @.str.87, ptr @.str.88, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 -1089005157, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.283, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1121310689, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.284, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -335998635, i32 805784704, i32 0, i32 0], [4 x ptr] [ptr @.str.285, ptr @.str.286, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -335998635, i32 2136624976, i32 0, i32 0], [4 x ptr] [ptr @.str.285, ptr @.str.287, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -168811070, i32 976281872, i32 0, i32 0], [4 x ptr] [ptr @.str.288, ptr @.str.289, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -841980854, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.290, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 2110993537, i32 280238118, i32 0, i32 0], [4 x ptr] [ptr @.str.291, ptr @.str.292, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -471437790, i32 -1184804641, i32 0, i32 0], [4 x ptr] [ptr @.str.293, ptr @.str.294, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -596670211, i32 1249782496, i32 0, i32 0], [4 x ptr] [ptr @.str.295, ptr @.str.296, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -596670211, i32 1271650301, i32 0, i32 0], [4 x ptr] [ptr @.str.295, ptr @.str.297, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -986004203, i32 -2115791992, i32 0, i32 0], [4 x ptr] [ptr @.str.298, ptr @.str.299, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1111248638, i32 -1835251604, i32 0, i32 0], [4 x ptr] [ptr @.str.300, ptr @.str.201, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 160597808, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.301, ptr @.str.99, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -990334581, i32 -81669531, i32 0, i32 0], [4 x ptr] [ptr @.str.302, ptr @.str.303, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -955627680, i32 719210558, i32 0, i32 0], [4 x ptr] [ptr @.str.304, ptr @.str.305, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -955627680, i32 1574533288, i32 0, i32 0], [4 x ptr] [ptr @.str.304, ptr @.str.306, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 514757749, i32 248743674, i32 0, i32 0], [4 x ptr] [ptr @.str.307, ptr @.str.308, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1181418992, i32 -1955283889, i32 0, i32 0], [4 x ptr] [ptr @.str.309, ptr @.str.310, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1181418992, i32 868801322, i32 0, i32 0], [4 x ptr] [ptr @.str.309, ptr @.str.311, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2021146937, i32 0, i32 -152788194, i32 0], [4 x ptr] [ptr @.str.312, ptr null, ptr @.str.313, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1825869431, i32 0, i32 1587385024, i32 0], [4 x ptr] [ptr @.str.119, ptr null, ptr @.str.112, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -127487824, i32 0, i32 -152788194, i32 0], [4 x ptr] [ptr @.str.246, ptr null, ptr @.str.313, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 775874629, i32 0, i32 581214089, i32 0], [4 x ptr] [ptr @.str.314, ptr null, ptr @.str.315, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1795493024, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.316, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2007976738, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.317, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 111694159, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.318, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1975037274, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.319, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 32, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 0, i32 -1449734024, i32 0, i32 0], [4 x ptr] [ptr null, ptr @.str.320, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1460614286, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.321, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 673127517, i32 1876733166, i32 0, i32 0], [4 x ptr] [ptr @.str.105, ptr @.str.323, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -168811070, i32 864977237, i32 0, i32 0], [4 x ptr] [ptr @.str.288, ptr @.str.324, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -168811070, i32 1256742197, i32 0, i32 0], [4 x ptr] [ptr @.str.288, ptr @.str.325, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -137688313, i32 1720195188, i32 0, i32 0], [4 x ptr] [ptr @.str.83, ptr @.str.326, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 816, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1269278182, i32 1408836344, i32 0, i32 0], [4 x ptr] [ptr @.str.327, ptr @.str.328, ptr null, ptr null], i32 0, ptr @.str.322 }, %struct.pcmcia_device_id { i16 568, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1881174135, i32 -580986392, i32 0, i32 0], [4 x ptr] [ptr @.str.329, ptr @.str.330, ptr null, ptr null], i32 0, ptr @.str.331 }, %struct.pcmcia_device_id { i16 648, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 0, i32 0, i32 0, i32 1492934742], [4 x ptr] [ptr null, ptr null, ptr null, ptr @.str.332], i32 0, ptr @.str.331 }, %struct.pcmcia_device_id { i16 523, i16 373, i16 0, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr @.str.331 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 718679868, i32 -1613565790, i32 0, i32 0], [4 x ptr] [ptr @.str.333, ptr @.str.170, ptr null, ptr null], i32 0, ptr @.str.334 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1390935227, i32 -1655123054, i32 0, i32 0], [4 x ptr] [ptr @.str.335, ptr @.str.336, ptr null, ptr null], i32 0, ptr @.str.337 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 29637345, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.338, ptr @.str.99, ptr null, ptr null], i32 0, ptr @.str.339 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 888402376, i32 280338316, i32 0, i32 0], [4 x ptr] [ptr @.str.340, ptr @.str.341, ptr null, ptr null], i32 0, ptr @.str.342 }, %struct.pcmcia_device_id { i16 560, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -817672262, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.343, ptr @.str.99, ptr null, ptr null], i32 0, ptr @.str.344 }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 11725121, i32 1135354779, i32 0, i32 0], [4 x ptr] [ptr @.str.99, ptr @.str.345, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1262611229, i32 1135354779, i32 142063143, i32 0], [4 x ptr] [ptr @.str.206, ptr @.str.345, ptr @.str.346, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [2744 x i8] zeroinitializer }, align 32
@pcnet_probe.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcnet_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/8390/pcnet_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcnet_attach()\0A\00", [16 x i8] zeroinitializer }, align 32
@pcnet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pcnet_open, ptr @pcnet_close, ptr @ei_start_xmit, ptr null, ptr null, ptr null, ptr @ei_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @ei_ioctl, ptr null, ptr null, ptr null, ptr @set_config, ptr null, ptr null, ptr @ei_tx_timeout, ptr null, ptr null, ptr null, ptr @ei_get_stats, ptr null, ptr null, ptr @ei_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@pcnet_open.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcnet_open\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcnet_open('%s')\0A\00", [46 x i8] zeroinitializer }, align 32
@pcnet_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&info->watchdog)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"interrupt(s) dropped!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MII is missing!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s link beat\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"found\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lost\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"autonegotiation complete: %sbaseT-%cD selected\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"link partner did not autonegotiate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switched to %s transceiver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PNA\00", [28 x i8] zeroinitializer }, align 32
@pcnet_close.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcnet_close\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcnet_close('%s')\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switched to %s port\0A\00", [43 x i8] zeroinitializer }, align 32
@if_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10baseT\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10base2\00", [24 x i8] zeroinitializer }, align 32
@pcnet_config.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcnet_config\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcnet_config\0A\00", [18 x i8] zeroinitializer }, align 32
@pcnet_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 583, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"unable to read hardware net address for io base %#3lx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr = internal global ptr @pcnet_config._entry, section ".printk_index", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NE2000\00", [25 x i8] zeroinitializer }, align 32
@pcnet_config._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015pcnet_cs: register_netdev() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.33 = internal global ptr @pcnet_config._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NE2000 (DL100%d rev %02x): \00", [36 x i8] zeroinitializer }, align 32
@pcnet_config._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cPNA, \00", [24 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.37 = internal global ptr @pcnet_config._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NE2000 Compatible: \00", [44 x i8] zeroinitializer }, align 32
@pcnet_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.25, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01cio %#3lx, irq %d,\00", [44 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.41 = internal global ptr @pcnet_config._entry.39, section ".printk_index", align 4
@pcnet_config._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.25, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c mem %#5lx,\00", [18 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.44 = internal global ptr @pcnet_config._entry.42, section ".printk_index", align 4
@pcnet_config._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.25, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c %s xcvr,\00", [20 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.47 = internal global ptr @pcnet_config._entry.45, section ".printk_index", align 4
@pcnet_config._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.25, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c hw_addr %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@pcnet_config._entry_ptr.50 = internal global ptr @pcnet_config._entry.48, section ".printk_index", align 4
@pcnet_try_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 516, ptr @.str.53, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no useable port range found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcnet_try_config\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcnet_try_config._entry_ptr = internal global ptr @pcnet_try_config._entry, section ".printk_index", align 4
@pcnet_try_config._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.2, i32 542, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid if_port requested\0A\00", [37 x i8] zeroinitializer }, align 32
@pcnet_try_config._entry_ptr.56 = internal global ptr @pcnet_try_config._entry.54, section ".printk_index", align 4
@pcnet_try_config._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.52, ptr @.str.2, i32 549, ptr @.str.59, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"this is an AX88190 card - use axnet_cs instead.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcnet_try_config._entry_ptr.60 = internal global ptr @pcnet_try_config._entry.57, section ".printk_index", align 4
@hw_info = internal global { [42 x %struct.hw_info], [104 x i8] } { [42 x %struct.hw_info] [%struct.hw_info { i32 4080, i8 0, i8 0, i8 -24, i32 1 }, %struct.hw_info { i32 4080, i8 0, i8 0, i8 -12, i32 0 }, %struct.hw_info { i32 1012, i8 0, i8 32, i8 -27, i32 0 }, %struct.hw_info { i32 18704, i8 0, i8 0, i8 -108, i32 9 }, %struct.hw_info { i32 272, i8 0, i8 64, i8 -57, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 32, i8 -24, i32 0 }, %struct.hw_info { i32 272, i8 0, i8 -128, i8 25, i32 0 }, %struct.hw_info { i32 64, i8 0, i8 -128, i8 -56, i32 0 }, %struct.hw_info { i32 272, i8 0, i8 64, i8 51, i32 0 }, %struct.hw_info { i32 448, i8 0, i8 0, i8 -76, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 0, i8 72, i32 10 }, %struct.hw_info { i32 184, i8 8, i8 0, i8 66, i32 0 }, %struct.hw_info { i32 448, i8 0, i8 64, i8 76, i32 0 }, %struct.hw_info { i32 4080, i8 8, i8 0, i8 90, i32 10 }, %struct.hw_info { i32 4080, i8 0, i8 4, i8 -84, i32 10 }, %struct.hw_info { i32 4080, i8 0, i8 6, i8 41, i32 10 }, %struct.hw_info { i32 884, i8 8, i8 0, i8 90, i32 10 }, %struct.hw_info { i32 884, i8 0, i8 4, i8 -84, i32 10 }, %struct.hw_info { i32 4080, i8 0, i8 96, i8 -121, i32 10 }, %struct.hw_info { i32 884, i8 8, i8 0, i8 23, i32 10 }, %struct.hw_info { i32 884, i8 0, i8 -64, i8 -88, i32 10 }, %struct.hw_info { i32 884, i8 0, i8 -96, i8 -80, i32 10 }, %struct.hw_info { i32 408, i8 0, i8 32, i8 -32, i32 10 }, %struct.hw_info { i32 4080, i8 0, i8 -96, i8 -80, i32 0 }, %struct.hw_info { i32 272, i8 0, i8 64, i8 -10, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 -64, i8 -16, i32 10 }, %struct.hw_info { i32 4080, i8 -30, i8 12, i8 15, i32 10 }, %struct.hw_info { i32 384, i8 0, i8 -64, i8 -16, i32 0 }, %struct.hw_info { i32 20480, i8 0, i8 0, i8 -24, i32 0 }, %struct.hw_info { i32 58, i8 0, i8 -128, i8 -58, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 -96, i8 12, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 0, i8 101, i32 10 }, %struct.hw_info { i32 4080, i8 0, i8 -128, i8 69, i32 10 }, %struct.hw_info { i32 2032, i8 0, i8 32, i8 -32, i32 0 }, %struct.hw_info { i32 272, i8 0, i8 64, i8 -107, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 32, i8 -53, i32 0 }, %struct.hw_info { i32 16384, i8 0, i8 -64, i8 27, i32 7 }, %struct.hw_info { i32 448, i8 0, i8 -64, i8 27, i32 0 }, %struct.hw_info { i32 272, i8 0, i8 -32, i8 -104, i32 0 }, %struct.hw_info { i32 96, i8 0, i8 64, i8 5, i32 0 }, %struct.hw_info { i32 4080, i8 0, i8 0, i8 76, i32 0 }, %struct.hw_info { i32 456, i8 0, i8 -96, i8 12, i32 0 }], [104 x i8] zeroinitializer }, align 32
@__const.get_prom.program_seq = private unnamed_addr constant [13 x %struct.anon.123] [%struct.anon.123 { i8 33, i8 0 }, %struct.anon.123 { i8 72, i8 14 }, %struct.anon.123 { i8 0, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 15 }, %struct.anon.123 { i8 -1, i8 7 }, %struct.anon.123 { i8 32, i8 12 }, %struct.anon.123 { i8 2, i8 13 }, %struct.anon.123 { i8 32, i8 10 }, %struct.anon.123 { i8 0, i8 11 }, %struct.anon.123 { i8 0, i8 8 }, %struct.anon.123 { i8 0, i8 9 }, %struct.anon.123 { i8 10, i8 0 }], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@default_info = internal global { %struct.hw_info, [20 x i8] } zeroinitializer, align 32
@dl10022_info = internal global { %struct.hw_info, [20 x i8] } { %struct.hw_info { i32 0, i8 0, i8 0, i8 0, i32 96 }, [20 x i8] zeroinitializer }, align 32
@dl10019_info = internal global { %struct.hw_info, [20 x i8] } { %struct.hw_info { i32 0, i8 0, i8 0, i8 0, i32 80 }, [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"DMAing conflict in dma_block_input.[DMAstat:%1x][irqlock:%1x]\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_block_input.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_block_input\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[bi=%d]\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"DMAing conflict in dma_block_output.[DMAstat:%1x][irqlock:%1x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for Tx RDC.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pcnet_reset_8390() did not complete.\0A\00", [58 x i8] zeroinitializer }, align 32
@mii_phy_probe.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mii_phy_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MII at %d is 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@pcnet_release.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcnet_release\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcnet_release\0A\00", [17 x i8] zeroinitializer }, align 32
@pcnet_detach.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcnet_detach\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcnet_detach\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AnyCom\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fast Ethernet + 56K COMBO\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATKK\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LM33-PCM-T\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"D-Link\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DME336T\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Grey Cell\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GCS3000\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Linksys\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"EtherFast 10&100 + 56K PC Card (PCMLM56)\00", [55 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINKSYS\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCMLM336\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MICRO RESEARCH\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"COMBO-L/M-336\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCMCIAs\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ComboCard\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LanModem\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IBM\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Home and Away 28.8 PC Card       \00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Home and Away Credit Card Adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"w95 Home and Away Credit Card \00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"APEX DATA\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MULTICARD\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ETHERNET-MODEM\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FAX/Modem/Ethernet Combo Card \00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2408LAN\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Socket\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CF 10/100 Ethernet Card\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Revision B\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"05/11/06\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Cardwell\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCMCIA\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETHERNET\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CNet  \00", [25 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CN30BC\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Adapter\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Edimax Technology Inc.\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Ethernet Card\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EFA   \00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EFA207\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I-O DATA\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLA\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IO DATA\00", [24 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCLATE\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"KingMax Technology Inc.\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EN10-T2\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCMCIA Ethernet Card\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCMCIA-ETHERNET-CARD\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UE2216\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UE2620\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2412LAN\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACCTON\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EN2212\00", [25 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EN2216-PCMCIA-ETHERNET\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Allied Telesis, K.K.\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CentreCOM LA100-PCM-T V2 100/10M LAN PC Card\00", [51 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Allied Telesis K.K.\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LA100-PCM V2\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CentreCOM LA-PCM_V2\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LA-PCM V3\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AmbiCom\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AMB8010\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AMB8610\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AmbiCom Inc\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AMB8002\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AMB8002T\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ECO Ethernet\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ECO Ethernet 10/100\00", [44 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AROWANA\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCMCIA Ethernet LAN Card\00", [39 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASANTE\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FriendlyNet PC Card\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Billionton\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LNT-10TB\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CF\00", [29 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"10Base-Ethernet\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CNet\00", [27 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CN40BC Ethernet\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMPU-SHACK\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BASEline PCMCIA 10 MBit Ethernetadapter\00", [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FASTline PCMCIA 10/100 Fast-Ethernet\00", [59 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONTEC\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"C-NET(PC)C-10L\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"corega\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FEther PCC-TXF\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Ether CF-TD\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corega K.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"corega Ether CF-TD LAN Card\00", [36 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"corega EtherII PCC-T\00", [43 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"corega EtherII PCC-TD\00", [42 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Corega K.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"corega Ether PCC-T\00", [45 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"corega Ether PCC-TD\00", [44 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"corega FastEther PCC-TX\00", [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Corega,K.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Ethernet LAN Card\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"corega,K.K.\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(CG-LAPCCTXD)\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CouplerlessPCMCIA\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100BASE\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CyQ've\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ELA-010\00", [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ELA-110E 10/100M LAN Card\00", [38 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DataTrek.\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NetCard \00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Dayna Communications, Inc.\00", [37 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CommuniCard E\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digicom\00", [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Palladio LAN 10/100\00", [44 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Palladio LAN 10/100 Dongless\00", [35 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIGITAL\00", [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DEPCM-XX\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DE-650\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DE-660\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DE-660+\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DFE-650\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Dual Speed\00", [21 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"10/100 PC Card\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"10/100 Port Attached PC Card\00", [35 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Dynalink\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"L10BC\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DYNALINK\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"L10C\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"E-CARD\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EIGER Labs Inc.\00", [16 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ethernet 10BaseT card\00", [42 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ethernet Combo card\00", [44 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ethernet Adapter\00", [47 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"E2000 PCMCIA Ethernet\00", [42 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Ethernet PCMCIA adapter\00", [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EP-210\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GCS2000\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GCS2220\00", [24 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GVC\00", [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NIC-2000p\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IBM Corp.\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IC-CARD\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IC-CARD+\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCETTX\00", [25 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iPort\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"10/100 Ethernet Card\00", [43 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"KANSAI ELECTRIC CO.,LTD\00", [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"KLA-PCM/T\00", [22 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KENTRONICS\00", [21 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KEP-230\00", [24 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KCI\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PE520 PCMCIA Ethernet Adapter\00", [34 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KINGMAX\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EN10T2T\00", [24 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Kingston\00", [23 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KNE-PC2\00", [24 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Kingston Technology Corp.\00", [38 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EtheRx PC Card Ethernet Adapter\00", [32 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Laneed\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LD-10/100CD\00", [20 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LD-CDF\00", [25 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LD-CDL/T\00", [23 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LD-CDS\00", [25 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LEMEL\00", [26 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LM-N89TX PRO\00", [19 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Combo PCMCIA EthernetCard (EC2T)\00", [63 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"EtherFast 10/100 Integrated PC Card (PCM100)\00", [51 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EtherFast 10/100 PC Card (PCMPC100)\00", [60 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EtherFast 10/100 PC Card (PCMPC100 V2)\00", [57 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"HomeLink Phoneline + 10/100 Network PC Card (PCM100H1)\00", [41 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Logitec\00", [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LPM-LN100TX\00", [20 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LPM-LN100TE\00", [20 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LPM-LN20T\00", [22 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LPM-LN10TE\00", [21 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LONGSHINE\00", [22 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MACNICA\00", [24 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ME1-JEIDA\00", [22 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Macsense\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MPC-10\00", [25 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Matsushita Electric Industrial Co.,LTD.\00", [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CF-VEL211\00", [22 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAXTECH\00", [24 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCN2000\00", [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MELCO\00", [26 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LPC2-T\00", [25 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LPC2-TX\00", [24 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Microcom C.E.\00", [18 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Travel Card LAN 10/100\00", [41 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Microdyne\00", [22 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NE4200\00", [25 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIDORI ELEC.\00", [19 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LT-PCMT\00", [24 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"National Semiconductor\00", [41 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InfoMover 4100\00", [17 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"InfoMover NE4100\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PC-9801N-J12\00", [19 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NETGEAR\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FA410TX\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Network Everywhere\00", [45 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fast Ethernet 10/100 PC Card\00", [35 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NextCom K.K.\00", [19 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Next Hawk\00", [22 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"10/100Mbps Ethernet Card\00", [39 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ethernet 10BaseT Card\00", [42 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ETHERNET V1.0\00", [18 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FastEthernet\00", [19 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Fast-Ethernet\00", [18 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FAST ETHERNET CARD\00", [45 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCMCIA LAN\00", [21 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LNT-10TN\00", [23 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UE2212\00", [25 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    Ethernet NE2000 Compatible\00", [33 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PRETEC\00", [25 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ethernet CompactLAN 10baseT 3.3V\00", [63 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ethernet CompactLAN 10BaseT 3.3V\00", [63 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Psion Dacom\00", [20 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Gold Card Ethernet\00", [45 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"=RELIA==\00", [23 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RIOS Systems Co.\00", [47 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PC CARD3 ETHERNET\00", [46 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RP\00", [29 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"1625B Ethernet NE2000 Compatible\00", [63 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RPTI\00", [27 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EP400 Ethernet NE2000 Compatible\00", [63 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"EP401 Ethernet NE2000 Compatible\00", [63 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RPTI LTD.\00", [22 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EP400\00", [26 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SCM\00", [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Seiko Epson Corp.\00", [46 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SMC\00", [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EZCard-10-PCMCIA\00", [47 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Socket Communications Inc\00", [38 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Socket EA PCMCIA LAN Adapter Revision D\00", [56 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Socket EA PCMCIA LAN Adapter Revision E\00", [56 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDK\00", [28 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LAK-CD031 for PCMCIA\00", [43 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Telecom Device K.K.\00", [44 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SuperSocket RE450T\00", [45 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SuperSocket RE550T\00", [45 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Hypertec\00", [23 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EP401\00", [26 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Xircom\00", [25 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CFE-10\00", [25 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CyQ've 10 Base-T LAN CARD\00", [38 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EP-210 PCMCIA LAN CARD.\00", [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETHER-C16\00", [22 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NE2000 Compatible\00", [46 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EN-6200P2\00", [22 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EN2218-LAN/MODEM\00", [47 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/PCMLM28.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"UE2218-LAN/MODEM\00", [47 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Gold Card V34 Ethernet\00", [41 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Gold Card V34 Ethernet GSM\00", [37 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCMLM28\00", [24 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOSHIBA\00", [24 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Modem/LAN Card\00", [17 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAYNA COMMUNICATIONS\00", [43 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LAN AND MODEM MULTIFUNCTION\00", [36 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cis/DP83903.cis\00", [16 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NSC MF LAN/Modem\00", [47 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Allied Telesis,K.K\00", [45 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cis/LA-PCM.cis\00", [17 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KTI\00", [28 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PE520 PLUS\00", [21 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cis/PE520.cis\00", [18 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NDC\00", [28 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cis/NE2K.cis\00", [19 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PMX   \00", [25 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PE-200\00", [25 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cis/PE-200.cis\00", [17 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TAMARACK\00", [23 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cis/tamarack.cis\00", [47 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CF Size PC Card\00", [16 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 13, i64 117]
@__sancov_gen_cov_switch_values.347 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.349 = internal global [4 x i64] [i64 2, i64 32, i64 27504, i64 27536]
@___asan_gen_.350 = private unnamed_addr constant [8 x i8] c"if_port\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 80, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [12 x i8] c"use_big_buf\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 81, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant [10 x i8] c"mem_speed\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 82, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [13 x i8] c"delay_output\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 83, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [11 x i8] c"delay_time\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 84, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [10 x i8] c"use_shmem\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 85, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [12 x i8] c"full_duplex\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 86, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [13 x i8] c"pcnet_driver\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1709, i32 29 }
@___asan_gen_.374 = private unnamed_addr constant [8 x i8] c"hw_addr\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 89, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1710, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant [10 x i8] c"pcnet_ids\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1485, i32 38 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 241, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"pcnet_netdev_ops\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 220, i32 36 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 915, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 931, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1034, i32 23 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1054, i32 23 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1063, i32 19 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1063, i32 44 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1063, i32 54 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1074, i32 24 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1076, i32 21 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1076, i32 29 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1079, i32 24 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1092, i32 23 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1093, i32 38 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1093, i32 51 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 944, i32 5 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 999, i32 19 }
@___asan_gen_.452 = private unnamed_addr constant [9 x i8] c"if_names\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 68, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 68, i32 35 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 68, i32 43 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 68, i32 54 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 574, i32 5 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 582, i32 7 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 614, i32 22 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 624, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 630, i32 19 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 633, i32 6 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 635, i32 19 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 637, i32 5 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 639, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 641, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 642, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 516, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 542, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 548, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant [8 x i8] c"hw_info\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 134, i32 23 }
@___asan_gen_.557 = private unnamed_addr constant [13 x i8] c"default_info\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 198, i32 23 }
@___asan_gen_.560 = private unnamed_addr constant [13 x i8] c"dl10022_info\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 200, i32 23 }
@___asan_gen_.563 = private unnamed_addr constant [13 x i8] c"dl10019_info\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 199, i32 23 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1141, i32 18 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1175, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1244, i32 18 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1295, i32 20 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 982, i32 18 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 899, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 654, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 261, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1493, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1494, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1495, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1496, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1497, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1498, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1499, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1500, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1501, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1502, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1503, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1504, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1505, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1506, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1523, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1524, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1525, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1526, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1527, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1528, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1529, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1530, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1531, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1532, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1533, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1534, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1535, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1536, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1537, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1538, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1539, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1540, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1541, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1542, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1543, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1544, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1545, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1547, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1548, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1549, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1550, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1551, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1552, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1553, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1554, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1555, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1556, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1557, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1558, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1559, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1560, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1561, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1562, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1563, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1564, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1565, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1566, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1567, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1568, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1569, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1570, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1571, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1572, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1573, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1574, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1575, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1576, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1577, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1578, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1579, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1580, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1581, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1582, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1583, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1584, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1585, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1586, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1587, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1588, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1590, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1591, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1592, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1593, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1594, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1595, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1596, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1597, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1598, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1599, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1600, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1601, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1602, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1603, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1604, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1605, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1606, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1607, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1608, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1609, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1610, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1611, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1612, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1614, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1615, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1616, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1617, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1618, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1619, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1620, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1621, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1622, i32 2 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1623, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1624, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1625, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1626, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1627, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1628, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1629, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1630, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1631, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1632, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1633, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1634, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1635, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1636, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1637, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1638, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1641, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1644, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1645, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1646, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1647, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1648, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1649, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1651, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1652, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1653, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1654, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1655, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1656, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1657, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1658, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1659, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1660, i32 2 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1661, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1662, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1663, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1664, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1665, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1666, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1667, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1668, i32 2 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1669, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1670, i32 2 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1673, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1674, i32 2 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1675, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1676, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1677, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1678, i32 2 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1681, i32 2 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1682, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1683, i32 2 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1684, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1685, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1686, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1687, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1688, i32 2 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1690, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1691, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1692, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1693, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1694, i32 2 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1695, i32 2 }
@___asan_gen_.1421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1422 = private constant [40 x i8] c"../drivers/net/ethernet/8390/pcnet_cs.c\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1422, i32 1696, i32 2 }
@llvm.compiler.used = appending global [398 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_delay_outputtype352, ptr @__UNIQUE_ID_delay_timetype353, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmware368, ptr @__UNIQUE_ID_firmware369, ptr @__UNIQUE_ID_firmware370, ptr @__UNIQUE_ID_firmware371, ptr @__UNIQUE_ID_full_duplextype355, ptr @__UNIQUE_ID_hw_addrtype356, ptr @__UNIQUE_ID_if_porttype349, ptr @__UNIQUE_ID_license348, ptr @__UNIQUE_ID_mem_speedtype351, ptr @__UNIQUE_ID_use_big_buftype350, ptr @__UNIQUE_ID_use_shmemtype354, ptr @__exitcall_pcnet_driver_exit, ptr @__initcall__kmod_pcnet_cs__372_1718_pcnet_driver_init6, ptr @__param_delay_output, ptr @__param_delay_time, ptr @__param_full_duplex, ptr @__param_hw_addr, ptr @__param_if_port, ptr @__param_mem_speed, ptr @__param_use_big_buf, ptr @__param_use_shmem, ptr @pcnet_config._entry, ptr @pcnet_config._entry.31, ptr @pcnet_config._entry.35, ptr @pcnet_config._entry.39, ptr @pcnet_config._entry.42, ptr @pcnet_config._entry.45, ptr @pcnet_config._entry.48, ptr @pcnet_config._entry_ptr, ptr @pcnet_config._entry_ptr.33, ptr @pcnet_config._entry_ptr.37, ptr @pcnet_config._entry_ptr.41, ptr @pcnet_config._entry_ptr.44, ptr @pcnet_config._entry_ptr.47, ptr @pcnet_config._entry_ptr.50, ptr @pcnet_driver_exit, ptr @pcnet_try_config._entry, ptr @pcnet_try_config._entry.54, ptr @pcnet_try_config._entry.57, ptr @pcnet_try_config._entry_ptr, ptr @pcnet_try_config._entry_ptr.56, ptr @pcnet_try_config._entry_ptr.60, ptr @if_port, ptr @use_big_buf, ptr @mem_speed, ptr @delay_output, ptr @delay_time, ptr @use_shmem, ptr @full_duplex, ptr @pcnet_driver, ptr @hw_addr, ptr @.str, ptr @pcnet_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pcnet_netdev_ops, ptr @.str.4, ptr @.str.5, ptr @pcnet_open.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @if_names, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @hw_info, ptr @default_info, ptr @dl10022_info, ptr @dl10019_info, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346], section "llvm.metadata"
@0 = internal global [358 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_big_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_output to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_shmem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_duplex to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_ids to i32), i32 10920, i32 13664, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_config._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_try_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_try_config._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcnet_try_config._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_info to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl10022_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl10019_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @pcnet_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcnet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @pcnet_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_probe.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !669

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_probe.__UNIQUE_ID_ddebug357, ptr noundef %dev3, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @__alloc_ei_netdev(i32 noundef 80) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2420
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %add.ptr.i, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %2 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_flags, align 4
  %or = or i32 %3, 2049
  store i32 %or, ptr %config_flags, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pcnet_netdev_ops, ptr %netdev_ops, align 8
  %call9 = tail call fastcc i32 @pcnet_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_detach.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !669

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_detach.__UNIQUE_ID_ddebug358, ptr noundef %dev3, ptr noundef nonnull @.str.72) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_release.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_detach, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !669

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_release.__UNIQUE_ID_ddebug360, ptr noundef %dev.i, ptr noundef nonnull @.str.70) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %flags.i = getelementptr i8, ptr %3, i32 2424
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.end.i.pcnet_release.exit_crit_edge, label %if.then5.i

do.end.i.pcnet_release.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcnet_release.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i = getelementptr i8, ptr %3, i32 2428
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef %7) #6
  br label %pcnet_release.exit

pcnet_release.exit:                               ; preds = %if.then5.i, %do.end.i.pcnet_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  tail call void @free_netdev(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @pcnet_reset_8390(ptr noundef %3)
  tail call void @NS8390_init(ptr noundef %3, i32 noundef 1) #6
  tail call void @netif_device_attach(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_ei_netdev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcnet_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %has_shmem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_shmem) #6
  %2 = ptrtoint ptr %has_shmem to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %has_shmem, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_config.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !669

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_config.__UNIQUE_ID_ddebug359, ptr noundef %dev4, ptr noundef nonnull @.str.26) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = call fastcc ptr @pcnet_try_config(ptr noundef %link, ptr noundef nonnull %has_shmem, i32 noundef 0)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %do.end
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  %call8 = call fastcc ptr @pcnet_try_config(ptr noundef %link, ptr noundef nonnull %has_shmem, i32 noundef 1)
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %do.end12, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_addr, align 32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev13, ptr noundef nonnull @.str.27, i32 noundef %4) #9
  br label %failed

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %local_hw_info.0 = phi ptr [ %call5, %do.end.if.end15_crit_edge ], [ %call8, %if.then7.if.end15_crit_edge ]
  %flags = getelementptr inbounds %struct.hw_info, ptr %local_hw_info.0, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %flags16 = getelementptr i8, ptr %1, i32 2424
  %7 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags16, align 4
  %8 = load i32, ptr @delay_output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not = icmp ne i32 %8, 0
  %cond = zext i1 %tobool17.not to i32
  %or = or i32 %6, %cond
  %9 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %flags16, align 4
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %10 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %manf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %11)
  %cmp19 = icmp eq i16 %11, 260
  br i1 %cmp19, label %land.lhs.true, label %if.end15.if.end35_crit_edge

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end15
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %12 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %card_id, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %13, label %land.lhs.true.if.end35_crit_edge [
    i16 13, label %land.lhs.true.if.then33_crit_edge
    i16 117, label %land.lhs.true.if.then33_crit_edge210
    i16 10, label %land.lhs.true.if.then33_crit_edge211
  ]

land.lhs.true.if.then33_crit_edge211:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

land.lhs.true.if.then33_crit_edge210:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %land.lhs.true.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge210, %land.lhs.true.if.then33_crit_edge211
  %and = and i32 %or, -5
  %15 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %flags16, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %land.lhs.true.if.end35_crit_edge, %if.end15.if.end35_crit_edge
  %16 = load i32, ptr @use_big_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool36.not = icmp eq i32 %16, 0
  br i1 %tobool36.not, label %if.then37, label %if.end35.if.end40_crit_edge

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags16, align 4
  %and39 = and i32 %18, -5
  store i32 %and39, ptr %flags16, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %19 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags16, align 4
  %and42 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %21 = shl nuw nsw i32 %and42, 14
  %.185 = select i1 %tobool43.not, i32 64, i32 1
  %22 = load i32, ptr @use_shmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46 = icmp eq i32 %22, 0
  br i1 %cmp46, label %if.end40.if.then57_crit_edge, label %lor.lhs.false48

if.end40.if.then57_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false48:                                  ; preds = %if.end40
  %23 = ptrtoint ptr %has_shmem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %has_shmem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool49.not = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp51 = icmp eq i32 %22, -1
  %or.cond = select i1 %tobool49.not, i1 %cmp51, i1 false
  br i1 %or.cond, label %lor.lhs.false48.if.then57_crit_edge, label %lor.lhs.false53

lor.lhs.false48.if.then57_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false53:                                  ; preds = %lor.lhs.false48
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %cond22.i = select i1 %tobool43.not, i32 16384, i32 32768
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 3
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %30, 3
  store i32 %or.i, ptr %flags.i, align 4
  %31 = load ptr, ptr %arrayidx.i, align 4
  %flags25.i = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags25.i, align 4
  %or26.i = or i32 %33, 64
  store i32 %or26.i, ptr %flags25.i, align 4
  %34 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %36 = load ptr, ptr %arrayidx.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond22.i, ptr %end.i, align 4
  %38 = load ptr, ptr %arrayidx.i, align 4
  %39 = load i32, ptr @mem_speed, align 4
  %call33.i = tail call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %38, i32 noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i, label %if.end35.i, label %lor.lhs.false53.if.then57_crit_edge

lor.lhs.false53.if.then57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.end35.i:                                       ; preds = %lor.lhs.false53
  %cond22.i.neg = select i1 %tobool43.not, i32 -16384, i32 -32768
  %shl36.i = shl nuw nsw i32 %.185, 8
  %add37.i = or i32 %shl36.i, %21
  %sub38.i = and i32 %add37.i, %cond22.i.neg
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %call41.i = tail call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %41, i32 noundef %sub38.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end35.i.if.then57_crit_edge

if.end35.i.if.then57_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

if.end44.i:                                       ; preds = %if.end35.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end.i.i, align 4
  %sub.i193.i = sub i32 1, %45
  %add.i.i = add i32 %sub.i193.i, %47
  %call51.i = tail call ptr @ioremap(i32 noundef %45, i32 noundef %add.i.i) #6
  %base.i = getelementptr i8, ptr %26, i32 2428
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call51.i, ptr %base.i, align 4
  %tobool53.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool53.not.i, label %if.end44.i.if.then57_crit_edge, label %if.end44.i.for.body.i_crit_edge, !prof !670

if.end44.i.for.body.i_crit_edge:                  ; preds = %if.end44.i
  br label %for.body.i

if.end44.i.if.then57_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end44.i.for.body.i_crit_edge
  %i.0218.i = phi i32 [ %add64.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end44.i.for.body.i_crit_edge ]
  %49 = lshr exact i32 %i.0218.i, 1
  %conv61.i = trunc i32 %49 to i16
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %51, i32 %sub38.i
  %add.ptr63.i = getelementptr i8, ptr %add.ptr.i186, i32 %i.0218.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr63.i, i16 %conv61.i) #6, !srcloc !671
  %add64.i = add nuw nsw i32 %i.0218.i, 2
  %cmp59.i = icmp ult i32 %i.0218.i, 3070
  br i1 %cmp59.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 21474800) #6
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.inc79.i.for.body68.i_crit_edge, %for.end.i
  %i.1219.i = phi i32 [ 0, %for.end.i ], [ %add80.i, %for.inc79.i.for.body68.i_crit_edge ]
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %54, i32 %sub38.i
  %add.ptr71.i = getelementptr i8, ptr %add.ptr70.i, i32 %i.1219.i
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71.i) #6, !srcloc !672
  %conv73.i = zext i16 %55 to i32
  %56 = lshr exact i32 %i.1219.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv73.i)
  %cmp75.not.i = icmp eq i32 %56, %conv73.i
  br i1 %cmp75.not.i, label %for.inc79.i, label %if.then84.i

for.inc79.i:                                      ; preds = %for.body68.i
  %add80.i = add nuw nsw i32 %i.1219.i, 2
  %cmp66.i = icmp ult i32 %i.1219.i, 3070
  br i1 %cmp66.i, label %for.inc79.i.for.body68.i_crit_edge, label %setup_shmem_window.exit

for.inc79.i.for.body68.i_crit_edge:               ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68.i

if.then84.i:                                      ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcnet_reset_8390(ptr noundef %26) #6
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  tail call void @iounmap(ptr noundef %58) #6
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %call88.i = tail call i32 @pcmcia_release_window(ptr noundef %link, ptr noundef %60) #6
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %base.i, align 4
  br label %if.then57

setup_shmem_window.exit:                          ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcnet_reset_8390(ptr noundef %26) #6
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %63, i32 %sub38.i
  %mem.i = getelementptr i8, ptr %26, i32 2332
  %64 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr92.i, ptr %mem.i, align 4
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i, align 4
  %end.i195.i = getelementptr inbounds %struct.resource, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %end.i195.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i195.i, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %66, align 4
  %sub.i196.i = add i32 %68, 1
  %add.i197.i = sub i32 %sub.i196.i, %70
  %priv98.i = getelementptr i8, ptr %26, i32 2412
  %71 = ptrtoint ptr %priv98.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add.i197.i, ptr %priv98.i, align 4
  %72 = ptrtoint ptr %add.ptr92.i to i32
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 4
  %73 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %mem_start.i, align 4
  %74 = load ptr, ptr %arrayidx.i, align 4
  %end.i200.i = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %end.i200.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %end.i200.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %74, align 4
  %sub.i201.i = add i32 %72, 1
  %add.i202.i = add i32 %sub.i201.i, %76
  %add105.i = sub i32 %add.i202.i, %78
  %mem_end.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 3
  %79 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add105.i, ptr %mem_end.i, align 8
  %conv106.i = trunc i32 %.185 to i8
  %tx_start_page.i = getelementptr i8, ptr %26, i32 2345
  %80 = ptrtoint ptr %tx_start_page.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv106.i, ptr %tx_start_page.i, align 1
  %conv109.i = or i8 %conv106.i, 12
  %rx_start_page.i = getelementptr i8, ptr %26, i32 2346
  %81 = ptrtoint ptr %rx_start_page.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv109.i, ptr %rx_start_page.i, align 2
  %82 = load ptr, ptr %arrayidx.i, align 4
  %end.i205.i = getelementptr inbounds %struct.resource, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %end.i205.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %end.i205.i, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %82, align 4
  %87 = add i32 %84, 1
  %88 = add i32 %sub38.i, %86
  %sub114.i = sub i32 %87, %88
  %shr115.i = lshr i32 %sub114.i, 8
  %add116.i = add nuw nsw i32 %shr115.i, %.185
  %conv117.i = trunc i32 %add116.i to i8
  %stop_page.i = getelementptr i8, ptr %26, i32 2347
  %89 = ptrtoint ptr %stop_page.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv117.i, ptr %stop_page.i, align 1
  %get_8390_hdr.i = getelementptr i8, ptr %26, i32 2312
  %90 = ptrtoint ptr %get_8390_hdr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @shmem_get_8390_hdr, ptr %get_8390_hdr.i, align 4
  %block_input.i = getelementptr i8, ptr %26, i32 2320
  %91 = ptrtoint ptr %block_input.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @shmem_block_input, ptr %block_input.i, align 4
  %block_output.i = getelementptr i8, ptr %26, i32 2316
  %92 = ptrtoint ptr %block_output.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @shmem_block_output, ptr %block_output.i, align 4
  %flags122.i = getelementptr i8, ptr %26, i32 2424
  %93 = ptrtoint ptr %flags122.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags122.i, align 4
  %or123.i = or i32 %94, 128
  store i32 %or123.i, ptr %flags122.i, align 4
  br label %if.end59

if.then57:                                        ; preds = %if.then84.i, %if.end44.i.if.then57_crit_edge, %if.end35.i.if.then57_crit_edge, %lor.lhs.false53.if.then57_crit_edge, %lor.lhs.false48.if.then57_crit_edge, %if.end40.if.then57_crit_edge
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %conv.i189 = trunc i32 %.185 to i8
  %tx_start_page.i190 = getelementptr i8, ptr %96, i32 2345
  %97 = ptrtoint ptr %tx_start_page.i190 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i189, ptr %tx_start_page.i190, align 1
  %conv1.i = or i8 %conv.i189, 12
  %rx_start_page.i191 = getelementptr i8, ptr %96, i32 2346
  %98 = ptrtoint ptr %rx_start_page.i191 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1.i, ptr %rx_start_page.i191, align 2
  %conv3.i = select i1 %tobool43.not, i8 -128, i8 -1
  %stop_page.i192 = getelementptr i8, ptr %96, i32 2347
  %99 = ptrtoint ptr %stop_page.i192 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv3.i, ptr %stop_page.i192, align 1
  %get_8390_hdr.i193 = getelementptr i8, ptr %96, i32 2312
  %100 = ptrtoint ptr %get_8390_hdr.i193 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @dma_get_8390_hdr, ptr %get_8390_hdr.i193, align 4
  %block_input.i194 = getelementptr i8, ptr %96, i32 2320
  %101 = ptrtoint ptr %block_input.i194 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @dma_block_input, ptr %block_input.i194, align 4
  %block_output.i195 = getelementptr i8, ptr %96, i32 2316
  %102 = ptrtoint ptr %block_output.i195 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @dma_block_output, ptr %block_output.i195, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %setup_shmem_window.exit
  %add.ptr.i196 = getelementptr i8, ptr %1, i32 2304
  %103 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.30, ptr %add.ptr.i196, align 4
  %word16 = getelementptr i8, ptr %1, i32 2344
  %104 = ptrtoint ptr %word16 to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load = load i8, ptr %word16, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %word16, align 4
  %reset_8390 = getelementptr i8, ptr %1, i32 2308
  %105 = ptrtoint ptr %reset_8390 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @pcnet_reset_8390, ptr %reset_8390, align 4
  %106 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags16, align 4
  %and64 = and i32 %107, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end59.if.end67_crit_edge, label %if.then66

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then66:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mii_phy_probe(ptr noundef %1)
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end59.if.end67_crit_edge
  %dev68 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %108 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %dev68, ptr %parent, align 8
  %call70 = tail call i32 @register_netdev(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71.not = icmp eq i32 %call70, 0
  br i1 %cmp71.not, label %if.end79, label %do.end76

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %failed

if.end79:                                         ; preds = %if.end67
  %109 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags16, align 4
  %and81 = and i32 %110, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else103, label %if.then83

if.then83:                                        ; preds = %if.end79
  %base_addr84 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %base_addr84 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base_addr84, align 32
  %add = add i32 %112, 26
  %and85 = and i32 %add, 1048575
  %add86 = or i32 %and85, -18874368
  %113 = inttoptr i32 %add86 to ptr
  %114 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !674
  %115 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags16, align 4
  %and91 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  %cond93 = select i1 %tobool92.not, i32 19, i32 22
  %conv94 = zext i8 %114 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %cond93, i32 noundef %conv94) #9
  %pna_phy = getelementptr i8, ptr %1, i32 2490
  %117 = ptrtoint ptr %pna_phy to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pna_phy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool95.not = icmp eq i8 %118, 0
  br i1 %tobool95.not, label %if.then83.do.end107_crit_edge, label %do.end99

if.then83.do.end107_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

do.end99:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %do.end107

if.else103:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.38) #9
  br label %do.end107

do.end107:                                        ; preds = %if.else103, %do.end99, %if.then83.do.end107_crit_edge
  %base_addr109 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %119 = ptrtoint ptr %base_addr109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %base_addr109, align 32
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %121 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq, align 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %120, i32 noundef %122) #9
  %123 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags16, align 4
  %and112 = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.end107.if.end120_crit_edge, label %do.end117

do.end107.if.end120_crit_edge:                    ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

do.end117:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #8
  %mem_start = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 4
  %125 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mem_start, align 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %126) #9
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %do.end107.if.end120_crit_edge
  %127 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags16, align 4
  %and122 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.do.end133_crit_edge, label %do.end127

if.end120.do.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end133

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %129 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %130 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %131 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx, align 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %132) #9
  br label %do.end133

do.end133:                                        ; preds = %do.end127, %if.end120.do.end133_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %133 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_addr, align 64
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %134) #9
  br label %cleanup

failed:                                           ; preds = %do.end76, %do.end12
  %135 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_release.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_config, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !669

if.then.i:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_release.__UNIQUE_ID_ddebug360, ptr noundef %dev.i, ptr noundef nonnull @.str.70) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %failed
  %flags.i200 = getelementptr i8, ptr %136, i32 2424
  %137 = ptrtoint ptr %flags.i200 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags.i200, align 4
  %and.i = and i32 %138, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.end.i.pcnet_release.exit_crit_edge, label %if.then5.i

do.end.i.pcnet_release.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcnet_release.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %base.i201 = getelementptr i8, ptr %136, i32 2428
  %139 = ptrtoint ptr %base.i201 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i201, align 4
  tail call void @iounmap(ptr noundef %140) #6
  br label %pcnet_release.exit

pcnet_release.exit:                               ; preds = %if.then5.i, %do.end.i.pcnet_release.exit_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  br label %cleanup

cleanup:                                          ; preds = %pcnet_release.exit, %do.end133
  %retval.0 = phi i32 [ -19, %pcnet_release.exit ], [ 0, %do.end133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_shmem) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_open.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_open, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !669

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_open.__UNIQUE_ID_ddebug362, ptr noundef %dev4, ptr noundef nonnull @.str.5, ptr noundef %dev) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pcmcia_dev_present(ptr noundef %1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  tail call fastcc void @set_misc_reg(ptr noundef %dev)
  %add = add i32 %3, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #6, !srcloc !676
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @ei_irq_wrapper, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %open, align 4
  %eth_phy = getelementptr i8, ptr %dev, i32 2489
  %9 = ptrtoint ptr %eth_phy to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eth_phy, align 1
  %phy_id = getelementptr i8, ptr %dev, i32 2488
  %11 = ptrtoint ptr %phy_id to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %phy_id, align 4
  %link_status = getelementptr i8, ptr %dev, i32 2492
  %12 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %link_status, align 4
  %watchdog = getelementptr i8, ptr %dev, i32 2432
  tail call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @ei_watchdog, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @pcnet_open.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add19 = add i32 %13, 100
  %call20 = tail call i32 @mod_timer(ptr noundef %watchdog, i32 noundef %add19) #6
  %call21 = tail call i32 @ei_open(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end14 ], [ -19, %do.end.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2420
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcnet_close.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcnet_close, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !669

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcnet_close.__UNIQUE_ID_ddebug363, ptr noundef %dev4, ptr noundef nonnull @.str.20, ptr noundef %dev) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @ei_close(ptr noundef %dev) #6
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #6
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %watchdog = getelementptr i8, ptr %dev, i32 2432
  %call7 = tail call i32 @del_timer_sync(ptr noundef %watchdog) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_set_multicast_list(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ei_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 28
  %flags = getelementptr i8, ptr %dev, i32 2424
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %if.end.sw.bb3_crit_edge
    i32 35145, label %sw.bb10
  ]

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phy_id = getelementptr i8, ptr %dev, i32 2488
  %5 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phy_id, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %if.end.sw.bb3_crit_edge
  %8 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ifr_ifru.i, align 2
  %conv5 = zext i16 %9 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %reg_num, align 2
  %12 = and i16 %11, 31
  %and7 = zext i16 %12 to i32
  %call8 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv5, i32 noundef %and7)
  %conv9 = trunc i32 %call8 to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %13 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv9, ptr %val_out, align 2
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ifr_ifru.i, align 2
  %conv12 = zext i16 %15 to i32
  %reg_num13 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg_num13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_num13, align 2
  %18 = and i16 %17, 31
  %and15 = zext i16 %18 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %val_in, align 2
  %conv16 = zext i16 %20 to i32
  tail call fastcc void @mdio_write(i32 noundef %add, i32 noundef %conv12, i32 noundef %and15, i32 noundef %conv16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb10 ], [ 0, %sw.bb3 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp5.not = icmp eq i8 %1, %3
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr i8, ptr %dev, i32 2424
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  %6 = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %7 = icmp ult i8 %6, -2
  br i1 %7, label %if.else.cleanup_crit_edge, label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %if_port, align 2
  %arrayidx = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %10) #9
  tail call void @NS8390_init(ptr noundef %dev, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end17 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ei_get_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ei_poll(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_misc_reg(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %flags = getelementptr i8, ptr %dev, i32 2424
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %1, 24
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %6 = and i8 %5, -4
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  %9 = zext i1 %cmp to i8
  %spec.select = or i8 %6, %9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 2
  %15 = and i8 %12, 8
  %16 = or i8 %spec.select, %15
  %17 = or i8 %16, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %17) #6, !srcloc !676
  br label %if.end26

if.end26:                                         ; preds = %if.then, %entry.if.end26_crit_edge
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and28 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else50, label %if.then30

if.then30:                                        ; preds = %if.end26
  %and32 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body, label %if.then34

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %add35 = add i32 %1, 28
  %eth_phy = getelementptr i8, ptr %dev, i32 2489
  %20 = ptrtoint ptr %eth_phy to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %eth_phy, align 1
  %conv36 = zext i8 %21 to i32
  tail call fastcc void @mdio_write(i32 noundef %add35, i32 noundef %conv36, i32 noundef 4, i32 noundef 481)
  %22 = ptrtoint ptr %eth_phy to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %eth_phy, align 1
  %conv39 = zext i8 %23 to i32
  tail call fastcc void @mdio_write(i32 noundef %add35, i32 noundef %conv39, i32 noundef 0, i32 noundef 0)
  %24 = ptrtoint ptr %eth_phy to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eth_phy, align 1
  %conv42 = zext i8 %25 to i32
  tail call fastcc void @mdio_write(i32 noundef %add35, i32 noundef %conv42, i32 noundef 0, i32 noundef 4608)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %mii_reset = getelementptr i8, ptr %dev, i32 2496
  %27 = ptrtoint ptr %mii_reset to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mii_reset, align 4
  br label %if.end65

do.body:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !678
  tail call void @arm_heavy_mb() #6
  %28 = load i32, ptr @full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool43.not = icmp eq i32 %28, 0
  %conv44 = select i1 %tobool43.not, i8 0, i8 4
  %add45 = add i32 %1, 29
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %29 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv44) #6, !srcloc !676
  br label %if.end65

if.else50:                                        ; preds = %if.end26
  %and52 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else50.if.end65_crit_edge, label %if.then54

if.else50.if.end65_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then54:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  %add55 = add i32 %1, 28
  %eth_phy56 = getelementptr i8, ptr %dev, i32 2489
  %30 = ptrtoint ptr %eth_phy56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %eth_phy56, align 1
  %conv57 = zext i8 %31 to i32
  tail call fastcc void @mdio_write(i32 noundef %add55, i32 noundef %conv57, i32 noundef 4, i32 noundef 481)
  %32 = ptrtoint ptr %eth_phy56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %eth_phy56, align 1
  %conv60 = zext i8 %33 to i32
  tail call fastcc void @mdio_write(i32 noundef %add55, i32 noundef %conv60, i32 noundef 0, i32 noundef 0)
  %34 = ptrtoint ptr %eth_phy56 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %eth_phy56, align 1
  %conv63 = zext i8 %35 to i32
  tail call fastcc void @mdio_write(i32 noundef %add55, i32 noundef %conv63, i32 noundef 0, i32 noundef 4608)
  br label %if.end65

if.end65:                                         ; preds = %if.then54, %if.else50.if.end65_crit_edge, %do.body, %if.then34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ei_irq_wrapper(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ei_interrupt(i32 noundef %irq, ptr noundef %dev_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stale = getelementptr i8, ptr %dev_id, i32 2480
  %0 = ptrtoint ptr %stale to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stale, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ei_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_addr, align 32
  %add = add i32 %5, 28
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stale = getelementptr i8, ptr %t, i32 48
  %9 = ptrtoint ptr %stale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stale, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %stale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %add1 = add i32 %5, 7
  %and.i = and i32 %add1, 1048575
  %add.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %13 = and i8 %12, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  %fast_poll = getelementptr i8, ptr %t, i32 52
  %14 = ptrtoint ptr %fast_poll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fast_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.then6, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 64
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @ei_interrupt(i32 noundef %17, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end7.ei_irq_wrapper.exit_crit_edge

if.end7.ei_irq_wrapper.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ei_irq_wrapper.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %stale.i = getelementptr i8, ptr %3, i32 2480
  %18 = ptrtoint ptr %stale.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %stale.i, align 4
  br label %ei_irq_wrapper.exit

ei_irq_wrapper.exit:                              ; preds = %if.then.i, %if.end7.ei_irq_wrapper.exit_crit_edge
  %19 = ptrtoint ptr %fast_poll to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %fast_poll, align 4
  br label %if.end10

if.end10:                                         ; preds = %ei_irq_wrapper.exit, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %fast_poll11 = getelementptr i8, ptr %t, i32 52
  %20 = ptrtoint ptr %fast_poll11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fast_poll11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %21, -1
  %22 = ptrtoint ptr %fast_poll11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec, ptr %fast_poll11, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %flags = getelementptr i8, ptr %t, i32 -8
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and18 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %phy_id = getelementptr i8, ptr %t, i32 56
  %25 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phy_id, align 4
  %conv22 = zext i8 %26 to i32
  %call23 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv22, i32 noundef 1)
  %27 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %phy_id, align 4
  %conv25 = zext i8 %28 to i32
  %call26 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv25, i32 noundef 1)
  %conv27 = trunc i32 %call26 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %tobool28.not = icmp eq i16 %conv27, 0
  %conv29 = and i32 %call26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv29)
  %cmp = icmp eq i32 %conv29, 65535
  %or.cond = or i1 %tobool28.not, %cmp
  br i1 %or.cond, label %if.then31, label %if.end39

if.then31:                                        ; preds = %if.end21
  %eth_phy = getelementptr i8, ptr %t, i32 57
  %29 = ptrtoint ptr %eth_phy to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %eth_phy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool32.not = icmp eq i8 %30, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %eth_phy to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %eth_phy, align 1
  %32 = ptrtoint ptr %phy_id to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %phy_id, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #9
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and37 = and i32 %34, -65
  store i32 %and37, ptr %flags, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end21
  %conv42 = and i16 %conv27, 4
  %link_status = getelementptr i8, ptr %t, i32 60
  %35 = ptrtoint ptr %link_status to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %conv42, i16 %36)
  %cmp45.not = icmp eq i16 %conv42, %36
  br i1 %cmp45.not, label %if.end39.if.end110_crit_edge, label %if.then47

if.end39.if.end110_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then47:                                        ; preds = %if.end39
  %37 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %phy_id, align 4
  %conv49 = zext i8 %38 to i32
  %call50 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv49, i32 noundef 5)
  %conv51 = trunc i32 %call50 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv42)
  %tobool53.not = icmp eq i16 %conv42, 0
  %cond = select i1 %tobool53.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #9
  br i1 %tobool53.not, label %if.then47.if.end108_crit_edge, label %land.lhs.true56

if.then47.if.end108_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

land.lhs.true56:                                  ; preds = %if.then47
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and58 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %land.lhs.true73.critedge, label %do.body

do.body:                                          ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !679
  tail call void @arm_heavy_mb() #6
  %and62 = and i32 %call50, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %conv65 = select i1 %tobool63.not, i8 0, i8 4
  %add66 = add i32 %5, 29
  %and67 = and i32 %add66, 1048575
  %add68 = or i32 %and67, -18874368
  %41 = inttoptr i32 %add68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv65) #6, !srcloc !676
  br label %if.then87

land.lhs.true73.critedge:                         ; preds = %land.lhs.true56
  %and75 = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true73.critedge.if.then87_crit_edge, label %if.then77

land.lhs.true73.critedge.if.then87_crit_edge:     ; preds = %land.lhs.true73.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

if.then77:                                        ; preds = %land.lhs.true73.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base_addr, align 32
  %and80 = and i32 %call50, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %conv83 = select i1 %tobool81.not, i16 0, i16 1024
  tail call fastcc void @write_asic(i32 noundef %43, i16 noundef signext %conv83)
  br label %if.then87

if.then87:                                        ; preds = %if.then77, %land.lhs.true73.critedge.if.then87_crit_edge, %do.body
  %44 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %phy_id, align 4
  %eth_phy90 = getelementptr i8, ptr %t, i32 57
  %46 = ptrtoint ptr %eth_phy90 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %eth_phy90, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp92 = icmp eq i8 %45, %47
  br i1 %cmp92, label %if.then94, label %if.then87.if.end107_crit_edge

if.then87.if.end107_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then94:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv51)
  %tobool95.not = icmp eq i16 %conv51, 0
  br i1 %tobool95.not, label %if.else105, label %if.then96

if.then96:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  %and98 = and i32 %call50, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  %cond100 = select i1 %tobool99.not, ptr @.str.14, ptr @.str.13
  %and102 = and i32 %call50, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %cond104 = select i1 %tobool103.not, i32 72, i32 70
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond100, i32 noundef %cond104) #9
  br label %if.end107

if.else105:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.15) #9
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then96, %if.then87.if.end107_crit_edge
  tail call void @NS8390_init(ptr noundef %3, i32 noundef 1) #6
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then47.if.end108_crit_edge
  %48 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv42, ptr %link_status, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end108, %if.end39.if.end110_crit_edge
  %pna_phy = getelementptr i8, ptr %t, i32 58
  %49 = ptrtoint ptr %pna_phy to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pna_phy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool112.not = icmp eq i8 %50, 0
  br i1 %tobool112.not, label %if.end110.cleanup_crit_edge, label %land.lhs.true113

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true113:                                 ; preds = %if.end110
  %mii_reset = getelementptr i8, ptr %t, i32 64
  %51 = ptrtoint ptr %mii_reset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mii_reset, align 4
  %add114 = add i32 %52, 600
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add114, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp115 = icmp slt i32 %sub, 0
  br i1 %cmp115, label %if.then117, label %land.lhs.true113.cleanup_crit_edge

land.lhs.true113.cleanup_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then117:                                       ; preds = %land.lhs.true113
  %eth_phy118 = getelementptr i8, ptr %t, i32 57
  %54 = ptrtoint ptr %eth_phy118 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %eth_phy118, align 1
  %conv119 = zext i8 %55 to i32
  %call120 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %conv119, i32 noundef 1)
  %56 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %phy_id, align 4
  %58 = ptrtoint ptr %pna_phy to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pna_phy, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp127 = icmp ne i8 %57, %59
  %conv122258 = and i32 %call120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv122258)
  %tobool131.not = icmp eq i32 %conv122258, 0
  %or.cond255 = select i1 %cmp127, i1 true, i1 %tobool131.not
  %or.cond255.not = xor i1 %or.cond255, true
  %or.cond256 = select i1 %cmp127, i1 %tobool131.not, i1 false
  %or.cond257 = select i1 %or.cond255.not, i1 true, i1 %or.cond256
  br i1 %or.cond257, label %if.then141, label %if.then117.cleanup_crit_edge

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then141:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  %conv143 = zext i8 %57 to i32
  tail call fastcc void @mdio_write(i32 noundef %add, i32 noundef %conv143, i32 noundef 0, i32 noundef 1024)
  %60 = ptrtoint ptr %pna_phy to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pna_phy, align 2
  %62 = ptrtoint ptr %eth_phy118 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %eth_phy118, align 1
  %xor253 = xor i8 %63, %61
  %64 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %phy_id, align 4
  %xor150254 = xor i8 %xor253, %65
  store i8 %xor150254, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %xor150254, i8 %63)
  %cmp156 = icmp eq i8 %xor150254, %63
  %cond158 = select i1 %cmp156, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond158) #9
  %66 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %phy_id, align 4
  %conv160 = zext i8 %67 to i32
  %68 = ptrtoint ptr %eth_phy118 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %eth_phy118, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp165 = icmp eq i8 %67, %69
  %cond167 = select i1 %cmp165, i32 4096, i32 0
  tail call fastcc void @mdio_write(i32 noundef %add, i32 noundef %conv160, i32 noundef 0, i32 noundef %cond167)
  %70 = ptrtoint ptr %link_status to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %link_status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %72 = ptrtoint ptr %mii_reset to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mii_reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.then117.cleanup_crit_edge, %land.lhs.true113.cleanup_crit_edge, %if.end110.cleanup_crit_edge, %if.else, %if.then33, %if.end17.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %.sink259 = phi i32 [ 1, %if.then13 ], [ 100, %if.then117.cleanup_crit_edge ], [ 100, %if.end110.cleanup_crit_edge ], [ 100, %land.lhs.true113.cleanup_crit_edge ], [ 100, %if.then141 ], [ 100, %if.then33 ], [ 100, %if.else ], [ 100, %if.end17.cleanup_crit_edge ], [ 100, %entry.cleanup_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add172 = add i32 %73, %.sink259
  %expires174 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %74 = ptrtoint ptr %expires174 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add172, ptr %expires174, align 4
  tail call void @add_timer(ptr noundef %t) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdio_write(i32 noundef %addr, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 23
  %shl1 = shl i32 %loc, 18
  %or = or i32 %shl, %shl1
  %or3 = or i32 %or, %value
  %and = and i32 %addr, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !680
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !681
  %3 = and i8 %2, 15
  %4 = or i8 %3, 112
  %5 = or i8 %2, -16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %bits.021.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !682
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %4) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !683
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %5) #6, !srcloc !676
  %inc.i = add nuw nsw i32 %bits.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.preheader, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.body.preheader:                               ; preds = %do.body.i
  %or4 = or i32 %or3, 1342308352
  %6 = and i8 %1, 15
  br label %for.body

for.cond24.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i8 %6, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !684
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %6) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !685
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %or38) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !684
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %6) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !685
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %or38) #6, !srcloc !676
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.059 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 31, %for.body.preheader ]
  %shl8 = shl nuw i32 1, %i.059
  %and9 = and i32 %shl8, %or4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool.not, i8 48, i8 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !686
  tail call void @arm_heavy_mb() #6
  %or10 = or i8 %cond, %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %or10) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !687
  tail call void @arm_heavy_mb() #6
  %conv20 = or i8 %or10, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv20) #6, !srcloc !676
  %dec = add nsw i32 %i.059, -1
  %cmp.not = icmp eq i32 %i.059, 0
  br i1 %cmp.not, label %for.cond24.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdio_read(i32 noundef %addr, i32 noundef %phy_id, i32 noundef %loc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 5
  %or = or i32 %shl, %loc
  %and = and i32 %addr, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !688
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !681
  %3 = and i8 %2, 15
  %4 = or i8 %3, 112
  %5 = or i8 %2, -16
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %bits.021.i = phi i32 [ 0, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !682
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %4) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !683
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %5) #6, !srcloc !676
  %inc.i = add nuw nsw i32 %bits.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.body.preheader, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

for.body.preheader:                               ; preds = %do.body.i
  %or1 = or i32 %or, 6144
  %6 = and i8 %1, 15
  br label %for.body

for.cond22.preheader:                             ; preds = %for.body
  %or48 = or i8 %6, -128
  br label %do.body26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.072 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 13, %for.body.preheader ]
  %shl6 = shl nuw i32 1, %i.072
  %and7 = and i32 %shl6, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool.not, i8 48, i8 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !689
  tail call void @arm_heavy_mb() #6
  %or8 = or i8 %cond, %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %or8) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !690
  tail call void @arm_heavy_mb() #6
  %conv18 = or i8 %or8, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv18) #6, !srcloc !676
  %dec = add nsw i32 %i.072, -1
  %cmp.not = icmp eq i32 %i.072, 0
  br i1 %cmp.not, label %for.cond22.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %for.cond22.preheader
  %i.174 = phi i32 [ 19, %for.cond22.preheader ], [ %dec54, %do.body26.do.body26_crit_edge ]
  %retval2.073 = phi i32 [ 0, %for.cond22.preheader ], [ %or44, %do.body26.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !691
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %6) #6, !srcloc !676
  %shl33 = shl i32 %retval2.073, 1
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !692
  %8 = lshr i8 %7, 4
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  %or44 = or i32 %shl33, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !693
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %or48) #6, !srcloc !676
  %dec54 = add nsw i32 %i.174, -1
  %cmp23 = icmp ugt i32 %i.174, 1
  br i1 %cmp23, label %do.body26.do.body26_crit_edge, label %for.end55

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

for.end55:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %and56 = and i32 %retval2.073, 65535
  ret i32 %and56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_asic(i32 noundef %ioaddr, i16 noundef signext %asic_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %ioaddr, 30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !694
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %add, 1048575
  %add2.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !695
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 72) #6, !srcloc !676
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 10, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.07.i
  %and9.i = and i32 %shl.i, 1540
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %conv12.i = select i1 %tobool.not.i, i8 72, i8 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv12.i) #6, !srcloc !676
  %conv16.i = or i8 %conv12.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv16.i) #6, !srcloc !676
  %dec.i = add nsw i32 %i.07.i, -1
  %cmp.not.i = icmp eq i32 %i.07.i, 0
  br i1 %cmp.not.i, label %do.body17.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.body17.i:                                      ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !696
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 72) #6, !srcloc !676
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %do.body17.i
  %i.19.i = phi i32 [ 16, %do.body17.i ], [ %dec38.i, %for.body26.i.for.body26.i_crit_edge ]
  %retval1.08.i = phi i32 [ 0, %do.body17.i ], [ %or36.i, %for.body26.i.for.body26.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 76) #6, !srcloc !676
  %shl27.i = shl i32 %retval1.08.i, 1
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !697
  %2 = and i8 %1, 1
  %3 = zext i8 %2 to i32
  %or36.i = or i32 %shl27.i, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 72) #6, !srcloc !676
  %dec38.i = add nsw i32 %i.19.i, -1
  %cmp24.i = icmp ugt i32 %i.19.i, 1
  br i1 %cmp24.i, label %for.body26.i.for.body26.i_crit_edge, label %read_eeprom.exit

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i

read_eeprom.exit:                                 ; preds = %for.body26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !698
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #6, !srcloc !676
  %4 = trunc i32 %or36.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !699
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !700
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 25) #6, !srcloc !676
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %read_eeprom.exit
  %i.013 = phi i32 [ 9, %read_eeprom.exit ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.013
  %and12 = and i32 %shl, 770
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %conv16 = select i1 %tobool.not, i8 25, i8 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv16) #6, !srcloc !676
  %conv20 = or i8 %conv16, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv20) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv16) #6, !srcloc !676
  %dec = add nsw i32 %i.013, -1
  %cmp.not = icmp eq i32 %i.013, 0
  br i1 %cmp.not, label %do.body24, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body24:                                        ; preds = %for.body
  %conv2 = or i16 %4, %asic_data
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !701
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 24) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !702
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 28) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !703
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 24) #6, !srcloc !676
  %conv46 = sext i16 %conv2 to i32
  br label %for.body45

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %do.body24
  %i.114 = phi i32 [ 15, %do.body24 ], [ %dec63, %for.body45.for.body45_crit_edge ]
  %5 = lshr i32 %conv46, %i.114
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %conv54 = or i8 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv54) #6, !srcloc !676
  %conv58 = or i8 %7, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv58) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv54) #6, !srcloc !676
  %dec63 = add nsw i32 %i.114, -1
  %cmp43.not = icmp eq i32 %i.114, 0
  br i1 %cmp43.not, label %do.body65, label %for.body45.for.body45_crit_edge

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

do.body65:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !704
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 17) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !705
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 21) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !706
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 17) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !707
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #6, !srcloc !676
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @NS8390_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ei_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcnet_try_config(ptr noundef %link, ptr nocapture noundef writeonly %has_shmem, i32 noundef %try) unnamed_addr #2 align 64 {
entry:
  %addr.i147 = alloca [6 x i8], align 1
  %addr.i137 = alloca [6 x i8], align 1
  %addr.i128 = alloca [6 x i8], align 1
  %addr.i113 = alloca [6 x i8], align 1
  %prom.i = alloca [32 x i8], align 1
  %addr.i = alloca [6 x i8], align 1
  %priv1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %priv1) #6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %try, ptr %priv1, align 4
  %call2 = call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @pcnet_confcheck, ptr noundef nonnull %priv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.51) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priv1, align 4
  %and = and i32 %4, 16
  %5 = ptrtoint ptr %has_shmem to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %has_shmem, align 4
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %sub.i = add i32 %11, 1
  %add.i = sub i32 %sub.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp = icmp eq i32 %add.i, 8
  br i1 %cmp, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %14 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_flags, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %config_flags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 17
  %16 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %manf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 164, i16 %17)
  %cmp10 = icmp eq i16 %17, 164
  br i1 %cmp10, label %land.lhs.true, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %18 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %card_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %19)
  %cmp13 = icmp eq i16 %19, 46
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %20 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config_index, align 4
  %or16 = or i32 %21, 16
  store i32 %or16, ptr %config_index, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %call18 = call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 8
  %irq23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %24 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %irq23, align 4
  %25 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %base_addr, align 32
  %flags = getelementptr i8, ptr %1, i32 2424
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and26 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else40, label %if.then28

if.then28:                                        ; preds = %if.end21
  %32 = load i32, ptr @if_port, align 4
  %.off = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then33, label %do.end37

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = trunc i32 %32 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %33 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv34, ptr %if_port, align 2
  br label %if.end42

do.end37:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev38, ptr noundef nonnull @.str.55) #9
  br label %if.end42

if.else40:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %if_port41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %34 = ptrtoint ptr %if_port41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %if_port41, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %do.end37, %if.then33
  %config_base = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 11
  %35 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %36)
  %cmp43 = icmp eq i32 %36, 960
  br i1 %cmp43, label %land.lhs.true45, label %if.end42.if.end60_crit_edge

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true45:                                  ; preds = %if.end42
  %37 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %manf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 329, i16 %38)
  %cmp48 = icmp eq i16 %38, 329
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true45.if.end60_crit_edge

land.lhs.true45.if.end60_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true50:                                  ; preds = %land.lhs.true45
  %card_id51 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 18
  %39 = ptrtoint ptr %card_id51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %card_id51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15957, i16 %40)
  %cmp53 = icmp eq i16 %40, -15957
  br i1 %cmp53, label %do.end58, label %land.lhs.true50.if.end60_crit_edge

land.lhs.true50.if.end60_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end58:                                         ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  %dev59 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59, ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true50.if.end60_crit_edge, %land.lhs.true45.if.end60_crit_edge, %if.end42.if.end60_crit_edge
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #6
  %43 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %44 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %45 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %47 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.pcmcia_device, ptr %link, i32 0, i32 7, i32 2
  %48 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %52, 33
  store i32 %or.i, ptr %flags.i, align 4
  %53 = load ptr, ptr %arrayidx.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %53, align 4
  %55 = load ptr, ptr %arrayidx.i, align 4
  %end.i112 = getelementptr inbounds %struct.resource, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %end.i112 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %end.i112, align 4
  %57 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @pcmcia_request_window(ptr noundef %link, ptr noundef %57, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end60.get_hwinfo.exit.thread_crit_edge

if.end60.get_hwinfo.exit.thread_crit_edge:        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_hwinfo.exit.thread

if.end.i:                                         ; preds = %if.end60
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %61
  %add.i.i = add i32 %sub.i.i, %63
  %call13.i = call ptr @ioremap(i32 noundef %61, i32 noundef %add.i.i) #6
  %tobool.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool.not.i, label %if.then17.i, label %if.end.i.for.body.i_crit_edge, !prof !670

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %call20.i = call i32 @pcmcia_release_window(ptr noundef %link, ptr noundef %65) #6
  br label %get_hwinfo.exit.thread

for.body.i:                                       ; preds = %for.inc80.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cmp22138.i = phi i1 [ %cmp22.i, %for.inc80.i.for.body.i_crit_edge ], [ true, %if.end.i.for.body.i_crit_edge ]
  %i.0136.i = phi i32 [ %inc81.i, %for.inc80.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx25.i = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.0136.i
  %68 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx25.i, align 4
  %end.i126.i = getelementptr inbounds %struct.resource, ptr %67, i32 0, i32 1
  %70 = ptrtoint ptr %end.i126.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %end.i126.i, align 4
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %67, align 4
  %sub.i127.neg.i = xor i32 %71, -1
  %add.i128.neg.i = add i32 %73, %sub.i127.neg.i
  %and.i = and i32 %add.i128.neg.i, %69
  %call29.i = call i32 @pcmcia_map_mem_page(ptr noundef %link, ptr noundef %67, i32 noundef %and.i) #6
  %74 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx25.i, align 4
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i, align 4
  %end.i129.i = getelementptr inbounds %struct.resource, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %end.i129.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %end.i129.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %77, align 4
  %sub35.i = sub i32 %79, %81
  %and36.i = and i32 %sub35.i, %75
  %arrayidx37.i = getelementptr i8, ptr %call13.i, i32 %and36.i
  %82 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx37.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !708
  %a0.i = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.0136.i, i32 1
  %83 = ptrtoint ptr %a0.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %a0.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp42.i = icmp eq i8 %82, %84
  br i1 %cmp42.i, label %land.lhs.true.i, label %for.body.i.for.inc80.i_crit_edge

for.body.i.for.inc80.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc80.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.ptr46.i = getelementptr i8, ptr %arrayidx37.i, i32 2
  %85 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr46.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !709
  %a1.i = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.0136.i, i32 2
  %86 = ptrtoint ptr %a1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %a1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp53.i = icmp eq i8 %85, %87
  br i1 %cmp53.i, label %land.lhs.true55.i, label %land.lhs.true.i.for.inc80.i_crit_edge

land.lhs.true.i.for.inc80.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc80.i

land.lhs.true55.i:                                ; preds = %land.lhs.true.i
  %add.ptr58.i = getelementptr i8, ptr %arrayidx37.i, i32 4
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !710
  %a2.i = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.0136.i, i32 3
  %89 = ptrtoint ptr %a2.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %a2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp65.i = icmp eq i8 %88, %90
  br i1 %cmp65.i, label %for.cond68.preheader.i, label %land.lhs.true55.i.for.inc80.i_crit_edge

land.lhs.true55.i.for.inc80.i_crit_edge:          ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc80.i

for.cond68.preheader.i:                           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx37.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %92 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %addr.i, align 1
  %93 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr46.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %94 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %43, align 1
  %95 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr58.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %96 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %44, align 1
  %add.ptr74.3.i = getelementptr i8, ptr %arrayidx37.i, i32 6
  %97 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74.3.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %98 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %45, align 1
  %add.ptr74.4.i = getelementptr i8, ptr %arrayidx37.i, i32 8
  %99 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74.4.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %100 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %46, align 1
  %add.ptr74.5.i = getelementptr i8, ptr %arrayidx37.i, i32 10
  %101 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74.5.i) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !711
  %102 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %47, align 1
  call void @dev_addr_mod(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #6
  br label %for.end82.i

for.inc80.i:                                      ; preds = %land.lhs.true55.i.for.inc80.i_crit_edge, %land.lhs.true.i.for.inc80.i_crit_edge, %for.body.i.for.inc80.i_crit_edge
  %inc81.i = add nuw nsw i32 %i.0136.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %i.0136.i)
  %cmp22.i = icmp ult i32 %i.0136.i, 41
  %exitcond.not.i = icmp eq i32 %inc81.i, 42
  br i1 %exitcond.not.i, label %for.inc80.i.for.end82.i_crit_edge, label %for.inc80.i.for.body.i_crit_edge

for.inc80.i.for.body.i_crit_edge:                 ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc80.i.for.end82.i_crit_edge:                ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end82.i

for.end82.i:                                      ; preds = %for.inc80.i.for.end82.i_crit_edge, %for.cond68.preheader.i
  %i.0135.i = phi i32 [ %i.0136.i, %for.cond68.preheader.i ], [ 42, %for.inc80.i.for.end82.i_crit_edge ]
  %cmp22133.i = phi i1 [ %cmp22138.i, %for.cond68.preheader.i ], [ %cmp22.i, %for.inc80.i.for.end82.i_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call13.i) #6
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %call85.i = call i32 @pcmcia_release_window(ptr noundef %link, ptr noundef %104) #6
  br i1 %cmp22133.i, label %get_hwinfo.exit, label %for.end82.i.get_hwinfo.exit.thread_crit_edge

for.end82.i.get_hwinfo.exit.thread_crit_edge:     ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_hwinfo.exit.thread

get_hwinfo.exit.thread:                           ; preds = %for.end82.i.get_hwinfo.exit.thread_crit_edge, %if.then17.i, %if.end60.get_hwinfo.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  br label %if.then63

get_hwinfo.exit:                                  ; preds = %for.end82.i
  %add.ptr88.i = getelementptr %struct.hw_info, ptr @hw_info, i32 %i.0135.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #6
  %tobool62.not = icmp eq ptr %add.ptr88.i, null
  br i1 %tobool62.not, label %get_hwinfo.exit.if.then63_crit_edge, label %get_hwinfo.exit.cleanup_crit_edge

get_hwinfo.exit.cleanup_crit_edge:                ; preds = %get_hwinfo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_hwinfo.exit.if.then63_crit_edge:              ; preds = %get_hwinfo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.then63:                                        ; preds = %get_hwinfo.exit.if.then63_crit_edge, %get_hwinfo.exit.thread
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %base_addr.i, align 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i113) #6
  %109 = getelementptr inbounds [6 x i8], ptr %addr.i113, i32 0, i32 2
  %110 = getelementptr inbounds [6 x i8], ptr %addr.i113, i32 0, i32 4
  %111 = call ptr @memset(ptr %addr.i113, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prom.i) #6
  %112 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 4
  %113 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 8
  %114 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 28
  %115 = call ptr @memset(ptr %prom.i, i32 255, i32 32)
  call void @pcnet_reset_8390(ptr noundef %106) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %121(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %122(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %123(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %124(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %125(i32 noundef 214748000) #6
  br label %for.body.i120

for.cond2.preheader.i:                            ; preds = %for.body.i120
  %126 = getelementptr inbounds [6 x i8], ptr %addr.i113, i32 0, i32 3
  %127 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 2
  %128 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 10
  %add6.i = add i32 %108, 16
  %and.i115 = and i32 %add6.i, 1048575
  %add7.i = or i32 %and.i115, -18874368
  %129 = inttoptr i32 %add7.i to ptr
  br label %for.body5.i

for.body.i120:                                    ; preds = %for.body.i120.for.body.i120_crit_edge, %if.then63
  %i.094.i = phi i32 [ %inc.i, %for.body.i120.for.body.i120_crit_edge ], [ 0, %if.then63 ]
  %arrayidx.i116 = getelementptr [13 x %struct.anon.123], ptr @__const.get_prom.program_seq, i32 0, i32 %i.094.i
  %130 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i116, align 1
  %offset.i = getelementptr [13 x %struct.anon.123], ptr @__const.get_prom.program_seq, i32 0, i32 %i.094.i, i32 1
  %132 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %offset.i, align 1
  %conv.i = zext i8 %133 to i32
  %add.i117 = add i32 %108, %conv.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  call void @arm_heavy_mb() #6
  %and.i.i = and i32 %add.i117, 1048575
  %add.i.i118 = or i32 %and.i.i, -18874368
  %134 = inttoptr i32 %add.i.i118 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 %131) #6, !srcloc !676
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i119, label %for.cond2.preheader.i, label %for.body.i120.for.body.i120_crit_edge

for.body.i120.for.body.i120_crit_edge:            ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i120

for.cond13.preheader.i:                           ; preds = %for.body5.i
  %135 = getelementptr inbounds [6 x i8], ptr %addr.i113, i32 0, i32 1
  %136 = getelementptr inbounds [6 x i8], ptr %addr.i113, i32 0, i32 5
  %137 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 6
  %138 = getelementptr inbounds [32 x i8], ptr %prom.i, i32 0, i32 30
  %139 = ptrtoint ptr %prom.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %prom.i, align 1
  br label %for.body16.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond2.preheader.i
  %i.195.i = phi i32 [ 0, %for.cond2.preheader.i ], [ %inc11.i, %for.body5.i.for.body5.i_crit_edge ]
  %141 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %129) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !712
  %arrayidx9.i = getelementptr [32 x i8], ptr %prom.i, i32 0, i32 %i.195.i
  %142 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx9.i, align 1
  %inc11.i = add nuw nsw i32 %i.195.i, 1
  %exitcond102.not.i = icmp eq i32 %inc11.i, 32
  br i1 %exitcond102.not.i, label %for.cond13.preheader.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.body16.i:                                     ; preds = %for.inc36.i.for.body16.i_crit_edge, %for.cond13.preheader.i
  %cmp1498.i = phi i1 [ true, %for.cond13.preheader.i ], [ %cmp14.i, %for.inc36.i.for.body16.i_crit_edge ]
  %i.296.i = phi i32 [ 0, %for.cond13.preheader.i ], [ %inc37.i, %for.inc36.i.for.body16.i_crit_edge ]
  %a0.i121 = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.296.i, i32 1
  %143 = ptrtoint ptr %a0.i121 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %a0.i121, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %144)
  %cmp21.i = icmp eq i8 %140, %144
  br i1 %cmp21.i, label %land.lhs.true.i123, label %for.body16.i.for.inc36.i_crit_edge

for.body16.i.for.inc36.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36.i

land.lhs.true.i123:                               ; preds = %for.body16.i
  %145 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %127, align 1
  %a1.i122 = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.296.i, i32 2
  %147 = ptrtoint ptr %a1.i122 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %a1.i122, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp27.i = icmp eq i8 %146, %148
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true.i123.for.inc36.i_crit_edge

land.lhs.true.i123.for.inc36.i_crit_edge:         ; preds = %land.lhs.true.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36.i

land.lhs.true29.i:                                ; preds = %land.lhs.true.i123
  %149 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %112, align 1
  %a2.i124 = getelementptr [42 x %struct.hw_info], ptr @hw_info, i32 0, i32 %i.296.i, i32 3
  %151 = ptrtoint ptr %a2.i124 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %a2.i124, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp34.i = icmp eq i8 %150, %152
  br i1 %cmp34.i, label %land.lhs.true29.i.if.then50.i_crit_edge, label %land.lhs.true29.i.for.inc36.i_crit_edge

land.lhs.true29.i.for.inc36.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36.i

land.lhs.true29.i.if.then50.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

for.inc36.i:                                      ; preds = %land.lhs.true29.i.for.inc36.i_crit_edge, %land.lhs.true.i123.for.inc36.i_crit_edge, %for.body16.i.for.inc36.i_crit_edge
  %inc37.i = add nuw nsw i32 %i.296.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %i.296.i)
  %cmp14.i = icmp ult i32 %i.296.i, 41
  %exitcond103.not.i = icmp eq i32 %inc37.i, 42
  br i1 %exitcond103.not.i, label %lor.lhs.false.critedge.i, label %for.inc36.i.for.body16.i_crit_edge

for.inc36.i.for.body16.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

lor.lhs.false.critedge.i:                         ; preds = %for.inc36.i
  %153 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %154)
  %cmp43.i = icmp eq i8 %154, 87
  br i1 %cmp43.i, label %land.lhs.true45.i, label %lor.lhs.false.critedge.i.if.end65.thread161_crit_edge

lor.lhs.false.critedge.i.if.end65.thread161_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.thread161

land.lhs.true45.i:                                ; preds = %lor.lhs.false.critedge.i
  %155 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %156)
  %cmp48.i = icmp eq i8 %156, 87
  br i1 %cmp48.i, label %land.lhs.true45.i.if.then50.i_crit_edge, label %land.lhs.true45.i.if.end65.thread161_crit_edge

land.lhs.true45.i.if.end65.thread161_crit_edge:   ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.thread161

land.lhs.true45.i.if.then50.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50.i

if.then50.i:                                      ; preds = %land.lhs.true45.i.if.then50.i_crit_edge, %land.lhs.true29.i.if.then50.i_crit_edge
  %i.292.i = phi i32 [ 42, %land.lhs.true45.i.if.then50.i_crit_edge ], [ %i.296.i, %land.lhs.true29.i.if.then50.i_crit_edge ]
  %cmp1490.i = phi i1 [ %cmp14.i, %land.lhs.true45.i.if.then50.i_crit_edge ], [ %cmp1498.i, %land.lhs.true29.i.if.then50.i_crit_edge ]
  %157 = ptrtoint ptr %addr.i113 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %140, ptr %addr.i113, align 1
  %158 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %127, align 1
  %160 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %135, align 1
  %161 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %112, align 1
  %163 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %109, align 1
  %164 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %137, align 1
  %166 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %126, align 1
  %167 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %113, align 1
  %169 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %110, align 1
  %170 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %128, align 1
  %172 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %136, align 1
  call void @dev_addr_mod(ptr noundef %106, i32 noundef 0, ptr noundef nonnull %addr.i113, i32 noundef 6) #6
  br i1 %cmp1490.i, label %if.end65, label %if.end65.thread164

if.end65.thread164:                               ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prom.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i113) #6
  br label %cleanup

if.end65.thread161:                               ; preds = %land.lhs.true45.i.if.end65.thread161_crit_edge, %lor.lhs.false.critedge.i.if.end65.thread161_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prom.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i113) #6
  br label %if.then67

if.end65:                                         ; preds = %if.then50.i
  %add.ptr.i125 = getelementptr %struct.hw_info, ptr @hw_info, i32 %i.292.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prom.i) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i113) #6
  %tobool66.not = icmp eq ptr %add.ptr.i125, null
  br i1 %tobool66.not, label %if.end65.if.then67_crit_edge, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65.if.then67_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.then67:                                        ; preds = %if.end65.if.then67_crit_edge, %if.end65.thread161
  %173 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i128) #6
  %base_addr.i130 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 5
  %175 = getelementptr inbounds i8, ptr %addr.i128, i32 1
  %176 = call ptr @memset(ptr %175, i32 255, i32 5)
  %177 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %base_addr.i130, align 32
  %add.i131 = add i32 %178, 20
  %and.i.i132 = and i32 %add.i131, 1048575
  %add.i.i133 = or i32 %and.i.i132, -18874368
  %179 = inttoptr i32 %add.i.i133 to ptr
  %180 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %179) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.i134 = zext i8 %180 to i32
  %181 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %base_addr.i130, align 32
  %add.1.i = add i32 %182, 21
  %and.i.1.i = and i32 %add.1.i, 1048575
  %add.i.1.i = or i32 %and.i.1.i, -18874368
  %183 = inttoptr i32 %add.i.1.i to ptr
  %184 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %183) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.1.i = zext i8 %184 to i32
  %add2.1.i = add nuw nsw i32 %conv.1.i, %conv.i134
  %185 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %base_addr.i130, align 32
  %add.2.i = add i32 %186, 22
  %and.i.2.i = and i32 %add.2.i, 1048575
  %add.i.2.i = or i32 %and.i.2.i, -18874368
  %187 = inttoptr i32 %add.i.2.i to ptr
  %188 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %187) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.2.i = zext i8 %188 to i32
  %add2.2.i = add nuw nsw i32 %add2.1.i, %conv.2.i
  %189 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %base_addr.i130, align 32
  %add.3.i = add i32 %190, 23
  %and.i.3.i = and i32 %add.3.i, 1048575
  %add.i.3.i = or i32 %and.i.3.i, -18874368
  %191 = inttoptr i32 %add.i.3.i to ptr
  %192 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %191) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.3.i = zext i8 %192 to i32
  %add2.3.i = add nuw nsw i32 %add2.2.i, %conv.3.i
  %193 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %base_addr.i130, align 32
  %add.4.i = add i32 %194, 24
  %and.i.4.i = and i32 %add.4.i, 1048575
  %add.i.4.i = or i32 %and.i.4.i, -18874368
  %195 = inttoptr i32 %add.i.4.i to ptr
  %196 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %195) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.4.i = zext i8 %196 to i32
  %add2.4.i = add nuw nsw i32 %add2.3.i, %conv.4.i
  %197 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %base_addr.i130, align 32
  %add.5.i = add i32 %198, 25
  %and.i.5.i = and i32 %add.5.i, 1048575
  %add.i.5.i = or i32 %and.i.5.i, -18874368
  %199 = inttoptr i32 %add.i.5.i to ptr
  %200 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %199) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.5.i = zext i8 %200 to i32
  %add2.5.i = add nuw nsw i32 %add2.4.i, %conv.5.i
  %201 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %base_addr.i130, align 32
  %add.6.i = add i32 %202, 26
  %and.i.6.i = and i32 %add.6.i, 1048575
  %add.i.6.i = or i32 %and.i.6.i, -18874368
  %203 = inttoptr i32 %add.i.6.i to ptr
  %204 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %203) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.6.i = zext i8 %204 to i32
  %add2.6.i = add nuw nsw i32 %add2.5.i, %conv.6.i
  %205 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %base_addr.i130, align 32
  %add.7.i = add i32 %206, 27
  %and.i.7.i = and i32 %add.7.i, 1048575
  %add.i.7.i = or i32 %and.i.7.i, -18874368
  %207 = inttoptr i32 %add.i.7.i to ptr
  %208 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %207) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %conv.7.i = zext i8 %208 to i32
  %add2.7.i = add nuw nsw i32 %add2.6.i, %conv.7.i
  %phi.cast.7.i = and i32 %add2.7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %phi.cast.7.i)
  %cmp5.not.i = icmp eq i32 %phi.cast.7.i, 255
  br i1 %cmp5.not.i, label %if.end73.thread174, label %if.then71

if.end73.thread174:                               ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %209 = getelementptr inbounds [6 x i8], ptr %addr.i128, i32 0, i32 5
  %210 = getelementptr inbounds [6 x i8], ptr %addr.i128, i32 0, i32 4
  %211 = getelementptr inbounds [6 x i8], ptr %addr.i128, i32 0, i32 3
  %212 = getelementptr inbounds [6 x i8], ptr %addr.i128, i32 0, i32 2
  %213 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %base_addr.i130, align 32
  %add13.i = add i32 %214, 20
  %and.i43.i = and i32 %add13.i, 1048575
  %add.i44.i = or i32 %and.i43.i, -18874368
  %215 = inttoptr i32 %add.i44.i to ptr
  %216 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %217 = ptrtoint ptr %addr.i128 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %addr.i128, align 1
  %218 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %base_addr.i130, align 32
  %add13.1.i = add i32 %219, 21
  %and.i43.1.i = and i32 %add13.1.i, 1048575
  %add.i44.1.i = or i32 %and.i43.1.i, -18874368
  %220 = inttoptr i32 %add.i44.1.i to ptr
  %221 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %220) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %222 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %175, align 1
  %223 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %base_addr.i130, align 32
  %add13.2.i = add i32 %224, 22
  %and.i43.2.i = and i32 %add13.2.i, 1048575
  %add.i44.2.i = or i32 %and.i43.2.i, -18874368
  %225 = inttoptr i32 %add.i44.2.i to ptr
  %226 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %225) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %227 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %212, align 1
  %228 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %base_addr.i130, align 32
  %add13.3.i = add i32 %229, 23
  %and.i43.3.i = and i32 %add13.3.i, 1048575
  %add.i44.3.i = or i32 %and.i43.3.i, -18874368
  %230 = inttoptr i32 %add.i44.3.i to ptr
  %231 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %230) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %232 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %211, align 1
  %233 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %base_addr.i130, align 32
  %add13.4.i = add i32 %234, 24
  %and.i43.4.i = and i32 %add13.4.i, 1048575
  %add.i44.4.i = or i32 %and.i43.4.i, -18874368
  %235 = inttoptr i32 %add.i44.4.i to ptr
  %236 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %235) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %237 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %210, align 1
  %238 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %base_addr.i130, align 32
  %add13.5.i = add i32 %239, 25
  %and.i43.5.i = and i32 %add13.5.i, 1048575
  %add.i44.5.i = or i32 %and.i43.5.i, -18874368
  %240 = inttoptr i32 %add.i44.5.i to ptr
  %241 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %240) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %242 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %209, align 1
  call void @dev_addr_mod(ptr noundef %174, i32 noundef 0, ptr noundef nonnull %addr.i128, i32 noundef 6) #6
  %243 = ptrtoint ptr %base_addr.i130 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %base_addr.i130, align 32
  %add19.i = add i32 %244, 31
  %and.i135 = and i32 %add19.i, 1048575
  %add20.i = or i32 %and.i135, -18874368
  %245 = inttoptr i32 %add20.i to ptr
  %246 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %245) #6, !srcloc !673
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !713
  %247 = and i8 %246, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %247)
  %248 = icmp eq i8 %247, -111
  %249 = select i1 %248, ptr @dl10022_info, ptr @dl10019_info
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i128) #6
  br label %cleanup

if.then71:                                        ; preds = %if.then67
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i128) #6
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 8
  %base_addr.i139 = getelementptr inbounds %struct.net_device, ptr %251, i32 0, i32 5
  %252 = ptrtoint ptr %base_addr.i139 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %base_addr.i139, align 32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i137) #6
  %254 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %config_base, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %255)
  %cmp.not.i140 = icmp eq i32 %255, 960
  br i1 %cmp.not.i140, label %if.end.i146, label %if.then71.if.then75_crit_edge

if.then71.if.then75_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then75

if.end.i146:                                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %256 = getelementptr inbounds [6 x i8], ptr %addr.i137, i32 0, i32 5
  %257 = getelementptr inbounds [6 x i8], ptr %addr.i137, i32 0, i32 4
  %258 = getelementptr inbounds [6 x i8], ptr %addr.i137, i32 0, i32 3
  %259 = getelementptr inbounds [6 x i8], ptr %addr.i137, i32 0, i32 2
  %260 = getelementptr inbounds [6 x i8], ptr %addr.i137, i32 0, i32 1
  %add.i141 = add i32 %253, 14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  call void @arm_heavy_mb() #6
  %and.i.i142 = and i32 %add.i141, 1048575
  %add.i.i143 = or i32 %and.i.i142, -18874368
  %261 = inttoptr i32 %add.i.i143 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %261, i8 1) #6, !srcloc !676
  %add1.i = add i32 %253, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  call void @arm_heavy_mb() #6
  %and.i1.i = and i32 %add1.i, 1048575
  %add.i2.i = or i32 %and.i1.i, -18874368
  %262 = inttoptr i32 %add.i2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %262, i8 0) #6, !srcloc !676
  %add2.i = add i32 %253, 9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  call void @arm_heavy_mb() #6
  %and.i3.i = and i32 %add2.i, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %263 = inttoptr i32 %add.i4.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %263, i8 4) #6, !srcloc !676
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  call void @arm_heavy_mb() #6
  %and.i5.i = and i32 %253, 1048575
  %add.i6.i = or i32 %and.i5.i, -18874368
  %264 = inttoptr i32 %add.i6.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %264, i8 10) #6, !srcloc !676
  %add5.i = add i32 %253, 16
  %and.i144 = and i32 %add5.i, 1048575
  %add6.i145 = or i32 %and.i144, -18874368
  %265 = inttoptr i32 %add6.i145 to ptr
  %266 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %265) #6, !srcloc !672
  %267 = call i16 @llvm.bswap.i16(i16 %266) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !714
  %conv9.i = trunc i16 %267 to i8
  %268 = ptrtoint ptr %addr.i137 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv9.i, ptr %addr.i137, align 1
  %269 = lshr i16 %267, 8
  %conv10.i = trunc i16 %269 to i8
  %270 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv10.i, ptr %260, align 1
  %271 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %265) #6, !srcloc !672
  %272 = call i16 @llvm.bswap.i16(i16 %271) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !714
  %conv9.1.i = trunc i16 %272 to i8
  %273 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv9.1.i, ptr %259, align 1
  %274 = lshr i16 %272, 8
  %conv10.1.i = trunc i16 %274 to i8
  %275 = ptrtoint ptr %258 to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv10.1.i, ptr %258, align 1
  %276 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %265) #6, !srcloc !672
  %277 = call i16 @llvm.bswap.i16(i16 %276) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !714
  %conv9.2.i = trunc i16 %277 to i8
  %278 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %conv9.2.i, ptr %257, align 1
  %279 = lshr i16 %277, 8
  %conv10.2.i = trunc i16 %279 to i8
  %280 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv10.2.i, ptr %256, align 1
  call void @dev_addr_mod(ptr noundef %251, i32 noundef 0, ptr noundef nonnull %addr.i137, i32 noundef 6) #6
  br label %if.then75

if.then75:                                        ; preds = %if.end.i146, %if.then71.if.then75_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i137) #6
  %281 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i147) #6
  %283 = getelementptr inbounds [6 x i8], ptr %addr.i147, i32 0, i32 1
  %284 = getelementptr inbounds [6 x i8], ptr %addr.i147, i32 0, i32 2
  %285 = getelementptr inbounds [6 x i8], ptr %addr.i147, i32 0, i32 3
  %286 = getelementptr inbounds [6 x i8], ptr %addr.i147, i32 0, i32 4
  %287 = getelementptr inbounds [6 x i8], ptr %addr.i147, i32 0, i32 5
  %288 = load i32, ptr @hw_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %cmp1.not.i = icmp eq i32 %288, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then75.for.body7.preheader.i_crit_edge

if.then75.for.body7.preheader.i_crit_edge:        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.i:                                        ; preds = %if.then75
  %289 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp1.not.1.i = icmp eq i32 %289, 0
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.for.body7.preheader.i_crit_edge

for.inc.i.for.body7.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %290 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp1.not.2.i = icmp eq i32 %290, 0
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.body7.preheader.i_crit_edge

for.inc.1.i.for.body7.preheader.i_crit_edge:      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %291 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp1.not.3.i = icmp eq i32 %291, 0
  br i1 %cmp1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.body7.preheader.i_crit_edge

for.inc.2.i.for.body7.preheader.i_crit_edge:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %292 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp1.not.4.i = icmp eq i32 %292, 0
  br i1 %cmp1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.body7.preheader.i_crit_edge

for.inc.3.i.for.body7.preheader.i_crit_edge:      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %293 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp1.not.5.i = icmp eq i32 %293, 0
  br i1 %cmp1.not.5.i, label %for.inc.4.i.get_hwired.exit_crit_edge, label %for.inc.4.i.for.body7.preheader.i_crit_edge

for.inc.4.i.for.body7.preheader.i_crit_edge:      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.preheader.i

for.inc.4.i.get_hwired.exit_crit_edge:            ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_hwired.exit

for.body7.preheader.i:                            ; preds = %for.inc.4.i.for.body7.preheader.i_crit_edge, %for.inc.3.i.for.body7.preheader.i_crit_edge, %for.inc.2.i.for.body7.preheader.i_crit_edge, %for.inc.1.i.for.body7.preheader.i_crit_edge, %for.inc.i.for.body7.preheader.i_crit_edge, %if.then75.for.body7.preheader.i_crit_edge
  %conv.i149 = trunc i32 %288 to i8
  %294 = ptrtoint ptr %addr.i147 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv.i149, ptr %addr.i147, align 1
  %295 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 1), align 4
  %conv.1.i150 = trunc i32 %295 to i8
  %296 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv.1.i150, ptr %283, align 1
  %297 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 2), align 4
  %conv.2.i151 = trunc i32 %297 to i8
  %298 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv.2.i151, ptr %284, align 1
  %299 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 3), align 4
  %conv.3.i152 = trunc i32 %299 to i8
  %300 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv.3.i152, ptr %285, align 1
  %301 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 4), align 4
  %conv.4.i153 = trunc i32 %301 to i8
  %302 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv.4.i153, ptr %286, align 1
  %303 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @hw_addr, i32 0, i32 5), align 4
  %conv.5.i154 = trunc i32 %303 to i8
  %304 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv.5.i154, ptr %287, align 1
  call void @dev_addr_mod(ptr noundef %282, i32 noundef 0, ptr noundef nonnull %addr.i147, i32 noundef 6) #6
  br label %get_hwired.exit

get_hwired.exit:                                  ; preds = %for.body7.preheader.i, %for.inc.4.i.get_hwired.exit_crit_edge
  %retval.0.i155 = phi ptr [ @default_info, %for.body7.preheader.i ], [ null, %for.inc.4.i.get_hwired.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i147) #6
  br label %cleanup

cleanup:                                          ; preds = %get_hwired.exit, %if.end73.thread174, %if.end65.cleanup_crit_edge, %if.end65.thread164, %get_hwinfo.exit.cleanup_crit_edge, %do.end58, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end58 ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ %retval.0.i155, %get_hwired.exit ], [ %249, %if.end73.thread174 ], [ @default_info, %if.end65.thread164 ], [ %add.ptr.i125, %if.end65.cleanup_crit_edge ], [ %add.ptr88.i, %get_hwinfo.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %priv1) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcnet_reset_8390(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dmaing, align 4
  %bf.clear3 = and i8 %bf.load, -21
  store i8 %bf.clear3, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 33) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !715
  tail call void @arm_heavy_mb() #6
  %add5 = add i32 %1, 31
  %and = and i32 %add5, 1048575
  %add6 = or i32 %and, -18874368
  %4 = inttoptr i32 %add6 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !716
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %5) #6, !srcloc !676
  %add13 = add i32 %1, 7
  %and.i34 = and i32 %add13, 1048575
  %add.i35 = or i32 %and.i34, -18874368
  %6 = inttoptr i32 %add.i35 to ptr
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp16.not = icmp sgt i8 %7, -1
  br i1 %cmp16.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #6
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.038, %for.body.for.end_crit_edge ], [ 100, %if.end.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -128) #6, !srcloc !676
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.lcssa)
  %cmp19 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp19, label %if.then21, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.66) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %for.end.if.end22_crit_edge
  tail call fastcc void @set_misc_reg(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_phy_probe(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 28
  %pna_phy = getelementptr i8, ptr %dev, i32 2490
  %eth_phy = getelementptr i8, ptr %dev, i32 2489
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 31, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %i.042, i32 noundef 1)
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %call1, label %if.end [
    i32 0, label %for.body.for.inc_crit_edge
    i32 65535, label %for.body.for.inc_crit_edge43
  ]

for.body.for.inc_crit_edge43:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %i.042, i32 noundef 2)
  %shl = shl i32 %call4, 16
  %call5 = tail call fastcc i32 @mdio_read(i32 noundef %add, i32 noundef %i.042, i32 noundef 3)
  %call5.masked = and i32 %call5, -16
  %and = or i32 %call5.masked, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mii_phy_probe.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mii_phy_probe, %if.then11)) #6
          to label %do.end14 [label %if.then11], !srcloc !669

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mii_phy_probe.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %i.042, i32 noundef %and) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %and, label %if.then19 [
    i32 27536, label %if.then16
    i32 27504, label %do.end14.for.inc_crit_edge
  ]

do.end14.for.inc_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then16:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %i.042 to i8
  %4 = ptrtoint ptr %pna_phy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %pna_phy, align 2
  br label %for.inc

if.then19:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = trunc i32 %i.042 to i8
  %5 = ptrtoint ptr %eth_phy to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv20, ptr %eth_phy, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.then16, %do.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge43
  %dec = add nsw i32 %i.042, -1
  %cmp.not = icmp eq i32 %i.042, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcnet_confcheck(ptr noundef %p_dev, ptr nocapture noundef %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv_data, align 4
  %and = and i32 %1, 1
  %arrayidx = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %5)
  %cmp = icmp ugt i32 %5, 16383
  %cond = select i1 %cmp, i32 16, i32 -17
  %and1 = and i32 %cond, %1
  %6 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and1, ptr %priv_data, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %7 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp eq i32 %8, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %end5 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %end5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end5, align 4
  %arrayidx7 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %end8 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %end8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end8, align 4
  %add = add i32 %16, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp9 = icmp ult i32 %add, 32
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11.if.end13_crit_edge, label %if.then12

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %17 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %io_lines, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end11.if.end13_crit_edge
  %flags.i = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, -25
  store i32 %and.i, ptr %flags.i, align 4
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %flags3.i = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags3.i, align 4
  %and4.i = and i32 %23, -25
  store i32 %and4.i, ptr %flags3.i, align 4
  %24 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resource, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp.i = icmp eq i32 %27, 32
  br i1 %cmp.i, label %if.end13.if.end27.i_crit_edge, label %if.else.i

if.end13.if.end27.i_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end13.if.end27.i_crit_edge
  %.sink.i = phi ptr [ %29, %if.else.i ], [ %25, %if.end13.if.end27.i_crit_edge ]
  %.sink66.i = phi i32 [ 8, %if.else.i ], [ 16, %if.end13.if.end27.i_crit_edge ]
  %flags9.i = getelementptr inbounds %struct.resource, ptr %.sink.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags9.i, align 4
  %or.i = or i32 %31, %.sink66.i
  store i32 %or.i, ptr %flags9.i, align 4
  %32 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %resource, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp30.i = icmp eq i32 %35, 0
  br i1 %cmp30.i, label %for.cond.preheader.i, label %if.else44.i

for.cond.preheader.i:                             ; preds = %if.end27.i
  %io_lines.i = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %add43.i = add nuw nsw i32 %j.065.i, 32
  %cmp32.i = icmp ult i32 %j.065.i, 992
  br i1 %cmp32.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i
  %j.065.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add43.i, %for.cond.i.for.body.i_crit_edge ]
  %xor.i = xor i32 %j.065.i, 768
  %36 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resource, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor.i, ptr %37, align 4
  %add.i = or i32 %xor.i, 16
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx7, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i, ptr %40, align 4
  %42 = ptrtoint ptr %io_lines.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %io_lines.i, align 4
  %call.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40.i = icmp eq i32 %call.i, 0
  br i1 %cmp40.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else44.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call45.i = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else44.i, %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call45.i, %if.else44.i ], [ 0, %for.body.i.cleanup_crit_edge ], [ %call.i, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_release_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_get_8390_hdr(ptr nocapture noundef readonly %dev, ptr nocapture noundef %hdr, i32 noundef %ring_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3072
  %shl = shl i32 %ring_page, 8
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %2 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_start_page, align 2
  %conv = zext i8 %3 to i32
  %shl3.neg = mul nsw i32 %conv, -256
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 %shl3.neg
  %incdec.ptr.i = getelementptr i16, ptr %add.ptr4, i32 1
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4) #6, !srcloc !672
  %incdec.ptr2.i = getelementptr i16, ptr %hdr, i32 1
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %hdr, align 2
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %incdec.ptr.i) #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %incdec.ptr2.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_block_input(ptr nocapture noundef readonly %dev, i32 noundef %count, ptr nocapture noundef readonly %skb, i32 noundef %ring_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %add = add i32 %ring_offset, 3072
  %rx_start_page = getelementptr i8, ptr %dev, i32 2346
  %2 = ptrtoint ptr %rx_start_page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_start_page, align 2
  %conv = zext i8 %3 to i32
  %shl.neg = mul nsw i32 %conv, -256
  %sub = add i32 %add, %shl.neg
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add2 = add i32 %sub, %count
  %priv = getelementptr i8, ptr %dev, i32 2412
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %7)
  %cmp = icmp ugt i32 %add2, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %sub7 = sub i32 %7, %sub
  %add.ptr = getelementptr i8, ptr %1, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub7)
  %cmp.i = icmp slt i32 %sub7, 1
  br i1 %cmp.i, label %if.then.copyin.exit_crit_edge, label %if.end.i

if.then.copyin.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyin.exit

if.end.i:                                         ; preds = %if.then
  %and.i = and i32 %sub7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub7)
  %tobool.not.i = icmp eq i32 %sub7, 1
  br i1 %tobool.not.i, label %if.end.i.if.then6.i_crit_edge, label %do.body.preheader.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

do.body.preheader.i:                              ; preds = %if.end.i
  %shr25.i = lshr i32 %sub7, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %s.0.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr, %do.body.preheader.i ]
  %d.0.i = phi ptr [ %incdec.ptr2.i, %do.body.i.do.body.i_crit_edge ], [ %5, %do.body.preheader.i ]
  %c.addr.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %shr25.i, %do.body.preheader.i ]
  %incdec.ptr.i = getelementptr i16, ptr %s.0.i, i32 1
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.0.i) #6, !srcloc !672
  %incdec.ptr2.i = getelementptr i16, ptr %d.0.i, i32 1
  %9 = ptrtoint ptr %d.0.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %d.0.i, align 2
  %dec.i = add i32 %c.addr.0.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end4.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end4.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.copyin.exit_crit_edge, label %if.end4.i.if.then6.i_crit_edge

if.end4.i.if.then6.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end4.i.copyin.exit_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyin.exit

if.then6.i:                                       ; preds = %if.end4.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %d.124.i = phi ptr [ %incdec.ptr2.i, %if.end4.i.if.then6.i_crit_edge ], [ %5, %if.end.i.if.then6.i_crit_edge ]
  %s.123.i = phi ptr [ %incdec.ptr.i, %if.end4.i.if.then6.i_crit_edge ], [ %add.ptr, %if.end.i.if.then6.i_crit_edge ]
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.123.i) #6, !srcloc !672
  %11 = lshr i16 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !717
  %conv10.i = trunc i16 %11 to i8
  %12 = ptrtoint ptr %d.124.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10.i, ptr %d.124.i, align 1
  br label %copyin.exit

copyin.exit:                                      ; preds = %if.then6.i, %if.end4.i.copyin.exit_crit_edge, %if.then.copyin.exit_crit_edge
  %add.ptr8 = getelementptr i8, ptr %5, i32 %sub7
  %sub9 = sub i32 %count, %sub7
  br label %if.end

if.end:                                           ; preds = %copyin.exit, %entry.if.end_crit_edge
  %offset.0 = phi i32 [ 3072, %copyin.exit ], [ %sub, %entry.if.end_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr8, %copyin.exit ], [ %5, %entry.if.end_crit_edge ]
  %count.addr.0 = phi i32 [ %sub9, %copyin.exit ], [ %count, %entry.if.end_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %1, i32 %offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp.i27 = icmp slt i32 %count.addr.0, 1
  br i1 %cmp.i27, label %if.end.copyin.exit47_crit_edge, label %if.end.i30

if.end.copyin.exit47_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyin.exit47

if.end.i30:                                       ; preds = %if.end
  %and.i28 = and i32 %count.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %tobool.not.i29 = icmp eq i32 %count.addr.0, 1
  br i1 %tobool.not.i29, label %if.end.i30.if.then6.i46_crit_edge, label %do.body.preheader.i32

if.end.i30.if.then6.i46_crit_edge:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i46

do.body.preheader.i32:                            ; preds = %if.end.i30
  %shr25.i31 = lshr i32 %count.addr.0, 1
  br label %do.body.i40

do.body.i40:                                      ; preds = %do.body.i40.do.body.i40_crit_edge, %do.body.preheader.i32
  %s.0.i33 = phi ptr [ %incdec.ptr.i36, %do.body.i40.do.body.i40_crit_edge ], [ %add.ptr10, %do.body.preheader.i32 ]
  %d.0.i34 = phi ptr [ %incdec.ptr2.i37, %do.body.i40.do.body.i40_crit_edge ], [ %buf.0, %do.body.preheader.i32 ]
  %c.addr.0.i35 = phi i32 [ %dec.i38, %do.body.i40.do.body.i40_crit_edge ], [ %shr25.i31, %do.body.preheader.i32 ]
  %incdec.ptr.i36 = getelementptr i16, ptr %s.0.i33, i32 1
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.0.i33) #6, !srcloc !672
  %incdec.ptr2.i37 = getelementptr i16, ptr %d.0.i34, i32 1
  %14 = ptrtoint ptr %d.0.i34 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %d.0.i34, align 2
  %dec.i38 = add i32 %c.addr.0.i35, -1
  %tobool3.not.i39 = icmp eq i32 %dec.i38, 0
  br i1 %tobool3.not.i39, label %if.end4.i42, label %do.body.i40.do.body.i40_crit_edge

do.body.i40.do.body.i40_crit_edge:                ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i40

if.end4.i42:                                      ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool5.not.i41 = icmp eq i32 %and.i28, 0
  br i1 %tobool5.not.i41, label %if.end4.i42.copyin.exit47_crit_edge, label %if.end4.i42.if.then6.i46_crit_edge

if.end4.i42.if.then6.i46_crit_edge:               ; preds = %if.end4.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i46

if.end4.i42.copyin.exit47_crit_edge:              ; preds = %if.end4.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyin.exit47

if.then6.i46:                                     ; preds = %if.end4.i42.if.then6.i46_crit_edge, %if.end.i30.if.then6.i46_crit_edge
  %d.124.i43 = phi ptr [ %incdec.ptr2.i37, %if.end4.i42.if.then6.i46_crit_edge ], [ %buf.0, %if.end.i30.if.then6.i46_crit_edge ]
  %s.123.i44 = phi ptr [ %incdec.ptr.i36, %if.end4.i42.if.then6.i46_crit_edge ], [ %add.ptr10, %if.end.i30.if.then6.i46_crit_edge ]
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %s.123.i44) #6, !srcloc !672
  %16 = lshr i16 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !717
  %conv10.i45 = trunc i16 %16 to i8
  %17 = ptrtoint ptr %d.124.i43 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.i45, ptr %d.124.i43, align 1
  br label %copyin.exit47

copyin.exit47:                                    ; preds = %if.then6.i46, %if.end4.i42.copyin.exit47_crit_edge, %if.end.copyin.exit47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmem_block_output(ptr nocapture noundef readonly %dev, i32 noundef %count, ptr nocapture noundef readonly %buf, i32 noundef %start_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %shl = shl i32 %start_page, 8
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %tx_start_page = getelementptr i8, ptr %dev, i32 2345
  %2 = ptrtoint ptr %tx_start_page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_start_page, align 1
  %conv = zext i8 %3 to i32
  %shl2.neg = mul nsw i32 %conv, -256
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl2.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp.i = icmp slt i32 %count, 1
  br i1 %cmp.i, label %entry.copyout.exit_crit_edge, label %if.end.i

entry.copyout.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyout.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %tobool.not.i = icmp eq i32 %count, 1
  br i1 %tobool.not.i, label %if.end.i.do.body7.i_crit_edge, label %do.body.preheader.i

if.end.i.do.body7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

do.body.preheader.i:                              ; preds = %if.end.i
  %shr29.i = lshr i32 %count, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %s.0.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %buf, %do.body.preheader.i ]
  %d.0.i = phi ptr [ %incdec.ptr2.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr3, %do.body.preheader.i ]
  %c.addr.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %shr29.i, %do.body.preheader.i ]
  %incdec.ptr.i = getelementptr i16, ptr %s.0.i, i32 1
  %4 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s.0.i, align 2
  %incdec.ptr2.i = getelementptr i16, ptr %d.0.i, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %d.0.i, i16 %5) #6, !srcloc !671
  %dec.i = add i32 %c.addr.0.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end4.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end4.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.copyout.exit_crit_edge, label %if.end4.i.do.body7.i_crit_edge

if.end4.i.do.body7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7.i

if.end4.i.copyout.exit_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copyout.exit

do.body7.i:                                       ; preds = %if.end4.i.do.body7.i_crit_edge, %if.end.i.do.body7.i_crit_edge
  %d.128.i = phi ptr [ %incdec.ptr2.i, %if.end4.i.do.body7.i_crit_edge ], [ %add.ptr3, %if.end.i.do.body7.i_crit_edge ]
  %s.127.i = phi ptr [ %incdec.ptr.i, %if.end4.i.do.body7.i_crit_edge ], [ %buf, %if.end.i.do.body7.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !718
  tail call void @arm_heavy_mb() #6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %d.128.i) #6, !srcloc !672
  %7 = shl i16 %6, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !719
  %8 = ptrtoint ptr %s.127.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s.127.i, align 1
  %conv12.i = zext i8 %9 to i16
  %or.i = or i16 %7, %conv12.i
  %10 = tail call i16 @llvm.bswap.i16(i16 %or.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %d.128.i, i16 %10) #6, !srcloc !671
  br label %copyout.exit

copyout.exit:                                     ; preds = %do.body7.i, %if.end4.i.copyout.exit_crit_edge, %entry.copyout.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_get_8390_hdr(ptr noundef %dev, ptr noundef %hdr, i32 noundef %ring_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dmaing, align 4
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr4 = lshr i8 %bf.load, 2
  %bf.clear5 = and i8 %bf.lshr4, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %bf.lshr9 = lshr i8 %bf.load, 3
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = zext i8 %bf.clear10 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %bf.cast6, i32 noundef %bf.cast11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %bf.set = or i8 %bf.load, 4
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 34) #6, !srcloc !676
  %add20 = add i32 %3, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i61 = and i32 %add20, 1048575
  %add.i62 = or i32 %and.i61, -18874368
  %6 = inttoptr i32 %add.i62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 4) #6, !srcloc !676
  %add21 = add i32 %3, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i63 = and i32 %add21, 1048575
  %add.i64 = or i32 %and.i63, -18874368
  %7 = inttoptr i32 %add.i64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #6, !srcloc !676
  %add22 = add i32 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i65 = and i32 %add22, 1048575
  %add.i66 = or i32 %and.i65, -18874368
  %8 = inttoptr i32 %add.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !676
  %conv = trunc i32 %ring_page to i8
  %add23 = add i32 %3, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i67 = and i32 %add23, 1048575
  %add.i68 = or i32 %and.i67, -18874368
  %9 = inttoptr i32 %add.i68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 10) #6, !srcloc !676
  %add25 = add i32 %3, 16
  %and = and i32 %add25, 1048575
  %add26 = or i32 %and, -18874368
  %10 = inttoptr i32 %add26 to ptr
  tail call void @__raw_readsw(ptr noundef nonnull %10, ptr noundef %hdr, i32 noundef 2) #6
  %count = getelementptr inbounds %struct.e8390_pkt_hdr, ptr %hdr, i32 0, i32 2
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %count, align 2
  %add29 = add i32 %3, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i71 = and i32 %add29, 1048575
  %add.i72 = or i32 %and.i71, -18874368
  %15 = inttoptr i32 %add.i72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 64) #6, !srcloc !676
  %16 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load32 = load i8, ptr %dmaing, align 4
  %bf.clear40 = and i8 %bf.load32, -5
  store i8 %bf.clear40, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_block_input(ptr noundef %dev, i32 noundef %count, ptr nocapture noundef readonly %skb, i32 noundef %ring_offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2416
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp.not = icmp eq i32 %count, 4
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.if.end9_crit_edge, label %do.body1

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_block_input.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_block_input, %if.then6)) #6
          to label %if.end9 [label %if.then6], !srcloc !669

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %count, 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dma_block_input.__UNIQUE_ID_ddebug364, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %add) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body1, %entry.if.end9_crit_edge
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %6 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dmaing, align 4
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool11.not = icmp eq i8 %7, 0
  br i1 %tobool11.not, label %if.end24, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr16 = lshr i8 %bf.load, 2
  %bf.clear17 = and i8 %bf.lshr16, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %bf.lshr21 = lshr i8 %bf.load, 3
  %bf.clear22 = and i8 %bf.lshr21, 1
  %bf.cast23 = zext i8 %bf.clear22 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %bf.cast18, i32 noundef %bf.cast23) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end9
  %bf.set = or i8 %bf.load, 4
  %8 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 34) #6, !srcloc !676
  %conv = trunc i32 %count to i8
  %add35 = add i32 %1, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i106 = and i32 %add35, 1048575
  %add.i107 = or i32 %and.i106, -18874368
  %10 = inttoptr i32 %add.i107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #6, !srcloc !676
  %11 = lshr i32 %count, 8
  %conv36 = trunc i32 %11 to i8
  %add37 = add i32 %1, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i108 = and i32 %add37, 1048575
  %add.i109 = or i32 %and.i108, -18874368
  %12 = inttoptr i32 %add.i109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv36) #6, !srcloc !676
  %conv39 = trunc i32 %ring_offset to i8
  %add40 = add i32 %1, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i110 = and i32 %add40, 1048575
  %add.i111 = or i32 %and.i110, -18874368
  %13 = inttoptr i32 %add.i111 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv39) #6, !srcloc !676
  %14 = lshr i32 %ring_offset, 8
  %conv42 = trunc i32 %14 to i8
  %add43 = add i32 %1, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i112 = and i32 %add43, 1048575
  %add.i113 = or i32 %and.i112, -18874368
  %15 = inttoptr i32 %add.i113 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv42) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 10) #6, !srcloc !676
  %add45 = add i32 %1, 16
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %16 = inttoptr i32 %add47 to ptr
  %shr49 = ashr i32 %count, 1
  tail call void @__raw_readsw(ptr noundef nonnull %16, ptr noundef %3, i32 noundef %shr49) #6
  %and50 = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end24.if.end59_crit_edge, label %if.then52

if.end24.if.end59_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then52:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !720
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %if.end24.if.end59_crit_edge
  %add60 = add i32 %1, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i116 = and i32 %add60, 1048575
  %add.i117 = or i32 %and.i116, -18874368
  %19 = inttoptr i32 %add.i117 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 64) #6, !srcloc !676
  %20 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load63 = load i8, ptr %dmaing, align 4
  %bf.clear71 = and i8 %bf.load63, -5
  store i8 %bf.clear71, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_block_output(ptr noundef %dev, i32 noundef %count, ptr noundef %buf, i32 noundef %start_page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dmaing = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dmaing, align 4
  %1 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end15, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr7 = lshr i8 %bf.load, 2
  %bf.clear8 = and i8 %bf.lshr7, 1
  %bf.cast9 = zext i8 %bf.clear8 to i32
  %bf.lshr12 = lshr i8 %bf.load, 3
  %bf.clear13 = and i8 %bf.lshr12, 1
  %bf.cast14 = zext i8 %bf.clear13 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %bf.cast9, i32 noundef %bf.cast14) #9
  br label %cleanup

if.end15:                                         ; preds = %entry
  %and = and i32 %count, 1
  %spec.select = add i32 %and, %count
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr, align 32
  %bf.set = or i8 %bf.load, 4
  %4 = ptrtoint ptr %dmaing to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.set, ptr %dmaing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 34) #6, !srcloc !676
  %add24 = add i32 %3, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i100 = and i32 %add24, 1048575
  %add.i101 = or i32 %and.i100, -18874368
  %6 = inttoptr i32 %add.i101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 64) #6, !srcloc !676
  %conv = trunc i32 %spec.select to i8
  %add26 = add i32 %3, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i102 = and i32 %add26, 1048575
  %add.i103 = or i32 %and.i102, -18874368
  %7 = inttoptr i32 %add.i103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #6, !srcloc !676
  %8 = lshr i32 %spec.select, 8
  %conv27 = trunc i32 %8 to i8
  %add28 = add i32 %3, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i104 = and i32 %add28, 1048575
  %add.i105 = or i32 %and.i104, -18874368
  %9 = inttoptr i32 %add.i105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv27) #6, !srcloc !676
  %add29 = add i32 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i106 = and i32 %add29, 1048575
  %add.i107 = or i32 %and.i106, -18874368
  %10 = inttoptr i32 %add.i107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !676
  %conv30 = trunc i32 %start_page to i8
  %add31 = add i32 %3, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  %and.i108 = and i32 %add31, 1048575
  %add.i109 = or i32 %and.i108, -18874368
  %11 = inttoptr i32 %add.i109 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv30) #6, !srcloc !676
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 18) #6, !srcloc !676
  %add33 = add i32 %3, 16
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %12 = inttoptr i32 %add35 to ptr
  %shr37 = ashr i32 %spec.select, 1
  tail call void @__raw_writesw(ptr noundef nonnull %12, ptr noundef %buf, i32 noundef %shr37) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add43 = add i32 %13, 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end15
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !677
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add43, %16
  %cmp44 = icmp slt i32 %sub, 0
  br i1 %cmp44, label %if.then46, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then46:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65) #9
  tail call void @pcnet_reset_8390(ptr noundef %dev)
  tail call void @NS8390_init(ptr noundef %dev, i32 noundef 1) #6
  br label %while.end

while.end:                                        ; preds = %if.then46, %while.cond.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !675
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 64) #6, !srcloc !676
  %flags = getelementptr i8, ptr %dev, i32 2424
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and49 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %while.end.if.end57_crit_edge, label %cond.false55

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

cond.false55:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = load i32, ptr @delay_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #6
  br label %if.end57

if.end57:                                         ; preds = %cond.false55, %while.end.if.end57_crit_edge
  %21 = ptrtoint ptr %dmaing to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load60 = load i8, ptr %dmaing, align 4
  %bf.clear68 = and i8 %bf.load60, -5
  store i8 %bf.clear68, ptr %dmaing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 358)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 358)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !128, !129, !130, !131, !132, !134, !136, !137, !138, !140, !142, !143, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !190, !191, !193, !195, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !238, !240, !242, !244, !245, !246, !248, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !282, !284, !285, !287, !289, !291, !292, !294, !296, !297, !299, !300, !302, !304, !306, !307, !309, !311, !312, !314, !316, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !340, !341, !343, !344, !346, !348, !349, !351, !353, !355, !357, !359, !361, !363, !364, !366, !368, !370, !371, !373, !374, !376, !378, !379, !381, !382, !384, !385, !387, !389, !390, !392, !394, !396, !398, !400, !401, !403, !405, !406, !408, !410, !412, !414, !415, !417, !419, !420, !422, !423, !425, !427, !429, !431, !432, !434, !436, !438, !440, !442, !443, !445, !446, !448, !449, !451, !452, !454, !455, !457, !458, !460, !461, !463, !464, !466, !468, !470, !472, !473, !475, !477, !479, !481, !483, !485, !486, !488, !490, !492, !494, !496, !497, !499, !500, !502, !503, !505, !506, !508, !509, !511, !513, !514, !516, !517, !519, !520, !522, !523, !525, !527, !528, !530, !531, !533, !534, !536, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !560, !562, !564, !565, !567, !569, !570, !572, !573, !575, !576, !578, !580, !581, !583, !585, !587, !588, !590, !591, !593, !595, !596, !598, !599, !601, !603, !604, !606, !607, !609, !611, !613, !615, !617, !619, !620, !622, !624, !626, !628, !630, !631, !633, !634, !635, !637, !639, !640, !642, !643, !644, !646, !647, !649, !650, !651, !653, !654, !656, !658}
!llvm.module.flags = !{!660, !661, !662, !663, !664, !665, !666, !667}
!llvm.ident = !{!668}

!0 = !{ptr @__UNIQUE_ID_author345, !1, !"__UNIQUE_ID_author345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 74, i32 1}
!2 = !{ptr @__UNIQUE_ID_description346, !3, !"__UNIQUE_ID_description346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_file347, !5, !"__UNIQUE_ID_file347", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 76, i32 1}
!6 = !{ptr @__UNIQUE_ID_license348, !5, !"__UNIQUE_ID_license348", i1 false, i1 false}
!7 = !{ptr @__param_if_port, !8, !"__param_if_port", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 80, i32 1}
!9 = !{ptr @__UNIQUE_ID_if_porttype349, !8, !"__UNIQUE_ID_if_porttype349", i1 false, i1 false}
!10 = !{ptr @__param_use_big_buf, !11, !"__param_use_big_buf", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 81, i32 1}
!12 = !{ptr @__UNIQUE_ID_use_big_buftype350, !11, !"__UNIQUE_ID_use_big_buftype350", i1 false, i1 false}
!13 = !{ptr @__param_mem_speed, !14, !"__param_mem_speed", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 82, i32 1}
!15 = !{ptr @__UNIQUE_ID_mem_speedtype351, !14, !"__UNIQUE_ID_mem_speedtype351", i1 false, i1 false}
!16 = !{ptr @__param_delay_output, !17, !"__param_delay_output", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 83, i32 1}
!18 = !{ptr @__UNIQUE_ID_delay_outputtype352, !17, !"__UNIQUE_ID_delay_outputtype352", i1 false, i1 false}
!19 = !{ptr @__param_delay_time, !20, !"__param_delay_time", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 84, i32 1}
!21 = !{ptr @__UNIQUE_ID_delay_timetype353, !20, !"__UNIQUE_ID_delay_timetype353", i1 false, i1 false}
!22 = !{ptr @__param_use_shmem, !23, !"__param_use_shmem", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 85, i32 1}
!24 = !{ptr @__UNIQUE_ID_use_shmemtype354, !23, !"__UNIQUE_ID_use_shmemtype354", i1 false, i1 false}
!25 = !{ptr @__param_full_duplex, !26, !"__param_full_duplex", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 86, i32 1}
!27 = !{ptr @__UNIQUE_ID_full_duplextype355, !26, !"__UNIQUE_ID_full_duplextype355", i1 false, i1 false}
!28 = !{ptr @__param_hw_addr, !29, !"__param_hw_addr", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 90, i32 1}
!30 = !{ptr @__UNIQUE_ID_hw_addrtype356, !29, !"__UNIQUE_ID_hw_addrtype356", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_firmware365, !32, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1701, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware366, !34, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1702, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware367, !36, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1703, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware368, !38, !"__UNIQUE_ID_firmware368", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1704, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware369, !40, !"__UNIQUE_ID_firmware369", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1705, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware370, !42, !"__UNIQUE_ID_firmware370", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1706, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware371, !44, !"__UNIQUE_ID_firmware371", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1707, i32 1}
!45 = !{ptr @__initcall__kmod_pcnet_cs__372_1718_pcnet_driver_init6, !46, !"__initcall__kmod_pcnet_cs__372_1718_pcnet_driver_init6", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1718, i32 1}
!47 = !{ptr @__exitcall_pcnet_driver_exit, !46, !"__exitcall_pcnet_driver_exit", i1 false, i1 false}
!48 = !{ptr @__param_str_if_port, !8, !"__param_str_if_port", i1 false, i1 false}
!49 = !{ptr @if_port, !8, !"if_port", i1 false, i1 false}
!50 = !{ptr @__param_str_use_big_buf, !11, !"__param_str_use_big_buf", i1 false, i1 false}
!51 = !{ptr @use_big_buf, !11, !"use_big_buf", i1 false, i1 false}
!52 = !{ptr @__param_str_mem_speed, !14, !"__param_str_mem_speed", i1 false, i1 false}
!53 = !{ptr @mem_speed, !14, !"mem_speed", i1 false, i1 false}
!54 = !{ptr @__param_str_delay_output, !17, !"__param_str_delay_output", i1 false, i1 false}
!55 = !{ptr @delay_output, !17, !"delay_output", i1 false, i1 false}
!56 = !{ptr @__param_str_delay_time, !20, !"__param_str_delay_time", i1 false, i1 false}
!57 = !{ptr @delay_time, !20, !"delay_time", i1 false, i1 false}
!58 = !{ptr @__param_str_use_shmem, !23, !"__param_str_use_shmem", i1 false, i1 false}
!59 = !{ptr @use_shmem, !23, !"use_shmem", i1 false, i1 false}
!60 = !{ptr @__param_str_full_duplex, !26, !"__param_str_full_duplex", i1 false, i1 false}
!61 = !{ptr @full_duplex, !26, !"full_duplex", i1 false, i1 false}
!62 = !{ptr @__param_str_hw_addr, !29, !"__param_str_hw_addr", i1 false, i1 false}
!63 = !{ptr @__param_arr_hw_addr, !29, !"__param_arr_hw_addr", i1 false, i1 false}
!64 = !{ptr @hw_addr, !65, !"hw_addr", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 89, i32 12}
!66 = !{ptr @.str, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1710, i32 11}
!68 = !{ptr @pcnet_driver, !69, !"pcnet_driver", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1709, i32 29}
!70 = !{ptr @.str.1, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 241, i32 5}
!72 = !{ptr @.str.2, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pcnet_probe.__UNIQUE_ID_ddebug357, !71, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!75 = !{ptr @pcnet_netdev_ops, !76, !"pcnet_netdev_ops", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 220, i32 36}
!77 = !{ptr @.str.4, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 915, i32 5}
!79 = !{ptr @.str.5, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pcnet_open.__UNIQUE_ID_ddebug362, !78, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!81 = !{ptr @pcnet_open.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 931, i32 5}
!83 = !{ptr @.str.6, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.7, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1034, i32 23}
!86 = !{ptr @.str.8, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1054, i32 23}
!88 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1063, i32 19}
!90 = !{ptr @.str.10, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1063, i32 44}
!92 = !{ptr @.str.11, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1063, i32 54}
!94 = !{ptr @.str.12, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1074, i32 24}
!96 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1076, i32 21}
!98 = !{ptr @.str.14, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1076, i32 29}
!100 = !{ptr @.str.15, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1079, i32 24}
!102 = !{ptr @.str.16, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1092, i32 23}
!104 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1093, i32 38}
!106 = !{ptr @.str.18, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1093, i32 51}
!108 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 944, i32 5}
!110 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @pcnet_close.__UNIQUE_ID_ddebug363, !109, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!112 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 999, i32 19}
!114 = !{ptr @.str.22, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 68, i32 35}
!116 = !{ptr @.str.23, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 68, i32 43}
!118 = !{ptr @.str.24, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 68, i32 54}
!120 = !{ptr @if_names, !121, !"if_names", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 68, i32 20}
!122 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 574, i32 5}
!124 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @pcnet_config.__UNIQUE_ID_ddebug359, !123, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!126 = !{ptr @.str.27, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 582, i32 7}
!128 = !{ptr @.str.28, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pcnet_config._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @pcnet_config._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.30, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 614, i32 22}
!134 = !{ptr @.str.32, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 624, i32 2}
!136 = !{ptr @pcnet_config._entry.31, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @pcnet_config._entry_ptr.33, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.34, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 630, i32 19}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 633, i32 6}
!142 = !{ptr @pcnet_config._entry.35, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @pcnet_config._entry_ptr.37, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.38, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 635, i32 19}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 637, i32 5}
!148 = !{ptr @pcnet_config._entry.39, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @pcnet_config._entry_ptr.41, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 639, i32 2}
!152 = !{ptr @pcnet_config._entry.42, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @pcnet_config._entry_ptr.44, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 641, i32 2}
!156 = !{ptr @pcnet_config._entry.45, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @pcnet_config._entry_ptr.47, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.49, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 642, i32 5}
!160 = !{ptr @pcnet_config._entry.48, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @pcnet_config._entry_ptr.50, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.51, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 516, i32 3}
!164 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @pcnet_try_config._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @pcnet_try_config._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.55, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 542, i32 4}
!170 = !{ptr @pcnet_try_config._entry.54, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @pcnet_try_config._entry_ptr.56, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 548, i32 3}
!174 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pcnet_try_config._entry.57, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @pcnet_try_config._entry_ptr.60, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @hw_info, !178, !"hw_info", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 134, i32 23}
!179 = !{ptr @default_info, !180, !"default_info", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 198, i32 23}
!181 = !{ptr @dl10022_info, !182, !"dl10022_info", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 200, i32 23}
!183 = !{ptr @dl10019_info, !184, !"dl10019_info", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 199, i32 23}
!185 = !{ptr @.str.61, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1141, i32 18}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1175, i32 2}
!189 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @dma_block_input.__UNIQUE_ID_ddebug364, !188, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!191 = !{ptr @.str.64, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1244, i32 18}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1295, i32 20}
!195 = !{ptr @.str.66, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 982, i32 18}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 899, i32 2}
!199 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mii_phy_probe.__UNIQUE_ID_ddebug361, !198, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 654, i32 2}
!203 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @pcnet_release.__UNIQUE_ID_ddebug360, !202, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 261, i32 2}
!207 = !{ptr @.str.72, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @pcnet_detach.__UNIQUE_ID_ddebug358, !206, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!209 = !{ptr @.str.73, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1493, i32 2}
!211 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1494, i32 2}
!214 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.77, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1495, i32 2}
!217 = !{ptr @.str.78, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1496, i32 2}
!220 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1497, i32 2}
!223 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.83, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1498, i32 2}
!226 = !{ptr @.str.84, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.85, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1499, i32 2}
!229 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1500, i32 2}
!232 = !{ptr @.str.88, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.89, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1501, i32 2}
!235 = !{ptr @.str.90, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1502, i32 2}
!237 = !{ptr @.str.91, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.92, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1503, i32 2}
!240 = !{ptr @.str.93, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1504, i32 2}
!242 = !{ptr @.str.94, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1505, i32 2}
!244 = !{ptr @.str.95, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.96, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.97, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1506, i32 2}
!248 = !{ptr @.str.98, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1523, i32 2}
!250 = !{ptr @.str.99, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.100, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1524, i32 2}
!253 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.103, !252, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.104, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1525, i32 2}
!258 = !{ptr @.str.105, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.106, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.107, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1526, i32 2}
!262 = !{ptr @.str.108, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.109, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1527, i32 2}
!265 = !{ptr @.str.110, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.111, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1528, i32 2}
!268 = !{ptr @.str.112, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.113, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1529, i32 2}
!271 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1530, i32 2}
!274 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.117, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1531, i32 2}
!277 = !{ptr @.str.118, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.119, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1532, i32 2}
!280 = !{ptr @.str.120, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.122, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1533, i32 2}
!284 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.124, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1534, i32 2}
!287 = !{ptr @.str.125, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1535, i32 2}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1536, i32 2}
!291 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.128, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1537, i32 2}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1538, i32 2}
!296 = !{ptr @.str.130, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1539, i32 2}
!299 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.133, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1540, i32 2}
!302 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1541, i32 2}
!304 = !{ptr @.str.135, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1542, i32 2}
!306 = !{ptr @.str.136, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.137, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1543, i32 2}
!309 = !{ptr @.str.138, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1544, i32 2}
!311 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.140, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1545, i32 2}
!314 = !{ptr @.str.141, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1547, i32 2}
!316 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1548, i32 2}
!318 = !{ptr @.str.143, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1549, i32 2}
!320 = !{ptr @.str.144, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.145, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1550, i32 2}
!323 = !{ptr @.str.146, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.147, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1551, i32 2}
!326 = !{ptr @.str.148, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.149, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1552, i32 2}
!329 = !{ptr @.str.150, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.151, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1553, i32 2}
!332 = !{ptr @.str.152, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @.str.153, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1554, i32 2}
!335 = !{ptr @.str.154, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.155, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1555, i32 2}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1556, i32 2}
!340 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.158, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1557, i32 2}
!343 = !{ptr @.str.159, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1558, i32 2}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1559, i32 2}
!348 = !{ptr @.str.162, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.163, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1560, i32 2}
!351 = !{ptr @.str.164, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1561, i32 2}
!353 = !{ptr @.str.165, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1562, i32 2}
!355 = !{ptr @.str.166, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1563, i32 2}
!357 = !{ptr @.str.167, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1564, i32 2}
!359 = !{ptr @.str.168, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1565, i32 2}
!361 = !{ptr @.str.169, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1566, i32 2}
!363 = !{ptr @.str.170, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.171, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1567, i32 2}
!366 = !{ptr @.str.172, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1568, i32 2}
!368 = !{ptr @.str.173, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1569, i32 2}
!370 = !{ptr @.str.174, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.175, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1570, i32 2}
!373 = !{ptr @.str.176, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.177, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1571, i32 2}
!376 = !{ptr @.str.178, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1572, i32 2}
!378 = !{ptr @.str.179, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.180, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1573, i32 2}
!381 = !{ptr @.str.181, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.182, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1574, i32 2}
!384 = !{ptr @.str.183, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.184, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1575, i32 2}
!387 = !{ptr @.str.185, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1576, i32 2}
!389 = !{ptr @.str.186, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.187, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1577, i32 2}
!392 = !{ptr @.str.188, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1578, i32 2}
!394 = !{ptr @.str.189, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1579, i32 2}
!396 = !{ptr @.str.190, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1580, i32 2}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1581, i32 2}
!400 = !{ptr @.str.192, !399, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.193, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1582, i32 2}
!403 = !{ptr @.str.194, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1583, i32 2}
!405 = !{ptr @.str.195, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.196, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1584, i32 2}
!408 = !{ptr @.str.197, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1585, i32 2}
!410 = !{ptr @.str.198, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1586, i32 2}
!412 = !{ptr @.str.199, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1587, i32 2}
!414 = !{ptr @.str.200, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @.str.201, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1588, i32 2}
!417 = !{ptr @.str.202, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1590, i32 2}
!419 = !{ptr @.str.203, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.204, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1591, i32 2}
!422 = !{ptr @.str.205, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.206, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1592, i32 2}
!425 = !{ptr @.str.207, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1593, i32 2}
!427 = !{ptr @.str.208, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1594, i32 2}
!429 = !{ptr @.str.209, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1595, i32 2}
!431 = !{ptr @.str.210, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1596, i32 2}
!434 = !{ptr @.str.212, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1597, i32 2}
!436 = !{ptr @.str.213, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1598, i32 2}
!438 = !{ptr @.str.214, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1599, i32 2}
!440 = !{ptr @.str.215, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1600, i32 2}
!442 = !{ptr @.str.216, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.217, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1601, i32 2}
!445 = !{ptr @.str.218, !444, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.219, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1602, i32 2}
!448 = !{ptr @.str.220, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @.str.221, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1603, i32 2}
!451 = !{ptr @.str.222, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.223, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1604, i32 2}
!454 = !{ptr @.str.224, !453, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.225, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1605, i32 2}
!457 = !{ptr @.str.226, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.227, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1606, i32 2}
!460 = !{ptr @.str.228, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.229, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1607, i32 2}
!463 = !{ptr @.str.230, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.231, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1608, i32 2}
!466 = !{ptr @.str.232, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1609, i32 2}
!468 = !{ptr @.str.233, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1610, i32 2}
!470 = !{ptr @.str.234, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1611, i32 2}
!472 = !{ptr @.str.235, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.236, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1612, i32 2}
!475 = !{ptr @.str.237, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1614, i32 2}
!477 = !{ptr @.str.238, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1615, i32 2}
!479 = !{ptr @.str.239, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1616, i32 2}
!481 = !{ptr @.str.240, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1617, i32 2}
!483 = !{ptr @.str.241, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1618, i32 2}
!485 = !{ptr @.str.242, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.243, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1619, i32 2}
!488 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1620, i32 2}
!490 = !{ptr @.str.245, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1621, i32 2}
!492 = !{ptr @.str.246, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1622, i32 2}
!494 = !{ptr @.str.247, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1623, i32 2}
!496 = !{ptr @.str.248, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.249, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1624, i32 2}
!499 = !{ptr @.str.250, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.251, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1625, i32 2}
!502 = !{ptr @.str.252, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.253, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1626, i32 2}
!505 = !{ptr @.str.254, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @.str.255, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1627, i32 2}
!508 = !{ptr @.str.256, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @.str.257, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1628, i32 2}
!511 = !{ptr @.str.258, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1629, i32 2}
!513 = !{ptr @.str.259, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @.str.260, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1630, i32 2}
!516 = !{ptr @.str.261, !515, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @.str.262, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1631, i32 2}
!519 = !{ptr @.str.263, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.264, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1632, i32 2}
!522 = !{ptr @.str.265, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @.str.266, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1633, i32 2}
!525 = !{ptr @.str.267, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1634, i32 2}
!527 = !{ptr @.str.268, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.269, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1635, i32 2}
!530 = !{ptr @.str.270, !529, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @.str.271, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1636, i32 2}
!533 = !{ptr @.str.272, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @.str.273, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1637, i32 2}
!536 = !{ptr @.str.274, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @.str.275, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1638, i32 2}
!539 = !{ptr @.str.276, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1641, i32 2}
!541 = !{ptr @.str.277, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1644, i32 2}
!543 = !{ptr @.str.278, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1645, i32 2}
!545 = !{ptr @.str.279, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1646, i32 2}
!547 = !{ptr @.str.280, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1647, i32 2}
!549 = !{ptr @.str.281, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1648, i32 2}
!551 = !{ptr @.str.282, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1649, i32 2}
!553 = !{ptr @.str.283, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1651, i32 2}
!555 = !{ptr @.str.284, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1652, i32 2}
!557 = !{ptr @.str.285, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1653, i32 2}
!559 = !{ptr @.str.286, !558, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @.str.287, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1654, i32 2}
!562 = !{ptr @.str.288, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1655, i32 2}
!564 = !{ptr @.str.289, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @.str.290, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1656, i32 2}
!567 = !{ptr @.str.291, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1657, i32 2}
!569 = !{ptr @.str.292, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @.str.293, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1658, i32 2}
!572 = !{ptr @.str.294, !571, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @.str.295, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1659, i32 2}
!575 = !{ptr @.str.296, !574, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @.str.297, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1660, i32 2}
!578 = !{ptr @.str.298, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1661, i32 2}
!580 = !{ptr @.str.299, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @.str.300, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1662, i32 2}
!583 = !{ptr @.str.301, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1663, i32 2}
!585 = !{ptr @.str.302, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1664, i32 2}
!587 = !{ptr @.str.303, !586, !"<string literal>", i1 false, i1 false}
!588 = !{ptr @.str.304, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1665, i32 2}
!590 = !{ptr @.str.305, !589, !"<string literal>", i1 false, i1 false}
!591 = !{ptr @.str.306, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1666, i32 2}
!593 = !{ptr @.str.307, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1667, i32 2}
!595 = !{ptr @.str.308, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @.str.309, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1668, i32 2}
!598 = !{ptr @.str.310, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @.str.311, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1669, i32 2}
!601 = !{ptr @.str.312, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1670, i32 2}
!603 = !{ptr @.str.313, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @.str.314, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1673, i32 2}
!606 = !{ptr @.str.315, !605, !"<string literal>", i1 false, i1 false}
!607 = !{ptr @.str.316, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1674, i32 2}
!609 = !{ptr @.str.317, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1675, i32 2}
!611 = !{ptr @.str.318, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1676, i32 2}
!613 = !{ptr @.str.319, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1677, i32 2}
!615 = !{ptr @.str.320, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1678, i32 2}
!617 = !{ptr @.str.321, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1681, i32 2}
!619 = !{ptr @.str.322, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @.str.323, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1682, i32 2}
!622 = !{ptr @.str.324, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1683, i32 2}
!624 = !{ptr @.str.325, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1684, i32 2}
!626 = !{ptr @.str.326, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1685, i32 2}
!628 = !{ptr @.str.327, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1686, i32 2}
!630 = !{ptr @.str.328, !629, !"<string literal>", i1 false, i1 false}
!631 = !{ptr @.str.329, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1687, i32 2}
!633 = !{ptr @.str.330, !632, !"<string literal>", i1 false, i1 false}
!634 = !{ptr @.str.331, !632, !"<string literal>", i1 false, i1 false}
!635 = !{ptr @.str.332, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1688, i32 2}
!637 = !{ptr @.str.333, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1690, i32 2}
!639 = !{ptr @.str.334, !638, !"<string literal>", i1 false, i1 false}
!640 = !{ptr @.str.335, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1691, i32 2}
!642 = !{ptr @.str.336, !641, !"<string literal>", i1 false, i1 false}
!643 = !{ptr @.str.337, !641, !"<string literal>", i1 false, i1 false}
!644 = !{ptr @.str.338, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1692, i32 2}
!646 = !{ptr @.str.339, !645, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @.str.340, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1693, i32 2}
!649 = !{ptr @.str.341, !648, !"<string literal>", i1 false, i1 false}
!650 = !{ptr @.str.342, !648, !"<string literal>", i1 false, i1 false}
!651 = !{ptr @.str.343, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1694, i32 2}
!653 = !{ptr @.str.344, !652, !"<string literal>", i1 false, i1 false}
!654 = !{ptr @.str.345, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1695, i32 2}
!656 = !{ptr @.str.346, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1696, i32 2}
!658 = !{ptr @pcnet_ids, !659, !"pcnet_ids", i1 false, i1 false}
!659 = !{!"../drivers/net/ethernet/8390/pcnet_cs.c", i32 1485, i32 38}
!660 = !{i32 1, !"wchar_size", i32 2}
!661 = !{i32 1, !"min_enum_size", i32 4}
!662 = !{i32 8, !"branch-target-enforcement", i32 0}
!663 = !{i32 8, !"sign-return-address", i32 0}
!664 = !{i32 8, !"sign-return-address-all", i32 0}
!665 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!666 = !{i32 7, !"uwtable", i32 1}
!667 = !{i32 7, !"frame-pointer", i32 2}
!668 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!669 = !{i64 2148751712, i64 2148751717, i64 2148751730, i64 2148751774, i64 2148751808, i64 2148751829}
!670 = !{!"branch_weights", i32 1, i32 2000}
!671 = !{i64 6816946}
!672 = !{i64 6817146}
!673 = !{i64 6817764}
!674 = !{i64 2156700863}
!675 = !{i64 2154353425}
!676 = !{i64 6817369}
!677 = !{i64 2154351440}
!678 = !{i64 2156720129}
!679 = !{i64 2156730538}
!680 = !{i64 2156713525}
!681 = !{i64 2156710554}
!682 = !{i64 2156710826}
!683 = !{i64 2156711218}
!684 = !{i64 2156714463}
!685 = !{i64 2156714794}
!686 = !{i64 2156713807}
!687 = !{i64 2156714144}
!688 = !{i64 2156711600}
!689 = !{i64 2156711882}
!690 = !{i64 2156712219}
!691 = !{i64 2156712538}
!692 = !{i64 2156712920}
!693 = !{i64 2156713143}
!694 = !{i64 2156715123}
!695 = !{i64 2156715465}
!696 = !{i64 2156715851}
!697 = !{i64 2156716264}
!698 = !{i64 2156716492}
!699 = !{i64 2156716824}
!700 = !{i64 2156717178}
!701 = !{i64 2156717596}
!702 = !{i64 2156717950}
!703 = !{i64 2156718292}
!704 = !{i64 2156718695}
!705 = !{i64 2156719049}
!706 = !{i64 2156719391}
!707 = !{i64 2156719713}
!708 = !{i64 2156683591}
!709 = !{i64 2156683801}
!710 = !{i64 2156684011}
!711 = !{i64 2156684235}
!712 = !{i64 2156686939}
!713 = !{i64 2156688363}
!714 = !{i64 2156689178}
!715 = !{i64 2156728265}
!716 = !{i64 2156728080}
!717 = !{i64 2156737523}
!718 = !{i64 2156738411}
!719 = !{i64 2156739298}
!720 = !{i64 2156735062}
