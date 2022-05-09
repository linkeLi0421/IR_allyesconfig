; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/gsi.c_pt.bc'
source_filename = "../drivers/net/ipa/gsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ipa_gsi_endpoint_data = type { i8, i8, i8, i8, %struct.gsi_channel_data, %struct.ipa_endpoint_data }
%struct.gsi_channel_data = type { i16, i16, i8 }
%struct.ipa_endpoint_data = type { i8, %struct.ipa_endpoint_config_data }
%struct.ipa_endpoint_config_data = type { i32, i8, i8, i8, i8, i8, i32, %union.anon.118 }
%union.anon.118 = type { %struct.ipa_endpoint_tx_data }
%struct.ipa_endpoint_tx_data = type { i32, i32, i32 }
%struct.gsi_event = type { i64, i16, i8, i8, i16, i8, i8 }

@gsi_modem_channel_flow_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1740, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error %d %sabling mode channel %u flow control\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gsi_modem_channel_flow_control\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/net/ipa/gsi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gsi_modem_channel_flow_control._entry_ptr = internal global ptr @gsi_modem_channel_flow_control._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@gsi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1935, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GSI has not been enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gsi_setup\00", [22 x i8] zeroinitializer }, align 32
@gsi_setup._entry_ptr = internal global ptr @gsi_setup._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gsi\00", [28 x i8] zeroinitializer }, align 32
@gsi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 2223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DT error getting \22gsi\22 memory property\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gsi_init\00", [23 x i8] zeroinitializer }, align 32
@gsi_init._entry_ptr = internal global ptr @gsi_init._entry, section ".printk_index", align 4
@gsi_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 2229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DT memory resource \22gsi\22 out of range\0A\00", [57 x i8] zeroinitializer }, align 32
@gsi_init._entry_ptr.14 = internal global ptr @gsi_init._entry.12, section ".printk_index", align 4
@gsi_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 2237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"DT memory resource \22gsi\22 too low (< %u)\0A\00", [55 x i8] zeroinitializer }, align 32
@gsi_init._entry_ptr.17 = internal global ptr @gsi_init._entry.15, section ".printk_index", align 4
@gsi_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 2243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to remap \22gsi\22 memory\0A\00", [34 x i8] zeroinitializer }, align 32
@gsi_init._entry_ptr.20 = internal global ptr @gsi_init._entry.18, section ".printk_index", align 4
@gsi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&gsi->mutex\00", [20 x i8] zeroinitializer }, align 32
@gsi_channel_start_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"channel %u bad state %u before start\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gsi_channel_start_command\00", [38 x i8] zeroinitializer }, align 32
@gsi_channel_start_command._entry_ptr = internal global ptr @gsi_channel_start_command._entry, section ".printk_index", align 4
@gsi_channel_start_command._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 552, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"channel %u bad state %u after start\0A\00", [59 x i8] zeroinitializer }, align 32
@gsi_channel_start_command._entry_ptr.26 = internal global ptr @gsi_channel_start_command._entry.24, section ".printk_index", align 4
@gsi_channel_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"GSI command %u for channel %u timed out, state %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsi_channel_command\00", [44 x i8] zeroinitializer }, align 32
@gsi_channel_command._entry_ptr = internal global ptr @gsi_channel_command._entry, section ".printk_index", align 4
@gsi_channel_stop_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 574, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"channel %u bad state %u before stop\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gsi_channel_stop_command\00", [39 x i8] zeroinitializer }, align 32
@gsi_channel_stop_command._entry_ptr = internal global ptr @gsi_channel_stop_command._entry, section ".printk_index", align 4
@gsi_channel_stop_command._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 590, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"channel %u bad state %u after stop\0A\00", [60 x i8] zeroinitializer }, align 32
@gsi_channel_stop_command._entry_ptr.33 = internal global ptr @gsi_channel_stop_command._entry.31, section ".printk_index", align 4
@gsi_channel_reset_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 610, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"channel %u bad state %u before reset\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gsi_channel_reset_command\00", [38 x i8] zeroinitializer }, align 32
@gsi_channel_reset_command._entry_ptr = internal global ptr @gsi_channel_reset_command._entry, section ".printk_index", align 4
@gsi_channel_reset_command._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"channel %u bad state %u after reset\0A\00", [59 x i8] zeroinitializer }, align 32
@gsi_channel_reset_command._entry_ptr.38 = internal global ptr @gsi_channel_reset_command._entry.36, section ".printk_index", align 4
@gsi_generic_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"GSI generic command %u to channel %u timed out\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gsi_generic_command\00", [44 x i8] zeroinitializer }, align 32
@gsi_generic_command._entry_ptr = internal global ptr @gsi_generic_command._entry, section ".printk_index", align 4
@gsi_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1871, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error %d requesting \22gsi\22 IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gsi_irq_setup\00", [18 x i8] zeroinitializer }, align 32
@gsi_irq_setup._entry_ptr = internal global ptr @gsi_irq_setup._entry, section ".printk_index", align 4
@gsi_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unrecognized interrupt type 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gsi_isr\00", [24 x i8] zeroinitializer }, align 32
@gsi_isr._entry_ptr = internal global ptr @gsi_isr._entry, section ".printk_index", align 4
@gsi_isr._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interrupt flood\0A\00", [47 x i8] zeroinitializer }, align 32
@gsi_isr._entry_ptr.47 = internal global ptr @gsi_isr._entry.45, section ".printk_index", align 4
@gsi_isr_glob_ee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected global interrupt 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsi_isr_glob_ee\00", [16 x i8] zeroinitializer }, align 32
@gsi_isr_glob_ee._entry_ptr = internal global ptr @gsi_isr_glob_ee._entry, section ".printk_index", align 4
@gsi_isr_glob_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected global error 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gsi_isr_glob_err\00", [47 x i8] zeroinitializer }, align 32
@gsi_isr_glob_err._entry_ptr = internal global ptr @gsi_isr_glob_err._entry, section ".printk_index", align 4
@gsi_isr_glob_chan_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel %u out of resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gsi_isr_glob_chan_err\00", [42 x i8] zeroinitializer }, align 32
@gsi_isr_glob_chan_err._entry_ptr = internal global ptr @gsi_isr_glob_chan_err._entry, section ".printk_index", align 4
@gsi_isr_glob_chan_err._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"channel %u global error ee 0x%08x code 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@gsi_isr_glob_chan_err._entry_ptr.56 = internal global ptr @gsi_isr_glob_chan_err._entry.54, section ".printk_index", align 4
@gsi_isr_glob_evt_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 1124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"evt_ring for channel %u out of resources\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsi_isr_glob_evt_err\00", [43 x i8] zeroinitializer }, align 32
@gsi_isr_glob_evt_err._entry_ptr = internal global ptr @gsi_isr_glob_evt_err._entry, section ".printk_index", align 4
@gsi_isr_glob_evt_err._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 1130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"event ring %u global error ee %u code 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@gsi_isr_glob_evt_err._entry_ptr.61 = internal global ptr @gsi_isr_glob_evt_err._entry.59, section ".printk_index", align 4
@gsi_isr_gp_int1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"global INT1 generic result %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsi_isr_gp_int1\00", [16 x i8] zeroinitializer }, align 32
@gsi_isr_gp_int1._entry_ptr = internal global ptr @gsi_isr_gp_int1._entry, section ".printk_index", align 4
@gsi_isr_general._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected general interrupt 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gsi_isr_general\00", [16 x i8] zeroinitializer }, align 32
@gsi_isr_general._entry_ptr = internal global ptr @gsi_isr_general._entry, section ".printk_index", align 4
@gsi_ring_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 1900, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"GSI reports zero channels supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gsi_ring_setup\00", [17 x i8] zeroinitializer }, align 32
@gsi_ring_setup._entry_ptr = internal global ptr @gsi_ring_setup._entry, section ".printk_index", align 4
@gsi_ring_setup._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 1905, ptr @.str.70, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"limiting to %u channels; hardware supports %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gsi_ring_setup._entry_ptr.71 = internal global ptr @gsi_ring_setup._entry.68, section ".printk_index", align 4
@gsi_ring_setup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.67, ptr @.str.2, i32 1912, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GSI reports zero event rings supported\0A\00", [56 x i8] zeroinitializer }, align 32
@gsi_ring_setup._entry_ptr.74 = internal global ptr @gsi_ring_setup._entry.72, section ".printk_index", align 4
@gsi_ring_setup._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.67, ptr @.str.2, i32 1918, ptr @.str.70, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"limiting to %u event rings; hardware supports %u\0A\00", [46 x i8] zeroinitializer }, align 32
@gsi_ring_setup._entry_ptr.77 = internal global ptr @gsi_ring_setup._entry.75, section ".printk_index", align 4
@gsi_channel_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"channel %u not supported by hardware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gsi_channel_setup\00", [46 x i8] zeroinitializer }, align 32
@gsi_channel_setup._entry_ptr = internal global ptr @gsi_channel_setup._entry, section ".printk_index", align 4
@gsi_evt_ring_alloc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"event ring %u bad state %u before alloc\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gsi_evt_ring_alloc_command\00", [37 x i8] zeroinitializer }, align 32
@gsi_evt_ring_alloc_command._entry_ptr = internal global ptr @gsi_evt_ring_alloc_command._entry, section ".printk_index", align 4
@gsi_evt_ring_alloc_command._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"event ring %u bad state %u after alloc\0A\00", [56 x i8] zeroinitializer }, align 32
@gsi_evt_ring_alloc_command._entry_ptr.84 = internal global ptr @gsi_evt_ring_alloc_command._entry.82, section ".printk_index", align 4
@gsi_evt_ring_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"GSI command %u for event ring %u timed out, state %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsi_evt_ring_command\00", [43 x i8] zeroinitializer }, align 32
@gsi_evt_ring_command._entry_ptr = internal global ptr @gsi_evt_ring_command._entry, section ".printk_index", align 4
@gsi_channel_alloc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"channel %u bad state %u before alloc\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gsi_channel_alloc_command\00", [38 x i8] zeroinitializer }, align 32
@gsi_channel_alloc_command._entry_ptr = internal global ptr @gsi_channel_alloc_command._entry, section ".printk_index", align 4
@gsi_channel_alloc_command._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"channel %u bad state %u after alloc\0A\00", [59 x i8] zeroinitializer }, align 32
@gsi_channel_alloc_command._entry_ptr.91 = internal global ptr @gsi_channel_alloc_command._entry.89, section ".printk_index", align 4
@gsi_evt_ring_de_alloc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 449, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"event ring %u state %u before dealloc\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gsi_evt_ring_de_alloc_command\00", [34 x i8] zeroinitializer }, align 32
@gsi_evt_ring_de_alloc_command._entry_ptr = internal global ptr @gsi_evt_ring_de_alloc_command._entry, section ".printk_index", align 4
@gsi_evt_ring_de_alloc_command._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"event ring %u bad state %u after dealloc\0A\00", [54 x i8] zeroinitializer }, align 32
@gsi_evt_ring_de_alloc_command._entry_ptr.96 = internal global ptr @gsi_evt_ring_de_alloc_command._entry.94, section ".printk_index", align 4
@gsi_modem_channel_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1714, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d halting modem channel %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsi_modem_channel_halt\00", [41 x i8] zeroinitializer }, align 32
@gsi_modem_channel_halt._entry_ptr = internal global ptr @gsi_modem_channel_halt._entry, section ".printk_index", align 4
@gsi_channel_de_alloc_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 633, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"channel %u bad state %u before dealloc\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gsi_channel_de_alloc_command\00", [35 x i8] zeroinitializer }, align 32
@gsi_channel_de_alloc_command._entry_ptr = internal global ptr @gsi_channel_de_alloc_command._entry, section ".printk_index", align 4
@gsi_channel_de_alloc_command._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"channel %u bad state %u after dealloc\0A\00", [57 x i8] zeroinitializer }, align 32
@gsi_channel_de_alloc_command._entry_ptr.103 = internal global ptr @gsi_channel_de_alloc_command._entry.101, section ".printk_index", align 4
@gsi_evt_ring_reset_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 426, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"event ring %u bad state %u before reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gsi_evt_ring_reset_command\00", [37 x i8] zeroinitializer }, align 32
@gsi_evt_ring_reset_command._entry_ptr = internal global ptr @gsi_evt_ring_reset_command._entry, section ".printk_index", align 4
@gsi_evt_ring_reset_command._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 438, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"event ring %u bad state %u after reset\0A\00", [56 x i8] zeroinitializer }, align 32
@gsi_evt_ring_reset_command._entry_ptr.108 = internal global ptr @gsi_evt_ring_reset_command._entry.106, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@gsi_channel_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 2076, ptr @.str.70, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel %u limited to %u TREs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gsi_channel_init_one\00", [43 x i8] zeroinitializer }, align 32
@gsi_channel_init_one._entry_ptr = internal global ptr @gsi_channel_init_one._entry, section ".printk_index", align 4
@gsi_channel_init_one._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 2098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d allocating channel %u ring\0A\00", [59 x i8] zeroinitializer }, align 32
@gsi_channel_init_one._entry_ptr.114 = internal global ptr @gsi_channel_init_one._entry.112, section ".printk_index", align 4
@gsi_channel_data_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 2017, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bad channel id %u; must be less than %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gsi_channel_data_valid\00", [41 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr = internal global ptr @gsi_channel_data_valid._entry, section ".printk_index", align 4
@gsi_channel_data_valid._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 2022, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad EE id %u; not AP or modem\0A\00", [33 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr.119 = internal global ptr @gsi_channel_data_valid._entry.117, section ".printk_index", align 4
@gsi_channel_data_valid._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 2029, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"channel %u bad tlv_count %u; must be 1..%u\0A\00", [52 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr.122 = internal global ptr @gsi_channel_data_valid._entry.120, section ".printk_index", align 4
@gsi_channel_data_valid._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 2041, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"channel %u TLV count %u exceeds TRE count %u\0A\00", [50 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr.125 = internal global ptr @gsi_channel_data_valid._entry.123, section ".printk_index", align 4
@gsi_channel_data_valid._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 2047, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"channel %u bad tre_count %u; not power of 2\0A\00", [51 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr.128 = internal global ptr @gsi_channel_data_valid._entry.126, section ".printk_index", align 4
@gsi_channel_data_valid._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.116, ptr @.str.2, i32 2053, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"channel %u bad event_count %u; not power of 2\0A\00", [49 x i8] zeroinitializer }, align 32
@gsi_channel_data_valid._entry_ptr.131 = internal global ptr @gsi_channel_data_valid._entry.129, section ".printk_index", align 4
@gsi_channel_evt_ring_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 1989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d allocating channel %u event ring\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gsi_channel_evt_ring_init\00", [38 x i8] zeroinitializer }, align 32
@gsi_channel_evt_ring_init._entry_ptr = internal global ptr @gsi_channel_evt_ring_init._entry, section ".printk_index", align 4
@gsi_evt_ring_id_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 1442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"event rings exhausted\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gsi_evt_ring_id_alloc\00", [42 x i8] zeroinitializer }, align 32
@gsi_evt_ring_id_alloc._entry_ptr = internal global ptr @gsi_evt_ring_id_alloc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 15]
@__sancov_gen_cov_switch_values.139 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 64]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 15]
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1738, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1935, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2221, i32 59 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2223, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2229, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2236, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2243, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2259, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 539, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 551, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 498, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 573, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 589, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 609, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 619, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1690, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1871, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1299, i32 5 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1307, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1227, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1157, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1104, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1110, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1123, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1129, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1199, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1257, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1900, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1904, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1912, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1916, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1768, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 399, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 411, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 387, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 512, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 524, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 448, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 460, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1713, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 632, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 643, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 425, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 437, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 87, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2075, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2097, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2016, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2022, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2028, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2039, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2046, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 2052, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1988, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.573 = private constant [25 x i8] c"../drivers/net/ipa/gsi.c\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 1442, i32 3 }
@llvm.compiler.used = appending global [196 x ptr] [ptr @gsi_channel_alloc_command._entry, ptr @gsi_channel_alloc_command._entry.89, ptr @gsi_channel_alloc_command._entry_ptr, ptr @gsi_channel_alloc_command._entry_ptr.91, ptr @gsi_channel_command._entry, ptr @gsi_channel_command._entry_ptr, ptr @gsi_channel_data_valid._entry, ptr @gsi_channel_data_valid._entry.117, ptr @gsi_channel_data_valid._entry.120, ptr @gsi_channel_data_valid._entry.123, ptr @gsi_channel_data_valid._entry.126, ptr @gsi_channel_data_valid._entry.129, ptr @gsi_channel_data_valid._entry_ptr, ptr @gsi_channel_data_valid._entry_ptr.119, ptr @gsi_channel_data_valid._entry_ptr.122, ptr @gsi_channel_data_valid._entry_ptr.125, ptr @gsi_channel_data_valid._entry_ptr.128, ptr @gsi_channel_data_valid._entry_ptr.131, ptr @gsi_channel_de_alloc_command._entry, ptr @gsi_channel_de_alloc_command._entry.101, ptr @gsi_channel_de_alloc_command._entry_ptr, ptr @gsi_channel_de_alloc_command._entry_ptr.103, ptr @gsi_channel_evt_ring_init._entry, ptr @gsi_channel_evt_ring_init._entry_ptr, ptr @gsi_channel_init_one._entry, ptr @gsi_channel_init_one._entry.112, ptr @gsi_channel_init_one._entry_ptr, ptr @gsi_channel_init_one._entry_ptr.114, ptr @gsi_channel_reset_command._entry, ptr @gsi_channel_reset_command._entry.36, ptr @gsi_channel_reset_command._entry_ptr, ptr @gsi_channel_reset_command._entry_ptr.38, ptr @gsi_channel_setup._entry, ptr @gsi_channel_setup._entry_ptr, ptr @gsi_channel_start_command._entry, ptr @gsi_channel_start_command._entry.24, ptr @gsi_channel_start_command._entry_ptr, ptr @gsi_channel_start_command._entry_ptr.26, ptr @gsi_channel_stop_command._entry, ptr @gsi_channel_stop_command._entry.31, ptr @gsi_channel_stop_command._entry_ptr, ptr @gsi_channel_stop_command._entry_ptr.33, ptr @gsi_evt_ring_alloc_command._entry, ptr @gsi_evt_ring_alloc_command._entry.82, ptr @gsi_evt_ring_alloc_command._entry_ptr, ptr @gsi_evt_ring_alloc_command._entry_ptr.84, ptr @gsi_evt_ring_command._entry, ptr @gsi_evt_ring_command._entry_ptr, ptr @gsi_evt_ring_de_alloc_command._entry, ptr @gsi_evt_ring_de_alloc_command._entry.94, ptr @gsi_evt_ring_de_alloc_command._entry_ptr, ptr @gsi_evt_ring_de_alloc_command._entry_ptr.96, ptr @gsi_evt_ring_id_alloc._entry, ptr @gsi_evt_ring_id_alloc._entry_ptr, ptr @gsi_evt_ring_reset_command._entry, ptr @gsi_evt_ring_reset_command._entry.106, ptr @gsi_evt_ring_reset_command._entry_ptr, ptr @gsi_evt_ring_reset_command._entry_ptr.108, ptr @gsi_generic_command._entry, ptr @gsi_generic_command._entry_ptr, ptr @gsi_init._entry, ptr @gsi_init._entry.12, ptr @gsi_init._entry.15, ptr @gsi_init._entry.18, ptr @gsi_init._entry_ptr, ptr @gsi_init._entry_ptr.14, ptr @gsi_init._entry_ptr.17, ptr @gsi_init._entry_ptr.20, ptr @gsi_irq_setup._entry, ptr @gsi_irq_setup._entry_ptr, ptr @gsi_isr._entry, ptr @gsi_isr._entry.45, ptr @gsi_isr._entry_ptr, ptr @gsi_isr._entry_ptr.47, ptr @gsi_isr_general._entry, ptr @gsi_isr_general._entry_ptr, ptr @gsi_isr_glob_chan_err._entry, ptr @gsi_isr_glob_chan_err._entry.54, ptr @gsi_isr_glob_chan_err._entry_ptr, ptr @gsi_isr_glob_chan_err._entry_ptr.56, ptr @gsi_isr_glob_ee._entry, ptr @gsi_isr_glob_ee._entry_ptr, ptr @gsi_isr_glob_err._entry, ptr @gsi_isr_glob_err._entry_ptr, ptr @gsi_isr_glob_evt_err._entry, ptr @gsi_isr_glob_evt_err._entry.59, ptr @gsi_isr_glob_evt_err._entry_ptr, ptr @gsi_isr_glob_evt_err._entry_ptr.61, ptr @gsi_isr_gp_int1._entry, ptr @gsi_isr_gp_int1._entry_ptr, ptr @gsi_modem_channel_flow_control._entry, ptr @gsi_modem_channel_flow_control._entry_ptr, ptr @gsi_modem_channel_halt._entry, ptr @gsi_modem_channel_halt._entry_ptr, ptr @gsi_ring_setup._entry, ptr @gsi_ring_setup._entry.68, ptr @gsi_ring_setup._entry.72, ptr @gsi_ring_setup._entry.75, ptr @gsi_ring_setup._entry_ptr, ptr @gsi_ring_setup._entry_ptr.71, ptr @gsi_ring_setup._entry_ptr.74, ptr @gsi_ring_setup._entry_ptr.77, ptr @gsi_setup._entry, ptr @gsi_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @gsi_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @init_completion.__key, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_modem_channel_flow_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_start_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_start_command._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_stop_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_stop_command._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_reset_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_reset_command._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_generic_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_ee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_chan_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_chan_err._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_evt_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_glob_evt_err._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_gp_int1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_isr_general._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_ring_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_ring_setup._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_ring_setup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_ring_setup._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_alloc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_alloc_command._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_alloc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_alloc_command._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_de_alloc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_de_alloc_command._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_modem_channel_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_de_alloc_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_de_alloc_command._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_reset_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_reset_command._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_init_one._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_data_valid._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_channel_evt_ring_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gsi_evt_ring_id_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gsi_ring_virt(ptr nocapture noundef readonly %ring, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %count = getelementptr inbounds %struct.gsi_ring, ptr %ring, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %rem = urem i32 %index, %3
  %mul = shl i32 %rem, 4
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_channel_start(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %napi = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 15
  tail call void @napi_enable(ptr noundef %napi) #7
  %evt_ring_id = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 7
  %0 = ptrtoint ptr %evt_ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evt_ring_id, align 4
  %ieob_enabled_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 10
  %2 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ieob_enabled_bitmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %shl.i = shl nuw i32 1, %1
  %or.i = or i32 %3, %shl.i
  %4 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %ieob_enabled_bitmap.i, align 8
  %virt.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %5 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !261
  br i1 %tobool.not.i, label %if.then.i, label %entry.gsi_irq_ieob_enable_one.exit_crit_edge

entry.gsi_irq_ieob_enable_one.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_irq_ieob_enable_one.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %type_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %8 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or.i.i = or i32 %9, 8
  store i32 %or.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %10 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %12) #7, !srcloc !261
  br label %gsi_irq_ieob_enable_one.exit

gsi_irq_ieob_enable_one.exit:                     ; preds = %if.then.i, %entry.gsi_irq_ieob_enable_one.exit_crit_edge
  %call = tail call fastcc i32 @__gsi_channel_start(ptr noundef %arrayidx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %gsi_irq_ieob_enable_one.exit.if.end_crit_edge, label %if.then

gsi_irq_ieob_enable_one.exit.if.end_crit_edge:    ; preds = %gsi_irq_ieob_enable_one.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %gsi_irq_ieob_enable_one.exit
  %13 = ptrtoint ptr %evt_ring_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %evt_ring_id, align 4
  %shl.i11 = shl nuw i32 1, %14
  %neg.i.i = xor i32 %shl.i11, -1
  %15 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ieob_enabled_bitmap.i, align 8
  %and.i.i = and i32 %16, %neg.i.i
  store i32 %and.i.i, ptr %ieob_enabled_bitmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.gsi_irq_ieob_disable_one.exit_crit_edge

if.then.gsi_irq_ieob_disable_one.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_irq_ieob_disable_one.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %type_enabled_bitmap.i.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %17 = ptrtoint ptr %type_enabled_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type_enabled_bitmap.i.i.i, align 4
  %and.i.i.i = and i32 %18, -9
  store i32 %and.i.i.i, ptr %type_enabled_bitmap.i.i.i, align 4
  %19 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %20, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %21) #7, !srcloc !261
  br label %gsi_irq_ieob_disable_one.exit

gsi_irq_ieob_disable_one.exit:                    ; preds = %if.then.i.i, %if.then.gsi_irq_ieob_disable_one.exit_crit_edge
  %22 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ieob_enabled_bitmap.i, align 8
  %24 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %26) #7, !srcloc !261
  tail call void @napi_disable(ptr noundef %napi) #7
  br label %if.end

if.end:                                           ; preds = %gsi_irq_ieob_disable_one.exit, %gsi_irq_ieob_enable_one.exit.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gsi_channel_start(ptr noundef %channel, i1 noundef zeroext %resume) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  br i1 %resume, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %version = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ult i32 %3, 4
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %channel1.i.i.i = getelementptr inbounds %struct.gsi, ptr %5, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %channel1.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 488
  %virt1.i.i = getelementptr inbounds %struct.gsi, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %virt1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt1.i.i, align 4
  %mul.i.i = shl nsw i32 %sub.ptr.div.i.i.i, 7
  %add.i.i = add nsw i32 %mul.i.i, 114688
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %11 = lshr i32 %10, 12
  %div4.i5.i.i = and i32 %11, 15
  %12 = zext i32 %div4.i5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div4.i5.i.i, label %do.end.i [
    i32 1, label %if.end.if.end.i_crit_edge
    i32 3, label %if.end.if.end.i_crit_edge7
  ]

if.end.if.end.i_crit_edge7:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel, align 8
  %channel1.i.i = getelementptr inbounds %struct.gsi, ptr %14, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel1.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %sub.ptr.div.i.i, i32 noundef %div4.i5.i.i) #10
  br label %gsi_channel_start_command.exit

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.if.end.i_crit_edge7
  tail call fastcc void @gsi_channel_command(ptr noundef %channel, i32 noundef 1) #7
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %channel, align 8
  %channel1.i.i23.i = getelementptr inbounds %struct.gsi, ptr %16, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i25.i = ptrtoint ptr %channel1.i.i23.i to i32
  %sub.ptr.sub.i.i26.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i25.i
  %sub.ptr.div.i.i27.i = sdiv exact i32 %sub.ptr.sub.i.i26.i, 488
  %virt1.i28.i = getelementptr inbounds %struct.gsi, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %virt1.i28.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt1.i28.i, align 4
  %mul.i29.i = shl nsw i32 %sub.ptr.div.i.i27.i, 7
  %add.i30.i = add nsw i32 %mul.i29.i, 114688
  %add.ptr.i31.i = getelementptr i8, ptr %18, i32 %add.i30.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %20 = lshr i32 %19, 12
  %div4.i5.i32.i = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div4.i5.i32.i)
  %cmp5.i = icmp eq i32 %div4.i5.i32.i, 2
  br i1 %cmp5.i, label %if.end.i.gsi_channel_start_command.exit_crit_edge, label %do.end10.i

