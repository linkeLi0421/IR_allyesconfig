; ModuleID = '/llk/IR_all_yes/drivers/tty/ipwireless/hardware.c_pt.bc'
source_filename = "../drivers/tty/ipwireless/hardware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipw_dev = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipw_hardware = type { i32, i16, i16, %struct.spinlock, i32, i32, %struct.timer_list, i32, i32, [3 x %struct.list_head], i32, %struct.list_head, %struct.list_head, i32, i32, i32, i16, i32, %struct.work_struct, i32, i32, i32, i32, [5 x i32], [5 x ptr], %struct.tasklet_struct, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.MEMINFREG = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16 }
%struct.MEMCCR = type { i16, i16, i16, i16, i16, i16 }
%struct.ipw_tx_packet = type { %struct.list_head, i8, i8, i16, i32, i32, ptr, ptr }
%struct.ipw_control_packet = type { %struct.ipw_tx_packet, %struct.ipw_control_packet_body }
%struct.ipw_control_packet_body = type { i8, i8 }
%struct.ipw_rx_packet = type { %struct.list_head, i32, i32, i32, i32 }
%union.nl_packet = type { [318 x i8] }
%struct.nl_first_packet_header = type { i8, i8, i8 }
%struct.tl_setup_get_version_rsp = type { i8, i8 }
%struct.ipw_setup_config_packet = type { %struct.ipw_tx_packet, %struct.tl_setup_config_msg }
%struct.tl_setup_config_msg = type { i8, i8, i8, i8 }
%struct.ipw_setup_open_packet = type { %struct.ipw_tx_packet, %struct.tl_setup_open_msg }
%struct.tl_setup_open_msg = type { i8, i8 }
%struct.ipw_setup_info_packet = type { %struct.ipw_tx_packet, %struct.tl_setup_info_msg }
%struct.tl_setup_info_msg = type { i8, i8, i8, i8 }

@ipwireless_hardware_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&hw->lock\00", [22 x i8] zeroinitializer }, align 32
@ipwireless_hardware_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&hw->work_rx)\00", [32 x i8] zeroinitializer }, align 32
@ipwireless_hardware_create.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&hw->setup_timer)\00", [45 x i8] zeroinitializer }, align 32
@ipwireless_init_hardware_v2_v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ipwireless: waiting for card to start up...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ipwireless_init_hardware_v2_v3\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/tty/ipwireless/hardware.c\00", [62 x i8] zeroinitializer }, align 32
@ipwireless_init_hardware_v2_v3._entry_ptr = internal global ptr @ipwireless_init_hardware_v2_v3._entry, section ".printk_index", align 4
@ipwireless_handle_v2_v3_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016ipwireless: Using memreg_tx_old\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ipwireless_handle_v2_v3_interrupt\00", [62 x i8] zeroinitializer }, align 32
@ipwireless_handle_v2_v3_interrupt._entry_ptr = internal global ptr @ipwireless_handle_v2_v3_interrupt._entry, section ".printk_index", align 4
@ipwireless_handle_v2_v3_interrupt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.7, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017ipwireless: memreg_tx serial num detected\0A\00", [51 x i8] zeroinitializer }, align 32
@ipwireless_handle_v2_v3_interrupt._entry_ptr.12 = internal global ptr @ipwireless_handle_v2_v3_interrupt._entry.10, section ".printk_index", align 4
@ipwireless_handle_v2_v3_interrupt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.7, i32 1197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ipwireless: spurious interrupt - new_tx mode\0A\00", [48 x i8] zeroinitializer }, align 32
@ipwireless_handle_v2_v3_interrupt._entry_ptr.15 = internal global ptr @ipwireless_handle_v2_v3_interrupt._entry.13, section ".printk_index", align 4
@ipwireless_handle_v2_v3_interrupt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.7, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014ipwireless: no valid memreg_tx value - switching to the old memreg_tx\0A\00", [55 x i8] zeroinitializer }, align 32
@ipwireless_handle_v2_v3_interrupt._entry_ptr.18 = internal global ptr @ipwireless_handle_v2_v3_interrupt._entry.16, section ".printk_index", align 4
@ipwireless_handle_v2_v3_interrupt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.7, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ipwireless: spurious interrupt - old_tx mode\0A\00", [48 x i8] zeroinitializer }, align 32
@ipwireless_handle_v2_v3_interrupt._entry_ptr.21 = internal global ptr @ipwireless_handle_v2_v3_interrupt._entry.19, section ".printk_index", align 4
@ipwireless_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipwireless: %s %s \00", [45 x i8] zeroinitializer }, align 32
@dump_data_bytes.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.7, ptr @.str.26, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipwireless\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dump_data_bytes\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"     \00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DATA \00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CTRL \00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SETUP\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"???? \00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016ipwireless: received a packet of %u bytes - longer than the MTU!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_receive_packet\00", [46 x i8] zeroinitializer }, align 32
@do_receive_packet._entry_ptr = internal global ptr @do_receive_packet._entry, section ".printk_index", align 4
@do_receive_packet._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_receive_packet._entry_ptr.36 = internal global ptr @do_receive_packet._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"recv\00", [27 x i8] zeroinitializer }, align 32
@queue_received_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016ipwireless: data packet has bad address %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"queue_received_packet\00", [42 x i8] zeroinitializer }, align 32
@queue_received_packet._entry_ptr = internal global ptr @queue_received_packet._entry, section ".printk_index", align 4
@queue_received_packet._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.7, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ipwireless: no memory for incoming data packet, dropped!\0A\00", [36 x i8] zeroinitializer }, align 32
@queue_received_packet._entry_ptr.42 = internal global ptr @queue_received_packet._entry.40, section ".printk_index", align 4
@queue_received_packet._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.7, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ipwireless: no memory for incoming ctrl packet, dropped!\0A\00", [36 x i8] zeroinitializer }, align 32
@queue_received_packet._entry_ptr.45 = internal global ptr @queue_received_packet._entry.43, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@handle_received_SETUP_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ipwireless: setup packet has bad address %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle_received_SETUP_packet\00", [35 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr = internal global ptr @handle_received_SETUP_packet._entry, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.7, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ipwireless: OPEN_MSG [channel %u] reply received\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.50 = internal global ptr @handle_received_SETUP_packet._entry.48, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.7, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017ipwireless: card successfully configured as NDISWAN\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.53 = internal global ptr @handle_received_SETUP_packet._entry.51, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.7, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017ipwireless: Setup not completed - ignoring reboot msg\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.56 = internal global ptr @handle_received_SETUP_packet._entry.54, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.7, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ipwireless: Acknowledging REBOOT message\0A\00", [52 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.59 = internal global ptr @handle_received_SETUP_packet._entry.57, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.7, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013ipwireless: Not enough memory to send reboot packet\00", [42 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.62 = internal global ptr @handle_received_SETUP_packet._entry.60, section ".printk_index", align 4
@handle_received_SETUP_packet._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.7, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ipwireless: unknown setup message %u received\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_received_SETUP_packet._entry_ptr.65 = internal global ptr @handle_received_SETUP_packet._entry.63, section ".printk_index", align 4
@handle_setup_get_version_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.7, i32 1501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ipwireless: card is ready.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle_setup_get_version_rsp\00", [35 x i8] zeroinitializer }, align 32
@handle_setup_get_version_rsp._entry_ptr = internal global ptr @handle_setup_get_version_rsp._entry, section ".printk_index", align 4
@handle_setup_get_version_rsp._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.7, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ipwireless: invalid hardware version no %u\0A\00", [50 x i8] zeroinitializer }, align 32
@handle_setup_get_version_rsp._entry_ptr.70 = internal global ptr @handle_setup_get_version_rsp._entry.68, section ".printk_index", align 4
@__handle_setup_get_version_rsp._entry = internal constant %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.7, i32 1455, ptr null, ptr null }, align 1
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ipwireless: error setting DTR (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__handle_setup_get_version_rsp\00", [33 x i8] zeroinitializer }, align 32
@__handle_setup_get_version_rsp._entry_ptr = internal global ptr @__handle_setup_get_version_rsp._entry, section ".printk_index", align 4
@__handle_setup_get_version_rsp._entry.73 = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.7, i32 1464, ptr null, ptr null }, align 1
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ipwireless: error setting RTS (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__handle_setup_get_version_rsp._entry_ptr.75 = internal global ptr @__handle_setup_get_version_rsp._entry.73, section ".printk_index", align 4
@__handle_setup_get_version_rsp._entry.76 = internal constant %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.7, i32 1492, ptr null, ptr null }, align 1
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ipwireless: not enough memory to alloc control packet\0A\00", [39 x i8] zeroinitializer }, align 32
@__handle_setup_get_version_rsp._entry_ptr.78 = internal global ptr @__handle_setup_get_version_rsp._entry.76, section ".printk_index", align 4
@handle_received_CTRL_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.7, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ipwireless: control packet was %d bytes - wrong size!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"handle_received_CTRL_packet\00", [36 x i8] zeroinitializer }, align 32
@handle_received_CTRL_packet._entry_ptr = internal global ptr @handle_received_CTRL_packet._entry, section ".printk_index", align 4
@ipwireless_setup_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.7, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ipwireless: failed to startup using TX2, trying TX\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipwireless_setup_timer\00", [41 x i8] zeroinitializer }, align 32
@ipwireless_setup_timer._entry_ptr = internal global ptr @ipwireless_setup_timer._entry, section ".printk_index", align 4
@ipwireless_setup_timer._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.7, i32 1695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ipwireless: card failed to start up!\0A\00", [56 x i8] zeroinitializer }, align 32
@ipwireless_setup_timer._entry_ptr.85 = internal global ptr @ipwireless_setup_timer._entry.83, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.ipw_receive_data_work = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@switch.table.do_send_fragment = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@switch.table.do_receive_packet = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 8, i64 11, i64 14, i64 21, i64 22]
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1637, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1639, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1640, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1672, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1127, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1168, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1196, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1199, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1206, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 414, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 368, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 370, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 348, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 352, i32 39 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 353, i32 39 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 354, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 355, i32 19 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 865, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 881, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 907, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 631, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 649, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 673, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1537, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1553, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1561, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1567, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1572, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1579, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1592, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1501, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1506, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1454, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1463, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1491, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 774, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1686, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [37 x i8] c"../drivers/tty/ipwireless/hardware.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1694, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [35 x i8] c"switch.table.ipw_receive_data_work\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [30 x i8] c"switch.table.do_send_fragment\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [31 x i8] c"switch.table.do_receive_packet\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__handle_setup_get_version_rsp._entry, ptr @__handle_setup_get_version_rsp._entry.73, ptr @__handle_setup_get_version_rsp._entry.76, ptr @__handle_setup_get_version_rsp._entry_ptr, ptr @__handle_setup_get_version_rsp._entry_ptr.75, ptr @__handle_setup_get_version_rsp._entry_ptr.78, ptr @do_receive_packet._entry, ptr @do_receive_packet._entry.35, ptr @do_receive_packet._entry_ptr, ptr @do_receive_packet._entry_ptr.36, ptr @handle_received_CTRL_packet._entry, ptr @handle_received_CTRL_packet._entry_ptr, ptr @handle_received_SETUP_packet._entry, ptr @handle_received_SETUP_packet._entry.48, ptr @handle_received_SETUP_packet._entry.51, ptr @handle_received_SETUP_packet._entry.54, ptr @handle_received_SETUP_packet._entry.57, ptr @handle_received_SETUP_packet._entry.60, ptr @handle_received_SETUP_packet._entry.63, ptr @handle_received_SETUP_packet._entry_ptr, ptr @handle_received_SETUP_packet._entry_ptr.50, ptr @handle_received_SETUP_packet._entry_ptr.53, ptr @handle_received_SETUP_packet._entry_ptr.56, ptr @handle_received_SETUP_packet._entry_ptr.59, ptr @handle_received_SETUP_packet._entry_ptr.62, ptr @handle_received_SETUP_packet._entry_ptr.65, ptr @handle_setup_get_version_rsp._entry, ptr @handle_setup_get_version_rsp._entry.68, ptr @handle_setup_get_version_rsp._entry_ptr, ptr @handle_setup_get_version_rsp._entry_ptr.70, ptr @ipwireless_handle_v2_v3_interrupt._entry, ptr @ipwireless_handle_v2_v3_interrupt._entry.10, ptr @ipwireless_handle_v2_v3_interrupt._entry.13, ptr @ipwireless_handle_v2_v3_interrupt._entry.16, ptr @ipwireless_handle_v2_v3_interrupt._entry.19, ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr, ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.12, ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.15, ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.18, ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.21, ptr @ipwireless_init_hardware_v2_v3._entry, ptr @ipwireless_init_hardware_v2_v3._entry_ptr, ptr @ipwireless_setup_timer._entry, ptr @ipwireless_setup_timer._entry.83, ptr @ipwireless_setup_timer._entry_ptr, ptr @ipwireless_setup_timer._entry_ptr.85, ptr @queue_received_packet._entry, ptr @queue_received_packet._entry.40, ptr @queue_received_packet._entry.43, ptr @queue_received_packet._entry_ptr, ptr @queue_received_packet._entry_ptr.42, ptr @queue_received_packet._entry_ptr.45, ptr @ipwireless_hardware_create.__key, ptr @.str, ptr @ipwireless_hardware_create.__key.1, ptr @.str.2, ptr @ipwireless_hardware_create.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @switch.table.ipw_receive_data_work, ptr @switch.table.do_send_fragment, ptr @switch.table.do_receive_packet], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_hardware_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_hardware_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_hardware_create.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_init_hardware_v2_v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_handle_v2_v3_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_handle_v2_v3_interrupt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_handle_v2_v3_interrupt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_handle_v2_v3_interrupt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_handle_v2_v3_interrupt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_receive_packet._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_received_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_received_packet._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_received_packet._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_SETUP_packet._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_setup_get_version_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_setup_get_version_rsp._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_received_CTRL_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_setup_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipwireless_setup_timer._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipw_receive_data_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_send_fragment to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_receive_packet to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hardware = getelementptr inbounds %struct.ipw_dev, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hardware, align 4
  %hw_version = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #9, !srcloc !153
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %conv.i = zext i16 %8 to i32
  %9 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.then7.i [
    i16 -1, label %if.then.cleanup_crit_edge
    i16 0, label %if.then.cleanup_crit_edge17
  ]

if.then.cleanup_crit_edge17:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.i:                                       ; preds = %if.then
  %and9.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %if.then7.i
  %and23.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end44.thread.i_crit_edge

if.end.i.if.end44.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.thread.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread.i:                                  ; preds = %if.then7.i
  %lock.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 3
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %tx_ready.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %tx_ready.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tx_ready.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call18.i) #9
  %and235.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool24.not6.i = icmp eq i32 %and235.i, 0
  br i1 %tobool24.not6.i, label %if.end.thread.i.do.body49.i_crit_edge, label %if.end.thread.i.if.end44.thread.i_crit_edge

if.end.thread.i.if.end44.thread.i_crit_edge:      ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.thread.i

if.end.thread.i.do.body49.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49.i

if.end44.thread.i:                                ; preds = %if.end.thread.i.if.end44.thread.i_crit_edge, %if.end.i.if.end44.thread.i_crit_edge
  %ack.07.i = phi i16 [ 3, %if.end.thread.i.if.end44.thread.i_crit_edge ], [ 1, %if.end.i.if.end44.thread.i_crit_edge ]
  %lock36.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 3
  %call38.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock36.i) #9
  %rx_ready.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %rx_ready.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ready.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %rx_ready.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock36.i, i32 noundef %call38.i) #9
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.end44.thread.i, %if.end.thread.i.do.body49.i_crit_edge
  %ack.13.i = phi i16 [ %ack.07.i, %if.end44.thread.i ], [ 2, %if.end.thread.i.do.body49.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %13 = tail call i16 @llvm.bswap.i16(i16 %ack.13.i) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %add53.i = add i32 %15, 2
  %and54.i = and i32 %add53.i, 1048575
  %add55.i = or i32 %and54.i, -18874368
  %16 = inttoptr i32 %add55.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %13) #9, !srcloc !156
  %state.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 25, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body49.i.cleanup_crit_edge

do.body49.i.cleanup_crit_edge:                    ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 25
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %memreg_tx.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 31
  %memory_info_regs.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 27
  %serial_number_detected.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 17
  %last_memtx_serial.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 16
  %lock.i8 = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 3
  %rx_ready.i9 = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 15
  %memregs_CCR.i4.i = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 28
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond174.i, %if.else
  %17 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memreg_tx.i, align 4
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #9, !srcloc !153
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %21 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_rx_done.i = getelementptr inbounds %struct.MEMINFREG, ptr %22, i32 0, i32 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %memreg_rx_done.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %24 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i10 = icmp eq i16 %24, 0
  %25 = and i16 %23, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool9.not.i = icmp eq i16 %25, 0
  %or.cond.i = select i1 %tobool.not.i10, i1 %tobool9.not.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %do.body.i.if.end32.i_crit_edge

do.body.i.if.end32.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then.i:                                        ; preds = %do.body.i
  %26 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memreg_tx.i, align 4
  %28 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_tx_new.i = getelementptr inbounds %struct.MEMINFREG, ptr %29, i32 0, i32 9
  %cmp.i = icmp eq ptr %27, %memreg_tx_new.i
  br i1 %cmp.i, label %if.then13.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13.i:                                      ; preds = %if.then.i
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #9, !srcloc !153
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool22.not.i = icmp eq i16 %32, 0
  br i1 %tobool22.not.i, label %if.then13.i.cleanup_crit_edge, label %do.end.i