if.end.i.gsi_channel_start_command.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_start_command.exit

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channel, align 8
  %channel1.i33.i = getelementptr inbounds %struct.gsi, ptr %22, i32 0, i32 14
  %sub.ptr.rhs.cast.i35.i = ptrtoint ptr %channel1.i33.i to i32
  %sub.ptr.sub.i36.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i35.i
  %sub.ptr.div.i37.i = sdiv exact i32 %sub.ptr.sub.i36.i, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.div.i37.i, i32 noundef %div4.i5.i32.i) #10
  br label %gsi_channel_start_command.exit

gsi_channel_start_command.exit:                   ; preds = %do.end10.i, %if.end.i.gsi_channel_start_command.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -5, %do.end10.i ], [ 0, %if.end.i.gsi_channel_start_command.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %gsi_channel_start_command.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gsi_channel_start_command.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_channel_stop(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %call = tail call fastcc i32 @__gsi_channel_stop(ptr noundef %arrayidx, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %evt_ring_id = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 7
  %0 = ptrtoint ptr %evt_ring_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evt_ring_id, align 4
  %shl.i = shl nuw i32 1, %1
  %neg.i.i = xor i32 %shl.i, -1
  %ieob_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 10
  %2 = ptrtoint ptr %ieob_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ieob_enabled_bitmap.i.i, align 8
  %and.i.i = and i32 %3, %neg.i.i
  store i32 %and.i.i, ptr %ieob_enabled_bitmap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.gsi_irq_ieob_disable_one.exit_crit_edge

if.end.gsi_irq_ieob_disable_one.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_irq_ieob_disable_one.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %type_enabled_bitmap.i.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %4 = ptrtoint ptr %type_enabled_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type_enabled_bitmap.i.i.i, align 4
  %and.i.i.i = and i32 %5, -9
  store i32 %and.i.i.i, ptr %type_enabled_bitmap.i.i.i, align 4
  %virt.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %6 = ptrtoint ptr %virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %8) #7, !srcloc !261
  br label %gsi_irq_ieob_disable_one.exit

gsi_irq_ieob_disable_one.exit:                    ; preds = %if.then.i.i, %if.end.gsi_irq_ieob_disable_one.exit_crit_edge
  %9 = ptrtoint ptr %ieob_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ieob_enabled_bitmap.i.i, align 8
  %virt.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %11 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #7, !srcloc !261
  %napi = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 15
  tail call void @napi_disable(ptr noundef %napi) #7
  br label %cleanup

cleanup:                                          ; preds = %gsi_irq_ieob_disable_one.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gsi_channel_stop(ptr noundef %channel, i1 noundef zeroext %suspend) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %spinlock.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %spinlock.i.i) #7
  %toward_ipa.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 1
  %2 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %toward_ipa.i.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.if.end8.i.i_crit_edge, label %if.then.i.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %entry
  %alloc.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %alloc.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, %alloc.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i, label %if.then.i.i.done.i.i_crit_edge

if.then.i.i.done.i.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %pending.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 8
  %6 = ptrtoint ptr %pending.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending.i.i, align 4
  %cmp.i35.not.i.i = icmp eq ptr %7, %pending.i.i
  br i1 %cmp.i35.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.end.i.i.done.i.i_crit_edge

if.end.i.i.done.i.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %complete.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 9
  %8 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %complete.i.i, align 4
  %cmp.i37.not.i.i = icmp eq ptr %9, %complete.i.i
  br i1 %cmp.i37.not.i.i, label %if.end12.i.i, label %if.end8.i.i.done.i.i_crit_edge

if.end8.i.i.done.i.i_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %polled.i.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 10
  %10 = ptrtoint ptr %polled.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %polled.i.i, align 4
  %cmp.i39.not.i.i = icmp eq ptr %11, %polled.i.i
  br i1 %cmp.i39.not.i.i, label %if.end12.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge, label %if.end12.i.i.done.i.i_crit_edge

if.end12.i.i.done.i.i_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i.i

if.end12.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_trans_last.exit.thread.i

done.i.i:                                         ; preds = %if.end12.i.i.done.i.i_crit_edge, %if.end8.i.i.done.i.i_crit_edge, %if.end.i.i.done.i.i_crit_edge, %if.then.i.i.done.i.i_crit_edge
  %list.0.i.i = phi ptr [ %complete.i.i, %if.end8.i.i.done.i.i_crit_edge ], [ %pending.i.i, %if.end.i.i.done.i.i_crit_edge ], [ %alloc.i.i, %if.then.i.i.done.i.i_crit_edge ], [ %polled.i.i, %if.end12.i.i.done.i.i_crit_edge ]
  %tobool17.not.i.i = icmp eq ptr %list.0.i.i, null
  br i1 %tobool17.not.i.i, label %done.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge, label %cond.end.i.i

done.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge: ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_trans_last.exit.thread.i

cond.end.i.i:                                     ; preds = %done.i.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %13, null
  br i1 %tobool18.not.i.i, label %cond.end.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge, label %if.then19.i.i

cond.end.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_trans_last.exit.thread.i

if.then19.i.i:                                    ; preds = %cond.end.i.i
  %refcount.i.i = getelementptr inbounds %struct.gsi_trans, ptr %13, i32 0, i32 11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !265
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then19.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !266

if.then19.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then19.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !267

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then.i_crit_edge:            ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then19.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then19.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %if.then.i

gsi_channel_trans_last.exit.thread.i:             ; preds = %cond.end.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge, %done.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge, %if.end12.i.i.gsi_channel_trans_last.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock.i.i) #7
  br label %gsi_channel_trans_quiesce.exit

if.then.i:                                        ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %spinlock.i.i) #7
  %completion.i = getelementptr inbounds %struct.gsi_trans, ptr %13, i32 0, i32 12
  tail call void @wait_for_completion(ptr noundef %completion.i) #7
  tail call void @gsi_trans_free(ptr noundef nonnull %13) #7
  br label %gsi_channel_trans_quiesce.exit

gsi_channel_trans_quiesce.exit:                   ; preds = %if.then.i, %gsi_channel_trans_last.exit.thread.i
  br i1 %suspend, label %land.lhs.true, label %gsi_channel_trans_quiesce.exit.if.end_crit_edge

gsi_channel_trans_quiesce.exit.if.end_crit_edge:  ; preds = %gsi_channel_trans_quiesce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %gsi_channel_trans_quiesce.exit
  %version = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp = icmp ult i32 %17, 4
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %gsi_channel_trans_quiesce.exit.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %channel to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %retries.0.i = phi i32 [ 10, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channel, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %channel1.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %19, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %channel1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 488
  %virt1.i.i.i = getelementptr inbounds %struct.gsi, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %virt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt1.i.i.i, align 4
  %mul.i.i.i = shl nsw i32 %sub.ptr.div.i.i.i.i, 7
  %add.i.i.i = add nsw i32 %mul.i.i.i, 114688
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %add.i.i.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %25 = lshr i32 %24, 12
  %div4.i5.i.i.i = and i32 %25, 15
  %26 = zext i32 %div4.i5.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %div4.i5.i.i.i, label %do.end.i.i [
    i32 3, label %do.body.i.gsi_channel_stop_retry.exit_crit_edge
    i32 2, label %do.body.i.if.end6.i.i_crit_edge
    i32 4, label %do.body.i.if.end6.i.i_crit_edge32
  ]

do.body.i.if.end6.i.i_crit_edge32:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

do.body.i.if.end6.i.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

do.body.i.gsi_channel_stop_retry.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_stop_retry.exit

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel, align 8
  %channel1.i.i.i = getelementptr inbounds %struct.gsi, ptr %28, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %channel1.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.29, i32 noundef %sub.ptr.div.i.i.i, i32 noundef %div4.i5.i.i.i) #10
  br label %gsi_channel_stop_retry.exit

if.end6.i.i:                                      ; preds = %do.body.i.if.end6.i.i_crit_edge, %do.body.i.if.end6.i.i_crit_edge32
  tail call fastcc void @gsi_channel_command(ptr noundef %channel, i32 noundef 2) #7
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel, align 8
  %channel1.i.i31.i.i = getelementptr inbounds %struct.gsi, ptr %30, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i33.i.i = ptrtoint ptr %channel1.i.i31.i.i to i32
  %sub.ptr.sub.i.i34.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i33.i.i
  %sub.ptr.div.i.i35.i.i = sdiv exact i32 %sub.ptr.sub.i.i34.i.i, 488
  %virt1.i36.i.i = getelementptr inbounds %struct.gsi, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %virt1.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt1.i36.i.i, align 4
  %mul.i37.i.i = shl nsw i32 %sub.ptr.div.i.i35.i.i, 7
  %add.i38.i.i = add nsw i32 %mul.i37.i.i, 114688
  %add.ptr.i39.i.i = getelementptr i8, ptr %32, i32 %add.i38.i.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %34 = lshr i32 %33, 12
  %div4.i5.i40.i.i = and i32 %34, 15
  %35 = zext i32 %div4.i5.i40.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %div4.i5.i40.i.i, label %do.end16.i.i [
    i32 3, label %if.end6.i.i.gsi_channel_stop_retry.exit_crit_edge
    i32 4, label %if.end.i
  ]

if.end6.i.i.gsi_channel_stop_retry.exit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_stop_retry.exit

do.end16.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel, align 8
  %channel1.i41.i.i = getelementptr inbounds %struct.gsi, ptr %37, i32 0, i32 14
  %sub.ptr.rhs.cast.i43.i.i = ptrtoint ptr %channel1.i41.i.i to i32
  %sub.ptr.sub.i44.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i43.i.i
  %sub.ptr.div.i45.i.i = sdiv exact i32 %sub.ptr.sub.i44.i.i, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.32, i32 noundef %sub.ptr.div.i45.i.i, i32 noundef %div4.i5.i40.i.i) #10
  br label %gsi_channel_stop_retry.exit

if.end.i:                                         ; preds = %if.end6.i.i
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #7
  %dec.i = add nsw i32 %retries.0.i, -1
  %tobool.not.i = icmp eq i32 %retries.0.i, 0
  br i1 %tobool.not.i, label %if.end.i.gsi_channel_stop_retry.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end.i.gsi_channel_stop_retry.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_stop_retry.exit

gsi_channel_stop_retry.exit:                      ; preds = %if.end.i.gsi_channel_stop_retry.exit_crit_edge, %do.end16.i.i, %if.end6.i.i.gsi_channel_stop_retry.exit_crit_edge, %do.end.i.i, %do.body.i.gsi_channel_stop_retry.exit_crit_edge
  %retval.0.i4.i = phi i32 [ -5, %do.end16.i.i ], [ -22, %do.end.i.i ], [ -11, %if.end.i.gsi_channel_stop_retry.exit_crit_edge ], [ 0, %if.end6.i.i.gsi_channel_stop_retry.exit_crit_edge ], [ 0, %do.body.i.gsi_channel_stop_retry.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %gsi_channel_stop_retry.exit, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4.i, %gsi_channel_stop_retry.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_channel_reset(ptr noundef %gsi, i32 noundef %channel_id, i1 noundef zeroext %doorbell) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %mutex = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  tail call fastcc void @gsi_channel_reset_command(ptr noundef %arrayidx)
  %version = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %toward_ipa = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 1
  %2 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %toward_ipa, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gsi_channel_reset_command(ptr noundef %arrayidx)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @gsi_channel_program(ptr noundef %arrayidx, i1 noundef zeroext %doorbell)
  tail call void @gsi_channel_trans_cancel_pending(ptr noundef %arrayidx) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_channel_reset_command(ptr noundef %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %channel1.i.i = getelementptr inbounds %struct.gsi, ptr %5, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel1.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 488
  %virt1.i = getelementptr inbounds %struct.gsi, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %virt1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt1.i, align 4
  %mul.i = shl nsw i32 %sub.ptr.div.i.i, 7
  %add.i = add nsw i32 %mul.i, 114688
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %9 = lshr i32 %8, 12
  %div4.i5.i = and i32 %9, 15
  %10 = zext i32 %div4.i5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %div4.i5.i, label %do.end [
    i32 3, label %entry.if.end6_crit_edge
    i32 15, label %entry.if.end6_crit_edge42
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.end6_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel, align 8
  %channel1.i = getelementptr inbounds %struct.gsi, ptr %12, i32 0, i32 14
  %sub.ptr.rhs.cast.i = ptrtoint ptr %channel1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %sub.ptr.div.i, i32 noundef %div4.i5.i) #10
  br label %cleanup

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %entry.if.end6_crit_edge42
  tail call fastcc void @gsi_channel_command(ptr noundef %channel, i32 noundef 9)
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel, align 8
  %channel1.i.i27 = getelementptr inbounds %struct.gsi, ptr %14, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i29 = ptrtoint ptr %channel1.i.i27 to i32
  %sub.ptr.sub.i.i30 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i29
  %sub.ptr.div.i.i31 = sdiv exact i32 %sub.ptr.sub.i.i30, 488
  %virt1.i32 = getelementptr inbounds %struct.gsi, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %virt1.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt1.i32, align 4
  %mul.i33 = shl nsw i32 %sub.ptr.div.i.i31, 7
  %add.i34 = add nsw i32 %mul.i33, 114688
  %add.ptr.i35 = getelementptr i8, ptr %16, i32 %add.i34
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %18 = lshr i32 %17, 12
  %div4.i5.i36 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i5.i36)
  %cmp8.not = icmp eq i32 %div4.i5.i36, 1
  br i1 %cmp8.not, label %if.end6.cleanup_crit_edge, label %do.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel, align 8
  %channel1.i37 = getelementptr inbounds %struct.gsi, ptr %20, i32 0, i32 14
  %sub.ptr.rhs.cast.i39 = ptrtoint ptr %channel1.i37 to i32
  %sub.ptr.sub.i40 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i39
  %sub.ptr.div.i41 = sdiv exact i32 %sub.ptr.sub.i40, 488
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %sub.ptr.div.i41, i32 noundef %div4.i5.i36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_channel_program(ptr noundef %channel, i1 noundef zeroext %doorbell) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %mul = shl i32 %1, 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 8
  %channel1.i = getelementptr inbounds %struct.gsi, ptr %3, i32 0, i32 14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %channel1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 488
  %index = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index, align 4
  %version = getelementptr inbounds %struct.gsi, ptr %3, i32 0, i32 1
  %evt_ring_id = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 7
  %5 = ptrtoint ptr %evt_ring_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %evt_ring_id, align 4
  %toward_ipa = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 1
  %7 = ptrtoint ptr %toward_ipa to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %toward_ipa, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %9 = shl i32 %6, 14
  %10 = and i32 %9, 507904
  %or5 = select i1 %tobool.not, i32 268435458, i32 268435466
  %or7 = or i32 %or5, %10
  %virt = getelementptr inbounds %struct.gsi, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  %mul8 = shl nsw i32 %sub.ptr.div.i, 7
  %add = add nsw i32 %mul8, 114688
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or7) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !261
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %15)
  %cmp.i = icmp ult i32 %15, 9
  %.sink.i = select i1 %cmp.i, i32 65520, i32 1048560
  %16 = and i32 %.sink.i, %mul
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt, align 4
  %add13 = add nsw i32 %mul8, 114692
  %add.ptr14 = getelementptr i8, ptr %18, i32 %add13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %19) #7, !srcloc !261
  %addr = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %22 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt, align 4
  %add18 = add nsw i32 %mul8, 114696
  %add.ptr19 = getelementptr i8, ptr %23, i32 %add18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %24) #7, !srcloc !261
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %add25 = add nsw i32 %mul8, 114700
  %add.ptr26 = getelementptr i8, ptr %26, i32 %add25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !261
  %command = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 2
  %27 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %command, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool27.not = icmp eq i8 %28, 0
  %spec.select167 = select i1 %tobool27.not, i32 0, i32 15
  %29 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp = icmp ult i32 %30, 4
  %or37 = or i32 %spec.select167, 512
  %31 = and i1 %cmp, %doorbell
  %val.1 = select i1 %31, i32 %or37, i32 %spec.select167
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp40 = icmp ugt i32 %30, 3
  br i1 %cmp40, label %land.lhs.true42, label %entry.if.end54_crit_edge

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true42:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %command, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool44.not = icmp eq i8 %33, 0
  %or50 = or i32 %val.1, 1024
  %spec.select = select i1 %tobool44.not, i32 %or50, i32 %val.1
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true42, %entry.if.end54_crit_edge
  %val.2 = phi i32 [ %val.1, %entry.if.end54_crit_edge ], [ %spec.select, %land.lhs.true42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp56 = icmp ugt i32 %30, 8
  %or59 = or i32 %val.2, 16777216
  %spec.select145 = select i1 %cmp56, i32 %or59, i32 %val.2
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt, align 4
  %add63 = add nsw i32 %mul8, 114780
  %add.ptr64 = getelementptr i8, ptr %35, i32 %add63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %spec.select145) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %36) #7, !srcloc !261
  %tlv_count.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 14, i32 %sub.ptr.div.i, i32 3
  %37 = ptrtoint ptr %tlv_count.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tlv_count.i, align 2
  %conv.i166 = zext i8 %38 to i32
  %conv67 = shl nuw nsw i32 %conv.i166, 4
  %39 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virt, align 4
  %add70 = add nsw i32 %mul8, 114784
  %add.ptr71 = getelementptr i8, ptr %40, i32 %add70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #7, !srcloc !261
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt, align 4
  %add74 = add nsw i32 %mul8, 114788
  %add.ptr75 = getelementptr i8, ptr %42, i32 %add74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #7, !srcloc !261
  %43 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt, align 4
  %add78 = add nsw i32 %mul8, 114792
  %add.ptr79 = getelementptr i8, ptr %44, i32 %add78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv67) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %45) #7, !srcloc !261
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virt, align 4
  %add82 = add nsw i32 %mul8, 114796
  %add.ptr83 = getelementptr i8, ptr %47, i32 %add82
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %49 = and i32 %48, -65536
  %50 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %virt, align 4
  %add.ptr91 = getelementptr i8, ptr %51, i32 %add82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %49) #7, !srcloc !261
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_channel_trans_cancel_pending(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_channel_suspend(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %call = tail call fastcc i32 @__gsi_channel_stop(ptr noundef %arrayidx, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 15, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 1) #7
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_channel_resume(ptr noundef %gsi, i32 noundef %channel_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %call = tail call fastcc i32 @__gsi_channel_start(ptr noundef %arrayidx, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_suspend(ptr nocapture noundef readonly %gsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 16
  tail call void @disable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_resume(ptr nocapture noundef readonly %gsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 16
  tail call void @enable_irq(i32 noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_channel_tx_queued(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %byte_count1 = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 8
  %0 = ptrtoint ptr %byte_count1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %byte_count1, align 8
  %queued_byte_count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %queued_byte_count to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %queued_byte_count, align 8
  %sub = sub i64 %1, %3
  %conv = trunc i64 %sub to i32
  %trans_count2 = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 9
  %4 = ptrtoint ptr %trans_count2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %trans_count2, align 8
  %queued_trans_count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 11
  %6 = ptrtoint ptr %queued_trans_count to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %queued_trans_count, align 8
  %sub3 = sub i64 %5, %7
  %conv4 = trunc i64 %sub3 to i32
  store i64 %1, ptr %queued_byte_count, align 8
  store i64 %5, ptr %queued_trans_count, align 8
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel, align 8
  %channel1.i = getelementptr inbounds %struct.gsi, ptr %9, i32 0, i32 14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %channel1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 488
  tail call void @ipa_gsi_channel_tx_queued(ptr noundef %9, i32 noundef %sub.ptr.div.i, i32 noundef %conv4, i32 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_gsi_channel_tx_queued(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_channel_doorbell(ptr noundef %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %channel1.i = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %channel1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 488
  %index = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %rem = urem i32 %3, %5
  %addr.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 4
  %mul.i = shl i32 %rem, 4
  %add.i = add i32 %7, %mul.i
  %virt = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %mul = shl nsw i32 %sub.ptr.div.i, 3
  %add = add nsw i32 %mul, 122880
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #7, !srcloc !261
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_modem_channel_flow_control(ptr noundef %gsi, i32 noundef %channel_id, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, i32 3, i32 4
  br i1 %enable, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %version = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  %spec.select = select i1 %cmp, i32 5, i32 0
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %entry.do.body_crit_edge
  %retries.1.ph = phi i32 [ %spec.select, %land.lhs.true ], [ 0, %entry.do.body_crit_edge ]
  %call = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp2 = icmp ne i32 %call, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.1.ph)
  %tobool3.not = icmp eq i32 %retries.1.ph, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.body.do.end_crit_edge, label %do.body.1

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.1:                                        ; preds = %do.body
  %call.1 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.1)
  %cmp2.1.not = icmp eq i32 %call.1, -11
  br i1 %cmp2.1.not, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %call.2 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.2)
  %cmp2.2.not = icmp eq i32 %call.2, -11
  br i1 %cmp2.2.not, label %do.body.3, label %do.body.2.do.end_crit_edge

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %call.3 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.3)
  %cmp2.3.not = icmp eq i32 %call.3, -11
  br i1 %cmp2.3.not, label %do.body.4, label %do.body.3.do.end_crit_edge

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  %call.4 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.4)
  %cmp2.4.not = icmp eq i32 %call.4, -11
  br i1 %cmp2.4.not, label %do.body.5, label %do.body.4.do.end_crit_edge

do.body.4.do.end_crit_edge:                       ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.5:                                        ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %call.5 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %cond)
  br label %do.end

do.end:                                           ; preds = %do.body.5, %do.body.4.do.end_crit_edge, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %do.body.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %do.body.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2.do.end_crit_edge ], [ %call.3, %do.body.3.do.end_crit_edge ], [ %call.4, %do.body.4.do.end_crit_edge ], [ %call.5, %do.body.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %tobool4.not = icmp eq i32 %call.lcssa, 0
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %do.end8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsi, align 128
  %cond10 = select i1 %enable, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call.lcssa, ptr noundef nonnull %cond10, i32 noundef %channel_id) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %do.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %channel_id, i32 noundef %opcode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #7, !srcloc !261
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 128000
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %5 = and i32 %4, 536870911
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 128000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !261
  %8 = and i32 %opcode, 31
  %9 = shl i32 %channel_id, 5
  %10 = and i32 %9, 992
  %or = or i32 %10, %8
  %or8 = or i32 %or, 1024
  %completion1.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 12
  %11 = ptrtoint ptr %completion1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion1.i, align 4
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 127000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or8) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !261
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion1.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 16777216) #7, !srcloc !261
  br i1 %tobool.i.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %result = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 11
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.39, i32 noundef %opcode, i32 noundef %channel_id) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ -110, %do.end ], [ %18, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_setup(ptr noundef %gsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 126976
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 127360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !261
  %type_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %8 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type_enabled_bitmap.i.i, align 4
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !261
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 127128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !261
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 127132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !261
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt, align 4
  %add.ptr6.i = getelementptr i8, ptr %16, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !261
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #7, !srcloc !261
  %version.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 1
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp ugt i32 %20, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %virt_raw.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 2
  %21 = ptrtoint ptr %virt_raw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_raw.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %22, i32 49184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #7, !srcloc !261
  %23 = ptrtoint ptr %virt_raw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt_raw.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %24, i32 49188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #7, !srcloc !261
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %add.ptr13.i = getelementptr i8, ptr %26, i32 127264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #7, !srcloc !261
  %irq.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 4
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i, align 16
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef nonnull @gsi_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %gsi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %29 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gsi, align 128
  br i1 %tobool.not.i, label %if.end4, label %gsi_irq_setup.exit

gsi_irq_setup.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.41, i32 noundef %call.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %31 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i27 = icmp ult i32 %32, 3
  br i1 %cmp.i27, label %if.then.i28, label %if.end.i32

if.then.i28:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %channel_count.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 5
  %33 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 23, ptr %channel_count.i, align 4
  br label %if.end8

if.end.i32:                                       ; preds = %if.end4
  %34 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt, align 4
  %add.ptr.i30 = getelementptr i8, ptr %35, i32 127040
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #7, !srcloc !262
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %div4.i4749.i = lshr i32 %37, 3
  %div4.i.zext.i = and i32 %div4.i4749.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i.zext.i)
  %tobool.not.i31 = icmp eq i32 %div4.i.zext.i, 0
  br i1 %tobool.not.i31, label %do.end.i33, label %if.end4.i

do.end.i33:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.66) #10
  br label %err_irq_teardown

if.end4.i:                                        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %div4.i.zext.i)
  %cmp5.i = icmp ugt i32 %div4.i.zext.i, 23
  br i1 %cmp5.i, label %do.end9.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.69, i32 noundef 23, i32 noundef %div4.i.zext.i) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end9.i, %if.end4.i.if.end10.i_crit_edge
  %count.0.i = phi i32 [ 23, %do.end9.i ], [ %div4.i.zext.i, %if.end4.i.if.end10.i_crit_edge ]
  %channel_count11.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 5
  %38 = ptrtoint ptr %channel_count11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %count.0.i, ptr %channel_count11.i, align 4
  %div4.i46.lhs.trunc.i = lshr i32 %37, 8
  %div4.i464850.i = and i32 %div4.i46.lhs.trunc.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i464850.i)
  %tobool13.not.i = icmp eq i32 %div4.i464850.i, 0
  br i1 %tobool13.not.i, label %do.end17.i, label %if.end18.i

do.end17.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.73) #10
  br label %err_irq_teardown

if.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %div4.i464850.i)
  %cmp19.i = icmp ugt i32 %div4.i464850.i, 24
  br i1 %cmp19.i, label %do.end23.i, label %if.end18.i.if.end8_crit_edge

if.end18.i.if.end8_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end23.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.76, i32 noundef 24, i32 noundef %div4.i464850.i) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end23.i, %if.end18.i.if.end8_crit_edge, %if.then.i28
  %.sink = phi i32 [ 24, %if.then.i28 ], [ 24, %do.end23.i ], [ %div4.i464850.i, %if.end18.i.if.end8_crit_edge ]
  %evt_ring_count.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 6
  %39 = ptrtoint ptr %evt_ring_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %evt_ring_count.i, align 8
  %40 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virt, align 4
  %add.ptr10 = getelementptr i8, ptr %41, i32 127488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #7, !srcloc !261
  %42 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virt, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %43, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 16777216) #7, !srcloc !261
  %44 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or.i.i = or i32 %45, 4
  store i32 %or.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %46 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %virt, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %48) #7, !srcloc !261
  %49 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virt, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %50, i32 127264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 234881024) #7, !srcloc !261
  %51 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or6.i.i = or i32 %52, 64
  store i32 %or6.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %53 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %54, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or6.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 %55) #7, !srcloc !261
  %mutex.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  %dummy_dev12.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 16
  %channel_count.i36 = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end8
  %channel_id.0.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.0.i
  %evt_ring_id2.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.0.i, i32 7
  %56 = ptrtoint ptr %evt_ring_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %evt_ring_id2.i.i, align 4
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.i.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.i.not.i.i, label %do.body.i.do.cond.i_crit_edge, label %if.end.i.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

if.end.i.i:                                       ; preds = %do.body.i
  %60 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %virt, align 4
  %mul.i.i.i.i = shl i32 %57, 7
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 118784
  %add.ptr.i.i.i.i = getelementptr i8, ptr %61, i32 %add.i.i.i.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %63 = lshr i32 %62, 12
  %div4.i2.i.i.i.i = and i32 %63, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i2.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %div4.i2.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.80, i32 noundef %57, i32 noundef %div4.i2.i.i.i.i) #10
  br label %err_unwind.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  tail call fastcc void @gsi_evt_ring_command(ptr noundef %gsi, i32 noundef %57, i32 noundef 0) #7
  %66 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virt, align 4
  %add.ptr.i23.i.i.i = getelementptr i8, ptr %67, i32 %add.i.i.i.i
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %69 = lshr i32 %68, 12
  %div4.i2.i24.i.i.i = and i32 %69, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i2.i24.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %div4.i2.i24.i.i.i, 1
  br i1 %cmp2.i.i.i, label %if.end5.i.i, label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.83, i32 noundef %57, i32 noundef %div4.i2.i24.i.i.i) #10
  br label %err_unwind.i