if.then13.i.cleanup_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  %33 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %memory_info_regs.i, align 4
  %35 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %memreg_tx.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end.i, %do.body.i.if.end32.i_crit_edge
  %memtx.0.i = phi i16 [ %20, %do.body.i.if.end32.i_crit_edge ], [ %31, %do.end.i ]
  %36 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp.i.i = icmp eq i16 %37, 1
  br i1 %cmp.i.i, label %if.then.i.i11, label %is_card_present.exit.i

if.then.i.i11:                                    ; preds = %if.end32.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %add.i.i = add i32 %39, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %40 = inttoptr i32 %add2.i.i to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %cmp5.i.not.i = icmp eq i16 %41, -1
  br i1 %cmp5.i.not.i, label %if.then.i.i11.if.then35.i_crit_edge, label %if.then.i.i11.if.end36.i_crit_edge

if.then.i.i11.if.end36.i_crit_edge:               ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then.i.i11.if.then35.i_crit_edge:              ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

is_card_present.exit.i:                           ; preds = %if.end32.i
  %42 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_card_present.i.i = getelementptr inbounds %struct.MEMINFREG, ptr %43, i32 0, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %memreg_card_present.i.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20254786, i32 %44)
  %cmp11.i.i = icmp eq i32 %44, -20254786
  br i1 %cmp11.i.i, label %is_card_present.exit.i.if.end36.i_crit_edge, label %is_card_present.exit.i.if.then35.i_crit_edge

is_card_present.exit.i.if.then35.i_crit_edge:     ; preds = %is_card_present.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.i

is_card_present.exit.i.if.end36.i_crit_edge:      ; preds = %is_card_present.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then35.i:                                      ; preds = %is_card_present.exit.i.if.then35.i_crit_edge, %if.then.i.i11.if.then35.i_crit_edge
  %45 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status.i.i = getelementptr inbounds %struct.MEMCCR, ptr %46, i32 0, i32 1
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg_config_and_status.i.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %48 = and i16 %47, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status4.i.i = getelementptr inbounds %struct.MEMCCR, ptr %50, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg_config_and_status4.i.i, i16 %48) #9, !srcloc !156
  br label %cleanup

if.end36.i:                                       ; preds = %is_card_present.exit.i.if.end36.i_crit_edge, %if.then.i.i11.if.end36.i_crit_edge
  %and38.i = and i16 %memtx.0.i, -256
  %51 = and i16 %memtx.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool42.not.i = icmp eq i16 %51, 0
  br i1 %tobool42.not.i, label %if.end36.i.if.end100.i_crit_edge, label %do.body44.i

if.end36.i.if.end100.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i

do.body44.i:                                      ; preds = %if.end36.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %52 = lshr exact i16 %and38.i, 8
  %53 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %memreg_tx.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 %52) #9, !srcloc !156
  %55 = ptrtoint ptr %serial_number_detected.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %serial_number_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool48.not.i = icmp eq i32 %56, 0
  br i1 %tobool48.not.i, label %if.else70.i, label %if.then49.i

if.then49.i:                                      ; preds = %do.body44.i
  %57 = ptrtoint ptr %last_memtx_serial.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %last_memtx_serial.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and38.i, i16 %58)
  %cmp52.not.i = icmp eq i16 %and38.i, %58
  br i1 %cmp52.not.i, label %if.then49.i.if.end100.i_crit_edge, label %if.then54.i

if.then49.i.if.end100.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i

if.then54.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %last_memtx_serial.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %and38.i, ptr %last_memtx_serial.i, align 4
  br label %if.end100.sink.split.i

if.else70.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and38.i)
  %cmp72.not.i = icmp eq i16 %and38.i, 0
  br i1 %cmp72.not.i, label %if.else70.i.if.end100.i_crit_edge, label %if.then74.i

if.else70.i.if.end100.i_crit_edge:                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100.i

if.then74.i:                                      ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %serial_number_detected.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %serial_number_detected.i, align 4
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %if.end100.sink.split.i

if.end100.sink.split.i:                           ; preds = %if.then74.i, %if.then54.i
  %call90.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i8) #9
  %61 = ptrtoint ptr %rx_ready.i9 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_ready.i9, align 4
  %inc96.i = add i32 %62, 1
  store i32 %inc96.i, ptr %rx_ready.i9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8, i32 noundef %call90.i) #9
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.end100.sink.split.i, %if.else70.i.if.end100.i_crit_edge, %if.then49.i.if.end100.i_crit_edge, %if.end36.i.if.end100.i_crit_edge
  %tobool137.not.i = phi i1 [ true, %if.else70.i.if.end100.i_crit_edge ], [ false, %if.then49.i.if.end100.i_crit_edge ], [ true, %if.end36.i.if.end100.i_crit_edge ], [ true, %if.end100.sink.split.i ]
  %tobool134.not.i = phi i1 [ false, %if.else70.i.if.end100.i_crit_edge ], [ true, %if.then49.i.if.end100.i_crit_edge ], [ true, %if.end36.i.if.end100.i_crit_edge ], [ false, %if.end100.sink.split.i ]
  br i1 %tobool9.not.i, label %lor.lhs.false.critedge.i, label %if.end125.thread.i

if.end125.thread.i:                               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_rx_done109.i = getelementptr inbounds %struct.MEMINFREG, ptr %64, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %memreg_rx_done109.i, i16 0) #9, !srcloc !156
  %call119.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i8) #9
  %tx_ready.i12 = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %tx_ready.i12 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %tx_ready.i12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8, i32 noundef %call119.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %66 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_pc_interrupt_ack.i = getelementptr inbounds %struct.MEMINFREG, ptr %67, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %memreg_pc_interrupt_ack.i, i16 256) #9, !srcloc !156
  %68 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status.i2.i = getelementptr inbounds %struct.MEMCCR, ptr %69, i32 0, i32 1
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg_config_and_status.i2.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %71 = and i16 %70, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status4.i3.i = getelementptr inbounds %struct.MEMCCR, ptr %73, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg_config_and_status4.i3.i, i16 %71) #9, !srcloc !156
  br label %if.then135.i

lor.lhs.false.critedge.i:                         ; preds = %if.end100.i
  %74 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status.i5.i = getelementptr inbounds %struct.MEMCCR, ptr %75, i32 0, i32 1
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg_config_and_status.i5.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %77 = and i16 %76, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %memregs_CCR.i4.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %memregs_CCR.i4.i, align 4
  %reg_config_and_status4.i6.i = getelementptr inbounds %struct.MEMCCR, ptr %79, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg_config_and_status4.i6.i, i16 %77) #9, !srcloc !156
  br i1 %tobool134.not.i, label %if.else136.i, label %lor.lhs.false.critedge.i.if.then135.i_crit_edge

lor.lhs.false.critedge.i.if.then135.i_crit_edge:  ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then135.i

if.then135.i:                                     ; preds = %lor.lhs.false.critedge.i.if.then135.i_crit_edge, %if.end125.thread.i
  %state.i.i13 = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 25, i32 1
  %call.i.i14 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.then.i7.i, label %if.then135.i.cleanup_crit_edge

if.then135.i.cleanup_crit_edge:                   ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i7.i:                                     ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet.i16 = getelementptr inbounds %struct.ipw_hardware, ptr %1, i32 0, i32 25
  tail call void @__tasklet_schedule(ptr noundef %tasklet.i16) #9
  br label %cleanup

if.else136.i:                                     ; preds = %lor.lhs.false.critedge.i
  br i1 %tobool137.not.i, label %if.then138.i, label %if.else136.i.cleanup_crit_edge

if.else136.i.cleanup_crit_edge:                   ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then138.i:                                     ; preds = %if.else136.i
  %80 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %memreg_tx.i, align 4
  %82 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_tx_new141.i = getelementptr inbounds %struct.MEMINFREG, ptr %83, i32 0, i32 9
  %cmp142.i = icmp eq ptr %81, %memreg_tx_new141.i
  br i1 %cmp142.i, label %if.then144.i, label %do.end166.i

if.then144.i:                                     ; preds = %if.then138.i
  %84 = ptrtoint ptr %serial_number_detected.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %serial_number_detected.i, align 4
  %tobool146.not.i = icmp eq i32 %85, 0
  br i1 %tobool146.not.i, label %do.cond174.i, label %do.end150.i

do.end150.i:                                      ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #11
  %call152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %cleanup

do.end166.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #11
  %call168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %cleanup

do.cond174.i:                                     ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #11
  %call158.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  %86 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %memory_info_regs.i, align 4
  %88 = ptrtoint ptr %memreg_tx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %memreg_tx.i, align 4
  br label %do.body.i

cleanup:                                          ; preds = %do.end166.i, %do.end150.i, %if.else136.i.cleanup_crit_edge, %if.then.i7.i, %if.then135.i.cleanup_crit_edge, %if.then35.i, %if.then13.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then.i.i, %do.body49.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge17
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge17 ], [ 1, %do.body49.i.cleanup_crit_edge ], [ 1, %if.then.i.i ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then35.i ], [ 1, %if.then.i7.i ], [ 1, %if.then135.i.cleanup_crit_edge ], [ 1, %do.end166.i ], [ 1, %do.end150.i ], [ 0, %if.then13.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 1, %if.else136.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_send_packet(ptr noundef %hw, i32 noundef %channel_idx, ptr nocapture noundef readonly %data, i32 noundef %length, ptr noundef %callback, ptr noundef %callback_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %length, 28
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2848) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = trunc i32 %channel_idx to i8
  %conv = add i8 %0, 1
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call9.i.i.i, ptr %call9.i.i.i, align 128
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i.i, ptr %prev.i.i, align 4
  %dest_addr1.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call9.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dest_addr1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %dest_addr1.i, align 8
  %protocol2.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call9.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %protocol2.i, align 1
  %conv.i = trunc i32 %length to i16
  %length.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call9.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %length.i, align 2
  %packet_callback = getelementptr inbounds %struct.ipw_tx_packet, ptr %call9.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %packet_callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %callback, ptr %packet_callback, align 4
  %callback_data1 = getelementptr inbounds %struct.ipw_tx_packet, ptr %call9.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %callback_data1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %callback_data, ptr %callback_data1, align 8
  %add.ptr = getelementptr i8, ptr %call9.i.i.i, i32 28
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %length)
  tail call fastcc void @send_packet(ptr noundef %hw, i32 noundef 2, ptr noundef nonnull %call9.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_packet(ptr noundef %hw, i32 noundef %priority, ptr noundef %packet) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %arrayidx = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 %priority
  %prev.i = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 %priority, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %packet, ptr noundef %1, ptr noundef %arrayidx) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %packet, ptr %prev.i, align 4
  %3 = ptrtoint ptr %packet to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %packet, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %packet, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %packet, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %tx_queued = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 8
  %6 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queued, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %to_setup.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 19
  %8 = ptrtoint ptr %to_setup.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_setup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %list_add_tail.exit.get_current_packet_priority.exit.i_crit_edge

list_add_tail.exit.get_current_packet_priority.exit.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_packet_priority.exit.i

lor.rhs.i.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %initializing.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %initializing.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %initializing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i.i = icmp eq i32 %11, 0
  %phi.sel.i.i = select i1 %tobool1.not.i.i, i32 3, i32 1
  br label %get_current_packet_priority.exit.i

get_current_packet_priority.exit.i:               ; preds = %lor.rhs.i.i, %list_add_tail.exit.get_current_packet_priority.exit.i_crit_edge
  %12 = phi i32 [ 1, %list_add_tail.exit.get_current_packet_priority.exit.i_crit_edge ], [ %phi.sel.i.i, %lor.rhs.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %get_current_packet_priority.exit.i
  %call7.i = tail call fastcc i32 @send_pending_packet(ptr noundef %hw, i32 noundef %12) #9
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %flush_packets_to_hw.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

flush_packets_to_hw.exit:                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_set_DTR(ptr noundef %hw, i32 noundef %channel_idx, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 0
  %arrayidx2.i = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 23, i32 %channel_idx
  %0 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2.i, align 4
  %and.i = and i32 %1, -17
  %masksel.i = select i1 %cmp.not.i, i32 0, i32 16
  %and.sink.i = or i32 %and.i, %masksel.i
  store i32 %and.sink.i, ptr %arrayidx2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.set_DTR.exit_crit_edge, label %if.end4.i.i

entry.set_DTR.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_DTR.exit

if.end4.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = trunc i32 %channel_idx to i8
  %conv.i.i = add i8 %3, 1
  %4 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %dest_addr2.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dest_addr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i.i, ptr %dest_addr2.i.i.i, align 8
  %protocol4.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %protocol4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %protocol4.i.i.i, align 1
  %length.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %body.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %body.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %body.i.i.i, align 4
  %9 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %length.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp5.i.i = icmp ne i32 %state, 0
  %conv7.i.i = zext i1 %cmp5.i.i to i8
  %value.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i.i, ptr %value.i.i, align 1
  tail call fastcc void @send_packet(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %set_DTR.exit

set_DTR.exit:                                     ; preds = %if.end4.i.i, %entry.set_DTR.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.i.i ], [ -12, %entry.set_DTR.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipwireless_set_RTS(ptr noundef %hw, i32 noundef %channel_idx, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not.i = icmp eq i32 %state, 0
  %arrayidx2.i = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 23, i32 %channel_idx
  %0 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2.i, align 4
  %and.i = and i32 %1, -33
  %masksel.i = select i1 %cmp.not.i, i32 0, i32 32
  %and.sink.i = or i32 %and.i, %masksel.i
  store i32 %and.sink.i, ptr %arrayidx2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %entry.set_RTS.exit_crit_edge, label %if.end4.i.i

entry.set_RTS.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_RTS.exit

if.end4.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = trunc i32 %channel_idx to i8
  %conv.i.i = add i8 %3, 1
  %4 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %dest_addr2.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dest_addr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i.i, ptr %dest_addr2.i.i.i, align 8
  %protocol4.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %protocol4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %protocol4.i.i.i, align 1
  %length.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %body.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %body.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %body.i.i.i, align 4
  %9 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %length.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp5.i.i = icmp ne i32 %state, 0
  %conv7.i.i = zext i1 %cmp5.i.i to i8
  %value.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7.i.i, ptr %value.i.i, align 1
  tail call fastcc void @send_packet(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %set_RTS.exit

set_RTS.exit:                                     ; preds = %if.end4.i.i, %entry.set_RTS.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end4.i.i ], [ -12, %entry.set_RTS.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipwireless_hardware_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 328) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 21
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irq, align 8
  %initializing = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %initializing to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %initializing, align 4
  %tx_ready = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %tx_ready, align 4
  %rx_bytes_queued = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %rx_bytes_queued to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_bytes_queued, align 4
  %rx_pool_size = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %rx_pool_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_pool_size, align 8
  %last_memtx_serial = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %last_memtx_serial to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %last_memtx_serial, align 4
  %arrayidx = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %prev.i, align 8
  %arrayidx.1 = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 4
  %prev.i.1 = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.1, ptr %prev.i.1, align 8
  %arrayidx.2 = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 4
  %prev.i.2 = getelementptr %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 9, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.2, ptr %prev.i.2, align 8
  %rx_queue = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %rx_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rx_queue, ptr %rx_queue, align 8
  %prev.i34 = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_queue, ptr %prev.i34, align 4
  %rx_pool = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %rx_pool to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rx_pool, ptr %rx_pool, align 8
  %prev.i35 = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_pool, ptr %prev.i35, align 4
  %lock = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ipwireless_hardware_create.__key, i16 noundef signext 3) #9
  %tasklet = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 25
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @ipwireless_do_tasklet) #9
  %work_rx = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %work_rx, i32 noundef 0) #9
  %17 = ptrtoint ptr %work_rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %work_rx, align 4
  %lockdep_map = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @ipwireless_hardware_create.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry6 = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry6, ptr %entry6, align 8
  %prev.i36 = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 18, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry6, ptr %prev.i36, align 4
  %func = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ipw_receive_data_work, ptr %func, align 8
  %setup_timer = getelementptr inbounds %struct.ipw_hardware, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %setup_timer, ptr noundef nonnull @ipwireless_setup_timer, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @ipwireless_hardware_create.__key.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipwireless_do_tasklet(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -280
  %lock = getelementptr i8, ptr %t, i32 -272
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %shutting_down = getelementptr i8, ptr %t, i32 -44
  %0 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shutting_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %to_setup = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %to_setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %4 = ptrtoint ptr %to_setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %to_setup, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %hw_version.i = getelementptr i8, ptr %t, i32 -276
  %5 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp6.i = icmp eq i16 %6, 1
  br i1 %cmp6.i, label %do.body8.i, label %if.else.i

do.body8.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %add.i = add i32 %8, 4
  %and.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 1024) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %add17.i = add i32 %11, 4
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %12 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 2048) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %and26.i = and i32 %14, 1048575
  %add27.i = or i32 %and26.i, -18874368
  %15 = inttoptr i32 %add27.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 768) #9, !srcloc !156
  br label %ipw_setup_hardware.exit

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %memregs_CCR.i = getelementptr i8, ptr %t, i32 32
  %16 = ptrtoint ptr %memregs_CCR.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memregs_CCR.i, align 4
  %reg_config_and_status.i = getelementptr inbounds %struct.MEMCCR, ptr %17, i32 0, i32 1
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg_config_and_status.i) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %19 = or i16 %18, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %memregs_CCR.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memregs_CCR.i, align 4
  %reg_config_and_status38.i = getelementptr inbounds %struct.MEMCCR, ptr %21, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg_config_and_status38.i, i16 %19) #9, !srcloc !156
  br label %ipw_setup_hardware.exit

ipw_setup_hardware.exit:                          ; preds = %if.else.i, %do.body8.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %ipw_setup_hardware.exit.ipw_send_setup_packet.exit_crit_edge, label %if.end.i

ipw_setup_hardware.exit.ipw_send_setup_packet.exit_crit_edge: ; preds = %ipw_setup_hardware.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ipw_send_setup_packet.exit

if.end.i:                                         ; preds = %ipw_setup_hardware.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %dest_addr2.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %dest_addr2.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %dest_addr2.i.i, align 8
  %protocol4.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %protocol4.i.i, align 1
  %length.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 3
  %body.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 10, ptr %body.i.i, align 4
  %28 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %length.i.i, align 2
  tail call fastcc void @send_packet(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i) #9
  br label %ipw_send_setup_packet.exit

ipw_send_setup_packet.exit:                       ; preds = %if.end.i, %ipw_setup_hardware.exit.ipw_send_setup_packet.exit_crit_edge
  %call12 = tail call fastcc i32 @send_pending_packet(ptr noundef %add.ptr, i32 noundef 1)
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %blocking_rx.i = getelementptr i8, ptr %t, i32 -116
  %rx_ready.i = getelementptr i8, ptr %t, i32 -112
  %29 = ptrtoint ptr %rx_ready.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_ready.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not31.i = icmp eq i32 %30, 0
  br i1 %tobool.not31.i, label %ipw_send_setup_packet.exit.cleanup.sink.split_crit_edge, label %ipw_send_setup_packet.exit.land.rhs.i_crit_edge

ipw_send_setup_packet.exit.land.rhs.i_crit_edge:  ; preds = %ipw_send_setup_packet.exit
  br label %land.rhs.i

ipw_send_setup_packet.exit.cleanup.sink.split_crit_edge: ; preds = %ipw_send_setup_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %ipw_send_setup_packet.exit.land.rhs.i_crit_edge
  %31 = phi i32 [ %36, %while.body.i.land.rhs.i_crit_edge ], [ %30, %ipw_send_setup_packet.exit.land.rhs.i_crit_edge ]
  %flags.032.i = phi i32 [ %call17.i, %while.body.i.land.rhs.i_crit_edge ], [ %call2.i41, %ipw_send_setup_packet.exit.land.rhs.i_crit_edge ]
  %32 = ptrtoint ptr %blocking_rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocking_rx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool5.not.i = icmp eq i32 %33, 0
  br i1 %tobool5.not.i, label %while.body.i, label %land.rhs.i.cleanup.sink.split_crit_edge

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add i32 %31, -1
  %34 = ptrtoint ptr %rx_ready.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dec.i, ptr %rx_ready.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.032.i) #9
  tail call fastcc void @do_receive_packet(ptr noundef %add.ptr) #9
  %call17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %35 = ptrtoint ptr %rx_ready.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ready.i, align 4
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup.sink.split_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.body.i.cleanup.sink.split_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %37 = ptrtoint ptr %to_setup to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %to_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i42 = icmp eq i32 %38, 0
  br i1 %tobool.not.i42, label %lor.rhs.i, label %if.else.get_current_packet_priority.exit_crit_edge

if.else.get_current_packet_priority.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_current_packet_priority.exit

lor.rhs.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %initializing.i = getelementptr i8, ptr %t, i32 -228
  %39 = ptrtoint ptr %initializing.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %initializing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool1.not.i = icmp eq i32 %40, 0
  %phi.sel.i = select i1 %tobool1.not.i, i32 3, i32 1
  br label %get_current_packet_priority.exit

get_current_packet_priority.exit:                 ; preds = %lor.rhs.i, %if.else.get_current_packet_priority.exit_crit_edge
  %41 = phi i32 [ 1, %if.else.get_current_packet_priority.exit_crit_edge ], [ %phi.sel.i, %lor.rhs.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %blocking_rx.i45 = getelementptr i8, ptr %t, i32 -116
  %rx_ready.i46 = getelementptr i8, ptr %t, i32 -112
  br label %do.body16

do.body16:                                        ; preds = %get_packets_from_hw.exit58.do.body16_crit_edge, %get_current_packet_priority.exit
  %call17 = tail call fastcc i32 @send_pending_packet(ptr noundef %add.ptr, i32 noundef %41)
  %call2.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %42 = ptrtoint ptr %rx_ready.i46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_ready.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not31.i47 = icmp eq i32 %43, 0
  br i1 %tobool.not31.i47, label %do.body16.get_packets_from_hw.exit58_crit_edge, label %land.rhs.i51.preheader

do.body16.get_packets_from_hw.exit58_crit_edge:   ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_packets_from_hw.exit58

land.rhs.i51.preheader:                           ; preds = %do.body16
  %44 = ptrtoint ptr %blocking_rx.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blocking_rx.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool5.not.i5059 = icmp eq i32 %45, 0
  br i1 %tobool5.not.i5059, label %land.rhs.i51.preheader.while.body.i55_crit_edge, label %land.rhs.i51.preheader.get_packets_from_hw.exit58_crit_edge

land.rhs.i51.preheader.get_packets_from_hw.exit58_crit_edge: ; preds = %land.rhs.i51.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_packets_from_hw.exit58

land.rhs.i51.preheader.while.body.i55_crit_edge:  ; preds = %land.rhs.i51.preheader
  br label %while.body.i55

land.rhs.i51:                                     ; preds = %while.body.i55
  %46 = ptrtoint ptr %blocking_rx.i45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blocking_rx.i45, align 4
  %tobool5.not.i50 = icmp eq i32 %47, 0
  br i1 %tobool5.not.i50, label %land.rhs.i51.while.body.i55_crit_edge, label %land.rhs.i51.get_packets_from_hw.exit58_crit_edge

land.rhs.i51.get_packets_from_hw.exit58_crit_edge: ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_packets_from_hw.exit58

land.rhs.i51.while.body.i55_crit_edge:            ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i55

while.body.i55:                                   ; preds = %land.rhs.i51.while.body.i55_crit_edge, %land.rhs.i51.preheader.while.body.i55_crit_edge
  %flags.032.i4960 = phi i32 [ %call17.i53, %land.rhs.i51.while.body.i55_crit_edge ], [ %call2.i44, %land.rhs.i51.preheader.while.body.i55_crit_edge ]
  %48 = phi i32 [ %51, %land.rhs.i51.while.body.i55_crit_edge ], [ %43, %land.rhs.i51.preheader.while.body.i55_crit_edge ]
  %dec.i52 = add i32 %48, -1
  %49 = ptrtoint ptr %rx_ready.i46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %dec.i52, ptr %rx_ready.i46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.032.i4960) #9
  tail call fastcc void @do_receive_packet(ptr noundef %add.ptr) #9
  %call17.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %50 = ptrtoint ptr %rx_ready.i46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_ready.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i54 = icmp eq i32 %51, 0
  br i1 %tobool.not.i54, label %while.body.i55.get_packets_from_hw.exit58_crit_edge, label %land.rhs.i51

while.body.i55.get_packets_from_hw.exit58_crit_edge: ; preds = %while.body.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_packets_from_hw.exit58

get_packets_from_hw.exit58:                       ; preds = %while.body.i55.get_packets_from_hw.exit58_crit_edge, %land.rhs.i51.get_packets_from_hw.exit58_crit_edge, %land.rhs.i51.preheader.get_packets_from_hw.exit58_crit_edge, %do.body16.get_packets_from_hw.exit58_crit_edge
  %flags.0.lcssa.i56 = phi i32 [ %call2.i44, %do.body16.get_packets_from_hw.exit58_crit_edge ], [ %call2.i44, %land.rhs.i51.preheader.get_packets_from_hw.exit58_crit_edge ], [ %call17.i53, %land.rhs.i51.get_packets_from_hw.exit58_crit_edge ], [ %call17.i53, %while.body.i55.get_packets_from_hw.exit58_crit_edge ]
  %received.0.lcssa.i57 = phi i32 [ 0, %do.body16.get_packets_from_hw.exit58_crit_edge ], [ 0, %land.rhs.i51.preheader.get_packets_from_hw.exit58_crit_edge ], [ 1, %land.rhs.i51.get_packets_from_hw.exit58_crit_edge ], [ 1, %while.body.i55.get_packets_from_hw.exit58_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa.i56) #9
  %or = or i32 %received.0.lcssa.i57, %call17
  %tobool20.not = icmp eq i32 %or, 0
  br i1 %tobool20.not, label %get_packets_from_hw.exit58.cleanup_crit_edge, label %get_packets_from_hw.exit58.do.body16_crit_edge

get_packets_from_hw.exit58.do.body16_crit_edge:   ; preds = %get_packets_from_hw.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

get_packets_from_hw.exit58.cleanup_crit_edge:     ; preds = %get_packets_from_hw.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.body.i.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge, %ipw_send_setup_packet.exit.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %flags.0.lcssa.i.sink = phi i32 [ %call3, %entry.cleanup.sink.split_crit_edge ], [ %call2.i41, %ipw_send_setup_packet.exit.cleanup.sink.split_crit_edge ], [ %flags.032.i, %land.rhs.i.cleanup.sink.split_crit_edge ], [ %call17.i, %while.body.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_packets_from_hw.exit58.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipw_receive_data_work(ptr noundef %work_rx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work_rx, i32 -180
  %lock = getelementptr i8, ptr %work_rx, i32 -172
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %shutting_down = getelementptr i8, ptr %work_rx, i32 56
  %rx_queue = getelementptr i8, ptr %work_rx, i32 -36
  %network.i = getelementptr i8, ptr %work_rx, i32 124
  %rx_bytes_queued = getelementptr i8, ptr %work_rx, i32 -40
  %rx_pool_size.i = getelementptr i8, ptr %work_rx, i32 -20
  %rx_pool.i = getelementptr i8, ptr %work_rx, i32 -28
  %blocking_rx = getelementptr i8, ptr %work_rx, i32 -16
  br label %while.cond

while.cond:                                       ; preds = %pool_free.exit.while.cond_crit_edge, %entry
  %flags.0 = phi i32 [ %call3, %entry ], [ %flags.2, %pool_free.exit.while.cond_crit_edge ]
  %0 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %rx_queue
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shutting_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %protocol = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %list_del.exit
  %14 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %network.i, align 4
  %cmp15.not = icmp eq ptr %15, null
  br i1 %cmp15.not, label %if.then14.if.end35_crit_edge, label %if.then17

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #9
  %16 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %network.i, align 4
  %channel_idx = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %channel_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_idx, align 4
  %add.ptr20 = getelementptr i8, ptr %1, i32 24
  %length = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 4
  tail call void @ipwireless_network_packet_received(ptr noundef %17, i32 noundef %19, ptr noundef %add.ptr20, i32 noundef %21) #9
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then17, %if.then14.if.end35_crit_edge
  %flags.1 = phi i32 [ %call30, %if.then17 ], [ %flags.0, %if.then14.if.end35_crit_edge ]
  %length36 = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %length36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length36, align 4
  %24 = ptrtoint ptr %rx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_bytes_queued, align 4
  %sub = sub i32 %25, %23
  store i32 %sub, ptr %rx_bytes_queued, align 4
  br label %if.end40

if.else:                                          ; preds = %list_del.exit
  %channel_idx37 = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %channel_idx37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_idx37, align 4
  %length39 = getelementptr inbounds %struct.ipw_rx_packet, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %length39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %29) #12
  br label %if.end40

if.end.i:                                         ; preds = %if.else
  %add.ptr38 = getelementptr i8, ptr %1, i32 24
  %30 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr38, align 1
  %switch.tableidx = add i8 %31, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %32 = icmp ult i8 %switch.tableidx, 4
  br i1 %32, label %switch.lookup, label %if.end.i.if.end40_crit_edge

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

switch.lookup:                                    ; preds = %if.end.i
  %33 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ipw_receive_data_work, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load = load i32, ptr %switch.gep, align 4
  %value.i = getelementptr i8, ptr %1, i32 25
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.ipw_hardware, ptr %add.ptr, i32 0, i32 23, i32 %27
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %38, %switch.load
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end10.i

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i = xor i32 %switch.load, -1
  %arrayidx9.i = getelementptr %struct.ipw_hardware, ptr %add.ptr, i32 0, i32 23, i32 %27
  %39 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.i, align 4
  %and.i = and i32 %40, %neg.i
  store i32 %and.i, ptr %arrayidx9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then7.i
  %41 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %network.i, align 4
  %tobool11.not.i = icmp eq ptr %42, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end40_crit_edge, label %if.then12.i

if.end10.i.if.end40_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx15.i = getelementptr %struct.ipw_hardware, ptr %add.ptr, i32 0, i32 23, i32 %27
  %43 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx15.i, align 4
  tail call void @ipwireless_network_notify_control_line_change(ptr noundef nonnull %42, i32 noundef %27, i32 noundef %44, i32 noundef %switch.load) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then12.i, %if.end10.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge, %do.end.i, %if.end35
  %flags.2 = phi i32 [ %flags.1, %if.end35 ], [ %flags.0, %do.end.i ], [ %flags.0, %if.end.i.if.end40_crit_edge ], [ %flags.0, %if.end10.i.if.end40_crit_edge ], [ %flags.0, %if.then12.i ]
  %45 = ptrtoint ptr %rx_pool_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_pool_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp.i73 = icmp sgt i32 %46, 6
  br i1 %cmp.i73, label %if.then.i, label %if.else.i74

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %1) #9
  br label %pool_free.exit

if.else.i74:                                      ; preds = %if.end40
  %inc.i = add nsw i32 %46, 1
  %47 = ptrtoint ptr %rx_pool_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc.i, ptr %rx_pool_size.i, align 4
  %48 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_pool.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %rx_pool.i, ptr noundef %49) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i74.pool_free.exit_crit_edge

if.else.i74.pool_free.exit_crit_edge:             ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %pool_free.exit

if.end.i.i.i:                                     ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i75 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %prev1.i.i.i75, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %1, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx_pool.i, ptr %prev.i, align 4
  %53 = ptrtoint ptr %rx_pool.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %1, ptr %rx_pool.i, align 4
  br label %pool_free.exit

pool_free.exit:                                   ; preds = %if.end.i.i.i, %if.else.i74.pool_free.exit_crit_edge, %if.then.i
  %54 = ptrtoint ptr %rx_bytes_queued to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_bytes_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %55)
  %cmp42 = icmp sgt i32 %55, 262143
  %conv43 = zext i1 %cmp42 to i32
  %56 = ptrtoint ptr %blocking_rx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv43, ptr %blocking_rx, align 4
  %57 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %shutting_down, align 4
  %tobool45.not = icmp eq i32 %58, 0
  br i1 %tobool45.not, label %pool_free.exit.while.cond_crit_edge, label %pool_free.exit.while.end_crit_edge

pool_free.exit.while.end_crit_edge:               ; preds = %pool_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

pool_free.exit.while.cond_crit_edge:              ; preds = %pool_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %pool_free.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %flags.4 = phi i32 [ %flags.0, %while.cond.while.end_crit_edge ], [ %flags.2, %pool_free.exit.while.end_crit_edge ], [ %flags.0, %while.body.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipwireless_setup_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -60
  %init_loops = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %init_loops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_loops, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %init_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc)
  %cmp = icmp eq i32 %inc, 30
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %hw_version = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp2 = icmp eq i16 %3, 2
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %memreg_tx = getelementptr i8, ptr %t, i32 264
  %4 = ptrtoint ptr %memreg_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memreg_tx, align 4
  %memory_info_regs = getelementptr i8, ptr %t, i32 248
  %6 = ptrtoint ptr %memory_info_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memory_info_regs, align 4
  %memreg_tx_new = getelementptr inbounds %struct.MEMINFREG, ptr %7, i32 0, i32 9
  %cmp5 = icmp eq ptr %5, %memreg_tx_new
  br i1 %cmp5, label %do.end, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #12
  %8 = ptrtoint ptr %memory_info_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory_info_regs, align 4
  %10 = ptrtoint ptr %memreg_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %memreg_tx, align 4
  %11 = ptrtoint ptr %init_loops to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %init_loops, align 4
  br label %if.else

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %12 = ptrtoint ptr %init_loops to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %init_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %.pr)
  %cmp12 = icmp eq i32 %.pr, 30
  br i1 %cmp12, label %do.end17, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #12
  %initializing = getelementptr i8, ptr %t, i32 -8
  %13 = ptrtoint ptr %initializing to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %initializing, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end.if.else_crit_edge, %do.end, %entry.if.else_crit_edge
  %hw_version.i = getelementptr i8, ptr %t, i32 -56
  %14 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp.i = icmp eq i16 %15, 1
  br i1 %cmp.i, label %if.then.i, label %is_card_present.exit

if.then.i:                                        ; preds = %if.else
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %add.i = add i32 %17, 2
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add2.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp5.i.not = icmp eq i16 %19, -1
  br i1 %cmp5.i.not, label %if.then.i.if.end34_crit_edge, label %if.then.i.if.then21_crit_edge