if.end5.i.i:                                      ; preds = %if.end.i.i.i
  %count.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %57, i32 1, i32 2
  %72 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count.i.i.i, align 4
  %mul.i.i.i = shl i32 %73, 4
  %74 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %virt, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %75, i32 %add.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i73.i, i32 33554704) #7, !srcloc !261
  %76 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %77)
  %cmp.i.i.i.i = icmp ult i32 %77, 9
  %. = select i1 %cmp.i.i.i.i, i32 65520, i32 1048560
  %78 = and i32 %., %mul.i.i.i
  %79 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %virt, align 4
  %add8.i.i.i = add i32 %mul.i.i.i.i, 118788
  %add.ptr9.i.i.i = getelementptr i8, ptr %80, i32 %add8.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %81) #7, !srcloc !261
  %addr.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %57, i32 1, i32 1
  %82 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i.i, align 4
  %84 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %virt, align 4
  %add13.i.i.i = add i32 %mul.i.i.i.i, 118792
  %add.ptr14.i.i.i = getelementptr i8, ptr %85, i32 %add13.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i.i, i32 %86) #7, !srcloc !261
  %87 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %virt, align 4
  %add20.i.i.i = add i32 %mul.i.i.i.i, 118796
  %add.ptr21.i.i.i = getelementptr i8, ptr %88, i32 %add20.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i, i32 0) #7, !srcloc !261
  %89 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %virt, align 4
  %add27.i.i.i = add i32 %mul.i.i.i.i, 118816
  %add.ptr28.i.i.i = getelementptr i8, ptr %90, i32 %add27.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i.i, i32 536871168) #7, !srcloc !261
  %91 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %virt, align 4
  %add31.i.i.i = add i32 %mul.i.i.i.i, 118820
  %add.ptr32.i.i.i = getelementptr i8, ptr %92, i32 %add31.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i.i, i32 0) #7, !srcloc !261
  %93 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %virt, align 4
  %add35.i.i.i = add i32 %mul.i.i.i.i, 118824
  %add.ptr36.i.i.i = getelementptr i8, ptr %94, i32 %add35.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i.i.i, i32 0) #7, !srcloc !261
  %95 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %virt, align 4
  %add39.i.i.i = add i32 %mul.i.i.i.i, 118828
  %add.ptr40.i.i.i = getelementptr i8, ptr %96, i32 %add39.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i.i, i32 0) #7, !srcloc !261
  %97 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %virt, align 4
  %add43.i.i.i = add i32 %mul.i.i.i.i, 118832
  %add.ptr44.i.i.i = getelementptr i8, ptr %98, i32 %add43.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i.i, i32 0) #7, !srcloc !261
  %99 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %virt, align 4
  %add47.i.i.i = add i32 %mul.i.i.i.i, 118836
  %add.ptr48.i.i.i = getelementptr i8, ptr %100, i32 %add47.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i.i.i, i32 0) #7, !srcloc !261
  %index2.i.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %57, i32 1, i32 3
  %101 = ptrtoint ptr %index2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %index2.i.i.i.i, align 4
  %102 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count.i.i.i, align 4
  %rem.i.i.i.i = urem i32 -1, %103
  %104 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %addr.i.i.i, align 4
  %mul.i.i.i.i.i = shl i32 %rem.i.i.i.i, 4
  %add.i.i.i.i.i = add i32 %105, %mul.i.i.i.i.i
  %106 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %virt, align 4
  %mul.i90.i.i.i = shl i32 %57, 3
  %add.i.i34.i.i = add i32 %mul.i90.i.i.i, 123136
  %add.ptr.i.i35.i.i = getelementptr i8, ptr %107, i32 %add.i.i34.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i.i, i32 %108) #7, !srcloc !261
  %109 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %gsi, align 128
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i, align 8
  %channel1.i.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %112, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %arrayidx.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %channel1.i.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.ptr.div.i.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i.i, 488
  %virt1.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %virt1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %virt1.i.i.i.i, align 4
  %mul.i.i36.i.i = shl nsw i32 %sub.ptr.div.i.i.i.i.i, 7
  %add.i.i37.i.i = add nsw i32 %mul.i.i36.i.i, 114688
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %114, i32 %add.i.i37.i.i
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %116 = lshr i32 %115, 12
  %div4.i5.i.i.i.i = and i32 %116, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i5.i.i.i.i)
  %cmp.not.i39.i.i = icmp eq i32 %div4.i5.i.i.i.i, 0
  br i1 %cmp.not.i39.i.i, label %if.end.i41.i.i, label %do.end.i40.i.i

do.end.i40.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.87, i32 noundef %channel_id.0.i, i32 noundef %div4.i5.i.i.i.i) #10
  br label %err_evt_ring_de_alloc.i.i

if.end.i41.i.i:                                   ; preds = %if.end5.i.i
  tail call fastcc void @gsi_channel_command(ptr noundef %arrayidx.i.i, i32 noundef 0) #7
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i, align 8
  %channel1.i.i21.i.i.i = getelementptr inbounds %struct.gsi, ptr %118, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i23.i.i.i = ptrtoint ptr %channel1.i.i21.i.i.i to i32
  %sub.ptr.sub.i.i24.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i23.i.i.i
  %sub.ptr.div.i.i25.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i24.i.i.i, 488
  %virt1.i26.i.i.i = getelementptr inbounds %struct.gsi, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %virt1.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %virt1.i26.i.i.i, align 4
  %mul.i27.i.i.i = shl nsw i32 %sub.ptr.div.i.i25.i.i.i, 7
  %add.i28.i.i.i = add nsw i32 %mul.i27.i.i.i, 114688
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %120, i32 %add.i28.i.i.i
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %122 = lshr i32 %121, 12
  %div4.i5.i30.i.i.i = and i32 %122, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i5.i30.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %div4.i5.i30.i.i.i, 1
  br i1 %cmp4.i.i.i, label %if.end9.i.i, label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end.i41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.90, i32 noundef %channel_id.0.i, i32 noundef %div4.i5.i30.i.i.i) #10
  br label %err_evt_ring_de_alloc.i.i

if.end9.i.i:                                      ; preds = %if.end.i41.i.i
  tail call fastcc void @gsi_channel_program(ptr noundef %arrayidx.i.i, i1 noundef zeroext true) #7
  %toward_ipa.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.0.i, i32 1
  %123 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %toward_ipa.i.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool10.not.i.i = icmp eq i8 %124, 0
  %napi13.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.0.i, i32 15
  br i1 %tobool10.not.i.i, label %if.end9.i.i.do.cond.sink.split.i_crit_edge, label %if.then11.i.i

if.end9.i.i.do.cond.sink.split.i_crit_edge:       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.sink.split.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %state.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.0.i, i32 15, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i.i.i) #7
  br label %do.cond.sink.split.i

err_evt_ring_de_alloc.i.i:                        ; preds = %do.end9.i.i.i, %do.end.i40.i.i
  %retval.0.i42.ph.i.i = phi i32 [ -5, %do.end9.i.i.i ], [ -22, %do.end.i40.i.i ]
  %125 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %virt, align 4
  %add.ptr.i.i46.i.i = getelementptr i8, ptr %126, i32 %add.i.i.i.i
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %128 = lshr i32 %127, 12
  %div4.i2.i.i47.i.i = and i32 %128, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i2.i.i47.i.i)
  %cmp.not.i48.i.i = icmp eq i32 %div4.i2.i.i47.i.i, 1
  br i1 %cmp.not.i48.i.i, label %if.end.i53.i.i, label %do.end.i49.i.i

do.end.i49.i.i:                                   ; preds = %err_evt_ring_de_alloc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.92, i32 noundef %57, i32 noundef %div4.i2.i.i47.i.i) #10
  br label %err_unwind.i

if.end.i53.i.i:                                   ; preds = %err_evt_ring_de_alloc.i.i
  tail call fastcc void @gsi_evt_ring_command(ptr noundef %gsi, i32 noundef %57, i32 noundef 10) #7
  %131 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %virt, align 4
  %add.ptr.i23.i50.i.i = getelementptr i8, ptr %132, i32 %add.i.i.i.i
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i50.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %134 = lshr i32 %133, 12
  %div4.i2.i24.i51.i.i = and i32 %134, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i2.i24.i51.i.i)
  %cmp2.i52.i.i = icmp eq i32 %div4.i2.i24.i51.i.i, 0
  br i1 %cmp2.i52.i.i, label %if.end.i53.i.i.err_unwind.i_crit_edge, label %do.end7.i54.i.i

if.end.i53.i.i.err_unwind.i_crit_edge:            ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unwind.i

do.end7.i54.i.i:                                  ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.95, i32 noundef %57, i32 noundef %div4.i2.i24.i51.i.i) #10
  br label %err_unwind.i

do.cond.sink.split.i:                             ; preds = %if.then11.i.i, %if.end9.i.i.do.cond.sink.split.i_crit_edge
  tail call void @netif_napi_add(ptr noundef %dummy_dev12.i.i, ptr noundef %napi13.i.i, ptr noundef nonnull @gsi_channel_poll, i32 noundef 64) #7
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.cond.sink.split.i, %do.body.i.do.cond.i_crit_edge
  %inc.i = add nuw i32 %channel_id.0.i, 1
  %137 = ptrtoint ptr %channel_count.i36 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %channel_count.i36, align 4
  %cmp.i37 = icmp ult i32 %inc.i, %138
  br i1 %cmp.i37, label %do.cond.i.do.body.i_crit_edge, label %while.cond.preheader.i

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

while.cond.preheader.i:                           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %channel_id.0.i)
  %cmp1108.i = icmp ult i32 %channel_id.0.i, 22
  br i1 %cmp1108.i, label %while.body.preheader.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %inc.i, i32 22) #7
  %139 = add nuw nsw i32 %umax.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %channel_id.1109.i = phi i32 [ %inc3.i, %cleanup.i.while.body.i_crit_edge ], [ %inc.i, %while.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id.1109.i
  %140 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i, align 8
  %tobool.i.not.i = icmp eq ptr %141, null
  br i1 %tobool.i.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.78, i32 noundef %channel_id.1109.i) #10
  %144 = ptrtoint ptr %channel_count.i36 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %channel_count.i36, align 4
  br label %err_unwind.i

cleanup.i:                                        ; preds = %while.body.i
  %inc3.i = add i32 %channel_id.1109.i, 1
  %exitcond.not.i = icmp eq i32 %channel_id.1109.i, %umax.i
  br i1 %exitcond.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %channel_id.1.lcssa.i = phi i32 [ %inc.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %139, %cleanup.i.while.end.i_crit_edge ]
  %modem_channel_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 8
  %146 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %modem_channel_bitmap.i, align 32
  br label %while.cond11.i

while.cond11.i:                                   ; preds = %while.body13.i.while.cond11.i_crit_edge, %while.end.i
  %mask.0.i = phi i32 [ %147, %while.end.i ], [ %xor.i, %while.body13.i.while.cond11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.i)
  %tobool12.not.i = icmp eq i32 %mask.0.i, 0
  br i1 %tobool12.not.i, label %gsi_channel_setup.exit.thread, label %while.body13.i

while.body13.i:                                   ; preds = %while.cond11.i
  %148 = tail call i32 @llvm.cttz.i32(i32 %mask.0.i, i1 true) #7, !range !268
  %call.i.i38 = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %148, i32 noundef 2) #7
  %tobool16.not.i = icmp eq i32 %call.i.i38, 0
  %shl.i = shl nuw i32 1, %148
  %xor.i = xor i32 %shl.i, %mask.0.i
  br i1 %tobool16.not.i, label %while.body13.i.while.cond11.i_crit_edge, label %err_unwind_modem.i

while.body13.i.while.cond11.i_crit_edge:          ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond11.i

gsi_channel_setup.exit.thread:                    ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  br label %cleanup

err_unwind_modem.i:                               ; preds = %while.body13.i
  %149 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %modem_channel_bitmap.i, align 32
  %xor24.i = xor i32 %150, %mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor24.i)
  %tobool26.not110.i = icmp eq i32 %xor24.i, 0
  br i1 %tobool26.not110.i, label %err_unwind_modem.i.while.body34.i.preheader_crit_edge, label %err_unwind_modem.i.while.body27.i_crit_edge

err_unwind_modem.i.while.body27.i_crit_edge:      ; preds = %err_unwind_modem.i
  br label %while.body27.i

err_unwind_modem.i.while.body34.i.preheader_crit_edge: ; preds = %err_unwind_modem.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body34.i.preheader

while.body27.i:                                   ; preds = %gsi_modem_channel_halt.exit.i.while.body27.i_crit_edge, %err_unwind_modem.i.while.body27.i_crit_edge
  %mask.2111.i = phi i32 [ %xor30.i, %gsi_modem_channel_halt.exit.i.while.body27.i_crit_edge ], [ %xor24.i, %err_unwind_modem.i.while.body27.i_crit_edge ]
  %151 = tail call i32 @llvm.ctlz.i32(i32 %mask.2111.i, i1 true) #7, !range !268
  %sub.i.i = xor i32 %151, 31
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %while.body27.i
  %retries.0.i.i = phi i32 [ 10, %while.body27.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %call.i74.i = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %sub.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i74.i)
  %cmp.i.i = icmp ne i32 %call.i74.i, -11
  %dec.i.i = add nsw i32 %retries.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0.i.i)
  %tobool.not.i.i = icmp eq i32 %retries.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %shl29.i = shl nuw i32 1, %sub.i.i
  %xor30.i = xor i32 %shl29.i, %mask.2111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool1.not.i.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge, label %do.end4.i.i

do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_modem_channel_halt.exit.i

do.end4.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.97, i32 noundef %call.i74.i, i32 noundef %sub.i.i) #10
  br label %gsi_modem_channel_halt.exit.i

gsi_modem_channel_halt.exit.i:                    ; preds = %do.end4.i.i, %do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge
  %tobool26.not.i = icmp eq i32 %xor30.i, 0
  br i1 %tobool26.not.i, label %gsi_modem_channel_halt.exit.i.err_unwind.i_crit_edge, label %gsi_modem_channel_halt.exit.i.while.body27.i_crit_edge

gsi_modem_channel_halt.exit.i.while.body27.i_crit_edge: ; preds = %gsi_modem_channel_halt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27.i

gsi_modem_channel_halt.exit.i.err_unwind.i_crit_edge: ; preds = %gsi_modem_channel_halt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unwind.i

err_unwind.i:                                     ; preds = %gsi_modem_channel_halt.exit.i.err_unwind.i_crit_edge, %cleanup.thread.i, %do.end7.i54.i.i, %if.end.i53.i.i.err_unwind.i_crit_edge, %do.end.i49.i.i, %do.end7.i.i.i, %do.end.i.i.i
  %channel_id.4.i = phi i32 [ %145, %cleanup.thread.i ], [ %channel_id.0.i, %do.end.i49.i.i ], [ %channel_id.0.i, %if.end.i53.i.i.err_unwind.i_crit_edge ], [ %channel_id.0.i, %do.end7.i54.i.i ], [ %channel_id.0.i, %do.end7.i.i.i ], [ %channel_id.0.i, %do.end.i.i.i ], [ %sub.i.i, %gsi_modem_channel_halt.exit.i.err_unwind.i_crit_edge ]
  %ret.2.i = phi i32 [ -22, %cleanup.thread.i ], [ %retval.0.i42.ph.i.i, %do.end.i49.i.i ], [ %retval.0.i42.ph.i.i, %if.end.i53.i.i.err_unwind.i_crit_edge ], [ %retval.0.i42.ph.i.i, %do.end7.i54.i.i ], [ -5, %do.end7.i.i.i ], [ -22, %do.end.i.i.i ], [ %call.i.i38, %gsi_modem_channel_halt.exit.i.err_unwind.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel_id.4.i)
  %tobool33.not113.i = icmp eq i32 %channel_id.4.i, 0
  br i1 %tobool33.not113.i, label %err_unwind.i.gsi_channel_setup.exit_crit_edge, label %err_unwind.i.while.body34.i.preheader_crit_edge

err_unwind.i.while.body34.i.preheader_crit_edge:  ; preds = %err_unwind.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body34.i.preheader

err_unwind.i.gsi_channel_setup.exit_crit_edge:    ; preds = %err_unwind.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_setup.exit

while.body34.i.preheader:                         ; preds = %err_unwind.i.while.body34.i.preheader_crit_edge, %err_unwind_modem.i.while.body34.i.preheader_crit_edge
  %ret.2.i95 = phi i32 [ %ret.2.i, %err_unwind.i.while.body34.i.preheader_crit_edge ], [ %call.i.i38, %err_unwind_modem.i.while.body34.i.preheader_crit_edge ]
  %channel_id.4.i94 = phi i32 [ %channel_id.4.i, %err_unwind.i.while.body34.i.preheader_crit_edge ], [ %channel_id.1.lcssa.i, %err_unwind_modem.i.while.body34.i.preheader_crit_edge ]
  br label %while.body34.i

while.body34.i:                                   ; preds = %while.body34.i.while.body34.i_crit_edge, %while.body34.i.preheader
  %channel_id.5114.i = phi i32 [ %dec.i, %while.body34.i.while.body34.i_crit_edge ], [ %channel_id.4.i94, %while.body34.i.preheader ]
  %dec.i = add i32 %channel_id.5114.i, -1
  tail call fastcc void @gsi_channel_teardown_one(ptr noundef %gsi, i32 noundef %dec.i) #7
  %tobool33.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool33.not.i, label %while.body34.i.gsi_channel_setup.exit_crit_edge, label %while.body34.i.while.body34.i_crit_edge

while.body34.i.while.body34.i_crit_edge:          ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body34.i

while.body34.i.gsi_channel_setup.exit_crit_edge:  ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_setup.exit

gsi_channel_setup.exit:                           ; preds = %while.body34.i.gsi_channel_setup.exit_crit_edge, %err_unwind.i.gsi_channel_setup.exit_crit_edge
  %ret.2.i96 = phi i32 [ %ret.2.i, %err_unwind.i.gsi_channel_setup.exit_crit_edge ], [ %ret.2.i95, %while.body34.i.gsi_channel_setup.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  %154 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %type_enabled_bitmap.i.i, align 4
  %155 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %virt, align 4
  %add.ptr.i.i76.i = getelementptr i8, ptr %156, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i76.i, i32 0) #7, !srcloc !261
  %157 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %virt, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %158, i32 127264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #7, !srcloc !261
  %159 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %virt, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %160, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #7, !srcloc !261
  br label %err_irq_teardown

err_irq_teardown:                                 ; preds = %gsi_channel_setup.exit, %do.end17.i, %do.end.i33
  %ret.0 = phi i32 [ %ret.2.i96, %gsi_channel_setup.exit ], [ -22, %do.end17.i ], [ -22, %do.end.i33 ]
  %161 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %irq.i, align 16
  %call.i = tail call ptr @free_irq(i32 noundef %162, ptr noundef %gsi) #7
  br label %cleanup