if.then.i.if.then21_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then.i.if.end34_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

is_card_present.exit:                             ; preds = %if.else
  %memory_info_regs.i = getelementptr i8, ptr %t, i32 248
  %20 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_card_present.i = getelementptr inbounds %struct.MEMINFREG, ptr %21, i32 0, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %memreg_card_present.i) #9, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20254786, i32 %22)
  %cmp11.i = icmp eq i32 %22, -20254786
  br i1 %cmp11.i, label %is_card_present.exit.if.then21_crit_edge, label %is_card_present.exit.if.end34_crit_edge

is_card_present.exit.if.end34_crit_edge:          ; preds = %is_card_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

is_card_present.exit.if.then21_crit_edge:         ; preds = %is_card_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %is_card_present.exit.if.then21_crit_edge, %if.then.i.if.then21_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -52
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %to_setup = getelementptr i8, ptr %t, i32 164
  %23 = ptrtoint ptr %to_setup to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %to_setup, align 4
  %tx_ready = getelementptr i8, ptr %t, i32 48
  %24 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call28) #9
  %state.i = getelementptr i8, ptr %t, i32 224
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i54, label %if.then21.if.end34_crit_edge

if.then21.if.end34_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i54:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet = getelementptr i8, ptr %t, i32 220
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then.i54, %if.then21.if.end34_crit_edge, %is_card_present.exit.if.end34_crit_edge, %if.then.i.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 100
  %call36 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %do.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_init_hardware_v1(ptr nocapture noundef %hw, i32 noundef %base_port, ptr noundef %attr_memory, ptr noundef %common_memory, i32 noundef %is_v2_card, ptr noundef %reboot_callback, ptr noundef %reboot_callback_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %removed = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %removed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %removed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %removed, align 4
  %irq = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 21
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %base_port, ptr %hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_v2_card)
  %tobool3.not = icmp eq i32 %is_v2_card, 0
  %conv = select i1 %tobool3.not, i16 1, i16 2
  %hw_version = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %hw_version to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %hw_version, align 4
  %conv8 = select i1 %tobool3.not, i16 318, i16 250
  %ll_mtu = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %ll_mtu to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv8, ptr %ll_mtu, align 2
  %add.ptr = getelementptr i16, ptr %attr_memory, i32 512
  %memregs_CCR = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 28
  %8 = ptrtoint ptr %memregs_CCR to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %memregs_CCR, align 4
  %memory_info_regs = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 27
  %9 = ptrtoint ptr %memory_info_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %common_memory, ptr %memory_info_regs, align 4
  %memreg_tx_new = getelementptr inbounds %struct.MEMINFREG, ptr %common_memory, i32 0, i32 9
  %memreg_tx = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 31
  %10 = ptrtoint ptr %memreg_tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %memreg_tx_new, ptr %memreg_tx, align 4
  %reboot_callback10 = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 29
  %11 = ptrtoint ptr %reboot_callback10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reboot_callback, ptr %reboot_callback10, align 4
  %reboot_callback_data11 = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 30
  %12 = ptrtoint ptr %reboot_callback_data11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reboot_callback_data, ptr %reboot_callback_data11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_init_hardware_v2_v3(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initializing = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %initializing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %initializing, align 4
  %init_loops = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %init_loops to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %init_loops, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %setup_timer = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 6
  tail call void @ipwireless_setup_timer(ptr noundef %setup_timer)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_stop_interrupts(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shutting_down = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 22
  %0 = ptrtoint ptr %shutting_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shutting_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %shutting_down to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %shutting_down, align 4
  %setup_timer = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %setup_timer) #9
  %hw_version.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.i = icmp eq i16 %4, 1
  br i1 %cmp.i, label %do.body.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw, align 4
  %and.i = and i32 %6, 1048575
  %add2.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 0) #9, !srcloc !156
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw, align 4
  %add4.i = add i32 %9, 2
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %10 = inttoptr i32 %add6.i to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #9, !srcloc !153
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %conv9.i = zext i16 %12 to i32
  %and10.i = and i32 %conv9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end.i_crit_edge, label %do.body12.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw, align 4
  %add16.i = add i32 %14, 2
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %15 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 512) #9, !srcloc !156
  br label %if.end.i

if.end.i:                                         ; preds = %do.body12.i, %do.body.i.if.end.i_crit_edge
  %and20.i = and i32 %conv9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end31.i_crit_edge, label %do.body23.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.body23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw, align 4
  %add27.i = add i32 %17, 2
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %18 = inttoptr i32 %add29.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 256) #9, !srcloc !156
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.body23.i, %if.end.i.if.end31.i_crit_edge
  %irq.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 21
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %20) #9
  br label %if.end

if.end:                                           ; preds = %if.end31.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipwireless_hardware_free(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ipwireless_stop_interrupts(ptr noundef %hw)
  %work_rx = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 18
  %call = tail call zeroext i1 @flush_work(ptr noundef %work_rx) #9
  %arrayidx = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %1) #9
  %arrayidx.1 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %arrayidx.2 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %5) #9
  %arrayidx.3 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %7) #9
  %arrayidx.4 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %9) #9
  %arrayidx4 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 0
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %cmp13.not114 = icmp eq ptr %11, %arrayidx4
  br i1 %cmp13.not114, label %entry.for.inc23_crit_edge, label %entry.for.body14_crit_edge

entry.for.body14_crit_edge:                       ; preds = %entry
  br label %for.body14

entry.for.inc23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23

for.body14:                                       ; preds = %list_del.exit.for.body14_crit_edge, %entry.for.body14_crit_edge
  %tp.0115 = phi ptr [ %tq.0, %list_del.exit.for.body14_crit_edge ], [ %11, %entry.for.body14_crit_edge ]
  %12 = ptrtoint ptr %tp.0115 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tq.0 = load ptr, ptr %tp.0115, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp.0115) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body14.list_del.exit_crit_edge

for.body14.list_del.exit_crit_edge:               ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tp.0115, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %tp.0115 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp.0115, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body14.list_del.exit_crit_edge
  %19 = ptrtoint ptr %tp.0115 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %tp.0115, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tp.0115, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tp.0115) #9
  %cmp13.not = icmp eq ptr %tq.0, %arrayidx4
  br i1 %cmp13.not, label %list_del.exit.for.inc23_crit_edge, label %list_del.exit.for.body14_crit_edge

list_del.exit.for.body14_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

list_del.exit.for.inc23_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23

for.inc23:                                        ; preds = %list_del.exit.for.inc23_crit_edge, %entry.for.inc23_crit_edge
  %arrayidx4.1 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4.1, align 4
  %cmp13.not114.1 = icmp eq ptr %22, %arrayidx4.1
  br i1 %cmp13.not114.1, label %for.inc23.for.inc23.1_crit_edge, label %for.inc23.for.body14.1_crit_edge

for.inc23.for.body14.1_crit_edge:                 ; preds = %for.inc23
  br label %for.body14.1

for.inc23.for.inc23.1_crit_edge:                  ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23.1

for.body14.1:                                     ; preds = %list_del.exit.1.for.body14.1_crit_edge, %for.inc23.for.body14.1_crit_edge
  %tp.0115.1 = phi ptr [ %tq.0.1, %list_del.exit.1.for.body14.1_crit_edge ], [ %22, %for.inc23.for.body14.1_crit_edge ]
  %23 = ptrtoint ptr %tp.0115.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %tq.0.1 = load ptr, ptr %tp.0115.1, align 4
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp.0115.1) #9
  br i1 %call.i.i.1, label %if.end.i.i.1, label %for.body14.1.list_del.exit.1_crit_edge

for.body14.1.list_del.exit.1_crit_edge:           ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.1

if.end.i.i.1:                                     ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %tp.0115.1, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.1, align 4
  %26 = ptrtoint ptr %tp.0115.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tp.0115.1, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.1

list_del.exit.1:                                  ; preds = %if.end.i.i.1, %for.body14.1.list_del.exit.1_crit_edge
  %30 = ptrtoint ptr %tp.0115.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %tp.0115.1, align 4
  %prev.i.1 = getelementptr inbounds %struct.list_head, ptr %tp.0115.1, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.1, align 4
  tail call void @kfree(ptr noundef %tp.0115.1) #9
  %cmp13.not.1 = icmp eq ptr %tq.0.1, %arrayidx4.1
  br i1 %cmp13.not.1, label %list_del.exit.1.for.inc23.1_crit_edge, label %list_del.exit.1.for.body14.1_crit_edge

list_del.exit.1.for.body14.1_crit_edge:           ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.1

list_del.exit.1.for.inc23.1_crit_edge:            ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23.1

for.inc23.1:                                      ; preds = %list_del.exit.1.for.inc23.1_crit_edge, %for.inc23.for.inc23.1_crit_edge
  %arrayidx4.2 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx4.2, align 4
  %cmp13.not114.2 = icmp eq ptr %33, %arrayidx4.2
  br i1 %cmp13.not114.2, label %for.inc23.1.for.inc23.2_crit_edge, label %for.inc23.1.for.body14.2_crit_edge

for.inc23.1.for.body14.2_crit_edge:               ; preds = %for.inc23.1
  br label %for.body14.2

for.inc23.1.for.inc23.2_crit_edge:                ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23.2

for.body14.2:                                     ; preds = %list_del.exit.2.for.body14.2_crit_edge, %for.inc23.1.for.body14.2_crit_edge
  %tp.0115.2 = phi ptr [ %tq.0.2, %list_del.exit.2.for.body14.2_crit_edge ], [ %33, %for.inc23.1.for.body14.2_crit_edge ]
  %34 = ptrtoint ptr %tp.0115.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %tq.0.2 = load ptr, ptr %tp.0115.2, align 4
  %call.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tp.0115.2) #9
  br i1 %call.i.i.2, label %if.end.i.i.2, label %for.body14.2.list_del.exit.2_crit_edge

for.body14.2.list_del.exit.2_crit_edge:           ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.2

if.end.i.i.2:                                     ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.2 = getelementptr inbounds %struct.list_head, ptr %tp.0115.2, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.2, align 4
  %37 = ptrtoint ptr %tp.0115.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tp.0115.2, align 4
  %prev1.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.2, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit.2

list_del.exit.2:                                  ; preds = %if.end.i.i.2, %for.body14.2.list_del.exit.2_crit_edge
  %41 = ptrtoint ptr %tp.0115.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %tp.0115.2, align 4
  %prev.i.2 = getelementptr inbounds %struct.list_head, ptr %tp.0115.2, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.2, align 4
  tail call void @kfree(ptr noundef %tp.0115.2) #9
  %cmp13.not.2 = icmp eq ptr %tq.0.2, %arrayidx4.2
  br i1 %cmp13.not.2, label %list_del.exit.2.for.inc23.2_crit_edge, label %list_del.exit.2.for.body14.2_crit_edge

list_del.exit.2.for.body14.2_crit_edge:           ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.2

list_del.exit.2.for.inc23.2_crit_edge:            ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc23.2

for.inc23.2:                                      ; preds = %list_del.exit.2.for.inc23.2_crit_edge, %for.inc23.1.for.inc23.2_crit_edge
  %rx_queue = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 11
  %43 = ptrtoint ptr %rx_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_queue, align 4
  %cmp38.not118 = icmp eq ptr %44, %rx_queue
  br i1 %cmp38.not118, label %for.inc23.2.for.end48_crit_edge, label %for.inc23.2.for.body40_crit_edge

for.inc23.2.for.body40_crit_edge:                 ; preds = %for.inc23.2
  br label %for.body40

for.inc23.2.for.end48_crit_edge:                  ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body40:                                       ; preds = %list_del.exit106.for.body40_crit_edge, %for.inc23.2.for.body40_crit_edge
  %rp.0119 = phi ptr [ %rq.0, %list_del.exit106.for.body40_crit_edge ], [ %44, %for.inc23.2.for.body40_crit_edge ]
  %45 = ptrtoint ptr %rp.0119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %rq.0 = load ptr, ptr %rp.0119, align 4
  %call.i.i101 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rp.0119) #9
  br i1 %call.i.i101, label %if.end.i.i104, label %for.body40.list_del.exit106_crit_edge

for.body40.list_del.exit106_crit_edge:            ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit106

if.end.i.i104:                                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i102 = getelementptr inbounds %struct.list_head, ptr %rp.0119, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i102, align 4
  %48 = ptrtoint ptr %rp.0119 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rp.0119, align 4
  %prev1.i.i.i103 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i103, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit106

list_del.exit106:                                 ; preds = %if.end.i.i104, %for.body40.list_del.exit106_crit_edge
  %52 = ptrtoint ptr %rp.0119 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %rp.0119, align 4
  %prev.i105 = getelementptr inbounds %struct.list_head, ptr %rp.0119, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i105, align 4
  tail call void @kfree(ptr noundef %rp.0119) #9
  %cmp38.not = icmp eq ptr %rq.0, %rx_queue
  br i1 %cmp38.not, label %list_del.exit106.for.end48_crit_edge, label %list_del.exit106.for.body40_crit_edge

list_del.exit106.for.body40_crit_edge:            ; preds = %list_del.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

list_del.exit106.for.end48_crit_edge:             ; preds = %list_del.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.end48:                                        ; preds = %list_del.exit106.for.end48_crit_edge, %for.inc23.2.for.end48_crit_edge
  %rx_pool = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 12
  %54 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_pool, align 4
  %cmp61.not121 = icmp eq ptr %55, %rx_pool
  br i1 %cmp61.not121, label %for.end48.for.end71_crit_edge, label %for.end48.for.body63_crit_edge

for.end48.for.body63_crit_edge:                   ; preds = %for.end48
  br label %for.body63

for.end48.for.end71_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

for.body63:                                       ; preds = %list_del.exit112.for.body63_crit_edge, %for.end48.for.body63_crit_edge
  %rp.1122 = phi ptr [ %rq.1, %list_del.exit112.for.body63_crit_edge ], [ %55, %for.end48.for.body63_crit_edge ]
  %56 = ptrtoint ptr %rp.1122 to i32
  call void @__asan_load4_noabort(i32 %56)
  %rq.1 = load ptr, ptr %rp.1122, align 4
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rp.1122) #9
  br i1 %call.i.i107, label %if.end.i.i110, label %for.body63.list_del.exit112_crit_edge

for.body63.list_del.exit112_crit_edge:            ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit112

if.end.i.i110:                                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i108 = getelementptr inbounds %struct.list_head, ptr %rp.1122, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i108, align 4
  %59 = ptrtoint ptr %rp.1122 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rp.1122, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i109, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit112

list_del.exit112:                                 ; preds = %if.end.i.i110, %for.body63.list_del.exit112_crit_edge
  %63 = ptrtoint ptr %rp.1122 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %rp.1122, align 4
  %prev.i111 = getelementptr inbounds %struct.list_head, ptr %rp.1122, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i111, align 4
  tail call void @kfree(ptr noundef %rp.1122) #9
  %cmp61.not = icmp eq ptr %rq.1, %rx_pool
  br i1 %cmp61.not, label %list_del.exit112.for.end71_crit_edge, label %list_del.exit112.for.body63_crit_edge

list_del.exit112.for.body63_crit_edge:            ; preds = %list_del.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63

list_del.exit112.for.end71_crit_edge:             ; preds = %list_del.exit112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end71

for.end71:                                        ; preds = %list_del.exit112.for.end71_crit_edge, %for.end48.for.end71_crit_edge
  tail call void @kfree(ptr noundef %hw) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ipwireless_associate_network(ptr nocapture noundef writeonly %hw, ptr noundef %network) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %network1 = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 26
  %0 = ptrtoint ptr %network1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %network, ptr %network1, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_pending_packet(ptr noundef %hw, i32 noundef %priority_limit) unnamed_addr #0 align 64 {
entry:
  %pkt.i = alloca %union.nl_packet, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_queued = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end53_crit_edge, label %land.lhs.true

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %entry
  %tx_ready = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %tx_ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end53_crit_edge, label %for.cond.preheader

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priority_limit)
  %cmp695 = icmp sgt i32 %priority_limit, 0
  br i1 %cmp695, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup.thread_crit_edge

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %priority.096, 1
  %exitcond.not = icmp eq i32 %inc, %priority_limit
  br i1 %exitcond.not, label %for.cond.cleanup.thread_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %priority.096 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 %priority.096
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %5, %arrayidx
  br i1 %cmp.i.not, label %for.cond, label %if.then10

if.then10:                                        ; preds = %for.body
  %dec = add i32 %1, -1
  %6 = ptrtoint ptr %tx_queued to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %tx_queued, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i, %if.then10.for.end_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %for.end.cleanup.thread_crit_edge, label %if.end19

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end.cleanup.thread_crit_edge, %for.cond.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  %15 = ptrtoint ptr %tx_queued to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_queued, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup55