cleanup:                                          ; preds = %err_irq_teardown, %gsi_channel_setup.exit.thread, %gsi_irq_setup.exit, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_irq_teardown ], [ -5, %do.end ], [ %call.i.i, %gsi_irq_setup.exit ], [ 0, %gsi_channel_setup.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_teardown(ptr noundef %gsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_channel_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 8
  %0 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %modem_channel_bitmap.i, align 32
  %mutex.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not14.i = icmp eq i32 %1, 0
  br i1 %tobool.not14.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %gsi_modem_channel_halt.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %mask.015.i = phi i32 [ %xor.i, %gsi_modem_channel_halt.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %2 = tail call i32 @llvm.ctlz.i32(i32 %mask.015.i, i1 true) #7, !range !268
  %sub.i.i = xor i32 %2, 31
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %while.body.i
  %retries.0.i.i = phi i32 [ 10, %while.body.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %call.i.i = tail call fastcc i32 @gsi_generic_command(ptr noundef %gsi, i32 noundef %sub.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, -11
  %dec.i.i = add nsw i32 %retries.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0.i.i)
  %tobool.not.i.i = icmp eq i32 %retries.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %shl.i = shl nuw i32 1, %sub.i.i
  %xor.i = xor i32 %shl.i, %mask.015.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge, label %do.end4.i.i

do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_modem_channel_halt.exit.i

do.end4.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.97, i32 noundef %call.i.i, i32 noundef %sub.i.i) #10
  br label %gsi_modem_channel_halt.exit.i

gsi_modem_channel_halt.exit.i:                    ; preds = %do.end4.i.i, %do.end.i.i.gsi_modem_channel_halt.exit.i_crit_edge
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %gsi_modem_channel_halt.exit.i.while.end.i_crit_edge, label %gsi_modem_channel_halt.exit.i.while.body.i_crit_edge

gsi_modem_channel_halt.exit.i.while.body.i_crit_edge: ; preds = %gsi_modem_channel_halt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

gsi_modem_channel_halt.exit.i.while.end.i_crit_edge: ; preds = %gsi_modem_channel_halt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %gsi_modem_channel_halt.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %channel_count.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 5
  %5 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel_count.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.end.i
  %channel_id.0.in.i = phi i32 [ %6, %while.end.i ], [ %channel_id.0.i, %do.body.i.do.body.i_crit_edge ]
  %channel_id.0.i = add i32 %channel_id.0.in.i, -1
  tail call fastcc void @gsi_channel_teardown_one(ptr noundef %gsi, i32 noundef %channel_id.0.i) #7
  %tobool1.not.i = icmp eq i32 %channel_id.0.i, 0
  br i1 %tobool1.not.i, label %gsi_channel_teardown.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

gsi_channel_teardown.exit:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mutex.i) #7
  %type_enabled_bitmap.i.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %7 = ptrtoint ptr %type_enabled_bitmap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type_enabled_bitmap.i.i.i, align 4
  %virt.i.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %8 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !261
  %10 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 127264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !261
  %12 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 127240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #7, !srcloc !261
  %irq.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 4
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 16
  %call.i = tail call ptr @free_irq(i32 noundef %15, ptr noundef %gsi) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gsi_init(ptr noundef %gsi, ptr noundef %pdev, i32 noundef %version, i32 noundef %count, ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  %addr.i.i.i = alloca i32, align 4
  %addr.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %gsi, align 128
  %version3 = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 1
  %1 = ptrtoint ptr %version3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %version, ptr %version3, align 4
  %dummy_dev = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 16
  %call = tail call i32 @init_dummy_netdev(ptr noundef %dummy_dev) #7
  %call4 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.9) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call4, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %sub = xor i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp7 = icmp ugt i32 %add.i, %sub
  br i1 %cmp7, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %6 = ptrtoint ptr %version3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp14 = icmp ult i32 %7, 7
  %cond.neg = select i1 %cmp14, i32 0, i32 -53248
  %cond = select i1 %cmp14, i32 0, i32 53248
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp16 = icmp ult i32 %5, %cond
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %cond) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %add.i) #7
  %virt_raw = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 2
  %8 = ptrtoint ptr %virt_raw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %virt_raw, align 8
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %add.ptr = getelementptr i8, ptr %call23, i32 %cond.neg
  %virt = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %virt, align 4
  %completion = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 12
  %10 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @init_completion.__key) #7
  %call.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end35

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not.i, i32 -22, i32 %call.i
  br label %err_iounmap

if.end35:                                         ; preds = %if.end30
  %irq.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 4
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %irq.i, align 16
  %12 = ptrtoint ptr %version3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %version3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i76 = icmp eq i32 %13, 6
  %event_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 7
  %14 = ptrtoint ptr %event_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -16647168, ptr %event_bitmap.i, align 4
  %ieob_enabled_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 10
  %15 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ieob_enabled_bitmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1194.not.i = icmp eq i32 %count, 0
  br i1 %cmp1194.not.i, label %if.end35.do.body40_crit_edge, label %for.body.lr.ph.i

if.end35.do.body40_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

for.body.lr.ph.i:                                 ; preds = %if.end35
  %modem_channel_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0195.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0195.i)
  %cmp2.i = icmp eq i32 %i.0195.i, 0
  %arrayidx.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i
  %call4.i = call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx.i) #7
  br i1 %call4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i77

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i77:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp6.i = icmp eq i8 %17, 1
  br i1 %cmp6.i, label %if.then8.i, label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i77
  br i1 %cmp.i76, label %if.then9.i, label %if.then8.i.for.inc.i_crit_edge

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel_id.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 1
  %18 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %channel_id.i, align 1
  %conv11.i = zext i8 %19 to i32
  %shl.i = shl nuw i32 1, %conv11.i
  %20 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %modem_channel_bitmap.i, align 32
  %or.i = or i32 %shl.i, %21
  store i32 %or.i, ptr %modem_channel_bitmap.i, align 32
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end.i77
  %frombool.i.i = zext i1 %cmp2.i to i8
  %channel_id1.i.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 1
  %22 = ptrtoint ptr %channel_id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %channel_id1.i.i.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gsi, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %23)
  %cmp.i.i.i = icmp ugt i8 %23, 22
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end13.i
  %conv.i.i.i.le491 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.115, i32 noundef %conv.i.i.i.le491, i32 noundef 23) #10
  br i1 %cmp2.i, label %do.end.i.i.i.err_iounmap_crit_edge, label %do.end.i.i.i.while.body.lr.ph.i_crit_edge

do.end.i.i.i.while.body.lr.ph.i_crit_edge:        ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end.i.i.i.err_iounmap_crit_edge:               ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch.i.i.i = icmp ult i8 %17, 2
  br i1 %switch.i.i.i, label %if.end17.i.i.i, label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %conv4.i.i.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.118, i32 noundef %conv4.i.i.i) #10
  br i1 %cmp2.i, label %do.end14.i.i.i.err_iounmap_crit_edge, label %do.end14.i.i.i.while.body.lr.ph.i_crit_edge

do.end14.i.i.i.while.body.lr.ph.i_crit_edge:      ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end14.i.i.i.err_iounmap_crit_edge:             ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  %channel.i.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 4
  %tlv_count.i.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 4, i32 2
  %26 = ptrtoint ptr %tlv_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tlv_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i.i, label %if.end17.i.i.i.do.end26.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end17.i.i.i.do.end26.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %27)
  %cmp21.i.i.i = icmp ugt i8 %27, 64
  %conv20.i.i.le.i = zext i8 %27 to i32
  br i1 %cmp21.i.i.i, label %do.end26.i.i.i.split.loop.exit835, label %if.end30.i.i.i

do.end26.i.i.i.split.loop.exit835:                ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i.i.le.i.le = zext i8 %27 to i32
  br label %do.end26.i.i.i

do.end26.i.i.i:                                   ; preds = %do.end26.i.i.i.split.loop.exit835, %if.end17.i.i.i.do.end26.i.i.i_crit_edge
  %conv29.pre-phi.i.i.i = phi i32 [ %conv20.i.i.le.i.le, %do.end26.i.i.i.split.loop.exit835 ], [ 0, %if.end17.i.i.i.do.end26.i.i.i_crit_edge ]
  %conv.i.i.i390 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.121, i32 noundef %conv.i.i.i390, i32 noundef %conv29.pre-phi.i.i.i, i32 noundef 64) #10
  br i1 %cmp2.i, label %do.end26.i.i.i.err_iounmap_crit_edge, label %do.end26.i.i.i.while.body.lr.ph.i_crit_edge

do.end26.i.i.i.while.body.lr.ph.i_crit_edge:      ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end26.i.i.i.err_iounmap_crit_edge:             ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end30.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %28 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %channel.i.i.i, align 4
  %conv32.i.i.i = zext i16 %29 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv20.i.i.le.i, 1
  %sub.i.i.i = add nsw i32 %mul.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv32.i.i.i)
  %cmp36.i.i.i = icmp ugt i32 %sub.i.i.i, %conv32.i.i.i
  br i1 %cmp36.i.i.i, label %do.end41.i.i.i, label %if.end48.i.i.i

do.end41.i.i.i:                                   ; preds = %if.end30.i.i.i
  %conv.i.i.i.le485 = zext i8 %23 to i32
  %conv20.i.i.i.le = zext i8 %27 to i32
  %conv32.i.i.i.le479 = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.124, i32 noundef %conv.i.i.i.le485, i32 noundef %conv20.i.i.i.le, i32 noundef %conv32.i.i.i.le479) #10
  br i1 %cmp2.i, label %do.end41.i.i.i.err_iounmap_crit_edge, label %do.end41.i.i.i.while.body.lr.ph.i_crit_edge

do.end41.i.i.i.while.body.lr.ph.i_crit_edge:      ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end41.i.i.i.err_iounmap_crit_edge:             ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end48.i.i.i:                                   ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i.i.i.i = icmp ne i16 %29, 0
  %30 = call i32 @llvm.ctpop.i32(i32 %conv32.i.i.i) #7, !range !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp1.i.i.i.i = icmp ult i32 %30, 2
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i.i, %cmp1.i.i.i.i
  br i1 %or.cond.i.i.i, label %if.end59.i.i.i, label %do.end55.i.i.i

do.end55.i.i.i:                                   ; preds = %if.end48.i.i.i
  %conv.i.i.i.le483 = zext i8 %23 to i32
  %conv32.i.i.i.le = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.127, i32 noundef %conv.i.i.i.le483, i32 noundef %conv32.i.i.i.le) #10
  br i1 %cmp2.i, label %do.end55.i.i.i.err_iounmap_crit_edge, label %do.end55.i.i.i.while.body.lr.ph.i_crit_edge

do.end55.i.i.i.while.body.lr.ph.i_crit_edge:      ; preds = %do.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end55.i.i.i.err_iounmap_crit_edge:             ; preds = %do.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end59.i.i.i:                                   ; preds = %if.end48.i.i.i
  %event_count.i.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 4, i32 1
  %31 = ptrtoint ptr %event_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %event_count.i.i.i, align 2
  %conv61.i.i.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp.not.i96.i.i.i = icmp ne i16 %32, 0
  %33 = call i32 @llvm.ctpop.i32(i32 %conv61.i.i.i) #7, !range !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp1.i97.i.i.i = icmp ult i32 %33, 2
  %or.cond100.i.i.i = and i1 %cmp.not.i96.i.i.i, %cmp1.i97.i.i.i
  br i1 %or.cond100.i.i.i, label %if.end.i.i, label %do.end66.i.i.i

do.end66.i.i.i:                                   ; preds = %if.end59.i.i.i
  %conv.i.i.i.le = zext i8 %23 to i32
  %conv61.i.i.i.le = zext i16 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.130, i32 noundef %conv.i.i.i.le, i32 noundef %conv61.i.i.i.le) #10
  br i1 %cmp2.i, label %do.end66.i.i.i.err_iounmap_crit_edge, label %do.end66.i.i.i.while.body.lr.ph.i_crit_edge

do.end66.i.i.i.while.body.lr.ph.i_crit_edge:      ; preds = %do.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

do.end66.i.i.i.err_iounmap_crit_edge:             ; preds = %do.end66.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end.i.i:                                       ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %32)
  %cmp.i.i = icmp ugt i16 %29, %32
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.110, i32 noundef %conv.i.i.i, i32 noundef %conv61.i.i.i) #10
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %tre_count.0.i.i = phi i16 [ %32, %if.then6.i.i ], [ %29, %if.end.i.i.if.end14.i.i_crit_edge ]
  %34 = ptrtoint ptr %channel_id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %channel_id1.i.i.i, align 1
  %idxprom.i.i = zext i8 %35 to i32
  %arrayidx.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i
  %36 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 488)
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %gsi, ptr %arrayidx.i.i, align 8
  %toward_ipa.i.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %i.0195.i, i32 3
  %38 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %toward_ipa.i.i, align 1, !range !264
  %toward_ipa18.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 1
  %40 = ptrtoint ptr %toward_ipa18.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %toward_ipa18.i.i, align 4
  %command21.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 2
  %41 = ptrtoint ptr %command21.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool.i.i, ptr %command21.i.i, align 1
  %42 = ptrtoint ptr %tlv_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tlv_count.i.i.i, align 4
  %tlv_count24.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 3
  %44 = ptrtoint ptr %tlv_count24.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tlv_count24.i.i, align 2
  %tre_count26.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 4
  %45 = ptrtoint ptr %tre_count26.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %tre_count.0.i.i, ptr %tre_count26.i.i, align 8
  %46 = ptrtoint ptr %event_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %event_count.i.i.i, align 2
  %event_count29.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 5
  %48 = ptrtoint ptr %event_count29.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %event_count29.i.i, align 2
  %49 = ptrtoint ptr %event_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %event_bitmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %50, -1
  br i1 %cmp.i.i.i.i, label %gsi_evt_ring_id_alloc.exit.thread.i.i.i, label %if.end.i110.i.i

gsi_evt_ring_id_alloc.exit.thread.i.i.i:          ; preds = %if.end14.i.i
  %51 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gsi, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.134) #10
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.i.i, align 8
  br i1 %cmp2.i, label %gsi_evt_ring_id_alloc.exit.thread.i.i.i.err_iounmap_crit_edge, label %gsi_evt_ring_id_alloc.exit.thread.i.i.i.while.body.lr.ph.i_crit_edge

gsi_evt_ring_id_alloc.exit.thread.i.i.i.while.body.lr.ph.i_crit_edge: ; preds = %gsi_evt_ring_id_alloc.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

gsi_evt_ring_id_alloc.exit.thread.i.i.i.err_iounmap_crit_edge: ; preds = %gsi_evt_ring_id_alloc.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end.i110.i.i:                                  ; preds = %if.end14.i.i
  %neg.i.i.i.i = xor i32 %50, -1
  %54 = call i32 @llvm.cttz.i32(i32 %neg.i.i.i.i, i1 false) #7, !range !268
  %shl.i.i.i.i = shl nuw i32 1, %54
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %50
  %55 = ptrtoint ptr %event_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i.i.i.i, ptr %event_bitmap.i, align 4
  %evt_ring_id.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 7
  %56 = ptrtoint ptr %evt_ring_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %evt_ring_id.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %54
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx.i.i, ptr %arrayidx.i.i.i, align 4
  %ring.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %54, i32 1
  %58 = ptrtoint ptr %event_count29.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %event_count29.i.i, align 2
  %conv.i109.i.i = zext i16 %59 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i109.i.i, 4
  %60 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gsi, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i.i) #7
  %62 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %addr.i.i.i.i, align 4, !annotation !270
  %call.i.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %61, i32 noundef %mul.i.i.i.i, ptr noundef nonnull %addr.i.i.i.i, i32 noundef 3264, i32 noundef 0) #7
  %63 = ptrtoint ptr %ring.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i.i.i.i, ptr %ring.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %cleanup.i, label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end.i110.i.i
  %64 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr.i.i.i.i, align 4
  %addr3.i.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %54, i32 1, i32 1
  %66 = ptrtoint ptr %addr3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %addr3.i.i.i.i, align 4
  %count4.i.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 15, i32 %54, i32 1, i32 2
  %67 = ptrtoint ptr %count4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i109.i.i, ptr %count4.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i.i) #7
  %tre_ring.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 6
  %68 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %channel.i.i.i, align 4
  %conv36.i.i = zext i16 %69 to i32
  %mul.i113.i.i = shl nuw nsw i32 %conv36.i.i, 4
  %70 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %gsi, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #7
  %72 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %addr.i.i.i, align 4, !annotation !270
  %call.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %71, i32 noundef %mul.i113.i.i, ptr noundef nonnull %addr.i.i.i, i32 noundef 3264, i32 noundef 0) #7
  %73 = ptrtoint ptr %tre_ring.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i.i.i.i, ptr %tre_ring.i.i, align 4
  %tobool.not.i114.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i114.i.i, label %do.end42.i.i, label %if.end46.i.i

do.end42.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #7
  %74 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gsi, align 128
  %76 = ptrtoint ptr %channel_id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %channel_id1.i.i.i, align 1
  %conv45.i.i = zext i8 %77 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.113, i32 noundef -12, i32 noundef %conv45.i.i) #10
  br label %err_channel_evt_ring_exit.i.i

if.end46.i.i:                                     ; preds = %if.end33.i.i
  %78 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i.i.i, align 4
  %addr3.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 6, i32 1
  %80 = ptrtoint ptr %addr3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %addr3.i.i.i, align 4
  %count4.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i.i, i32 6, i32 2
  %81 = ptrtoint ptr %count4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv36.i.i, ptr %count4.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #7
  %82 = ptrtoint ptr %channel_id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %channel_id1.i.i.i, align 1
  %conv48.i.i = zext i8 %83 to i32
  %call49.i.i = call i32 @gsi_channel_trans_init(ptr noundef %gsi, i32 noundef %conv48.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i)
  %tobool50.not.i.i = icmp eq i32 %call49.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end52.i.i, label %if.end46.i.i.err_ring_free.i.i_crit_edge

if.end46.i.i.err_ring_free.i.i_crit_edge:         ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ring_free.i.i

if.end52.i.i:                                     ; preds = %if.end46.i.i
  br i1 %cmp2.i, label %if.end59.i.i, label %if.end52.i.i.for.inc.i_crit_edge

if.end52.i.i.for.inc.i_crit_edge:                 ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end59.i.i:                                     ; preds = %if.end52.i.i
  %84 = ptrtoint ptr %channel_id1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %channel_id1.i.i.i, align 1
  %conv56.i.i = zext i8 %85 to i32
  %tre_count.i.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %conv56.i.i, i32 4
  %86 = ptrtoint ptr %tre_count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tre_count.i.i.i, align 8
  %conv.i117.i.i = zext i16 %87 to i32
  %tlv_count.i118.i.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %conv56.i.i, i32 3
  %88 = ptrtoint ptr %tlv_count.i118.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %tlv_count.i118.i.i, align 2
  %conv2.i.i.i = zext i8 %89 to i32
  %sub.neg.i.i.i = add nuw nsw i32 %conv.i117.i.i, 1
  %sub3.i.i.i = sub nsw i32 %sub.neg.i.i.i, %conv2.i.i.i
  %call58.i.i = call i32 @ipa_cmd_pool_init(ptr noundef %arrayidx.i.i, i32 noundef %sub3.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool60.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end59.i.i.for.inc.i_crit_edge, label %if.end62.i.i

if.end59.i.i.for.inc.i_crit_edge:                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end62.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gsi_channel_trans_exit(ptr noundef %arrayidx.i.i) #7
  br label %err_ring_free.i.i

err_ring_free.i.i:                                ; preds = %if.end62.i.i, %if.end46.i.i.err_ring_free.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call58.i.i, %if.end62.i.i ], [ %call49.i.i, %if.end46.i.i.err_ring_free.i.i_crit_edge ]
  %90 = ptrtoint ptr %count4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count4.i.i.i, align 4
  %mul.i119.i.i = shl i32 %91, 4
  %92 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gsi, align 128
  %94 = ptrtoint ptr %tre_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tre_ring.i.i, align 4
  %96 = ptrtoint ptr %addr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %addr3.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %93, i32 noundef %mul.i119.i.i, ptr noundef %95, i32 noundef %97, i32 noundef 0) #7
  br label %err_channel_evt_ring_exit.i.i