if.end19:                                         ; preds = %for.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %length.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length.i, align 2
  %offset.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %20 = trunc i32 %19 to i16
  %conv1.i = sub i16 %17, %20
  call void @llvm.lifetime.start.p0(i64 318, ptr nonnull %pkt.i) #9
  %21 = getelementptr inbounds i8, ptr %pkt.i, i32 1
  %22 = call ptr @memset(ptr %21, i32 255, i32 317)
  %fragment_count.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %fragment_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fragment_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i82 = icmp eq i32 %24, 0
  %ll_mtu.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 2
  %25 = ptrtoint ptr %ll_mtu.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ll_mtu.i, align 2
  %conv5.i = select i1 %cmp.i82, i32 3, i32 1
  %27 = trunc i32 %conv5.i to i16
  %conv7.i = sub i16 %26, %27
  %28 = tail call i16 @llvm.umin.i16(i16 %conv1.i, i16 %conv7.i) #9
  %protocol.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol.i, align 1
  %bf.shl.i = shl i8 %30, 5
  %dest_addr.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %dest_addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dest_addr.i, align 4
  %bf.value13.i = shl i8 %32, 2
  %bf.shl14.i = and i8 %bf.value13.i, 28
  %bf.set16.i = or i8 %bf.shl14.i, %bf.shl.i
  %33 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %bf.set16.i, ptr %pkt.i, align 1
  br i1 %cmp.i82, label %if.then23.i, label %if.end19.if.end37.i_crit_edge

if.end19.if.end37.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then23.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set31.i = or i8 %bf.set16.i, 2
  %34 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set31.i, ptr %pkt.i, align 1
  %conv33.i = trunc i16 %17 to i8
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv33.i, ptr %21, align 1
  %36 = lshr i16 %17, 8
  %conv36.i = trunc i16 %36 to i8
  %length_msb.i = getelementptr inbounds %struct.nl_first_packet_header, ptr %pkt.i, i32 0, i32 2
  %37 = ptrtoint ptr %length_msb.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv36.i, ptr %length_msb.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then23.i, %if.end19.if.end37.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %pkt.i, i32 %conv5.i
  %add.ptr39.i = getelementptr i8, ptr %5, i32 28
  %add.ptr41.i = getelementptr i8, ptr %add.ptr39.i, i32 %19
  %conv42.i = zext i16 %28 to i32
  %38 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr41.i, i32 %conv42.i)
  %add.i = add i32 %19, %conv42.i
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.i, ptr %offset.i, align 4
  %inc.i = add i32 %24, 1
  %40 = ptrtoint ptr %fragment_count.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc.i, ptr %fragment_count.i, align 4
  %conv48.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv48.i)
  %cmp49.i = icmp eq i32 %add.i, %conv48.i
  br i1 %cmp49.i, label %if.then51.i, label %if.end37.i.if.end61.i_crit_edge

if.end37.i.if.end61.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then51.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load52.i = load i8, ptr %pkt.i, align 1
  %bf.set60.i = or i8 %bf.load52.i, 1
  store i8 %bf.set60.i, ptr %pkt.i, align 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then51.i, %if.end37.i.if.end61.i_crit_edge
  %add65.i = add nuw nsw i32 %conv5.i, %conv42.i
  call fastcc void @do_send_fragment(ptr noundef %hw, ptr noundef nonnull %pkt.i, i32 noundef %add65.i) #9
  %42 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i, align 4
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %length.i, align 2
  %conv68.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv68.i)
  %cmp69.i = icmp ult i32 %43, %conv68.i
  br i1 %cmp69.i, label %if.then71.i, label %if.else.i

if.then71.i:                                      ; preds = %if.end61.i
  %call75.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_queue.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 9
  %46 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_queue.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %tx_queue.i, ptr noundef %47) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then71.i.list_add.exit.i_crit_edge

if.then71.i.list_add.exit.i_crit_edge:            ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %5, ptr %prev1.i.i.i83, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %5, align 4
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tx_queue.i, ptr %prev.i, align 4
  %51 = ptrtoint ptr %tx_queue.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %5, ptr %tx_queue.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then71.i.list_add.exit.i_crit_edge
  %52 = ptrtoint ptr %tx_queued to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_queued, align 4
  %inc78.i = add i32 %53, 1
  store i32 %inc78.i, ptr %tx_queued, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call75.i) #9
  br label %for.body38.preheader

if.else.i:                                        ; preds = %if.end61.i
  %packet_callback.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %packet_callback.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %packet_callback.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.else.i.if.end84.i_crit_edge, label %if.then80.i

if.else.i.if.end84.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i

if.then80.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %callback_data.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %5, i32 0, i32 7
  %56 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %callback_data.i, align 4
  call void %55(ptr noundef %57, i32 noundef %conv68.i) #9
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then80.i, %if.else.i.if.end84.i_crit_edge
  call void @kfree(ptr noundef nonnull %5) #9
  br label %for.body38.preheader

for.body38.preheader:                             ; preds = %if.end84.i, %list_add.exit.i
  call void @llvm.lifetime.end.p0(i64 318, ptr nonnull %pkt.i) #9
  %call30 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %for.body38

for.cond35:                                       ; preds = %for.body38
  %inc46 = add nuw nsw i32 %priority.198, 1
  %exitcond100.not = icmp eq i32 %inc46, %priority_limit
  br i1 %exitcond100.not, label %if.then49, label %for.cond35.for.body38_crit_edge

for.cond35.for.body38_crit_edge:                  ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38

for.body38:                                       ; preds = %for.cond35.for.body38_crit_edge, %for.body38.preheader
  %priority.198 = phi i32 [ %inc46, %for.cond35.for.body38_crit_edge ], [ 0, %for.body38.preheader ]
  %arrayidx40 = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 9, i32 %priority.198
  %58 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx40, align 4
  %cmp.i84.not = icmp eq ptr %59, %arrayidx40
  br i1 %cmp.i84.not, label %for.cond35, label %for.body38.if.end53_crit_edge

for.body38.if.end53_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then49:                                        ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %tx_queued to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %tx_queued, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %for.body38.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %entry.if.end53_crit_edge
  %flags.1 = phi i32 [ %call2, %land.lhs.true.if.end53_crit_edge ], [ %call2, %entry.if.end53_crit_edge ], [ %call30, %if.then49 ], [ %call30, %for.body38.if.end53_crit_edge ]
  %more_to_send.2 = phi i32 [ 0, %land.lhs.true.if.end53_crit_edge ], [ 0, %entry.if.end53_crit_edge ], [ 0, %if.then49 ], [ 1, %for.body38.if.end53_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #9
  br label %cleanup55

cleanup55:                                        ; preds = %if.end53, %cleanup.thread
  %retval.1 = phi i32 [ %more_to_send.2, %if.end53 ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_send_fragment(ptr noundef %hw, ptr noundef %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [56 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_mtu = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ll_mtu to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ll_mtu, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %length)
  %cmp = icmp ult i32 %conv, %length
  br i1 %cmp, label %do.body3, label %do.end8, !prof !177

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/ipwireless/hardware.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 411, 0\0A.popsection", ""() #9, !srcloc !178
  unreachable

do.end8:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %2 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %do.end8.do.body13_crit_edge, label %if.then10

do.end8.do.body13_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then10:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %prefix.i) #9
  %3 = call ptr @memset(ptr %prefix.i, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp.i.i = icmp eq i32 %length, 0
  br i1 %cmp.i.i, label %if.then10.data_type.exit.i_crit_edge, label %if.end.i.i

if.then10.data_type.exit.i_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_type.exit.i

if.end.i.i:                                       ; preds = %if.then10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %data, align 1
  %5 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.data_type.exit.i_crit_edge, label %if.then1.i.i

if.end.i.i.data_type.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_type.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.load.i.i)
  %6 = icmp ult i8 %bf.load.i.i, 96
  br i1 %6, label %switch.lookup, label %if.then1.i.i.data_type.exit.i_crit_edge

if.then1.i.i.data_type.exit.i_crit_edge:          ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_type.exit.i

switch.lookup:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 5
  %conv3.i.i = zext i8 %bf.lshr.i.i to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.do_send_fragment, i32 0, i32 %conv3.i.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %data_type.exit.i

data_type.exit.i:                                 ; preds = %switch.lookup, %if.then1.i.i.data_type.exit.i_crit_edge, %if.end.i.i.data_type.exit.i_crit_edge, %if.then10.data_type.exit.i_crit_edge
  %retval.0.i9.i = phi ptr [ @.str.28, %if.then10.data_type.exit.i_crit_edge ], [ @.str.28, %if.end.i.i.data_type.exit.i_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.32, %if.then1.i.i.data_type.exit.i_crit_edge ]
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prefix.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef nonnull %retval.0.i9.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_data_bytes.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_send_fragment, %if.then.i)) #9
          to label %dump_data_bytes.exit [label %if.then.i], !srcloc !179

if.then.i:                                        ; preds = %data_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i32 @llvm.umin.i32(i32 %length, i32 64) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull %prefix.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %8, i1 noundef zeroext true) #9
  br label %dump_data_bytes.exit

dump_data_bytes.exit:                             ; preds = %if.then.i, %data_type.exit.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %prefix.i) #9
  br label %do.body13

do.body13:                                        ; preds = %dump_data_bytes.exit, %do.end8.do.body13_crit_edge
  %lock = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tx_ready = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 7
  %9 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_ready, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = lshr i8 %11, 6
  %and4.i = lshr i8 %11, 1
  %13 = and i8 %and4.i, 28
  %or7.i = or i8 %12, %13
  %14 = shl i8 %11, 5
  %or1223.i = or i8 %or7.i, %14
  store i8 %or1223.i, ptr %data, align 1
  %hw_version = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hw_version, align 4
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.86)
  switch i16 %16, label %do.body13.if.end119_crit_edge [
    i16 1, label %do.body25
    i16 2, label %do.body66
  ]

do.body13.if.end119_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

do.body25:                                        ; preds = %do.body13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  call void @arm_heavy_mb() #9
  %conv28 = trunc i32 %length to i16
  %18 = call i16 @llvm.bswap.i16(i16 %conv28)
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw, align 4
  %add = add i32 %20, 8
  %and = and i32 %add, 1048575
  %add29 = or i32 %and, -18874368
  %21 = inttoptr i32 %add29 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp31164.not = icmp eq i32 %length, 0
  br i1 %cmp31164.not, label %do.body25.do.body53_crit_edge, label %do.body25.for.body_crit_edge

do.body25.for.body_crit_edge:                     ; preds = %do.body25
  br label %for.body

do.body25.do.body53_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %do.body25.for.body_crit_edge
  %i.0165 = phi i32 [ %add52, %if.end43.for.body_crit_edge ], [ 0, %do.body25.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0165
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv33 = zext i8 %23 to i16
  %add34 = or i32 %i.0165, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %length)
  %cmp35 = icmp ult i32 %add34, %length
  br i1 %cmp35, label %if.then37, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx39 = getelementptr i8, ptr %data, i32 %add34
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %25 to i16
  %shl = shl nuw i16 %conv40, 8
  %or = or i16 %shl, %conv33
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %for.body.if.end43_crit_edge
  %d.0 = phi i16 [ %or, %if.then37 ], [ %conv33, %for.body.if.end43_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw, align 4
  %add48 = add i32 %27, 8
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %28 = inttoptr i32 %add50 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %d.0) #9, !srcloc !156
  %add52 = add i32 %i.0165, 2
  %cmp31 = icmp ult i32 %add52, %length
  br i1 %cmp31, label %if.end43.for.body_crit_edge, label %if.end43.do.body53_crit_edge

if.end43.do.body53_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body53:                                        ; preds = %if.end43.do.body53_crit_edge, %do.body25.do.body53_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw, align 4
  %add57 = add i32 %30, 4
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %31 = inttoptr i32 %add59 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 512) #9, !srcloc !156
  br label %if.end119

do.body66:                                        ; preds = %do.body13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @arm_heavy_mb() #9
  %conv69 = trunc i32 %length to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv69)
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw, align 4
  %and71 = and i32 %34, 1048575
  %add72 = or i32 %and71, -18874368
  %35 = inttoptr i32 %add72 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp75159.not = icmp eq i32 %length, 0
  br i1 %cmp75159.not, label %do.body66.do.body107.preheader_crit_edge, label %do.body66.for.body77_crit_edge

do.body66.for.body77_crit_edge:                   ; preds = %do.body66
  br label %for.body77

do.body66.do.body107.preheader_crit_edge:         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body107.preheader

while.cond.preheader:                             ; preds = %if.end93
  %and104161 = and i32 %add102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104161)
  %cmp105.not.not162 = icmp eq i32 %and104161, 0
  br i1 %cmp105.not.not162, label %while.cond.preheader.do.body107.preheader_crit_edge, label %while.cond.preheader.do.body115_crit_edge

while.cond.preheader.do.body115_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body115

while.cond.preheader.do.body107.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body107.preheader

do.body107.preheader:                             ; preds = %while.cond.preheader.do.body107.preheader_crit_edge, %do.body66.do.body107.preheader_crit_edge
  %i.2163.ph = phi i32 [ 0, %do.body66.do.body107.preheader_crit_edge ], [ %add102, %while.cond.preheader.do.body107.preheader_crit_edge ]
  br label %do.body107

for.body77:                                       ; preds = %if.end93.for.body77_crit_edge, %do.body66.for.body77_crit_edge
  %i.1160 = phi i32 [ %add102, %if.end93.for.body77_crit_edge ], [ 0, %do.body66.for.body77_crit_edge ]
  %arrayidx79 = getelementptr i8, ptr %data, i32 %i.1160
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %37 to i16
  %add82 = or i32 %i.1160, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %length)
  %cmp83 = icmp ult i32 %add82, %length
  br i1 %cmp83, label %if.then85, label %for.body77.if.end93_crit_edge

for.body77.if.end93_crit_edge:                    ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then85:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx87 = getelementptr i8, ptr %data, i32 %add82
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %39 to i16
  %shl89 = shl nuw i16 %conv88, 8
  %or91 = or i16 %shl89, %conv80
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %for.body77.if.end93_crit_edge
  %d78.0 = phi i16 [ %or91, %if.then85 ], [ %conv80, %for.body77.if.end93_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw, align 4
  %and98 = and i32 %41, 1048575
  %add99 = or i32 %and98, -18874368
  %42 = inttoptr i32 %add99 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %d78.0) #9, !srcloc !156
  %add102 = add i32 %i.1160, 2
  %cmp75 = icmp ult i32 %add102, %length
  br i1 %cmp75, label %if.end93.for.body77_crit_edge, label %while.cond.preheader

if.end93.for.body77_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body77

do.body107:                                       ; preds = %do.body107.do.body107_crit_edge, %do.body107.preheader
  %i.2163 = phi i32 [ %add114, %do.body107.do.body107_crit_edge ], [ %i.2163.ph, %do.body107.preheader ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw, align 4
  %and111 = and i32 %44, 1048575
  %add112 = or i32 %and111, -18874368
  %45 = inttoptr i32 %add112 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 -21026) #9, !srcloc !156
  %add114 = add nuw i32 %i.2163, 2
  %and104 = and i32 %add114, 2
  %cmp105.not.not = icmp eq i32 %and104, 0
  br i1 %cmp105.not.not, label %do.body107.do.body107_crit_edge, label %do.body107.do.body115_crit_edge

do.body107.do.body115_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body115

do.body107.do.body107_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body107

do.body115:                                       ; preds = %do.body107.do.body115_crit_edge, %while.cond.preheader.do.body115_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @arm_heavy_mb() #9
  %memory_info_regs = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 27
  %46 = ptrtoint ptr %memory_info_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_info_regs, align 4
  %memreg_rx = getelementptr inbounds %struct.MEMINFREG, ptr %47, i32 0, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %memreg_rx, i16 256) #9, !srcloc !156
  br label %if.end119

if.end119:                                        ; preds = %do.body115, %do.body53, %do.body13.if.end119_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_receive_packet(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %prefix.i = alloca [56 x i8], align 1
  %pkt = alloca [318 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 318, ptr nonnull %pkt) #9
  %0 = call ptr @memset(ptr %pkt, i32 255, i32 318)
  %hw_version = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %2)
  %cmp = icmp eq i16 %2, 1
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hw, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add i32 %4, 6
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #9, !srcloc !153
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !187
  %conv4 = zext i16 %7 to i32
  %ll_mtu = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %ll_mtu to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ll_mtu, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp6 = icmp ugt i16 %7, %9
  br i1 %cmp6, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp19140.not = icmp eq i16 %6, 0
  br i1 %cmp19140.not, label %for.cond.preheader.if.end91_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end91_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw, align 4
  %add15 = add i32 %11, 4
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %12 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 1280) #9, !srcloc !156
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0141 = phi i32 [ %add34, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw, align 4
  %add23 = add i32 %14, 6
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %15 = inttoptr i32 %add25 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !189
  %conv29 = trunc i16 %16 to i8
  %arrayidx = getelementptr [318 x i8], ptr %pkt, i32 0, i32 %i.0141
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx, align 1
  %18 = lshr i16 %16, 8
  %conv31 = trunc i16 %18 to i8
  %add32 = or i32 %i.0141, 1
  %arrayidx33 = getelementptr [318 x i8], ptr %pkt, i32 0, i32 %add32
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %arrayidx33, align 1
  %add34 = add nuw nsw i32 %i.0141, 2
  %cmp19 = icmp ult i32 %add34, %conv4
  br i1 %cmp19, label %for.body.for.body_crit_edge, label %for.body.if.end91_crit_edge

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.else:                                          ; preds = %entry
  %and37 = and i32 %4, 1048575
  %add38 = or i32 %and37, -18874368
  %20 = inttoptr i32 %add38 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #9, !srcloc !153
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %conv42 = zext i16 %22 to i32
  %ll_mtu43 = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 2
  %23 = ptrtoint ptr %ll_mtu43 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ll_mtu43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp45 = icmp ugt i16 %22, %24
  br i1 %cmp45, label %do.end50, label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp58135.not = icmp eq i16 %21, 0
  br i1 %cmp58135.not, label %for.cond57.preheader.while.body.preheader_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.while.body.preheader_crit_edge: ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  %memory_info_regs = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 27
  %25 = ptrtoint ptr %memory_info_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %memory_info_regs, align 4
  %memreg_pc_interrupt_ack = getelementptr inbounds %struct.MEMINFREG, ptr %26, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %memreg_pc_interrupt_ack, i16 256) #9, !srcloc !156
  br label %cleanup

while.cond.preheader:                             ; preds = %for.body60
  %and80137 = and i32 %add78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80137)
  %cmp81.not.not138 = icmp eq i32 %and80137, 0
  br i1 %cmp81.not.not138, label %while.cond.preheader.while.body.preheader_crit_edge, label %while.cond.preheader.if.end91_crit_edge

while.cond.preheader.if.end91_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

while.cond.preheader.while.body.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader.while.body.preheader_crit_edge, %for.cond57.preheader.while.body.preheader_crit_edge
  %i.2139.ph = phi i32 [ 0, %for.cond57.preheader.while.body.preheader_crit_edge ], [ %add78, %while.cond.preheader.while.body.preheader_crit_edge ]
  br label %while.body

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.1136 = phi i32 [ %add78, %for.body60.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw, align 4
  %and64 = and i32 %28, 1048575
  %add65 = or i32 %and64, -18874368
  %29 = inttoptr i32 %add65 to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %conv70 = trunc i16 %30 to i8
  %arrayidx71 = getelementptr [318 x i8], ptr %pkt, i32 0, i32 %i.1136
  %31 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv70, ptr %arrayidx71, align 1
  %32 = lshr i16 %30, 8
  %conv74 = trunc i16 %32 to i8
  %add75 = or i32 %i.1136, 1
  %arrayidx76 = getelementptr [318 x i8], ptr %pkt, i32 0, i32 %add75
  %33 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv74, ptr %arrayidx76, align 1
  %add78 = add nuw nsw i32 %i.1136, 2
  %cmp58 = icmp ult i32 %add78, %conv42
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %while.cond.preheader

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.2139 = phi i32 [ %add90, %while.body.while.body_crit_edge ], [ %i.2139.ph, %while.body.preheader ]
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hw, align 4
  %and85 = and i32 %35, 1048575
  %add86 = or i32 %and85, -18874368
  %36 = inttoptr i32 %add86 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #9, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  %add90 = add nuw i32 %i.2139, 2
  %and80 = and i32 %add90, 2
  %cmp81.not.not = icmp eq i32 %and80, 0
  br i1 %cmp81.not.not, label %while.body.while.body_crit_edge, label %while.body.if.end91_crit_edge

while.body.if.end91_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end91:                                         ; preds = %while.body.if.end91_crit_edge, %while.cond.preheader.if.end91_crit_edge, %for.body.if.end91_crit_edge, %for.cond.preheader.if.end91_crit_edge
  %len.0 = phi i32 [ %conv4, %for.cond.preheader.if.end91_crit_edge ], [ %conv42, %while.cond.preheader.if.end91_crit_edge ], [ %conv4, %for.body.if.end91_crit_edge ], [ %conv42, %while.body.if.end91_crit_edge ]
  %38 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp.i = icmp eq i16 %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp.i, label %do.body.i, label %do.body3.i

do.body.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw, align 4
  %add.i = add i32 %41, 4
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %42 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 256) #9, !srcloc !156
  br label %acknowledge_data_read.exit

do.body3.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %memory_info_regs.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 27
  %43 = ptrtoint ptr %memory_info_regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %memory_info_regs.i, align 4
  %memreg_pc_interrupt_ack.i = getelementptr inbounds %struct.MEMINFREG, ptr %44, i32 0, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %memreg_pc_interrupt_ack.i, i16 256) #9, !srcloc !156
  br label %acknowledge_data_read.exit

acknowledge_data_read.exit:                       ; preds = %do.body3.i, %do.body.i
  %45 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pkt, align 1
  %47 = lshr i8 %46, 5
  %and4.i = shl i8 %46, 1
  %shl.i = and i8 %and4.i, 56
  %or6.i = or i8 %47, %shl.i
  %48 = shl i8 %46, 6
  %or1223.i = or i8 %or6.i, %48
  store i8 %or1223.i, ptr %pkt, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %49 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %acknowledge_data_read.exit.if.end94_crit_edge, label %if.then92

acknowledge_data_read.exit.if.end94_crit_edge:    ; preds = %acknowledge_data_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then92:                                        ; preds = %acknowledge_data_read.exit
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %prefix.i) #9
  %50 = call ptr @memset(ptr %prefix.i, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp.i.i = icmp eq i32 %len.0, 0
  %51 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i = icmp eq i8 %51, 0
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %if.then92.data_type.exit.i_crit_edge, label %if.then1.i.i

if.then92.data_type.exit.i_crit_edge:             ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_type.exit.i

if.then1.i.i:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %or1223.i)
  %52 = icmp ult i8 %or1223.i, 96
  br i1 %52, label %switch.lookup, label %if.then1.i.i.data_type.exit.i_crit_edge

if.then1.i.i.data_type.exit.i_crit_edge:          ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_type.exit.i

switch.lookup:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.lshr.i.i = lshr i8 %or1223.i, 5
  %conv3.i.i = zext i8 %bf.lshr.i.i to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.do_receive_packet, i32 0, i32 %conv3.i.i
  %53 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %data_type.exit.i

data_type.exit.i:                                 ; preds = %switch.lookup, %if.then1.i.i.data_type.exit.i_crit_edge, %if.then92.data_type.exit.i_crit_edge
  %retval.0.i9.i = phi ptr [ @.str.28, %if.then92.data_type.exit.i_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.32, %if.then1.i.i.data_type.exit.i_crit_edge ]
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prefix.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.37, ptr noundef nonnull %retval.0.i9.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_data_bytes.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_receive_packet, %if.then.i)) #9
          to label %dump_data_bytes.exit [label %if.then.i], !srcloc !179

if.then.i:                                        ; preds = %data_type.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 64) #9
  call void @print_hex_dump(ptr noundef nonnull @.str.27, ptr noundef nonnull %prefix.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %pkt, i32 noundef %54, i1 noundef zeroext true) #9
  br label %dump_data_bytes.exit

dump_data_bytes.exit:                             ; preds = %if.then.i, %data_type.exit.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %prefix.i) #9
  %55 = ptrtoint ptr %pkt to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.pr = load i8, ptr %pkt, align 1
  br label %if.end94

if.end94:                                         ; preds = %dump_data_bytes.exit, %acknowledge_data_read.exit.if.end94_crit_edge
  %bf.load.i = phi i8 [ %bf.load.i.pr, %dump_data_bytes.exit ], [ %or1223.i, %acknowledge_data_read.exit.if.end94_crit_edge ]
  %bf.lshr.i = lshr i8 %bf.load.i, 5
  %conv.i = zext i8 %bf.lshr.i to i32
  %bf.lshr2.i = lshr i8 %bf.load.i, 2
  %bf.clear.i = and i8 %bf.lshr2.i, 7
  %conv3.i = zext i8 %bf.clear.i to i32
  %bf.clear5.i = and i8 %bf.load.i, 3
  %conv6.i = zext i8 %bf.clear5.i to i32
  %and.i129 = and i32 %conv6.i, 1
  %56 = or i32 %conv6.i, 1
  %add.ptr.i = getelementptr i8, ptr %pkt, i32 %56
  %57 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %conv.i, label %if.end94.cleanup_crit_edge [
    i32 0, label %if.end94.sw.bb.i_crit_edge
    i32 1, label %if.end94.sw.bb.i_crit_edge150
    i32 2, label %sw.bb12.i
  ]

if.end94.sw.bb.i_crit_edge150:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end94.sw.bb.i_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end94.sw.bb.i_crit_edge, %if.end94.sw.bb.i_crit_edge150
  %sub.i = sub nsw i32 %len.0, %56
  %sub.i.i = add nsw i32 %conv3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.i.i130 = icmp ugt i32 %sub.i.i, 4
  br i1 %cmp.i.i130, label %do.end.i.i, label %if.end.i.i131

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv3.i) #12
  br label %cleanup

if.end.i.i131:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.load.i)
  %cmp1.i.i = icmp ult i8 %bf.load.i, 32
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i131
  %arrayidx.i.i = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 24, i32 %sub.i.i
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  %call3.i.i = call fastcc ptr @pool_allocate(ptr noundef %hw, ptr noundef %59, i32 noundef %sub.i) #9
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call3.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i132 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i132, label %cleanup.i.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then2.i.i
  %protocol11.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %call3.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %protocol11.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %protocol11.i.i, align 4
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %channel_idx12.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %channel_idx12.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.i.i, ptr %channel_idx12.i.i, align 4
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 24
  %length13.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %length13.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length13.i.i, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %67
  %68 = call ptr @memcpy(ptr %add.ptr14.i.i, ptr %add.ptr.i, i32 %sub.i)
  %69 = load ptr, ptr %arrayidx.i.i, align 4
  %length15.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %length15.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length15.i.i, align 4
  %add.i.i = add i32 %71, %sub.i
  store i32 %add.i.i, ptr %length15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool16.not.i.i = icmp eq i32 %and.i129, 0
  br i1 %tobool16.not.i.i, label %if.end10.i.i.cleanup_crit_edge, label %if.end45.i.i

if.end10.i.i.cleanup_crit_edge:                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i.i131
  %call32.i.i = call fastcc ptr @pool_allocate(ptr noundef %hw, ptr noundef null, i32 noundef %sub.i) #9
  %tobool33.not.i.i = icmp eq ptr %call32.i.i, null
  br i1 %tobool33.not.i.i, label %do.end37.i.i, label %if.end45.thread.i.i

do.end37.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end45.thread.i.i:                              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %protocol41.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %call32.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %protocol41.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i, ptr %protocol41.i.i, align 4
  %channel_idx42.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %call32.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %channel_idx42.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.i.i, ptr %channel_idx42.i.i, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %call32.i.i, i32 24
  %74 = call ptr @memcpy(ptr %add.ptr43.i.i, ptr %add.ptr.i, i32 %sub.i)
  %length44.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %call32.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %length44.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.i, ptr %length44.i.i, align 4
  br label %do.body49.i.i

if.end45.i.i:                                     ; preds = %if.end10.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  store ptr null, ptr %arrayidx.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call23.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #9
  %length28.i.i = getelementptr inbounds %struct.ipw_rx_packet, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %length28.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length28.i.i, align 4
  %rx_bytes_queued.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 10
  %80 = ptrtoint ptr %rx_bytes_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_bytes_queued.i.i, align 4
  %add29.i.i = add i32 %81, %79
  store i32 %add29.i.i, ptr %rx_bytes_queued.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call23.i.i) #9
  %tobool46.not.i.i = icmp eq ptr %77, null
  br i1 %tobool46.not.i.i, label %if.end45.i.i.cleanup_crit_edge, label %if.end45.i.i.do.body49.i.i_crit_edge

if.end45.i.i.do.body49.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49.i.i

if.end45.i.i.cleanup_crit_edge:                   ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body49.i.i:                                    ; preds = %if.end45.i.i.do.body49.i.i_crit_edge, %if.end45.thread.i.i
  %packet.2117.i.i = phi ptr [ %call32.i.i, %if.end45.thread.i.i ], [ %77, %if.end45.i.i.do.body49.i.i_crit_edge ]
  %lock55.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call57.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock55.i.i) #9
  %rx_queue.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 11
  %prev.i.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 11, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %packet.2117.i.i, ptr noundef %83, ptr noundef %rx_queue.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body49.i.i.list_add_tail.exit.i.i_crit_edge

do.body49.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %packet.2117.i.i, ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %packet.2117.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %rx_queue.i.i, ptr %packet.2117.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %packet.2117.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %packet.2117.i.i, ptr %83, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.body49.i.i.list_add_tail.exit.i.i_crit_edge
  %rx_bytes_queued62.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 10
  %88 = ptrtoint ptr %rx_bytes_queued62.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_bytes_queued62.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %89)
  %cmp63.i.i = icmp sgt i32 %89, 262143
  %conv64.i.i = zext i1 %cmp63.i.i to i32
  %blocking_rx.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 14
  %90 = ptrtoint ptr %blocking_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv64.i.i, ptr %blocking_rx.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock55.i.i, i32 noundef %call57.i.i) #9
  %work_rx.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %91 = load ptr, ptr @system_wq, align 4
  %call.i.i113.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %91, ptr noundef %work_rx.i.i) #9
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %cmp.not.i.i = icmp eq i8 %bf.clear.i, 0
  br i1 %cmp.not.i.i, label %if.end.i26.i, label %do.end.i25.i

do.end.i25.i:                                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv3.i) #12
  br label %cleanup