err_channel_evt_ring_exit.i.i:                    ; preds = %err_ring_free.i.i, %do.end42.i.i
  %ret.2.i.i = phi i32 [ -12, %do.end42.i.i ], [ %ret.1.i.i, %err_ring_free.i.i ]
  %98 = ptrtoint ptr %evt_ring_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %evt_ring_id.i.i.i, align 4
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i, align 8
  %ring.i121.i.i = getelementptr %struct.gsi, ptr %101, i32 0, i32 15, i32 %99, i32 1
  %count.i.i.i.i = getelementptr %struct.gsi, ptr %101, i32 0, i32 15, i32 %99, i32 1, i32 2
  %102 = ptrtoint ptr %count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count.i.i.i.i, align 4
  %mul.i.i122.i.i = shl i32 %103, 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 128
  %106 = ptrtoint ptr %ring.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ring.i121.i.i, align 4
  %addr.i.i123.i.i = getelementptr %struct.gsi, ptr %101, i32 0, i32 15, i32 %99, i32 1, i32 1
  %108 = ptrtoint ptr %addr.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %addr.i.i123.i.i, align 4
  call void @dma_free_attrs(ptr noundef %105, i32 noundef %mul.i.i122.i.i, ptr noundef %107, i32 noundef %109, i32 noundef 0) #7
  %shl.i.i124.i.i = shl nuw i32 1, %99
  %neg.i.i125.i.i = xor i32 %shl.i.i124.i.i, -1
  %event_bitmap.i.i126.i.i = getelementptr inbounds %struct.gsi, ptr %101, i32 0, i32 7
  %110 = ptrtoint ptr %event_bitmap.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %event_bitmap.i.i126.i.i, align 4
  %and.i.i127.i.i = and i32 %111, %neg.i.i125.i.i
  store i32 %and.i.i127.i.i, ptr %event_bitmap.i.i126.i.i, align 4
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %arrayidx.i.i, align 8
  br i1 %cmp2.i, label %err_channel_evt_ring_exit.i.i.err_iounmap_crit_edge, label %err_channel_evt_ring_exit.i.i.while.body.lr.ph.i_crit_edge

err_channel_evt_ring_exit.i.i.while.body.lr.ph.i_crit_edge: ; preds = %err_channel_evt_ring_exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

err_channel_evt_ring_exit.i.i.err_iounmap_crit_edge: ; preds = %err_channel_evt_ring_exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

cleanup.i:                                        ; preds = %if.end.i110.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i.i) #7
  %113 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %gsi, align 128
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i, align 8
  %channel1.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %116, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %arrayidx.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %channel1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 488
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.132, i32 noundef -12, i32 noundef %sub.ptr.div.i.i.i.i) #10
  %117 = ptrtoint ptr %evt_ring_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %evt_ring_id.i.i.i, align 4
  %shl.i30.i.i.i = shl nuw i32 1, %118
  %neg.i31.i.i.i = xor i32 %shl.i30.i.i.i, -1
  %119 = ptrtoint ptr %event_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %event_bitmap.i, align 4
  %and.i.i.i.i = and i32 %120, %neg.i31.i.i.i
  store i32 %and.i.i.i.i, ptr %event_bitmap.i, align 4
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %arrayidx.i.i, align 8
  br i1 %cmp2.i, label %cleanup.i.err_iounmap_crit_edge, label %cleanup.i.while.body.lr.ph.i_crit_edge

cleanup.i.while.body.lr.ph.i_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

cleanup.i.err_iounmap_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

while.body.lr.ph.i:                               ; preds = %cleanup.i.while.body.lr.ph.i_crit_edge, %err_channel_evt_ring_exit.i.i.while.body.lr.ph.i_crit_edge, %gsi_evt_ring_id_alloc.exit.thread.i.i.i.while.body.lr.ph.i_crit_edge, %do.end66.i.i.i.while.body.lr.ph.i_crit_edge, %do.end55.i.i.i.while.body.lr.ph.i_crit_edge, %do.end41.i.i.i.while.body.lr.ph.i_crit_edge, %do.end26.i.i.i.while.body.lr.ph.i_crit_edge, %do.end14.i.i.i.while.body.lr.ph.i_crit_edge, %do.end.i.i.i.while.body.lr.ph.i_crit_edge
  %retval.0.i.ph.i355 = phi i32 [ -22, %do.end55.i.i.i.while.body.lr.ph.i_crit_edge ], [ -12, %cleanup.i.while.body.lr.ph.i_crit_edge ], [ -22, %do.end66.i.i.i.while.body.lr.ph.i_crit_edge ], [ -22, %do.end41.i.i.i.while.body.lr.ph.i_crit_edge ], [ -22, %do.end26.i.i.i.while.body.lr.ph.i_crit_edge ], [ -22, %do.end14.i.i.i.while.body.lr.ph.i_crit_edge ], [ -22, %do.end.i.i.i.while.body.lr.ph.i_crit_edge ], [ %ret.2.i.i, %err_channel_evt_ring_exit.i.i.while.body.lr.ph.i_crit_edge ], [ -28, %gsi_evt_ring_id_alloc.exit.thread.i.i.i.while.body.lr.ph.i_crit_edge ]
  %channel_id39.i = getelementptr inbounds %struct.ipa_gsi_endpoint_data, ptr %data, i32 0, i32 1
  br label %while.body.i

for.inc.i:                                        ; preds = %if.end59.i.i.for.inc.i_crit_edge, %if.end52.i.i.for.inc.i_crit_edge, %if.then9.i, %if.then8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0195.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.do.body40_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.body40_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec199.in.i = phi i32 [ %i.0195.i, %while.body.lr.ph.i ], [ %dec199.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %dec199.i = add i32 %dec199.in.i, -1
  %arrayidx21.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %dec199.i
  %call22.i = call zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef %arrayidx21.i) #7
  br i1 %call22.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end24.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge.i

if.end24.i:                                       ; preds = %while.body.i
  br i1 %cmp.i76, label %land.lhs.true.i, label %if.end24.i.if.end38.i_crit_edge

if.end24.i.if.end38.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %122 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %123)
  %cmp30.i = icmp eq i8 %123, 1
  br i1 %cmp30.i, label %if.then32.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel_id34.i = getelementptr %struct.ipa_gsi_endpoint_data, ptr %data, i32 %dec199.i, i32 1
  %124 = ptrtoint ptr %channel_id34.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %channel_id34.i, align 1
  %conv35.i = zext i8 %125 to i32
  %shl36.i = shl nuw i32 1, %conv35.i
  %neg.i = xor i32 %shl36.i, -1
  %126 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %modem_channel_bitmap.i, align 32
  %and.i = and i32 %127, %neg.i
  store i32 %and.i, ptr %modem_channel_bitmap.i, align 32
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end38.i, %if.then32.i, %while.body.i.while.cond.backedge.i_crit_edge
  %tobool20.not.i = icmp eq i32 %dec199.i, 0
  br i1 %tobool20.not.i, label %while.cond.backedge.i.err_iounmap_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.backedge.i.err_iounmap_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iounmap

if.end38.i:                                       ; preds = %land.lhs.true.i.if.end38.i_crit_edge, %if.end24.i.if.end38.i_crit_edge
  %128 = ptrtoint ptr %channel_id39.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %channel_id39.i, align 1
  %idxprom.i = zext i8 %129 to i32
  %arrayidx40.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %idxprom.i
  call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx40.i) #7
  br label %while.cond.backedge.i

do.body40:                                        ; preds = %for.inc.i.do.body40_crit_edge, %if.end35.do.body40_crit_edge
  %mutex = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 13
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @gsi_init.__key) #7
  br label %cleanup

err_iounmap:                                      ; preds = %while.cond.backedge.i.err_iounmap_crit_edge, %cleanup.i.err_iounmap_crit_edge, %err_channel_evt_ring_exit.i.i.err_iounmap_crit_edge, %gsi_evt_ring_id_alloc.exit.thread.i.i.i.err_iounmap_crit_edge, %do.end66.i.i.i.err_iounmap_crit_edge, %do.end55.i.i.i.err_iounmap_crit_edge, %do.end41.i.i.i.err_iounmap_crit_edge, %do.end26.i.i.i.err_iounmap_crit_edge, %do.end14.i.i.i.err_iounmap_crit_edge, %do.end.i.i.i.err_iounmap_crit_edge, %if.then.i
  %ret.0 = phi i32 [ -12, %cleanup.i.err_iounmap_crit_edge ], [ %spec.select, %if.then.i ], [ -22, %do.end55.i.i.i.err_iounmap_crit_edge ], [ -22, %do.end66.i.i.i.err_iounmap_crit_edge ], [ -22, %do.end41.i.i.i.err_iounmap_crit_edge ], [ -22, %do.end26.i.i.i.err_iounmap_crit_edge ], [ -22, %do.end14.i.i.i.err_iounmap_crit_edge ], [ -22, %do.end.i.i.i.err_iounmap_crit_edge ], [ %ret.2.i.i, %err_channel_evt_ring_exit.i.i.err_iounmap_crit_edge ], [ -28, %gsi_evt_ring_id_alloc.exit.thread.i.i.i.err_iounmap_crit_edge ], [ %retval.0.i.ph.i355, %while.cond.backedge.i.err_iounmap_crit_edge ]
  %130 = ptrtoint ptr %virt_raw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %virt_raw, align 8
  call void @iounmap(ptr noundef %131) #7
  br label %cleanup

cleanup:                                          ; preds = %err_iounmap, %do.body40, %do.end29, %do.end20, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end20 ], [ %ret.0, %err_iounmap ], [ 0, %do.body40 ], [ -12, %do.end29 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_dummy_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gsi_exit(ptr noundef %gsi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  %arrayidx.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 22
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.i) #7
  %arrayidx.1.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 21
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.1.i) #7
  %arrayidx.2.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 20
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.2.i) #7
  %arrayidx.3.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 19
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.3.i) #7
  %arrayidx.4.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 18
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.4.i) #7
  %arrayidx.5.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 17
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.5.i) #7
  %arrayidx.6.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 16
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.6.i) #7
  %arrayidx.7.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 15
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.7.i) #7
  %arrayidx.8.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 14
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.8.i) #7
  %arrayidx.9.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 13
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.9.i) #7
  %arrayidx.10.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 12
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.10.i) #7
  %arrayidx.11.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 11
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.11.i) #7
  %arrayidx.12.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 10
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.12.i) #7
  %arrayidx.13.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 9
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.13.i) #7
  %arrayidx.14.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 8
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.14.i) #7
  %arrayidx.15.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 7
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.15.i) #7
  %arrayidx.16.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 6
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.16.i) #7
  %arrayidx.17.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 5
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.17.i) #7
  %arrayidx.18.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 4
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.18.i) #7
  %arrayidx.19.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 3
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.19.i) #7
  %arrayidx.20.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 2
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.20.i) #7
  %arrayidx.21.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 1
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.21.i) #7
  %arrayidx.22.i = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 0
  tail call fastcc void @gsi_channel_exit_one(ptr noundef %arrayidx.22.i) #7
  %modem_channel_bitmap.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 8
  %0 = ptrtoint ptr %modem_channel_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %modem_channel_bitmap.i, align 32
  %virt_raw = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 2
  %1 = ptrtoint ptr %virt_raw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %virt_raw, align 8
  tail call void @iounmap(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gsi_channel_tre_max(ptr nocapture noundef readonly %gsi, i32 noundef %channel_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tre_count = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 4
  %0 = ptrtoint ptr %tre_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tre_count, align 8
  %conv = zext i16 %1 to i32
  %tlv_count = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 3
  %2 = ptrtoint ptr %tlv_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tlv_count, align 2
  %conv2 = zext i8 %3 to i32
  %sub.neg = add nuw nsw i32 %conv, 1
  %sub3 = sub nsw i32 %sub.neg, %conv2
  ret i32 %sub3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gsi_channel_trans_tre_max(ptr nocapture noundef readonly %gsi, i32 noundef %channel_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tlv_count = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 3
  %0 = ptrtoint ptr %tlv_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tlv_count, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_channel_command(ptr noundef %channel, i32 noundef %opcode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %channel1.i = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %channel to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %channel1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 488
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %shl.i = shl nuw i32 1, %sub.ptr.div.i
  %virt.i = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 127136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !261
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 127128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #7, !srcloc !261
  %type_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or.i.i = or i32 %10, 1
  store i32 %or.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %11 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %13) #7, !srcloc !261
  %14 = and i32 %sub.ptr.div.i, 255
  %15 = shl i32 %opcode, 24
  %or = or i32 %14, %15
  %completion1.i = getelementptr inbounds %struct.gsi, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %completion1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %completion1.i, align 4
  %17 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %18, i32 126984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %19) #7, !srcloc !261
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion1.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  %20 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %and.i.i = and i32 %21, -2
  store i32 %and.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %22 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i34 = getelementptr i8, ptr %23, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i34, i32 %24) #7, !srcloc !261
  %25 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %26, i32 127128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 0) #7, !srcloc !261
  br i1 %tobool.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel, align 8
  %channel1.i.i = getelementptr inbounds %struct.gsi, ptr %28, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %channel1.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 488
  %virt1.i = getelementptr inbounds %struct.gsi, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %virt1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt1.i, align 4
  %mul.i36 = shl nsw i32 %sub.ptr.div.i.i, 7
  %add.i = add nsw i32 %mul.i36, 114688
  %add.ptr.i37 = getelementptr i8, ptr %30, i32 %add.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %32 = lshr i32 %31, 12
  %div4.i5.i = and i32 %32, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %opcode, i32 noundef %sub.ptr.div.i, i32 noundef %div4.i5.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsi_isr(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.gsi, ptr %dev_id, i32 0, i32 3
  %ieob_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %dev_id, i32 0, i32 10
  %type_enabled_bitmap.i.i.i = getelementptr inbounds %struct.gsi, ptr %dev_id, i32 0, i32 9
  %completion.i33.i.i = getelementptr inbounds %struct.gsi, ptr %dev_id, i32 0, i32 12
  %result5.i.i = getelementptr inbounds %struct.gsi, ptr %dev_id, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %do.end9.while.cond_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %do.end9.while.cond_crit_edge ]
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 127104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %do.body.preheader

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.preheader:                                ; preds = %while.cond
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %do.body.preheader
  %intr_mask.0 = phi i32 [ %xor, %sw.epilog.do.body_crit_edge ], [ %3, %do.body.preheader ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %intr_mask.0, i1 false) #7, !range !268
  %shl = shl nuw i32 1, %4
  %xor = xor i32 %shl, %intr_mask.0
  %5 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %shl, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
    i32 64, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 127120
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 127136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #7, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not9.i = icmp eq i32 %8, 0
  br i1 %tobool.not9.i, label %sw.bb.sw.epilog_crit_edge, label %while.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.lr.ph.i:                               ; preds = %sw.bb
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %channel_mask.010.i = phi i32 [ %11, %while.body.lr.ph.i ], [ %xor.i, %while.body.i.while.body.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %channel_mask.010.i, i1 true) #7, !range !268
  %shl.i = shl nuw i32 1, %12
  %xor.i = xor i32 %shl.i, %channel_mask.010.i
  tail call void @complete(ptr noundef %completion.i33.i.i) #7
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt, align 4
  %add.ptr.i26 = getelementptr i8, ptr %14, i32 127124
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %16 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt, align 4
  %add.ptr2.i27 = getelementptr i8, ptr %17, i32 127140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i27, i32 %15) #7, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not9.i28 = icmp eq i32 %15, 0
  br i1 %tobool.not9.i28, label %sw.bb2.sw.epilog_crit_edge, label %while.body.lr.ph.i30

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.lr.ph.i30:                             ; preds = %sw.bb2
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  br label %while.body.i34

while.body.i34:                                   ; preds = %while.body.i34.while.body.i34_crit_edge, %while.body.lr.ph.i30
  %event_mask.010.i = phi i32 [ %18, %while.body.lr.ph.i30 ], [ %xor.i32, %while.body.i34.while.body.i34_crit_edge ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %event_mask.010.i, i1 true) #7, !range !268
  %shl.i31 = shl nuw i32 1, %19
  %xor.i32 = xor i32 %shl.i31, %event_mask.010.i
  tail call void @complete(ptr noundef %completion.i33.i.i) #7
  %tobool.not.i33 = icmp eq i32 %xor.i32, 0
  br i1 %tobool.not.i33, label %while.body.i34.sw.epilog_crit_edge, label %while.body.i34.while.body.i34_crit_edge

while.body.i34.while.body.i34_crit_edge:          ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i34

while.body.i34.sw.epilog_crit_edge:               ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %do.body
  %20 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virt, align 4
  %add.ptr.i36 = getelementptr i8, ptr %21, i32 127232
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !262
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i37 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i37, label %sw.bb3.if.end.i_crit_edge, label %if.then.i

sw.bb3.if.end.i_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 127488
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !262
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %28 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %29, i32 127488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #7, !srcloc !261
  %30 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %31, i32 127504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 -1) #7, !srcloc !261
  %div4.i35.i.i = lshr i32 %27, 28
  %and.i26.i.i = lshr i32 %27, 24
  %div4.i2736.i.i = and i32 %and.i26.i.i, 15
  %and.i28.i.i = lshr i32 %27, 19
  %div4.i2937.i.i = and i32 %and.i28.i.i, 31
  %div4.i313438.i.i = lshr i32 %27, 12
  %div4.i31.zext.i.i = and i32 %div4.i313438.i.i, 15
  %32 = zext i32 %div4.i2736.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %div4.i2736.i.i, label %do.end.i.i [
    i32 2, label %if.then.i.i
    i32 3, label %if.then10.i.i
  ]

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div4.i31.zext.i.i)
  %cmp.i.i.i = icmp eq i32 %div4.i31.zext.i.i, 3
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 128
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %do.end2.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.52, i32 noundef %div4.i2937.i.i) #10
  tail call void @complete(ptr noundef %completion.i33.i.i) #7
  br label %if.end.i

do.end2.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.55, i32 noundef %div4.i2937.i.i, i32 noundef %div4.i35.i.i, i32 noundef %div4.i31.zext.i.i) #10
  br label %if.end.i

if.then10.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div4.i31.zext.i.i)
  %cmp.i32.i.i = icmp eq i32 %div4.i31.zext.i.i, 3
  br i1 %cmp.i32.i.i, label %if.then.i.i.i, label %do.end4.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.gsi, ptr %dev_id, i32 0, i32 15, i32 %div4.i2937.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %channel1.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %38, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %channel1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 488
  tail call void @complete(ptr noundef %completion.i33.i.i) #7
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.57, i32 noundef %sub.ptr.div.i.i.i.i) #10
  br label %if.end.i