if.end.i26.i:                                     ; preds = %sw.bb12.i
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %93, label %do.end53.i.i [
    i8 11, label %sw.bb.i.i
    i8 14, label %sw.bb3.i.i
    i8 21, label %sw.bb13.i.i
    i8 22, label %sw.bb22.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i26.i
  %to_setup.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 19
  %95 = ptrtoint ptr %to_setup.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %to_setup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i27.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i27.i, label %sw.bb.i.i.cleanup_crit_edge, label %if.then1.i.i133

sw.bb.i.i.cleanup_crit_edge:                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1.i.i133:                                  ; preds = %sw.bb.i.i
  %version.i.i = getelementptr inbounds %struct.tl_setup_get_version_rsp, ptr %add.ptr.i, i32 0, i32 1
  %97 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %version.i.i, align 1
  %setup_timer.i.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 6
  %call.i.i.i = call i32 @del_timer(ptr noundef %setup_timer.i.i.i) #9
  %initializing.i.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 4
  %99 = ptrtoint ptr %initializing.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %initializing.i.i.i, align 4
  %call1.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp.i.i.i = icmp eq i8 %98, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end4.i.i.i

if.then.i.i.i:                                    ; preds = %if.then1.i.i133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end.i.i.i28.i

if.then.i.i.i.do.end68.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end.i.i.i28.i:                                 ; preds = %if.then.i.i.i
  %101 = ptrtoint ptr %call7.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %call7.i.i.i.i.i.i.i, ptr %call7.i.i.i.i.i.i.i, align 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %dest_addr2.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %dest_addr2.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %dest_addr2.i.i.i.i.i, align 8
  %protocol4.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %protocol4.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 2, ptr %protocol4.i.i.i.i.i, align 1
  %length.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 3
  %body.i.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %body.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 12, ptr %body.i.i.i.i.i, align 4
  %106 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 4, ptr %length.i.i.i.i.i, align 2
  %port_no.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %port_no.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %port_no.i.i.i.i, align 1
  %prio_data.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %prio_data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 2, ptr %prio_data.i.i.i.i, align 2
  %prio_ctrl.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1, i32 3
  %109 = ptrtoint ptr %prio_ctrl.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %prio_ctrl.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.1.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.1.i.i.i.i = icmp eq ptr %call7.i.i.i.1.i.i.i.i, null
  br i1 %tobool.not.i.1.i.i.i.i, label %if.end.i.i.i28.i.do.end68.i.i.i.i_crit_edge, label %if.end.1.i.i.i.i

if.end.i.i.i28.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end.1.i.i.i.i:                                 ; preds = %if.end.i.i.i28.i
  %111 = ptrtoint ptr %call7.i.i.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %call7.i.i.i.1.i.i.i.i, ptr %call7.i.i.i.1.i.i.i.i, align 8
  %prev.i.i.1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call7.i.i.i.1.i.i.i.i, ptr %prev.i.i.1.i.i.i.i, align 4
  %dest_addr2.i.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %dest_addr2.i.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %dest_addr2.i.1.i.i.i.i, align 8
  %protocol4.i.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %protocol4.i.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 2, ptr %protocol4.i.1.i.i.i.i, align 1
  %length.i.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 3
  %body.i.1.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %body.i.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 12, ptr %body.i.1.i.i.i.i, align 4
  %116 = ptrtoint ptr %length.i.1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 4, ptr %length.i.1.i.i.i.i, align 2
  %port_no.1.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %port_no.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 2, ptr %port_no.1.i.i.i.i, align 1
  %prio_data.1.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1, i32 2
  %118 = ptrtoint ptr %prio_data.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %prio_data.1.i.i.i.i, align 2
  %prio_ctrl.1.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.1.i.i.i.i, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %prio_ctrl.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %prio_ctrl.1.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.1.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.2.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.2.i.i.i.i = icmp eq ptr %call7.i.i.i.2.i.i.i.i, null
  br i1 %tobool.not.i.2.i.i.i.i, label %if.end.1.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end.2.i.i.i.i

if.end.1.i.i.i.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end.2.i.i.i.i:                                 ; preds = %if.end.1.i.i.i.i
  %121 = ptrtoint ptr %call7.i.i.i.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %call7.i.i.i.2.i.i.i.i, ptr %call7.i.i.i.2.i.i.i.i, align 8
  %prev.i.i.2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i.i.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call7.i.i.i.2.i.i.i.i, ptr %prev.i.i.2.i.i.i.i, align 4
  %dest_addr2.i.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %dest_addr2.i.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %dest_addr2.i.2.i.i.i.i, align 8
  %protocol4.i.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %protocol4.i.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %protocol4.i.2.i.i.i.i, align 1
  %length.i.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 3
  %body.i.2.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %body.i.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 12, ptr %body.i.2.i.i.i.i, align 4
  %126 = ptrtoint ptr %length.i.2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 4, ptr %length.i.2.i.i.i.i, align 2
  %port_no.2.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %port_no.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %port_no.2.i.i.i.i, align 1
  %prio_data.2.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1, i32 2
  %128 = ptrtoint ptr %prio_data.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %prio_data.2.i.i.i.i, align 2
  %prio_ctrl.2.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.2.i.i.i.i, i32 0, i32 1, i32 3
  %129 = ptrtoint ptr %prio_ctrl.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %prio_ctrl.2.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.2.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.3.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.3.i.i.i.i = icmp eq ptr %call7.i.i.i.3.i.i.i.i, null
  br i1 %tobool.not.i.3.i.i.i.i, label %if.end.2.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end.3.i.i.i.i

if.end.2.i.i.i.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end.3.i.i.i.i:                                 ; preds = %if.end.2.i.i.i.i
  %131 = ptrtoint ptr %call7.i.i.i.3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %call7.i.i.i.3.i.i.i.i, ptr %call7.i.i.i.3.i.i.i.i, align 8
  %prev.i.i.3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i.3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i.i.3.i.i.i.i, ptr %prev.i.i.3.i.i.i.i, align 4
  %dest_addr2.i.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %dest_addr2.i.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %dest_addr2.i.3.i.i.i.i, align 8
  %protocol4.i.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %protocol4.i.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 2, ptr %protocol4.i.3.i.i.i.i, align 1
  %length.i.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 3
  %body.i.3.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %body.i.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 12, ptr %body.i.3.i.i.i.i, align 4
  %136 = ptrtoint ptr %length.i.3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 4, ptr %length.i.3.i.i.i.i, align 2
  %port_no.3.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %port_no.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 4, ptr %port_no.3.i.i.i.i, align 1
  %prio_data.3.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1, i32 2
  %138 = ptrtoint ptr %prio_data.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 2, ptr %prio_data.3.i.i.i.i, align 2
  %prio_ctrl.3.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.3.i.i.i.i, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %prio_ctrl.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %prio_ctrl.3.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.3.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.4.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.4.i.i.i.i = icmp eq ptr %call7.i.i.i.4.i.i.i.i, null
  br i1 %tobool.not.i.4.i.i.i.i, label %if.end.3.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end.4.i.i.i.i

if.end.3.i.i.i.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end.4.i.i.i.i:                                 ; preds = %if.end.3.i.i.i.i
  %141 = ptrtoint ptr %call7.i.i.i.4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %call7.i.i.i.4.i.i.i.i, ptr %call7.i.i.i.4.i.i.i.i, align 8
  %prev.i.i.4.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i.i.4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call7.i.i.i.4.i.i.i.i, ptr %prev.i.i.4.i.i.i.i, align 4
  %dest_addr2.i.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %dest_addr2.i.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %dest_addr2.i.4.i.i.i.i, align 8
  %protocol4.i.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 2
  %144 = ptrtoint ptr %protocol4.i.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 2, ptr %protocol4.i.4.i.i.i.i, align 1
  %length.i.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 3
  %body.i.4.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %body.i.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 12, ptr %body.i.4.i.i.i.i, align 4
  %146 = ptrtoint ptr %length.i.4.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 4, ptr %length.i.4.i.i.i.i, align 2
  %port_no.4.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %port_no.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 5, ptr %port_no.4.i.i.i.i, align 1
  %prio_data.4.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %prio_data.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %prio_data.4.i.i.i.i, align 2
  %prio_ctrl.4.i.i.i.i = getelementptr inbounds %struct.ipw_setup_config_packet, ptr %call7.i.i.i.4.i.i.i.i, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %prio_ctrl.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %prio_ctrl.4.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.4.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %150 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i118.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i119.i.i.i.i = icmp eq ptr %call7.i.i.i118.i.i.i.i, null
  br i1 %tobool.not.i119.i.i.i.i, label %if.end.4.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end7.i.i.i.i

if.end.4.i.i.i.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end.4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end.4.i.i.i.i
  %151 = ptrtoint ptr %call7.i.i.i118.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %call7.i.i.i118.i.i.i.i, ptr %call7.i.i.i118.i.i.i.i, align 8
  %prev.i.i120.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i118.i.i.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i.i120.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call7.i.i.i118.i.i.i.i, ptr %prev.i.i120.i.i.i.i, align 4
  %dest_addr2.i121.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i118.i.i.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %dest_addr2.i121.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %dest_addr2.i121.i.i.i.i, align 8
  %protocol4.i122.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i118.i.i.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %protocol4.i122.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 2, ptr %protocol4.i122.i.i.i.i, align 1
  %length.i123.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i118.i.i.i.i, i32 0, i32 3
  %body.i124.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i118.i.i.i.i, i32 0, i32 1
  %155 = ptrtoint ptr %body.i124.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 13, ptr %body.i124.i.i.i.i, align 4
  %156 = ptrtoint ptr %length.i123.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %length.i123.i.i.i.i, align 2
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i118.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %157 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %157, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i128.i.i.i.i = icmp eq ptr %call7.i.i.i127.i.i.i.i, null
  br i1 %tobool.not.i128.i.i.i.i, label %if.end7.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end18.i.i.i.i

if.end7.i.i.i.i.do.end68.i.i.i.i_crit_edge:       ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.end7.i.i.i.i
  %158 = ptrtoint ptr %call7.i.i.i127.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %call7.i.i.i127.i.i.i.i, ptr %call7.i.i.i127.i.i.i.i, align 8
  %prev.i.i129.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i.i129.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i.i127.i.i.i.i, ptr %prev.i.i129.i.i.i.i, align 4
  %dest_addr2.i130.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %dest_addr2.i130.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %dest_addr2.i130.i.i.i.i, align 8
  %protocol4.i131.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 2
  %161 = ptrtoint ptr %protocol4.i131.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 2, ptr %protocol4.i131.i.i.i.i, align 1
  %length.i132.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 3
  %body.i133.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %body.i133.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 14, ptr %body.i133.i.i.i.i, align 4
  %163 = ptrtoint ptr %length.i132.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2, ptr %length.i132.i.i.i.i, align 2
  %port_no23.i.i.i.i = getelementptr inbounds %struct.ipw_setup_open_packet, ptr %call7.i.i.i127.i.i.i.i, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %port_no23.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %port_no23.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i127.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %165 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127.1.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %165, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i128.1.i.i.i.i = icmp eq ptr %call7.i.i.i127.1.i.i.i.i, null
  br i1 %tobool.not.i128.1.i.i.i.i, label %if.end18.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end18.1.i.i.i.i

if.end18.i.i.i.i.do.end68.i.i.i.i_crit_edge:      ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end18.1.i.i.i.i:                               ; preds = %if.end18.i.i.i.i
  %166 = ptrtoint ptr %call7.i.i.i127.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %call7.i.i.i127.1.i.i.i.i, ptr %call7.i.i.i127.1.i.i.i.i, align 8
  %prev.i.i129.1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i129.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call7.i.i.i127.1.i.i.i.i, ptr %prev.i.i129.1.i.i.i.i, align 4
  %dest_addr2.i130.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %dest_addr2.i130.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %dest_addr2.i130.1.i.i.i.i, align 8
  %protocol4.i131.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %protocol4.i131.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %protocol4.i131.1.i.i.i.i, align 1
  %length.i132.1.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 3
  %body.i133.1.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %body.i133.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 14, ptr %body.i133.1.i.i.i.i, align 4
  %171 = ptrtoint ptr %length.i132.1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 2, ptr %length.i132.1.i.i.i.i, align 2
  %port_no23.1.i.i.i.i = getelementptr inbounds %struct.ipw_setup_open_packet, ptr %call7.i.i.i127.1.i.i.i.i, i32 0, i32 1, i32 1
  %172 = ptrtoint ptr %port_no23.1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %port_no23.1.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i127.1.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %173 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127.2.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %173, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i128.2.i.i.i.i = icmp eq ptr %call7.i.i.i127.2.i.i.i.i, null
  br i1 %tobool.not.i128.2.i.i.i.i, label %if.end18.1.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end18.2.i.i.i.i

if.end18.1.i.i.i.i.do.end68.i.i.i.i_crit_edge:    ; preds = %if.end18.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end18.2.i.i.i.i:                               ; preds = %if.end18.1.i.i.i.i
  %174 = ptrtoint ptr %call7.i.i.i127.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %call7.i.i.i127.2.i.i.i.i, ptr %call7.i.i.i127.2.i.i.i.i, align 8
  %prev.i.i129.2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i129.2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call7.i.i.i127.2.i.i.i.i, ptr %prev.i.i129.2.i.i.i.i, align 4
  %dest_addr2.i130.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %dest_addr2.i130.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %dest_addr2.i130.2.i.i.i.i, align 8
  %protocol4.i131.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %protocol4.i131.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 2, ptr %protocol4.i131.2.i.i.i.i, align 1
  %length.i132.2.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 3
  %body.i133.2.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 1
  %178 = ptrtoint ptr %body.i133.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 14, ptr %body.i133.2.i.i.i.i, align 4
  %179 = ptrtoint ptr %length.i132.2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 2, ptr %length.i132.2.i.i.i.i, align 2
  %port_no23.2.i.i.i.i = getelementptr inbounds %struct.ipw_setup_open_packet, ptr %call7.i.i.i127.2.i.i.i.i, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %port_no23.2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 3, ptr %port_no23.2.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i127.2.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %181 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127.3.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i128.3.i.i.i.i = icmp eq ptr %call7.i.i.i127.3.i.i.i.i, null
  br i1 %tobool.not.i128.3.i.i.i.i, label %if.end18.2.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end18.3.i.i.i.i

if.end18.2.i.i.i.i.do.end68.i.i.i.i_crit_edge:    ; preds = %if.end18.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end18.3.i.i.i.i:                               ; preds = %if.end18.2.i.i.i.i
  %182 = ptrtoint ptr %call7.i.i.i127.3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %call7.i.i.i127.3.i.i.i.i, ptr %call7.i.i.i127.3.i.i.i.i, align 8
  %prev.i.i129.3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %prev.i.i129.3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call7.i.i.i127.3.i.i.i.i, ptr %prev.i.i129.3.i.i.i.i, align 4
  %dest_addr2.i130.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 1
  %184 = ptrtoint ptr %dest_addr2.i130.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %dest_addr2.i130.3.i.i.i.i, align 8
  %protocol4.i131.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %protocol4.i131.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 2, ptr %protocol4.i131.3.i.i.i.i, align 1
  %length.i132.3.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 3
  %body.i133.3.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %body.i133.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 14, ptr %body.i133.3.i.i.i.i, align 4
  %187 = ptrtoint ptr %length.i132.3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 2, ptr %length.i132.3.i.i.i.i, align 2
  %port_no23.3.i.i.i.i = getelementptr inbounds %struct.ipw_setup_open_packet, ptr %call7.i.i.i127.3.i.i.i.i, i32 0, i32 1, i32 1
  %188 = ptrtoint ptr %port_no23.3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 4, ptr %port_no23.3.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i127.3.i.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %189 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i127.4.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i128.4.i.i.i.i = icmp eq ptr %call7.i.i.i127.4.i.i.i.i, null
  br i1 %tobool.not.i128.4.i.i.i.i, label %if.end18.3.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end18.4.i.i.i.i

if.end18.3.i.i.i.i.do.end68.i.i.i.i_crit_edge:    ; preds = %if.end18.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end18.4.i.i.i.i:                               ; preds = %if.end18.3.i.i.i.i
  %190 = ptrtoint ptr %call7.i.i.i127.4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %call7.i.i.i127.4.i.i.i.i, ptr %call7.i.i.i127.4.i.i.i.i, align 8
  %prev.i.i129.4.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %prev.i.i129.4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call7.i.i.i127.4.i.i.i.i, ptr %prev.i.i129.4.i.i.i.i, align 4
  %dest_addr2.i130.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %dest_addr2.i130.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %dest_addr2.i130.4.i.i.i.i, align 8
  %protocol4.i131.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 2
  %193 = ptrtoint ptr %protocol4.i131.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 2, ptr %protocol4.i131.4.i.i.i.i, align 1
  %length.i132.4.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 3
  %body.i133.4.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 1
  %194 = ptrtoint ptr %body.i133.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 14, ptr %body.i133.4.i.i.i.i, align 4
  %195 = ptrtoint ptr %length.i132.4.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 2, ptr %length.i132.4.i.i.i.i, align 2
  %port_no23.4.i.i.i.i = getelementptr inbounds %struct.ipw_setup_open_packet, ptr %call7.i.i.i127.4.i.i.i.i, i32 0, i32 1, i32 1
  %196 = ptrtoint ptr %port_no23.4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 5, ptr %port_no23.4.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i127.4.i.i.i.i) #9
  br label %for.body31.i.i.i.i

for.body31.i.i.i.i:                               ; preds = %for.inc53.i.i.i.i.for.body31.i.i.i.i_crit_edge, %if.end18.4.i.i.i.i
  %channel_idx.0170.i.i.i.i = phi i32 [ %inc54.i.i.i.i, %for.inc53.i.i.i.i.for.body31.i.i.i.i_crit_edge ], [ 0, %if.end18.4.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr %struct.ipw_hardware, ptr %hw, i32 0, i32 23, i32 %channel_idx.0170.i.i.i.i
  %197 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = lshr i32 %198, 4
  %and.lobit.i.i.i.i = and i32 %and.i.i.i.i, 1
  %and.i.i.i.i.i = and i32 %198, -17
  %199 = shl nuw nsw i32 %and.lobit.i.i.i.i, 4
  %and.sink.i.i.i.i.i = or i32 %199, %and.i.i.i.i.i
  store i32 %and.sink.i.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %200 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %200, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i.i.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.end.i.i.i.i, label %if.end38.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %for.body31.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef -12) #12
  br label %cleanup

if.end38.i.i.i.i:                                 ; preds = %for.body31.i.i.i.i
  %201 = trunc i32 %channel_idx.0170.i.i.i.i to i8
  %conv.i.i.i.i.i.i = add nuw nsw i8 %201, 1
  %202 = ptrtoint ptr %call7.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %call7.i.i.i.i.i.i.i.i.i, ptr %call7.i.i.i.i.i.i.i.i.i, align 8
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 1
  %203 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call7.i.i.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %dest_addr2.i.i.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %dest_addr2.i.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv.i.i.i.i.i.i, ptr %dest_addr2.i.i.i.i.i.i.i, align 8
  %protocol4.i.i.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 2
  %205 = ptrtoint ptr %protocol4.i.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 2, ptr %protocol4.i.i.i.i.i.i.i, align 1
  %length.i.i.i.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 3
  %body.i.i.i.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %body.i.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %body.i.i.i.i.i.i.i, align 4
  %207 = ptrtoint ptr %length.i.i.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 2, ptr %length.i.i.i.i.i.i.i, align 2
  %208 = trunc i32 %and.lobit.i.i.i.i to i8
  %value.i.i.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %209 = ptrtoint ptr %value.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %value.i.i.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i.i.i.i.i.i) #9
  %210 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and41.i.i.i.i = lshr i32 %211, 5
  %and41.lobit.i.i.i.i = and i32 %and41.i.i.i.i, 1
  %and.i138.i.i.i.i = and i32 %211, -33
  %212 = shl nuw nsw i32 %and41.lobit.i.i.i.i, 5
  %and.sink.i140.i.i.i.i = or i32 %212, %and.i138.i.i.i.i
  store i32 %and.sink.i140.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %213 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i141.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %213, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i.i.i142.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i141.i.i.i.i, null
  br i1 %tobool.not.i.i.i142.i.i.i.i, label %do.end49.i.i.i.i, label %for.inc53.i.i.i.i

do.end49.i.i.i.i:                                 ; preds = %if.end38.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef -12) #12
  br label %cleanup

for.inc53.i.i.i.i:                                ; preds = %if.end38.i.i.i.i
  %214 = ptrtoint ptr %call7.i.i.i.i.i141.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %call7.i.i.i.i.i141.i.i.i.i, ptr %call7.i.i.i.i.i141.i.i.i.i, align 8
  %prev.i.i.i.i144.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 1
  %215 = ptrtoint ptr %prev.i.i.i.i144.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call7.i.i.i.i.i141.i.i.i.i, ptr %prev.i.i.i.i144.i.i.i.i, align 4
  %dest_addr2.i.i.i145.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 1
  %216 = ptrtoint ptr %dest_addr2.i.i.i145.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv.i.i.i.i.i.i, ptr %dest_addr2.i.i.i145.i.i.i.i, align 8
  %protocol4.i.i.i146.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 2
  %217 = ptrtoint ptr %protocol4.i.i.i146.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 2, ptr %protocol4.i.i.i146.i.i.i.i, align 1
  %length.i.i.i147.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 3
  %body.i.i.i148.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %body.i.i.i148.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %body.i.i.i148.i.i.i.i, align 4
  %219 = ptrtoint ptr %length.i.i.i147.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 2, ptr %length.i.i.i147.i.i.i.i, align 2
  %220 = trunc i32 %and41.lobit.i.i.i.i to i8
  %value.i.i151.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i.i141.i.i.i.i, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %value.i.i151.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %value.i.i151.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i.i141.i.i.i.i) #9
  %inc54.i.i.i.i = add nuw nsw i32 %channel_idx.0170.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc54.i.i.i.i, 5
  br i1 %exitcond.not.i.i.i.i, label %for.end55.i.i.i.i, label %for.inc53.i.i.i.i.for.body31.i.i.i.i_crit_edge

for.inc53.i.i.i.i.for.body31.i.i.i.i_crit_edge:   ; preds = %for.inc53.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i.i.i.i

for.end55.i.i.i.i:                                ; preds = %for.inc53.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %222 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i154.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %222, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i155.i.i.i.i = icmp eq ptr %call7.i.i.i154.i.i.i.i, null
  br i1 %tobool.not.i155.i.i.i.i, label %for.end55.i.i.i.i.do.end68.i.i.i.i_crit_edge, label %if.end59.i.i.i.i

for.end55.i.i.i.i.do.end68.i.i.i.i_crit_edge:     ; preds = %for.end55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %for.end55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %223 = ptrtoint ptr %call7.i.i.i154.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %call7.i.i.i154.i.i.i.i, ptr %call7.i.i.i154.i.i.i.i, align 8
  %prev.i.i156.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1
  %224 = ptrtoint ptr %prev.i.i156.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call7.i.i.i154.i.i.i.i, ptr %prev.i.i156.i.i.i.i, align 4
  %dest_addr2.i157.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1
  %225 = ptrtoint ptr %dest_addr2.i157.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %dest_addr2.i157.i.i.i.i, align 8
  %protocol4.i158.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 2
  %226 = ptrtoint ptr %protocol4.i158.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 2, ptr %protocol4.i158.i.i.i.i, align 1
  %length.i159.i.i.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 3
  %body.i160.i.i.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1
  %227 = ptrtoint ptr %body.i160.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 20, ptr %body.i160.i.i.i.i, align 4
  %228 = ptrtoint ptr %length.i159.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 4, ptr %length.i159.i.i.i.i, align 2
  %driver_type.i.i.i.i = getelementptr inbounds %struct.ipw_setup_info_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1, i32 1
  %229 = ptrtoint ptr %driver_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 1, ptr %driver_type.i.i.i.i, align 1
  %major_version.i.i.i.i = getelementptr inbounds %struct.ipw_setup_info_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1, i32 2
  %230 = ptrtoint ptr %major_version.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 2, ptr %major_version.i.i.i.i, align 2
  %minor_version.i.i.i.i = getelementptr inbounds %struct.ipw_setup_info_packet, ptr %call7.i.i.i154.i.i.i.i, i32 0, i32 1, i32 3
  %231 = ptrtoint ptr %minor_version.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %minor_version.i.i.i.i, align 1
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i154.i.i.i.i) #9
  %232 = ptrtoint ptr %to_setup.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %to_setup.i.i, align 4
  br label %cleanup

do.end68.i.i.i.i:                                 ; preds = %for.end55.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end18.3.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end18.2.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end18.1.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end18.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end7.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end.4.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end.3.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end.2.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end.1.i.i.i.i.do.end68.i.i.i.i_crit_edge, %if.end.i.i.i28.i.do.end68.i.i.i.i_crit_edge, %if.then.i.i.i.do.end68.i.i.i.i_crit_edge
  %call70.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  %233 = ptrtoint ptr %to_setup.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %to_setup.i.i, align 4
  br label %cleanup

do.end4.i.i.i:                                    ; preds = %if.then1.i.i133
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i8 %98 to i32
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv.i.i.i) #12
  br label %cleanup

sw.bb3.i.i:                                       ; preds = %if.end.i26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %234 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool4.not.i.i = icmp eq i32 %234, 0
  br i1 %tobool4.not.i.i, label %sw.bb3.i.i.cleanup_crit_edge, label %if.then5.i.i

sw.bb3.i.i.cleanup_crit_edge:                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i.i:                                     ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %port_no.i.i = getelementptr inbounds %struct.tl_setup_open_msg, ptr %add.ptr.i, i32 0, i32 1
  %235 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %port_no.i.i, align 1
  %conv6.i.i = zext i8 %236 to i32
  %sub.i29.i = add nsw i32 %conv6.i.i, -1
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %sub.i29.i) #12
  br label %cleanup

sw.bb13.i.i:                                      ; preds = %if.end.i26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipwireless_debug to i32))
  %237 = load i32, ptr @ipwireless_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool14.not.i.i = icmp eq i32 %237, 0
  br i1 %tobool14.not.i.i, label %sw.bb13.i.i.cleanup_crit_edge, label %do.end18.i.i

sw.bb13.i.i.cleanup_crit_edge:                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18.i.i:                                     ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %cleanup

sw.bb22.i.i:                                      ; preds = %if.end.i26.i
  %to_setup23.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 19
  %238 = ptrtoint ptr %to_setup23.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %to_setup23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool24.not.i.i = icmp eq i32 %239, 0
  br i1 %tobool24.not.i.i, label %if.else.i30.i, label %do.end28.i.i

do.end28.i.i:                                     ; preds = %sw.bb22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.else.i30.i:                                    ; preds = %sw.bb22.i.i
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %240 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %240, i32 noundef 2848, i32 noundef 32) #14
  %tobool.not.i32.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i32.i, label %do.end41.i.i, label %if.end44.i.i

do.end41.i.i:                                     ; preds = %if.else.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end44.i.i:                                     ; preds = %if.else.i30.i
  %241 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i33.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call7.i.i.i.i, ptr %prev.i.i33.i, align 4
  %dest_addr2.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %243 = ptrtoint ptr %dest_addr2.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %dest_addr2.i.i, align 8
  %protocol4.i.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 2
  %244 = ptrtoint ptr %protocol4.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 2, ptr %protocol4.i.i, align 1
  %length.i34.i = getelementptr inbounds %struct.ipw_tx_packet, ptr %call7.i.i.i.i, i32 0, i32 3
  %body.i.i = getelementptr inbounds %struct.ipw_control_packet, ptr %call7.i.i.i.i, i32 0, i32 1
  %245 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 23, ptr %body.i.i, align 4
  %246 = ptrtoint ptr %length.i34.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 1, ptr %length.i34.i, align 2
  call fastcc void @send_packet(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %call7.i.i.i.i) #9
  %reboot_callback.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 29
  %247 = ptrtoint ptr %reboot_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reboot_callback.i.i, align 4
  %tobool46.not.i31.i = icmp eq ptr %248, null
  br i1 %tobool46.not.i31.i, label %if.end44.i.i.cleanup_crit_edge, label %if.then47.i.i

if.end44.i.i.cleanup_crit_edge:                   ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %reboot_callback_data.i.i = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 30
  %249 = ptrtoint ptr %reboot_callback_data.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %reboot_callback_data.i.i, align 4
  call void %248(ptr noundef %250) #9
  br label %cleanup

do.end53.i.i:                                     ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %93 to i32
  %call56.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end53.i.i, %if.then47.i.i, %if.end44.i.i.cleanup_crit_edge, %do.end41.i.i, %do.end28.i.i, %do.end18.i.i, %sw.bb13.i.i.cleanup_crit_edge, %if.then5.i.i, %sw.bb3.i.i.cleanup_crit_edge, %do.end4.i.i.i, %do.end68.i.i.i.i, %if.end59.i.i.i.i, %do.end49.i.i.i.i, %do.end.i.i.i.i, %sw.bb.i.i.cleanup_crit_edge, %do.end.i25.i, %list_add_tail.exit.i.i, %if.end45.i.i.cleanup_crit_edge, %do.end37.i.i, %cleanup.i.i, %if.end10.i.i.cleanup_crit_edge, %do.end.i.i, %if.end94.cleanup_crit_edge, %do.end50, %do.end
  call void @llvm.lifetime.end.p0(i64 318, ptr nonnull %pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pool_allocate(ptr noundef %hw, ptr noundef %packet, i32 noundef %minimum_free_space) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %packet, null
  br i1 %tobool.not, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %rx_pool = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %rx_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_pool, align 4
  %cmp.i109.not = icmp eq ptr %1, %rx_pool
  br i1 %cmp.i109.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %rx_pool_size = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 13
  %2 = ptrtoint ptr %rx_pool_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pool_size, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %rx_pool_size, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i110, label %if.then7.list_del.exit_crit_edge

if.then7.list_del.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i110:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i110, %if.then7.list_del.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup21.thread

if.else:                                          ; preds = %if.then
  %network = getelementptr inbounds %struct.ipw_hardware, ptr %hw, i32 0, i32 26
  %12 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %network, align 4
  %call11 = tail call i32 @ipwireless_ppp_mru(ptr noundef %13) #9
  %add = add i32 %call11, 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %14 = tail call i32 @llvm.smax.i32(i32 %add, i32 %minimum_free_space)
  %add15 = add i32 %14, 24
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 2592) #13
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.else.return_crit_edge, label %if.end

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %capacity = getelementptr inbounds %struct.ipw_rx_packet, ptr %call9.i, i32 0, i32 1
  %15 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %capacity, align 8
  br label %cleanup21.thread

cleanup21.thread:                                 ; preds = %if.end, %list_del.exit
  %packet.addr.0 = phi ptr [ %1, %list_del.exit ], [ %call9.i, %if.end ]
  %length = getelementptr inbounds %struct.ipw_rx_packet, ptr %packet.addr.0, i32 0, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %length, align 4
  br label %if.end24

if.end24:                                         ; preds = %cleanup21.thread, %entry.if.end24_crit_edge
  %packet.addr.2 = phi ptr [ %packet, %entry.if.end24_crit_edge ], [ %packet.addr.0, %cleanup21.thread ]
  %length25 = getelementptr inbounds %struct.ipw_rx_packet, ptr %packet.addr.2, i32 0, i32 2
  %17 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length25, align 4
  %add26 = add i32 %18, %minimum_free_space
  %capacity27 = getelementptr inbounds %struct.ipw_rx_packet, ptr %packet.addr.2, i32 0, i32 1
  %19 = ptrtoint ptr %capacity27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %capacity27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %20)
  %cmp28 = icmp ugt i32 %add26, %20
  br i1 %cmp28, label %if.end8.i106, label %if.end24.return_crit_edge

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8.i106:                                     ; preds = %if.end24
  %add33 = add i32 %add26, 24
  %call9.i105 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add33, i32 noundef 2592) #13
  %tobool35.not = icmp eq ptr %call9.i105, null
  br i1 %tobool35.not, label %if.end8.i106.return.sink.split_crit_edge, label %cleanup43.thread

if.end8.i106.return.sink.split_crit_edge:         ; preds = %if.end8.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

cleanup43.thread:                                 ; preds = %if.end8.i106
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %length25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length25, align 4
  %add39 = add i32 %22, 24
  %23 = call ptr @memcpy(ptr %call9.i105, ptr %packet.addr.2, i32 %add39)
  %24 = load i32, ptr %length25, align 4
  %add41 = add i32 %24, %minimum_free_space
  %capacity42 = getelementptr inbounds %struct.ipw_rx_packet, ptr %call9.i105, i32 0, i32 1
  %25 = ptrtoint ptr %capacity42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add41, ptr %capacity42, align 8
  br label %return.sink.split

return.sink.split:                                ; preds = %cleanup43.thread, %if.end8.i106.return.sink.split_crit_edge
  %retval.5.ph = phi ptr [ %call9.i105, %cleanup43.thread ], [ null, %if.end8.i106.return.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef %packet.addr.2) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end24.return_crit_edge, %if.else.return_crit_edge
  %retval.5 = phi ptr [ null, %if.else.return_crit_edge ], [ %packet.addr.2, %if.end24.return_crit_edge ], [ %retval.5.ph, %return.sink.split ]
  ret ptr %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipwireless_ppp_mru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_network_packet_received(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipwireless_network_notify_control_line_change(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @ipwireless_hardware_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1637, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ipwireless_hardware_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1639, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipwireless_hardware_create.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1640, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1672, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ipwireless_init_hardware_v2_v3._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipwireless_init_hardware_v2_v3._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1127, i32 5}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1168, i32 5}
!22 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1196, i32 5}
!26 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1199, i32 5}
!30 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1206, i32 4}
!34 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipwireless_handle_v2_v3_interrupt._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/tty/ipwireless/hardware.c", i32 414, i32 19}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/tty/ipwireless/hardware.c", i32 368, i32 18}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/ipwireless/hardware.c", i32 370, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dump_data_bytes.__UNIQUE_ID_ddebug236, !41, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!45 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/ipwireless/hardware.c", i32 348, i32 10}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/tty/ipwireless/hardware.c", i32 352, i32 39}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/ipwireless/hardware.c", i32 353, i32 39}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/tty/ipwireless/hardware.c", i32 354, i32 36}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/ipwireless/hardware.c", i32 355, i32 19}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/ipwireless/hardware.c", i32 865, i32 4}
!58 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @do_receive_packet._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @do_receive_packet._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @do_receive_packet._entry.35, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/tty/ipwireless/hardware.c", i32 881, i32 4}
!63 = !{ptr @do_receive_packet._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/ipwireless/hardware.c", i32 907, i32 19}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/tty/ipwireless/hardware.c", i32 631, i32 3}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @queue_received_packet._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @queue_received_packet._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/tty/ipwireless/hardware.c", i32 649, i32 4}
!73 = !{ptr @queue_received_packet._entry.40, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @queue_received_packet._entry_ptr.42, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/tty/ipwireless/hardware.c", i32 673, i32 4}
!77 = !{ptr @queue_received_packet._entry.43, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @queue_received_packet._entry_ptr.45, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1537, i32 3}
!81 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @handle_received_SETUP_packet._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @handle_received_SETUP_packet._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1553, i32 4}
!86 = !{ptr @handle_received_SETUP_packet._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @handle_received_SETUP_packet._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1561, i32 4}
!90 = !{ptr @handle_received_SETUP_packet._entry.51, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @handle_received_SETUP_packet._entry_ptr.53, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1567, i32 4}
!94 = !{ptr @handle_received_SETUP_packet._entry.54, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @handle_received_SETUP_packet._entry_ptr.56, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1572, i32 4}
!98 = !{ptr @handle_received_SETUP_packet._entry.57, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @handle_received_SETUP_packet._entry_ptr.59, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.61, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1579, i32 5}
!102 = !{ptr @handle_received_SETUP_packet._entry.60, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @handle_received_SETUP_packet._entry_ptr.62, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1592, i32 3}
!106 = !{ptr @handle_received_SETUP_packet._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @handle_received_SETUP_packet._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1501, i32 2}
!110 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @handle_setup_get_version_rsp._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @handle_setup_get_version_rsp._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1506, i32 3}
!115 = !{ptr @handle_setup_get_version_rsp._entry.68, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @handle_setup_get_version_rsp._entry_ptr.70, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.71, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1454, i32 4}
!119 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__handle_setup_get_version_rsp._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @__handle_setup_get_version_rsp._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.74, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1463, i32 4}
!124 = !{ptr @__handle_setup_get_version_rsp._entry.73, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @__handle_setup_get_version_rsp._entry_ptr.75, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.77, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1491, i32 2}
!128 = !{ptr @__handle_setup_get_version_rsp._entry.76, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @__handle_setup_get_version_rsp._entry_ptr.78, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/tty/ipwireless/hardware.c", i32 774, i32 3}
!132 = !{ptr @.str.80, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @handle_received_CTRL_packet._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @handle_received_CTRL_packet._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.81, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1686, i32 3}
!137 = !{ptr @.str.82, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ipwireless_setup_timer._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ipwireless_setup_timer._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/tty/ipwireless/hardware.c", i32 1694, i32 3}
!142 = !{ptr @ipwireless_setup_timer._entry.83, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ipwireless_setup_timer._entry_ptr.85, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 4242286}
!154 = !{i64 2154547286}
!155 = !{i64 2154548264}
!156 = !{i64 4242086}
!157 = !{i64 2154549965}
!158 = !{i64 2154550531}
!159 = !{i64 2154551107}
!160 = !{i64 2154545990}
!161 = !{i64 4243124}
!162 = !{i64 2154546576}
!163 = !{i64 2154549062}
!164 = !{i64 2154549298}
!165 = !{i64 2154552844}
!166 = !{i64 2154555545}
!167 = !{i64 2154556337}
!168 = !{i64 2154516246}
!169 = !{i64 2154516736}
!170 = !{i64 2154517236}
!171 = !{i64 2154518046}
!172 = !{i64 2154518282}
!173 = !{i64 2154582209}
!174 = !{i64 2154583124}
!175 = !{i64 2154583394}
!176 = !{i64 2154583888}
!177 = !{!"branch_weights", i32 1, i32 2000}
!178 = !{i64 2154509961, i64 2154510459, i64 2154509998, i64 2154510054, i64 2154510088, i64 2154510112, i64 2154510153, i64 2154510174, i64 2154510202, i64 2154510236}
!179 = !{i64 2148761898, i64 2148761903, i64 2148761916, i64 2148761960, i64 2148761994, i64 2148762015}
!180 = !{i64 2154511853}
!181 = !{i64 2154512475}
!182 = !{i64 2154512975}
!183 = !{i64 2154513471}
!184 = !{i64 2154514074}
!185 = !{i64 2154514571}
!186 = !{i64 2154515067}
!187 = !{i64 2154533306}
!188 = !{i64 2154535291}
!189 = !{i64 2154536222}
!190 = !{i64 2154537017}
!191 = !{i64 2154538979}
!192 = !{i64 2154539854}
!193 = !{i64 2154540649}