do.end4.i.i.i:                                    ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.60, i32 noundef %div4.i2937.i.i, i32 noundef %div4.i35.i.i, i32 noundef %div4.i31.zext.i.i) #10
  br label %if.end.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.50, i32 noundef %div4.i2736.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i, %do.end4.i.i.i, %if.then.i.i.i, %do.end2.i.i.i, %do.end.i.i.i, %sw.bb3.if.end.i_crit_edge
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virt, align 4
  %add.ptr2.i38 = getelementptr i8, ptr %46, i32 127248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i38, i32 %22) #7, !srcloc !261
  %and3.i = and i32 %23, -2
  %and4.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  %xor.i39 = xor i32 %and3.i, 2
  %47 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virt, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %48, i32 128000
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %sum.shift.i.i = lshr i32 %49, 29
  %50 = zext i32 %sum.shift.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %sum.shift.i.i, label %do.end.i23.i [
    i32 1, label %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge
    i32 2, label %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge61
    i32 6, label %sw.bb3.i.i
  ]

if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge61:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_isr_gp_int1.exit.i

if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_isr_gp_int1.exit.i

sw.bb3.i.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_isr_gp_int1.exit.i

do.end.i23.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.62, i32 noundef %sum.shift.i.i) #10
  br label %gsi_isr_gp_int1.exit.i

gsi_isr_gp_int1.exit.i:                           ; preds = %do.end.i23.i, %sw.bb3.i.i, %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge, %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge61
  %.sink.i.i = phi i32 [ -5, %do.end.i23.i ], [ -11, %sw.bb3.i.i ], [ 0, %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge ], [ 0, %if.then6.i.gsi_isr_gp_int1.exit.i_crit_edge61 ]
  %53 = ptrtoint ptr %result5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink.i.i, ptr %result5.i.i, align 4
  tail call void @complete(ptr noundef %completion.i33.i.i) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %gsi_isr_gp_int1.exit.i, %if.end.i.if.end7.i_crit_edge
  %val.0.i = phi i32 [ %xor.i39, %gsi_isr_gp_int1.exit.i ], [ %and3.i, %if.end.i.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool8.not.i = icmp eq i32 %val.0.i, 0
  br i1 %tobool8.not.i, label %if.end7.i.sw.epilog_crit_edge, label %do.end.i

if.end7.i.sw.epilog_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.48, i32 noundef %val.0.i) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.body
  %56 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %virt, align 4
  %add.ptr.i41 = getelementptr i8, ptr %57, i32 127152
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !262
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %neg.i.i = xor i32 %59, -1
  %60 = ptrtoint ptr %ieob_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ieob_enabled_bitmap.i.i, align 8
  %and.i.i = and i32 %61, %neg.i.i
  store i32 %and.i.i, ptr %ieob_enabled_bitmap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i42, label %sw.bb4.gsi_irq_ieob_disable.exit.i_crit_edge

sw.bb4.gsi_irq_ieob_disable.exit.i_crit_edge:     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_irq_ieob_disable.exit.i

if.then.i.i42:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %type_enabled_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type_enabled_bitmap.i.i.i, align 4
  %and.i.i.i = and i32 %63, -9
  store i32 %and.i.i.i, ptr %type_enabled_bitmap.i.i.i, align 4
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virt, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %65, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %66) #7, !srcloc !261
  br label %gsi_irq_ieob_disable.exit.i

gsi_irq_ieob_disable.exit.i:                      ; preds = %if.then.i.i42, %sw.bb4.gsi_irq_ieob_disable.exit.i_crit_edge
  %67 = ptrtoint ptr %ieob_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ieob_enabled_bitmap.i.i, align 8
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %70, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43, i32 %71) #7, !srcloc !261
  %72 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %virt, align 4
  %add.ptr2.i44 = getelementptr i8, ptr %73, i32 127168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i44, i32 %58) #7, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not13.i = icmp eq i32 %58, 0
  br i1 %tobool.not13.i, label %gsi_irq_ieob_disable.exit.i.sw.epilog_crit_edge, label %gsi_irq_ieob_disable.exit.i.while.body.i47_crit_edge

gsi_irq_ieob_disable.exit.i.while.body.i47_crit_edge: ; preds = %gsi_irq_ieob_disable.exit.i
  br label %while.body.i47

gsi_irq_ieob_disable.exit.i.sw.epilog_crit_edge:  ; preds = %gsi_irq_ieob_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i47:                                   ; preds = %napi_schedule.exit.i.while.body.i47_crit_edge, %gsi_irq_ieob_disable.exit.i.while.body.i47_crit_edge
  %event_mask.014.i = phi i32 [ %xor.i46, %napi_schedule.exit.i.while.body.i47_crit_edge ], [ %59, %gsi_irq_ieob_disable.exit.i.while.body.i47_crit_edge ]
  %74 = tail call i32 @llvm.cttz.i32(i32 %event_mask.014.i, i1 true) #7, !range !268
  %shl.i45 = shl nuw i32 1, %74
  %xor.i46 = xor i32 %shl.i45, %event_mask.014.i
  %arrayidx.i = getelementptr %struct.gsi, ptr %dev_id, i32 0, i32 15, i32 %74
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %napi.i = getelementptr inbounds %struct.gsi_channel, ptr %76, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #7
  br i1 %call.i.i, label %if.then.i12.i, label %while.body.i47.napi_schedule.exit.i_crit_edge

while.body.i47.napi_schedule.exit.i_crit_edge:    ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %napi_schedule.exit.i

if.then.i12.i:                                    ; preds = %while.body.i47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__napi_schedule(ptr noundef %napi.i) #7
  br label %napi_schedule.exit.i

napi_schedule.exit.i:                             ; preds = %if.then.i12.i, %while.body.i47.napi_schedule.exit.i_crit_edge
  %tobool.not.i48 = icmp eq i32 %xor.i46, 0
  br i1 %tobool.not.i48, label %napi_schedule.exit.i.sw.epilog_crit_edge, label %napi_schedule.exit.i.while.body.i47_crit_edge

napi_schedule.exit.i.while.body.i47_crit_edge:    ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i47

napi_schedule.exit.i.sw.epilog_crit_edge:         ; preds = %napi_schedule.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_id, align 128
  %79 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %virt, align 4
  %add.ptr.i50 = getelementptr i8, ptr %80, i32 127256
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !262
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %83 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %virt, align 4
  %add.ptr3.i = getelementptr i8, ptr %84, i32 127272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %81) #7, !srcloc !261
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.64, i32 noundef %82) #10
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.43, i32 noundef %shl) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %napi_schedule.exit.i.sw.epilog_crit_edge, %gsi_irq_ieob_disable.exit.i.sw.epilog_crit_edge, %do.end.i, %if.end7.i.sw.epilog_crit_edge, %while.body.i34.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %while.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %tobool8.not = icmp eq i32 %xor, 0
  br i1 %tobool8.not, label %do.end9, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end9:                                          ; preds = %sw.epilog
  %inc = add nuw nsw i32 %cnt.0, 1
  %exitcond = icmp eq i32 %inc, 51
  br i1 %exitcond, label %do.end12, label %do.end9.while.cond_crit_edge

do.end9.while.cond_crit_edge:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_id, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.46) #10
  br label %while.end

while.end:                                        ; preds = %do.end12, %while.cond.while.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_channel_teardown_one(ptr noundef %gsi, i32 noundef %channel_id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id
  %evt_ring_id2 = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 7
  %0 = ptrtoint ptr %evt_ring_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evt_ring_id2, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi = getelementptr %struct.gsi, ptr %gsi, i32 0, i32 14, i32 %channel_id, i32 15
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  %4 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gsi, align 128
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %channel1.i.i.i = getelementptr inbounds %struct.gsi, ptr %7, i32 0, i32 14
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %channel1.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 488
  %virt1.i.i = getelementptr inbounds %struct.gsi, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %virt1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt1.i.i, align 4
  %mul.i.i = shl nsw i32 %sub.ptr.div.i.i.i, 7
  %add.i.i = add nsw i32 %mul.i.i, 114688
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %11 = lshr i32 %10, 12
  %div4.i5.i.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i5.i.i)
  %cmp.not.i = icmp eq i32 %div4.i5.i.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.99, i32 noundef %channel_id, i32 noundef %div4.i5.i.i) #10
  br label %gsi_channel_de_alloc_command.exit

if.end.i:                                         ; preds = %if.end
  tail call fastcc void @gsi_channel_command(ptr noundef %arrayidx, i32 noundef 10) #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %channel1.i.i21.i = getelementptr inbounds %struct.gsi, ptr %13, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i23.i = ptrtoint ptr %channel1.i.i21.i to i32
  %sub.ptr.sub.i.i24.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i23.i
  %sub.ptr.div.i.i25.i = sdiv exact i32 %sub.ptr.sub.i.i24.i, 488
  %virt1.i26.i = getelementptr inbounds %struct.gsi, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %virt1.i26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt1.i26.i, align 4
  %mul.i27.i = shl nsw i32 %sub.ptr.div.i.i25.i, 7
  %add.i28.i = add nsw i32 %mul.i27.i, 114688
  %add.ptr.i29.i = getelementptr i8, ptr %15, i32 %add.i28.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %17 = lshr i32 %16, 12
  %div4.i5.i30.i = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i5.i30.i)
  %cmp4.not.i = icmp eq i32 %div4.i5.i30.i, 0
  br i1 %cmp4.not.i, label %if.end.i.gsi_channel_de_alloc_command.exit_crit_edge, label %do.end8.i

if.end.i.gsi_channel_de_alloc_command.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_channel_de_alloc_command.exit

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.102, i32 noundef %channel_id, i32 noundef %div4.i5.i30.i) #10
  br label %gsi_channel_de_alloc_command.exit

gsi_channel_de_alloc_command.exit:                ; preds = %do.end8.i, %if.end.i.gsi_channel_de_alloc_command.exit_crit_edge, %do.end.i
  %virt.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %18 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt.i.i, align 4
  %mul.i.i11 = shl i32 %1, 7
  %add.i.i12 = add i32 %mul.i.i11, 118784
  %add.ptr.i.i13 = getelementptr i8, ptr %19, i32 %add.i.i12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %21 = lshr i32 %20, 12
  %div4.i2.i.i = and i32 %21, 15
  %22 = zext i32 %div4.i2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %div4.i2.i.i, label %do.end.i14 [
    i32 1, label %gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge
    i32 15, label %gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge25
  ]

gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge25: ; preds = %gsi_channel_de_alloc_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i15

gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge: ; preds = %gsi_channel_de_alloc_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i15

do.end.i14:                                       ; preds = %gsi_channel_de_alloc_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.104, i32 noundef %1, i32 noundef %div4.i2.i.i) #10
  br label %gsi_evt_ring_reset_command.exit

if.end.i15:                                       ; preds = %gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge, %gsi_channel_de_alloc_command.exit.if.end.i15_crit_edge25
  tail call fastcc void @gsi_evt_ring_command(ptr noundef %gsi, i32 noundef %1, i32 noundef 9) #7
  %25 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %26, i32 %add.i.i12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %28 = lshr i32 %27, 12
  %div4.i2.i26.i = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i2.i26.i)
  %cmp3.i = icmp eq i32 %div4.i2.i26.i, 1
  br i1 %cmp3.i, label %if.end.i15.gsi_evt_ring_reset_command.exit_crit_edge, label %do.end8.i16

if.end.i15.gsi_evt_ring_reset_command.exit_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %gsi_evt_ring_reset_command.exit

do.end8.i16:                                      ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.107, i32 noundef %1, i32 noundef %div4.i2.i26.i) #10
  br label %gsi_evt_ring_reset_command.exit

gsi_evt_ring_reset_command.exit:                  ; preds = %do.end8.i16, %if.end.i15.gsi_evt_ring_reset_command.exit_crit_edge, %do.end.i14
  %31 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %32, i32 %add.i.i12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %34 = lshr i32 %33, 12
  %div4.i2.i.i21 = and i32 %34, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div4.i2.i.i21)
  %cmp.not.i22 = icmp eq i32 %div4.i2.i.i21, 1
  br i1 %cmp.not.i22, label %if.end.i24, label %do.end.i23

do.end.i23:                                       ; preds = %gsi_evt_ring_reset_command.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.92, i32 noundef %1, i32 noundef %div4.i2.i.i21) #10
  br label %cleanup

if.end.i24:                                       ; preds = %gsi_evt_ring_reset_command.exit
  tail call fastcc void @gsi_evt_ring_command(ptr noundef %gsi, i32 noundef %1, i32 noundef 10) #7
  %37 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %38, i32 %add.i.i12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %40 = lshr i32 %39, 12
  %div4.i2.i24.i = and i32 %40, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div4.i2.i24.i)
  %cmp2.i = icmp eq i32 %div4.i2.i24.i, 0
  br i1 %cmp2.i, label %if.end.i24.cleanup_crit_edge, label %do.end7.i

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end7.i:                                        ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gsi, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.95, i32 noundef %1, i32 noundef %div4.i2.i24.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end7.i, %if.end.i24.cleanup_crit_edge, %do.end.i23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gsi_channel_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp26 = icmp sgt i32 %budget, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.lr.ph:                                   ; preds = %entry
  %evt_ring_id1.i.i = getelementptr i8, ptr %napi, i32 -236
  %addr.i.i.i.i.i = getelementptr i8, ptr %napi, i32 -248
  %toward_ipa.i.i = getelementptr i8, ptr %napi, i32 -260
  %compl_byte_count.i.i.i = getelementptr i8, ptr %napi, i32 -200
  %compl_trans_count.i.i.i = getelementptr i8, ptr %napi, i32 -192
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call ptr @gsi_channel_trans_complete(ptr noundef %add.ptr) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %0 = ptrtoint ptr %evt_ring_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %evt_ring_id1.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %arrayidx.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 15, i32 %1
  %mul.i.i = shl i32 %1, 7
  %add.i.i = add i32 %mul.i.i, 118800
  %virt.i.i = getelementptr inbounds %struct.gsi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !262
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %addr.i.i.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 15, i32 %1, i32 1, i32 1
  %8 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i.i.i, align 4
  %sub.i.i.i = sub i32 %7, %9
  %div1.i.i.i = lshr i32 %sub.i.i.i, 4
  %index6.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 15, i32 %1, i32 1, i32 3
  %10 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index6.i.i, align 4
  %count.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 15, i32 %1, i32 1, i32 2
  %12 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i.i, align 4
  %rem.i.i = urem i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i.i, i32 %rem.i.i)
  %cmp.i.i = icmp eq i32 %div1.i.i.i, %rem.i.i
  br i1 %cmp.i.i, label %if.then.i.land.lhs.true.critedge_crit_edge, label %if.end.i.i

if.then.i.land.lhs.true.critedge_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

if.end.i.i:                                       ; preds = %if.then.i
  %ring4.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 15, i32 %1, i32 1
  %sub.i.i = add nsw i32 %div1.i.i.i, -1
  %14 = ptrtoint ptr %ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring4.i.i, align 4
  %rem.i.i.i = urem i32 %sub.i.i, %13
  %mul.i.i.i = shl i32 %rem.i.i.i, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %mul.i.i.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i.i.i, align 8
  %18 = and i64 %17, -4294967296
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #7
  %conv.i.i.i = trunc i64 %19 to i32
  %20 = ptrtoint ptr %addr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %conv.i.i.i, %21
  %div1.i.i.i.i = lshr i32 %sub.i.i.i.i, 4
  %call1.i.i.i = tail call ptr @gsi_channel_trans_mapped(ptr noundef %add.ptr, i32 noundef %div1.i.i.i.i) #7
  %refcount.i.i = getelementptr inbounds %struct.gsi_trans, ptr %call1.i.i.i, i32 0, i32 11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !265
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !266

if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !267

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %24 = ptrtoint ptr %toward_ipa.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %toward_ipa.i.i, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %refcount_inc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %byte_count1.i.i.i = getelementptr inbounds %struct.gsi_trans, ptr %call1.i.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %byte_count1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %byte_count1.i.i.i, align 8
  %len.i.i.i = getelementptr inbounds %struct.gsi_trans, ptr %call1.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i.i, align 8
  %conv.i39.i.i = zext i32 %29 to i64
  %add.i.i.i = add i64 %27, %conv.i39.i.i
  %trans_count2.i.i.i = getelementptr inbounds %struct.gsi_trans, ptr %call1.i.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %trans_count2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %trans_count2.i.i.i, align 8
  %add3.i.i.i = add i64 %31, 1
  %32 = ptrtoint ptr %compl_byte_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %compl_byte_count.i.i.i, align 8
  %sub.i40.i.i = sub i64 %add.i.i.i, %33
  store i64 %add.i.i.i, ptr %compl_byte_count.i.i.i, align 8
  %34 = ptrtoint ptr %compl_trans_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %compl_trans_count.i.i.i, align 8
  %sub6.i.i.i = sub i64 %add3.i.i.i, %35
  store i64 %add3.i.i.i, ptr %compl_trans_count.i.i.i, align 8
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %channel1.i.i.i.i = getelementptr inbounds %struct.gsi, ptr %37, i32 0, i32 14
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %channel1.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 488
  %conv9.i.i.i = trunc i64 %sub6.i.i.i to i32
  %conv10.i.i.i = trunc i64 %sub.i40.i.i to i32
  tail call void @ipa_gsi_channel_tx_completed(ptr noundef %37, i32 noundef %sub.ptr.div.i.i.i.i, i32 noundef %conv9.i.i.i, i32 noundef %conv10.i.i.i) #7
  br label %if.end.i

if.else.i.i:                                      ; preds = %refcount_inc.exit.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i, align 4
  %40 = ptrtoint ptr %index6.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index6.i.i, align 4
  %42 = ptrtoint ptr %ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring4.i.i, align 4
  %44 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i, align 4
  %rem.i.i.i.i = urem i32 %41, %45
  %mul.i.i.i.i = shl i32 %rem.i.i.i.i, 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 %mul.i.i.i.i
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i.i.i.i, align 8
  %48 = and i64 %47, -4294967296
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #7
  %conv.i.i.i.i = trunc i64 %49 to i32
  %addr.i.i.i.i.i.i = getelementptr inbounds %struct.gsi_channel, ptr %39, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %addr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = sub i32 %conv.i.i.i.i, %51
  %div1.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 4
  %call1.i.i.i.i = tail call ptr @gsi_channel_trans_mapped(ptr noundef %39, i32 noundef %div1.i.i.i.i.i) #7
  %52 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i.i, align 4
  %rem.i41.i.i = urem i32 %41, %53
  %sub.i42.i.i = sub i32 %53, %rem.i41.i.i
  %54 = ptrtoint ptr %ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ring4.i.i, align 4
  %rem.i33.i.i.i = urem i32 %div1.i.i.i, %53
  %mul.i34.i.i.i = shl nuw i32 %rem.i33.i.i.i, 4
  %add.ptr.i35.i.i.i = getelementptr i8, ptr %55, i32 %mul.i34.i.i.i
  %pool.i.i.i = getelementptr inbounds %struct.gsi_channel, ptr %39, i32 0, i32 14, i32 1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i.do.body.i.i.i_crit_edge, %if.else.i.i
  %event.0.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.else.i.i ], [ %event.1.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %trans.0.i.i.i = phi ptr [ %call1.i.i.i.i, %if.else.i.i ], [ %call11.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %byte_count.0.i.i.i = phi i32 [ 0, %if.else.i.i ], [ %add.i45.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %event_avail.0.i.i.i = phi i32 [ %sub.i42.i.i, %if.else.i.i ], [ %dec.i.i.i, %if.end.i.i.i.do.body.i.i.i_crit_edge ]
  %len.i43.i.i = getelementptr inbounds %struct.gsi_event, ptr %event.0.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %len.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len.i43.i.i, align 8
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #7
  %conv.i44.i.i = zext i16 %58 to i32
  %len8.i.i.i = getelementptr inbounds %struct.gsi_trans, ptr %trans.0.i.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv.i44.i.i, ptr %len8.i.i.i, align 8
  %add.i45.i.i = add i32 %byte_count.0.i.i.i, %conv.i44.i.i
  %dec.i.i.i = add i32 %event_avail.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.i = getelementptr %struct.gsi_event, ptr %event.0.i.i.i, i32 1
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %ring4.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ring4.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %event.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.then.i.i.i ], [ %61, %if.else.i.i.i ]
  %call11.i.i.i = tail call ptr @gsi_trans_pool_next(ptr noundef %pool.i.i.i, ptr noundef %trans.0.i.i.i) #7
  %cmp.not.i.i.i = icmp eq ptr %event.1.i.i.i, %add.ptr.i35.i.i.i
  br i1 %cmp.not.i.i.i, label %gsi_evt_ring_rx_update.exit.i.i, label %if.end.i.i.i.do.body.i.i.i_crit_edge

if.end.i.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

gsi_evt_ring_rx_update.exit.i.i:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.i.i.i = zext i32 %add.i45.i.i to i64
  %byte_count14.i.i.i = getelementptr inbounds %struct.gsi_channel, ptr %39, i32 0, i32 8
  %62 = ptrtoint ptr %byte_count14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %byte_count14.i.i.i, align 8
  %add15.i.i.i = add i64 %63, %conv13.i.i.i
  store i64 %add15.i.i.i, ptr %byte_count14.i.i.i, align 8
  %trans_count.i.i.i = getelementptr inbounds %struct.gsi_channel, ptr %39, i32 0, i32 9
  %64 = ptrtoint ptr %trans_count.i.i.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %trans_count.i.i.i, align 8
  %inc.i.i.i = add i64 %65, 1
  store i64 %inc.i.i.i, ptr %trans_count.i.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %gsi_evt_ring_rx_update.exit.i.i, %if.then9.i.i
  tail call void @gsi_trans_move_complete(ptr noundef %call1.i.i.i) #7
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 8
  %68 = ptrtoint ptr %evt_ring_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %evt_ring_id1.i.i, align 4
  %index2.i.i.i = getelementptr %struct.gsi, ptr %67, i32 0, i32 15, i32 %69, i32 1, i32 3
  %70 = ptrtoint ptr %index2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div1.i.i.i, ptr %index2.i.i.i, align 4
  %count.i47.i.i = getelementptr %struct.gsi, ptr %67, i32 0, i32 15, i32 %69, i32 1, i32 2
  %71 = ptrtoint ptr %count.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count.i47.i.i, align 4
  %rem.i48.i.i = urem i32 %sub.i.i, %72
  %addr.i.i49.i.i = getelementptr %struct.gsi, ptr %67, i32 0, i32 15, i32 %69, i32 1, i32 1
  %73 = ptrtoint ptr %addr.i.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i.i49.i.i, align 4
  %mul.i.i50.i.i = shl i32 %rem.i48.i.i, 4
  %add.i.i.i.i = add i32 %74, %mul.i.i50.i.i
  %virt.i.i.i = getelementptr inbounds %struct.gsi, ptr %67, i32 0, i32 3
  %75 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %virt.i.i.i, align 4
  %mul.i51.i.i = shl i32 %69, 3
  %add.i52.i.i = add i32 %mul.i51.i.i, 123136
  %add.ptr.i53.i.i = getelementptr i8, ptr %76, i32 %add.i52.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %77 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.i, i32 %77) #7, !srcloc !261
  tail call void @gsi_trans_free(ptr noundef %call1.i.i.i) #7
  %call13.i.i = tail call ptr @gsi_channel_trans_complete(ptr noundef %add.ptr) #7
  %tobool2.not.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true.critedge_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.land.lhs.true.critedge_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.critedge

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %trans.015.i = phi ptr [ %call13.i.i, %if.end.i.for.inc_crit_edge ], [ %call.i, %for.body.for.inc_crit_edge ]
  tail call void @gsi_trans_move_polled(ptr noundef nonnull %trans.015.i) #7
  tail call void @gsi_trans_complete(ptr noundef nonnull %trans.015.i) #7
  %inc = add nuw nsw i32 %count.027, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %for.inc.if.end4_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.critedge:                           ; preds = %if.end.i.land.lhs.true.critedge_crit_edge, %if.then.i.land.lhs.true.critedge_crit_edge
  %call.i15 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #7
  br i1 %call.i15, label %if.then3, label %land.lhs.true.critedge.if.end4_crit_edge

land.lhs.true.critedge.if.end4_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true.critedge
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 8
  %80 = ptrtoint ptr %evt_ring_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %evt_ring_id1.i.i, align 4
  %ieob_enabled_bitmap.i = getelementptr inbounds %struct.gsi, ptr %79, i32 0, i32 10
  %82 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ieob_enabled_bitmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i16 = icmp eq i32 %83, 0
  %shl.i = shl nuw i32 1, %81
  %or.i = or i32 %83, %shl.i
  %84 = ptrtoint ptr %ieob_enabled_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i, ptr %ieob_enabled_bitmap.i, align 8
  %virt.i = getelementptr inbounds %struct.gsi, ptr %79, i32 0, i32 3
  %85 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 127160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %87) #7, !srcloc !261
  br i1 %tobool.not.i16, label %if.then.i18, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.i18:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %type_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %79, i32 0, i32 9
  %88 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or.i.i = or i32 %89, 8
  store i32 %or.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %90 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i17 = getelementptr i8, ptr %91, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i17, i32 %92) #7, !srcloc !261
  br label %if.end4

if.end4:                                          ; preds = %if.then.i18, %if.then3.if.end4_crit_edge, %land.lhs.true.critedge.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %count.025 = phi i32 [ %count.027, %if.then.i18 ], [ %count.027, %if.then3.if.end4_crit_edge ], [ %count.027, %land.lhs.true.critedge.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ], [ %budget, %for.inc.if.end4_crit_edge ]
  ret i32 %count.025
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_evt_ring_command(ptr noundef %gsi, i32 noundef %evt_ring_id, i32 noundef %opcode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 128
  %shl.i = shl nuw i32 1, %evt_ring_id
  %virt.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 3
  %2 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 127140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !261
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 127132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %6) #7, !srcloc !261
  %type_enabled_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 9
  %7 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %or.i.i = or i32 %8, 2
  store i32 %or.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %9 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #7, !srcloc !261
  %12 = and i32 %evt_ring_id, 255
  %13 = shl i32 %opcode, 24
  %or = or i32 %13, %12
  %completion1.i = getelementptr inbounds %struct.gsi, ptr %gsi, i32 0, i32 12
  %14 = ptrtoint ptr %completion1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %completion1.i, align 4
  %15 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %16, i32 126992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %17) #7, !srcloc !261
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion1.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.i.not = icmp eq i32 %call2.i, 0
  %18 = ptrtoint ptr %type_enabled_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type_enabled_bitmap.i.i, align 4
  %and.i.i = and i32 %19, -3
  store i32 %and.i.i, ptr %type_enabled_bitmap.i.i, align 4
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virt.i, align 4
  %add.ptr.i.i.i30 = getelementptr i8, ptr %21, i32 127112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i30, i32 %22) #7, !srcloc !261
  %23 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %24, i32 127132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !260
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #7, !srcloc !261
  br i1 %tobool.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt.i, align 4
  %mul.i33 = shl i32 %evt_ring_id, 7
  %add.i = add i32 %mul.i33, 118784
  %add.ptr.i34 = getelementptr i8, ptr %26, i32 %add.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  %28 = lshr i32 %27, 12
  %div4.i2.i = and i32 %28, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.85, i32 noundef %opcode, i32 noundef %evt_ring_id, i32 noundef %div4.i2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_channel_trans_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_move_polled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_move_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_channel_trans_mapped(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_gsi_channel_tx_completed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_trans_pool_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_gsi_endpoint_data_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gsi_channel_exit_one(ptr noundef %channel) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %tobool.i.not = icmp eq ptr %1, null
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 2
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %command, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ipa_cmd_pool_exit(ptr noundef %channel) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  tail call void @gsi_channel_trans_exit(ptr noundef %channel) #7
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 8
  %tre_ring = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6
  %count.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %mul.i = shl i32 %7, 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 128
  %10 = ptrtoint ptr %tre_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tre_ring, align 4
  %addr.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef %mul.i, ptr noundef %11, i32 noundef %13, i32 noundef 0) #7
  %evt_ring_id1.i = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 7
  %14 = ptrtoint ptr %evt_ring_id1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evt_ring_id1.i, align 4
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel, align 8
  %ring.i = getelementptr %struct.gsi, ptr %17, i32 0, i32 15, i32 %15, i32 1
  %count.i.i = getelementptr %struct.gsi, ptr %17, i32 0, i32 15, i32 %15, i32 1, i32 2
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i.i, align 4
  %mul.i.i = shl i32 %19, 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 128
  %22 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring.i, align 4
  %addr.i.i = getelementptr %struct.gsi, ptr %17, i32 0, i32 15, i32 %15, i32 1, i32 1
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %mul.i.i, ptr noundef %23, i32 noundef %25, i32 noundef 0) #7
  %shl.i.i = shl nuw i32 1, %15
  %neg.i.i = xor i32 %shl.i.i, -1
  %event_bitmap.i.i = getelementptr inbounds %struct.gsi, ptr %17, i32 0, i32 7
  %26 = ptrtoint ptr %event_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %event_bitmap.i.i, align 4
  %and.i.i = and i32 %27, %neg.i.i
  store i32 %and.i.i, ptr %event_bitmap.i.i, align 4
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_channel_trans_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_cmd_pool_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_channel_trans_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_pool_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/gsi.c", i32 1738, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gsi_modem_channel_flow_control._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @gsi_modem_channel_flow_control._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ipa/gsi.c", i32 1935, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @gsi_setup._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @gsi_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ipa/gsi.c", i32 2221, i32 59}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ipa/gsi.c", i32 2223, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gsi_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @gsi_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ipa/gsi.c", i32 2229, i32 3}
!24 = !{ptr @gsi_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gsi_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ipa/gsi.c", i32 2236, i32 3}
!28 = !{ptr @gsi_init._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @gsi_init._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ipa/gsi.c", i32 2243, i32 3}
!32 = !{ptr @gsi_init._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gsi_init._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @gsi_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/ipa/gsi.c", i32 2259, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ipa/gsi.c", i32 539, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @gsi_channel_start_command._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @gsi_channel_start_command._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ipa/gsi.c", i32 551, i32 2}
!44 = !{ptr @gsi_channel_start_command._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gsi_channel_start_command._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ipa/gsi.c", i32 498, i32 2}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gsi_channel_command._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gsi_channel_command._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ipa/gsi.c", i32 573, i32 3}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gsi_channel_stop_command._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gsi_channel_stop_command._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ipa/gsi.c", i32 589, i32 2}
!58 = !{ptr @gsi_channel_stop_command._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gsi_channel_stop_command._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ipa/gsi.c", i32 609, i32 4}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gsi_channel_reset_command._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gsi_channel_reset_command._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ipa/gsi.c", i32 619, i32 3}
!67 = !{ptr @gsi_channel_reset_command._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gsi_channel_reset_command._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ipa/gsi.c", i32 1690, i32 2}
!71 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @gsi_generic_command._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @gsi_generic_command._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ipa/gsi.c", i32 1871, i32 3}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gsi_irq_setup._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @gsi_irq_setup._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ipa/gsi.c", i32 1299, i32 5}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @gsi_isr._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @gsi_isr._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ipa/gsi.c", i32 1307, i32 4}
!86 = !{ptr @gsi_isr._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @gsi_isr._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ipa/gsi.c", i32 1227, i32 3}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @gsi_isr_glob_ee._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @gsi_isr_glob_ee._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ipa/gsi.c", i32 1157, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @gsi_isr_glob_err._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @gsi_isr_glob_err._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ipa/gsi.c", i32 1104, i32 3}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @gsi_isr_glob_chan_err._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @gsi_isr_glob_chan_err._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ipa/gsi.c", i32 1110, i32 2}
!105 = !{ptr @gsi_isr_glob_chan_err._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @gsi_isr_glob_chan_err._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ipa/gsi.c", i32 1123, i32 3}
!109 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @gsi_isr_glob_evt_err._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @gsi_isr_glob_evt_err._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ipa/gsi.c", i32 1129, i32 2}
!114 = !{ptr @gsi_isr_glob_evt_err._entry.59, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gsi_isr_glob_evt_err._entry_ptr.61, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ipa/gsi.c", i32 1199, i32 3}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @gsi_isr_gp_int1._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @gsi_isr_gp_int1._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ipa/gsi.c", i32 1257, i32 2}
!123 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @gsi_isr_general._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @gsi_isr_general._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ipa/gsi.c", i32 1900, i32 3}
!128 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @gsi_ring_setup._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @gsi_ring_setup._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ipa/gsi.c", i32 1904, i32 3}
!133 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @gsi_ring_setup._entry.68, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @gsi_ring_setup._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ipa/gsi.c", i32 1912, i32 3}
!138 = !{ptr @gsi_ring_setup._entry.72, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @gsi_ring_setup._entry_ptr.74, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ipa/gsi.c", i32 1916, i32 3}
!142 = !{ptr @gsi_ring_setup._entry.75, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @gsi_ring_setup._entry_ptr.77, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ipa/gsi.c", i32 1768, i32 3}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @gsi_channel_setup._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @gsi_channel_setup._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ipa/gsi.c", i32 399, i32 3}
!151 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gsi_evt_ring_alloc_command._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @gsi_evt_ring_alloc_command._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ipa/gsi.c", i32 411, i32 2}
!156 = !{ptr @gsi_evt_ring_alloc_command._entry.82, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @gsi_evt_ring_alloc_command._entry_ptr.84, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ipa/gsi.c", i32 387, i32 2}
!160 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @gsi_evt_ring_command._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @gsi_evt_ring_command._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ipa/gsi.c", i32 512, i32 3}
!165 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @gsi_channel_alloc_command._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @gsi_channel_alloc_command._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ipa/gsi.c", i32 524, i32 2}
!170 = !{ptr @gsi_channel_alloc_command._entry.89, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @gsi_channel_alloc_command._entry_ptr.91, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ipa/gsi.c", i32 448, i32 3}
!174 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @gsi_evt_ring_de_alloc_command._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @gsi_evt_ring_de_alloc_command._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ipa/gsi.c", i32 460, i32 2}
!179 = !{ptr @gsi_evt_ring_de_alloc_command._entry.94, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @gsi_evt_ring_de_alloc_command._entry_ptr.96, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ipa/gsi.c", i32 1713, i32 3}
!183 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @gsi_modem_channel_halt._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @gsi_modem_channel_halt._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ipa/gsi.c", i32 632, i32 3}
!188 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @gsi_channel_de_alloc_command._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @gsi_channel_de_alloc_command._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ipa/gsi.c", i32 643, i32 3}
!193 = !{ptr @gsi_channel_de_alloc_command._entry.101, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @gsi_channel_de_alloc_command._entry_ptr.103, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.104, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ipa/gsi.c", i32 425, i32 3}
!197 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @gsi_evt_ring_reset_command._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @gsi_evt_ring_reset_command._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ipa/gsi.c", i32 437, i32 2}
!202 = !{ptr @gsi_evt_ring_reset_command._entry.106, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @gsi_evt_ring_reset_command._entry_ptr.108, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @init_completion.__key, !205, !"__key", i1 false, i1 false}
!205 = !{!"../include/linux/completion.h", i32 87, i32 2}
!206 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.110, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ipa/gsi.c", i32 2075, i32 3}
!209 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @gsi_channel_init_one._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @gsi_channel_init_one._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.113, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ipa/gsi.c", i32 2097, i32 3}
!214 = !{ptr @gsi_channel_init_one._entry.112, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @gsi_channel_init_one._entry_ptr.114, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ipa/gsi.c", i32 2016, i32 3}
!218 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @gsi_channel_data_valid._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @gsi_channel_data_valid._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ipa/gsi.c", i32 2022, i32 3}
!223 = !{ptr @gsi_channel_data_valid._entry.117, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @gsi_channel_data_valid._entry_ptr.119, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ipa/gsi.c", i32 2028, i32 3}
!227 = !{ptr @gsi_channel_data_valid._entry.120, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @gsi_channel_data_valid._entry_ptr.122, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.124, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ipa/gsi.c", i32 2039, i32 3}
!231 = !{ptr @gsi_channel_data_valid._entry.123, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @gsi_channel_data_valid._entry_ptr.125, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.127, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ipa/gsi.c", i32 2046, i32 3}
!235 = !{ptr @gsi_channel_data_valid._entry.126, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @gsi_channel_data_valid._entry_ptr.128, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.130, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ipa/gsi.c", i32 2052, i32 3}
!239 = !{ptr @gsi_channel_data_valid._entry.129, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @gsi_channel_data_valid._entry_ptr.131, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.132, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ipa/gsi.c", i32 1988, i32 2}
!243 = !{ptr @.str.133, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @gsi_channel_evt_ring_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @gsi_channel_evt_ring_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.134, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ipa/gsi.c", i32 1442, i32 3}
!248 = !{ptr @.str.135, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @gsi_evt_ring_id_alloc._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @gsi_evt_ring_id_alloc._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{i64 2149421956}
!261 = !{i64 1879834}
!262 = !{i64 1880252}
!263 = !{i64 2149420601}
!264 = !{i8 0, i8 2}
!265 = !{i64 2148463872, i64 2148463904, i64 2148463933, i64 2148463967, i64 2148463998, i64 2148464021}
!266 = !{!"branch_weights", i32 1, i32 2000}
!267 = !{!"branch_weights", i32 2000, i32 1}
!268 = !{i32 0, i32 33}
!269 = !{i32 0, i32 17}
!270 = !{!"auto-init"}
