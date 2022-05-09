; ModuleID = '/llk/IR_all_yes/drivers/mailbox/arm_mhuv2.c_pt.bc'
source_filename = "../drivers/mailbox/arm_mhuv2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mhuv2_protocol_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.mhuv2 = type { %struct.mbox_controller, %union.anon.84, i32, i32, i32, i32, i32, ptr, %struct.spinlock }
%union.anon.84 = type { ptr }
%struct.mhu2_send_frame_reg = type { [124 x %struct.mhu2_send_ch_wn_reg], %struct.mhu_cfg_t, i32, i32, i32, %struct.int_st_t, %struct.int_clr_t, %struct.int_en_t, i32, [4 x i32], [24 x i8], %struct.iidr_t, %struct.aidr_t }
%struct.mhu2_send_ch_wn_reg = type { i32, [8 x i8], i32, i32, i32, i32, [4 x i8] }
%struct.mhu_cfg_t = type { i32 }
%struct.int_st_t = type { i32 }
%struct.int_clr_t = type { i32 }
%struct.int_en_t = type { i32 }
%struct.iidr_t = type { i32 }
%struct.aidr_t = type { i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.mhu2_recv_frame_reg = type { [124 x %struct.mhu2_recv_ch_wn_reg], %struct.mhu_cfg_t, [12 x i8], %struct.int_st_t, %struct.int_clr_t, %struct.int_en_t, i32, [4 x i32], [24 x i8], %struct.iidr_t, %struct.aidr_t }
%struct.mhu2_recv_ch_wn_reg = type { i32, i32, i32, [4 x i8], i32, i32, i32, [4 x i8] }
%struct.mhuv2_mbox_chan_priv = type { ptr, i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, i32 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.arm_mhuv2_mbox_msg = type { ptr, i32 }

@__initcall__kmod_arm_mhuv2__291_1131_mhuv2_driver_init6 = internal global ptr @mhuv2_driver_init, section ".initcall6.init", align 4
@mhuv2_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mhuv2_probe, ptr @mhuv2_remove, ptr null, ptr @mhuv2_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mhuv2_driver_exit = internal global ptr @mhuv2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"arm_mhuv2.file=drivers/mailbox/arm_mhuv2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"arm_mhuv2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [39 x i8] c"arm_mhuv2.description=ARM MHUv2 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [56 x i8] c"arm_mhuv2.author=Viresh Kumar <viresh.kumar@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [63 x i8] c"arm_mhuv2.author=Tushar Khandelwal <tushar.khandelwal@arm.com>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arm-mhuv2\00", [22 x i8] zeroinitializer }, align 32
@mhuv2_ids = internal global { [3 x %struct.amba_id], [60 x i8] } { [3 x %struct.amba_id] [%struct.amba_id { i32 766161, i32 1048575, ptr null }, %struct.amba_id { i32 766070, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm,mhuv2-tx\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm,mhuv2-rx\00", [19 x i8] zeroinitializer }, align 32
@mhuv2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1079, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid compatible property\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mhuv2_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mailbox/arm_mhuv2.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mhuv2_probe._entry_ptr = internal global ptr @mhuv2_probe._entry, section ".printk_index", align 4
@mhuv2_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1095, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register ARM MHUv2 driver %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mhuv2_probe._entry_ptr.10 = internal global ptr @mhuv2_probe._entry.8, section ".printk_index", align 4
@mhuv2_mbox_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 830, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Couldn't xlate to a valid channel (%d: %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mhuv2_mbox_of_xlate\00", [44 x i8] zeroinitializer }, align 32
@mhuv2_mbox_of_xlate._entry_ptr = internal global ptr @mhuv2_mbox_of_xlate._entry, section ".printk_index", align 4
@mhuv2_sender_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @mhuv2_sender_send_data, ptr null, ptr @mhuv2_sender_startup, ptr @mhuv2_sender_shutdown, ptr @mhuv2_sender_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@mhuv2_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&mhu->doorbell_pending_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mhuv2-tx\00", [23 x i8] zeroinitializer }, align 32
@mhuv2_tx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 989, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Failed to request tx IRQ, fallback to polling mode: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhuv2_tx_init\00", [18 x i8] zeroinitializer }, align 32
@mhuv2_tx_init._entry_ptr = internal global ptr @mhuv2_tx_init._entry, section ".printk_index", align 4
@mhuv2_sender_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 549, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to find channel for the Tx interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mhuv2_sender_interrupt\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mhuv2_sender_interrupt._entry_ptr = internal global ptr @mhuv2_sender_interrupt._entry, section ".printk_index", align 4
@mhuv2_doorbell_ops = internal constant { %struct.mhuv2_protocol_ops, [36 x i8] } { %struct.mhuv2_protocol_ops { ptr @mhuv2_doorbell_rx_startup, ptr @mhuv2_doorbell_rx_shutdown, ptr @mhuv2_doorbell_read_data, ptr null, ptr null, ptr @mhuv2_doorbell_last_tx_done, ptr @mhuv2_doorbell_send_data }, [36 x i8] zeroinitializer }, align 32
@mhuv2_sender_interrupt._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.5, i32 563, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Tx interrupt Received on channel (%u) not currently attached to a mailbox client\0A\00", [46 x i8] zeroinitializer }, align 32
@mhuv2_sender_interrupt._entry_ptr.22 = internal global ptr @mhuv2_sender_interrupt._entry.20, section ".printk_index", align 4
@mhuv2_sender_interrupt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.5, i32 593, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Tx interrupt received on doorbell (%u : %u) channel not currently attached to a mailbox client\0A\00", [32 x i8] zeroinitializer }, align 32
@mhuv2_sender_interrupt._entry_ptr.25 = internal global ptr @mhuv2_sender_interrupt._entry.23, section ".printk_index", align 4
@mhuv2_sender_interrupt.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.18, ptr @.str.5, ptr @.str.27, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arm_mhuv2\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Couldn't find the doorbell (%u) for the Tx interrupt interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@mhuv2_receiver_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @mhuv2_receiver_send_data, ptr null, ptr @mhuv2_receiver_startup, ptr @mhuv2_receiver_shutdown, ptr @mhuv2_receiver_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@mhuv2_rx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 1033, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing receiver IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mhuv2_rx_init\00", [18 x i8] zeroinitializer }, align 32
@mhuv2_rx_init._entry_ptr = internal global ptr @mhuv2_rx_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mhuv2-rx\00", [23 x i8] zeroinitializer }, align 32
@mhuv2_rx_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.5, i32 1041, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request rx IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@mhuv2_rx_init._entry_ptr.33 = internal global ptr @mhuv2_rx_init._entry.31, section ".printk_index", align 4
@mhuv2_receiver_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 773, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Trying to transmit on a receiver MHU frame\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mhuv2_receiver_send_data\00", [39 x i8] zeroinitializer }, align 32
@mhuv2_receiver_send_data._entry_ptr = internal global ptr @mhuv2_receiver_send_data._entry, section ".printk_index", align 4
@mhuv2_receiver_last_tx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 779, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Trying to Tx poll on a receiver MHU frame\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mhuv2_receiver_last_tx_done\00", [36 x i8] zeroinitializer }, align 32
@mhuv2_receiver_last_tx_done._entry_ptr = internal global ptr @mhuv2_receiver_last_tx_done._entry, section ".printk_index", align 4
@mhuv2_receiver_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 684, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to find channel for the rx interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mhuv2_receiver_interrupt\00", [39 x i8] zeroinitializer }, align 32
@mhuv2_receiver_interrupt._entry_ptr = internal global ptr @mhuv2_receiver_interrupt._entry, section ".printk_index", align 4
@mhuv2_receiver_interrupt._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.5, i32 694, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Received data on channel (%u) not currently attached to a mailbox client\0A\00", [54 x i8] zeroinitializer }, align 32
@mhuv2_receiver_interrupt._entry_ptr.42 = internal global ptr @mhuv2_receiver_interrupt._entry.40, section ".printk_index", align 4
@mhuv2_receiver_interrupt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.5, i32 696, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read data: %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@mhuv2_receiver_interrupt._entry_ptr.45 = internal global ptr @mhuv2_receiver_interrupt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arm,mhuv2-protocols\00", [44 x i8] zeroinitializer }, align 32
@mhuv2_parse_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 939, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid %s property (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mhuv2_parse_channels\00", [43 x i8] zeroinitializer }, align 32
@mhuv2_parse_channels._entry_ptr = internal global ptr @mhuv2_parse_channels._entry, section ".printk_index", align 4
@mhuv2_parse_channels._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 950, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read %s property: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mhuv2_parse_channels._entry_ptr.51 = internal global ptr @mhuv2_parse_channels._entry.49, section ".printk_index", align 4
@mhuv2_verify_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 844, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Window size can't be zero (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mhuv2_verify_protocol\00", [42 x i8] zeroinitializer }, align 32
@mhuv2_verify_protocol._entry_ptr = internal global ptr @mhuv2_verify_protocol._entry, section ".printk_index", align 4
@mhuv2_verify_protocol._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 855, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid protocol (%d) present in %s property at index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mhuv2_verify_protocol._entry_ptr.56 = internal global ptr @mhuv2_verify_protocol._entry.54, section ".printk_index", align 4
@mhuv2_verify_protocol._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.5, i32 862, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Channel windows can't be more than what's implemented by the hardware ( %d: %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@mhuv2_verify_protocol._entry_ptr.59 = internal global ptr @mhuv2_verify_protocol._entry.57, section ".printk_index", align 4
@mhuv2_data_transfer_ops = internal constant { %struct.mhuv2_protocol_ops, [36 x i8] } { %struct.mhuv2_protocol_ops { ptr @mhuv2_data_transfer_rx_startup, ptr @mhuv2_data_transfer_rx_shutdown, ptr @mhuv2_data_transfer_read_data, ptr @mhuv2_data_transfer_tx_startup, ptr @mhuv2_data_transfer_tx_shutdown, ptr @mhuv2_data_transfer_last_tx_done, ptr @mhuv2_data_transfer_send_data }, [36 x i8] zeroinitializer }, align 32
@mhuv2_data_transfer_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 455, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"Data aligned at first window can't be zero to guarantee interrupt generation at receiver\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mhuv2_data_transfer_send_data\00", [34 x i8] zeroinitializer }, align 32
@mhuv2_data_transfer_send_data._entry_ptr = internal global ptr @mhuv2_data_transfer_send_data._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"mhuv2_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1123, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1125, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"mhuv2_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1108, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1074, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1076, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1079, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1095, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 829, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"mhuv2_sender_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 747, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 977, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 986, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 988, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 549, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"mhuv2_doorbell_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 313, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 562, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 592, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 611, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"mhuv2_receiver_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 783, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1033, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1039, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1041, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 772, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 779, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 684, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 693, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 696, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 936, i32 42 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 938, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 949, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 844, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 854, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 861, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"mhuv2_data_transfer_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 487, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [31 x i8] c"../drivers/mailbox/arm_mhuv2.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 455, i32 4 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mhuv2_driver_exit, ptr @__initcall__kmod_arm_mhuv2__291_1131_mhuv2_driver_init6, ptr @mhuv2_data_transfer_send_data._entry, ptr @mhuv2_data_transfer_send_data._entry_ptr, ptr @mhuv2_driver_exit, ptr @mhuv2_mbox_of_xlate._entry, ptr @mhuv2_mbox_of_xlate._entry_ptr, ptr @mhuv2_parse_channels._entry, ptr @mhuv2_parse_channels._entry.49, ptr @mhuv2_parse_channels._entry_ptr, ptr @mhuv2_parse_channels._entry_ptr.51, ptr @mhuv2_probe._entry, ptr @mhuv2_probe._entry.8, ptr @mhuv2_probe._entry_ptr, ptr @mhuv2_probe._entry_ptr.10, ptr @mhuv2_receiver_interrupt._entry, ptr @mhuv2_receiver_interrupt._entry.40, ptr @mhuv2_receiver_interrupt._entry.43, ptr @mhuv2_receiver_interrupt._entry_ptr, ptr @mhuv2_receiver_interrupt._entry_ptr.42, ptr @mhuv2_receiver_interrupt._entry_ptr.45, ptr @mhuv2_receiver_last_tx_done._entry, ptr @mhuv2_receiver_last_tx_done._entry_ptr, ptr @mhuv2_receiver_send_data._entry, ptr @mhuv2_receiver_send_data._entry_ptr, ptr @mhuv2_rx_init._entry, ptr @mhuv2_rx_init._entry.31, ptr @mhuv2_rx_init._entry_ptr, ptr @mhuv2_rx_init._entry_ptr.33, ptr @mhuv2_sender_interrupt._entry, ptr @mhuv2_sender_interrupt._entry.20, ptr @mhuv2_sender_interrupt._entry.23, ptr @mhuv2_sender_interrupt._entry_ptr, ptr @mhuv2_sender_interrupt._entry_ptr.22, ptr @mhuv2_sender_interrupt._entry_ptr.25, ptr @mhuv2_tx_init._entry, ptr @mhuv2_tx_init._entry_ptr, ptr @mhuv2_verify_protocol._entry, ptr @mhuv2_verify_protocol._entry.54, ptr @mhuv2_verify_protocol._entry.57, ptr @mhuv2_verify_protocol._entry_ptr, ptr @mhuv2_verify_protocol._entry_ptr.56, ptr @mhuv2_verify_protocol._entry_ptr.59, ptr @mhuv2_driver, ptr @.str, ptr @mhuv2_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @mhuv2_sender_ops, ptr @mhuv2_tx_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mhuv2_doorbell_ops, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @mhuv2_receiver_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @mhuv2_data_transfer_ops, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_mbox_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_sender_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_tx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_sender_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_doorbell_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_sender_interrupt._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_sender_interrupt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_rx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_rx_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_last_tx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_interrupt._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_receiver_interrupt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_parse_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_parse_channels._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_verify_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_verify_protocol._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_verify_protocol._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_data_transfer_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhuv2_data_transfer_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @mhuv2_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amba_driver_unregister(ptr noundef nonnull @mhuv2_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_of_iomap(ptr noundef %adev, ptr noundef %1, i32 noundef 0, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 160, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %adev, ptr %call.i, align 8
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mhuv2_mbox_of_xlate, ptr %of_xlate, align 8
  %call9 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %frame.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %frame.i, align 4
  %ops.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mhuv2_sender_ops, ptr %ops.i, align 4
  %8 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %8, align 8
  %mhu_cfg.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %call, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mhu_cfg.i) #6, !srcloc !147
  %11 = lshr i32 %10, 1
  %bf.lshr.i = and i32 %11, 127
  %windows.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %windows.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.lshr.i, ptr %windows.i, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %aidr.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %14, i32 0, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aidr.i) #6, !srcloc !147
  %16 = lshr i32 %15, 4
  %bf.lshr10.i = and i32 %16, 15
  %minor.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %minor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bf.lshr10.i, ptr %minor.i, align 8
  %doorbell_pending_lock.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %doorbell_pending_lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @mhuv2_tx_init.__key, i16 noundef signext 3) #6
  %18 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then11.if.end36.i_crit_edge, label %land.lhs.true.i

if.then11.if.end36.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.then11
  %irq.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not.i = icmp eq i32 %21, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call16.i = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %21, ptr noundef null, ptr noundef nonnull @mhuv2_sender_interrupt, i32 noundef 8192, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %call16.i) #9
  br label %if.end36.i

if.else.i:                                        ; preds = %if.then.i
  %txdone_irq.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %txdone_irq.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %txdone_irq.i, align 8
  %txdone_poll.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %txdone_poll.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %txdone_poll.i, align 1
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 8
  %irq26.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %irq26.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq26.i, align 8
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 8
  %int_en.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %28, i32 0, i32 7
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_en.i) #6, !srcloc !147
  %30 = or i32 %29, 32
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %8, align 8
  %int_en32.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %32, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en32.i, i32 %30) #6, !srcloc !148
  %33 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1.not.i = icmp eq i32 %34, 0
  br i1 %cmp1.not.i, label %if.else.i.out.i_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %8, align 8
  %int_en35.i = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %36, i32 0, i32 %i.02.i, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en35.i, i32 0) #6, !srcloc !148
  %inc.i = add nuw i32 %i.02.i, 1
  %37 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %windows.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.out.i_crit_edge

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end36.i:                                       ; preds = %do.end21.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.then11.if.end36.i_crit_edge
  %txdone_irq38.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %txdone_irq38.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %txdone_irq38.i, align 8
  %txdone_poll40.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %txdone_poll40.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %txdone_poll40.i, align 1
  %txpoll_period.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 6
  %41 = ptrtoint ptr %txpoll_period.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %txpoll_period.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end36.i, %for.body.i.out.i_crit_edge, %if.else.i.out.i_crit_edge
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %8, align 8
  %access_request.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %43, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %access_request.i, i32 16777216) #6, !srcloc !148
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %out.i
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %8, align 8
  %access_ready.i = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %access_ready.i) #6, !srcloc !147
  %tobool45.not.i = icmp eq i32 %46, 0
  br i1 %tobool45.not.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.do.body23_crit_edge

while.cond.i.do.body23_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.else:                                          ; preds = %if.end6
  %call13 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %if.then15

if.then15:                                        ; preds = %if.else
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 8
  %frame.i82 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %frame.i82 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %frame.i82, align 4
  %ops.i83 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %ops.i83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mhuv2_receiver_ops, ptr %ops.i83, align 4
  %51 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call, ptr %51, align 8
  %mhu_cfg.i84 = getelementptr inbounds %struct.mhu2_recv_frame_reg, ptr %call, i32 0, i32 1
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mhu_cfg.i84) #6, !srcloc !147
  %54 = lshr i32 %53, 1
  %bf.lshr.i85 = and i32 %54, 127
  %windows.i86 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %windows.i86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %bf.lshr.i85, ptr %windows.i86, align 4
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 8
  %aidr.i87 = getelementptr inbounds %struct.mhu2_recv_frame_reg, ptr %57, i32 0, i32 10
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aidr.i87) #6, !srcloc !147
  %59 = lshr i32 %58, 4
  %bf.lshr10.i88 = and i32 %59, 15
  %minor.i89 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %minor.i89 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %bf.lshr10.i88, ptr %minor.i89, align 8
  %irq.i90 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %61 = ptrtoint ptr %irq.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq.i90, align 8
  %irq11.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %irq11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %irq11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i91 = icmp eq i32 %62, 0
  br i1 %tobool.not.i91, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %call14.i = tail call i32 @devm_request_threaded_irq(ptr noundef %48, i32 noundef %62, ptr noundef null, ptr noundef nonnull @mhuv2_receiver_interrupt, i32 noundef 8192, ptr noundef nonnull @.str.30, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.cond.preheader.i, label %do.end19.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %64 = ptrtoint ptr %windows.i86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %windows.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp57.not.i = icmp eq i32 %65, 0
  br i1 %cmp57.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i94_crit_edge

for.cond.preheader.i.for.body.i94_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i94

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.32) #9
  br label %cleanup

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %for.cond.preheader.i.for.body.i94_crit_edge
  %i.058.i = phi i32 [ %inc.i92, %for.body.i94.for.body.i94_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i94_crit_edge ]
  %66 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %51, align 8
  %mask_set.i = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %67, i32 0, i32 %i.058.i, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask_set.i, i32 -1) #6, !srcloc !148
  %inc.i92 = add nuw i32 %i.058.i, 1
  %68 = ptrtoint ptr %windows.i86 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %windows.i86, align 4
  %cmp.i93 = icmp ult i32 %inc.i92, %69
  br i1 %cmp.i93, label %for.body.i94.for.body.i94_crit_edge, label %for.body.i94.for.end.i_crit_edge

for.body.i94.for.end.i_crit_edge:                 ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i94

for.end.i:                                        ; preds = %for.body.i94.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %70 = ptrtoint ptr %minor.i89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %minor.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool24.not.i = icmp eq i32 %71, 0
  br i1 %tobool24.not.i, label %for.end.i.do.body23_crit_edge, label %if.then25.i

for.end.i.do.body23_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %51, align 8
  %int_en.i95 = getelementptr inbounds %struct.mhu2_recv_frame_reg, ptr %73, i32 0, i32 5
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_en.i95) #6, !srcloc !147
  %75 = or i32 %74, 32
  %76 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %51, align 8
  %int_en31.i = getelementptr inbounds %struct.mhu2_recv_frame_reg, ptr %77, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en31.i, i32 %75) #6, !srcloc !148
  br label %do.body23

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.body23:                                        ; preds = %if.then25.i, %for.end.i.do.body23_crit_edge, %while.cond.i.do.body23_crit_edge
  %windows = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 4
  %78 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool24.not = icmp eq i32 %79, 0
  br i1 %tobool24.not, label %do.body29, label %do.end37, !prof !149

do.body29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/arm_mhuv2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1085, 0\0A.popsection", ""() #6, !srcloc !150
  unreachable

do.end37:                                         ; preds = %do.body23
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %83, ptr noundef nonnull @.str.46, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i96 = icmp sgt i32 %call.i.i, 0
  %84 = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i97 = icmp eq i32 %84, 0
  %or.cond.i = and i1 %cmp.i96, %tobool.not.i97
  br i1 %or.cond.i, label %if.end.i99, label %do.end.i98

do.end.i98:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %call.i.i) #9
  br label %cleanup

if.end.i99:                                       ; preds = %do.end37
  %85 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 4) #6
  %86 = extractvalue { i32, i1 } %85, 1
  br i1 %86, label %if.end.i99.cleanup_crit_edge, label %devm_kmalloc_array.exit.i, !prof !149

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i99
  %87 = extractvalue { i32, i1 } %85, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %81, i32 noundef %87, i32 noundef 3264) #6
  %tobool3.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool3.not.i, label %devm_kmalloc_array.exit.i.cleanup_crit_edge, label %if.end5.i

devm_kmalloc_array.exit.i.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %call.i42.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %83, ptr noundef nonnull @.str.46, ptr noundef nonnull %call5.i.i, i32 noundef %call.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i42.i)
  %tobool7.not.i = icmp sgt i32 %call.i42.i, -1
  br i1 %tobool7.not.i, label %for.body.lr.ph.i.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.46, i32 noundef %call.i42.i) #9
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end5.i
  %protocols13.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 7
  %88 = ptrtoint ptr %protocols13.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call5.i.i, ptr %protocols13.i, align 8
  %length.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 6
  %89 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i.i, ptr %length.i, align 4
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.064.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add16.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %total_windows.063.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %channels.062.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %channels.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = or i32 %i.064.i.i, 1
  %arrayidx3.i.i = getelementptr i32, ptr %call5.i.i, i32 %add.i.i
  %92 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i43.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.52, i32 noundef %i.064.i.i) #9
  br label %cleanup

if.end.i43.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr i32, ptr %call5.i.i, i32 %i.064.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i, align 4
  %add4.i.i = add i32 %93, %total_windows.063.i.i
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i32 %95, label %do.end13.i.i [
    i32 0, label %if.then6.i.i
    i32 1, label %if.end.i43.i.for.inc.i.i_crit_edge
  ]

if.end.i43.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i.i = shl i32 %93, 5
  br label %for.inc.i.i

do.end13.i.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.55, i32 noundef %95, ptr noundef nonnull @.str.46, i32 noundef %i.064.i.i) #9
  br label %cleanup

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.end.i43.i.for.inc.i.i_crit_edge
  %mul.pn.i.i = phi i32 [ %mul.i.i, %if.then6.i.i ], [ %95, %if.end.i43.i.for.inc.i.i_crit_edge ]
  %channels.1.i.i = add i32 %mul.pn.i.i, %channels.062.i.i
  %add16.i.i = add i32 %i.064.i.i, 2
  %cmp.i.i = icmp ult i32 %add16.i.i, %call.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %97 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %windows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i.i, i32 %98)
  %cmp18.i.i = icmp ugt i32 %add4.i.i, %98
  br i1 %cmp18.i.i, label %do.end22.i.i, label %if.end17.i

do.end22.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.58, i32 noundef %add4.i.i, i32 noundef %98) #9
  br label %cleanup

if.end17.i:                                       ; preds = %for.end.i.i
  %num_chans.i.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %99 = ptrtoint ptr %num_chans.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %channels.1.i.i, ptr %num_chans.i.i, align 4
  %100 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %channels.1.i.i, i32 208) #6
  %101 = extractvalue { i32, i1 } %100, 1
  br i1 %101, label %if.end17.i.cleanup_crit_edge, label %devm_kcalloc.exit.i.i, !prof !149

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

devm_kcalloc.exit.i.i:                            ; preds = %if.end17.i
  %102 = extractvalue { i32, i1 } %100, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %91, i32 noundef %102, i32 noundef 3520) #6
  %tobool.not.i46.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i46.i, label %devm_kcalloc.exit.i.i.cleanup_crit_edge, label %if.end.i48.i

devm_kcalloc.exit.i.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i48.i:                                     ; preds = %devm_kcalloc.exit.i.i
  %chans3.i.i = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %103 = ptrtoint ptr %chans3.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call5.i.i.i.i, ptr %chans3.i.i, align 8
  %104 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp115.not.i.i = icmp eq i32 %105, 0
  br i1 %cmp115.not.i.i, label %if.end.i48.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i50.i

if.end.i48.i.do.body.i.i_crit_edge:               ; preds = %if.end.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

for.body.lr.ph.i50.i:                             ; preds = %if.end.i48.i
  %frame.i.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 2
  %minor.i.i = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 5
  %106 = getelementptr inbounds %struct.mhuv2, ptr %call.i, i32 0, i32 1
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %for.inc38.i.i.for.body.i53.i_crit_edge, %for.body.lr.ph.i50.i
  %i.0120.i.i = phi i32 [ 0, %for.body.lr.ph.i50.i ], [ %add39.i.i, %for.inc38.i.i.for.body.i53.i_crit_edge ]
  %next_window.0119.i.i = phi i32 [ 0, %for.body.lr.ph.i50.i ], [ %add.i51.i, %for.inc38.i.i.for.body.i53.i_crit_edge ]
  %windows.0118.i.i = phi i32 [ 0, %for.body.lr.ph.i50.i ], [ %112, %for.inc38.i.i.for.body.i53.i_crit_edge ]
  %chans.0117.i.i = phi ptr [ %call5.i.i.i.i, %for.body.lr.ph.i50.i ], [ %chans.3.i.i, %for.inc38.i.i.for.body.i53.i_crit_edge ]
  %add.i51.i = add i32 %windows.0118.i.i, %next_window.0119.i.i
  %107 = ptrtoint ptr %protocols13.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %protocols13.i, align 8
  %arrayidx.i52.i = getelementptr i32, ptr %108, i32 %i.0120.i.i
  %109 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i52.i, align 4
  %add5.i.i = or i32 %i.0120.i.i, 1
  %arrayidx6.i.i = getelementptr i32, ptr %108, i32 %add5.i.i
  %111 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp7.i.i = icmp eq i32 %110, 1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %for.cond14.preheader.i.i

for.cond14.preheader.i.i:                         ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp15111.i.i = icmp sgt i32 %112, 0
  br i1 %cmp15111.i.i, label %for.cond14.preheader.i.i.for.cond17.preheader.i.i_crit_edge, label %for.cond14.preheader.i.i.for.inc38.i.i_crit_edge

for.cond14.preheader.i.i.for.inc38.i.i_crit_edge: ; preds = %for.cond14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i.i

for.cond14.preheader.i.i.for.cond17.preheader.i.i_crit_edge: ; preds = %for.cond14.preheader.i.i
  br label %for.cond17.preheader.i.i

if.then8.i.i:                                     ; preds = %for.body.i53.i
  %call9.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %91, i32 noundef 16, i32 noundef 3264) #6
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %if.then8.i.i.cleanup_crit_edge, label %if.end12.i.i

if.then8.i.i.cleanup_crit_edge:                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ch_wn_idx.i.i = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %call9.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %ch_wn_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add.i51.i, ptr %ch_wn_idx.i.i, align 4
  %114 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @mhuv2_data_transfer_ops, ptr %call9.i.i, align 4
  %115 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %call9.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %112, ptr %115, align 4
  %incdec.ptr.i.i = getelementptr %struct.mbox_chan, ptr %chans.0117.i.i, i32 1
  %con_priv.i.i = getelementptr inbounds %struct.mbox_chan, ptr %chans.0117.i.i, i32 0, i32 9
  %117 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i.i, ptr %con_priv.i.i, align 4
  br label %for.inc38.i.i

for.cond17.preheader.i.i:                         ; preds = %for.inc35.i.i.for.cond17.preheader.i.i_crit_edge, %for.cond14.preheader.i.i.for.cond17.preheader.i.i_crit_edge
  %j.0113.i.i = phi i32 [ %inc36.i.i, %for.inc35.i.i.for.cond17.preheader.i.i_crit_edge ], [ 0, %for.cond14.preheader.i.i.for.cond17.preheader.i.i_crit_edge ]
  %chans.1112.i.i = phi ptr [ %incdec.ptr27.i.i, %for.inc35.i.i.for.cond17.preheader.i.i_crit_edge ], [ %chans.0117.i.i, %for.cond14.preheader.i.i.for.cond17.preheader.i.i_crit_edge ]
  %add24.i.i = add i32 %j.0113.i.i, %add.i51.i
  br label %for.body19.i.i

for.body19.i.i:                                   ; preds = %if.end23.i.i.for.body19.i.i_crit_edge, %for.cond17.preheader.i.i
  %k.0110.i.i = phi i32 [ 0, %for.cond17.preheader.i.i ], [ %inc.i.i, %if.end23.i.i.for.body19.i.i_crit_edge ]
  %chans.2109.i.i = phi ptr [ %chans.1112.i.i, %for.cond17.preheader.i.i ], [ %incdec.ptr27.i.i, %if.end23.i.i.for.body19.i.i_crit_edge ]
  %call20.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %91, i32 noundef 16, i32 noundef 3264) #6
  %tobool21.not.i.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool21.not.i.i, label %for.body19.i.i.cleanup_crit_edge, label %if.end23.i.i

for.body19.i.i.cleanup_crit_edge:                 ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23.i.i:                                     ; preds = %for.body19.i.i
  %ch_wn_idx25.i.i = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %call20.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %ch_wn_idx25.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %add24.i.i, ptr %ch_wn_idx25.i.i, align 4
  %119 = ptrtoint ptr %call20.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @mhuv2_doorbell_ops, ptr %call20.i.i, align 4
  %120 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %call20.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %k.0110.i.i, ptr %120, align 4
  %incdec.ptr27.i.i = getelementptr %struct.mbox_chan, ptr %chans.2109.i.i, i32 1
  %con_priv28.i.i = getelementptr inbounds %struct.mbox_chan, ptr %chans.2109.i.i, i32 0, i32 9
  %122 = ptrtoint ptr %con_priv28.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call20.i.i, ptr %con_priv28.i.i, align 4
  %inc.i.i = add nuw nsw i32 %k.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.end.i54.i, label %if.end23.i.i.for.body19.i.i_crit_edge

if.end23.i.i.for.body19.i.i_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19.i.i

for.end.i54.i:                                    ; preds = %if.end23.i.i
  %ch_wn_idx25.i.i.le = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %call20.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp29.i.i = icmp eq i32 %124, 1
  br i1 %cmp29.i.i, label %land.lhs.true.i.i, label %for.end.i54.i.for.inc35.i.i_crit_edge

for.end.i54.i.for.inc35.i.i_crit_edge:            ; preds = %for.end.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i54.i
  %125 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %minor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool30.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool30.not.i.i, label %land.lhs.true.i.i.for.inc35.i.i_crit_edge, label %if.then31.i.i

land.lhs.true.i.i.for.inc35.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i.i

if.then31.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %106, align 8
  %129 = ptrtoint ptr %ch_wn_idx25.i.i.le to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ch_wn_idx25.i.i.le, align 4
  %int_en.i.i = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %128, i32 0, i32 %130, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en.i.i, i32 16777216) #6, !srcloc !148
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %if.then31.i.i, %land.lhs.true.i.i.for.inc35.i.i_crit_edge, %for.end.i54.i.for.inc35.i.i_crit_edge
  %inc36.i.i = add nuw nsw i32 %j.0113.i.i, 1
  %exitcond124.not.i.i = icmp eq i32 %inc36.i.i, %112
  br i1 %exitcond124.not.i.i, label %for.inc35.i.i.for.inc38.i.i_crit_edge, label %for.inc35.i.i.for.cond17.preheader.i.i_crit_edge

for.inc35.i.i.for.cond17.preheader.i.i_crit_edge: ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond17.preheader.i.i

for.inc35.i.i.for.inc38.i.i_crit_edge:            ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i.i

for.inc38.i.i:                                    ; preds = %for.inc35.i.i.for.inc38.i.i_crit_edge, %if.end12.i.i, %for.cond14.preheader.i.i.for.inc38.i.i_crit_edge
  %chans.3.i.i = phi ptr [ %incdec.ptr.i.i, %if.end12.i.i ], [ %chans.0117.i.i, %for.cond14.preheader.i.i.for.inc38.i.i_crit_edge ], [ %incdec.ptr27.i.i, %for.inc35.i.i.for.inc38.i.i_crit_edge ]
  %add39.i.i = add i32 %i.0120.i.i, 2
  %131 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %length.i, align 4
  %cmp.i55.i = icmp ult i32 %add39.i.i, %132
  br i1 %cmp.i55.i, label %for.inc38.i.i.for.body.i53.i_crit_edge, label %for.inc38.i.i.do.body.i.i_crit_edge

for.inc38.i.i.do.body.i.i_crit_edge:              ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

for.inc38.i.i.for.body.i53.i_crit_edge:           ; preds = %for.inc38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53.i

do.body.i.i:                                      ; preds = %for.inc38.i.i.do.body.i.i_crit_edge, %if.end.i48.i.do.body.i.i_crit_edge
  %chans.0.lcssa.i.i = phi ptr [ %call5.i.i.i.i, %if.end.i48.i.do.body.i.i_crit_edge ], [ %chans.3.i.i, %for.inc38.i.i.do.body.i.i_crit_edge ]
  %133 = ptrtoint ptr %chans3.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chans3.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %chans.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %134 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 208
  %135 = ptrtoint ptr %num_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_chans.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %136)
  %cmp43.not.i.i = icmp eq i32 %sub.ptr.div.i.i, %136
  br i1 %cmp43.not.i.i, label %if.end41, label %do.body47.i.i, !prof !151

do.body47.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/arm_mhuv2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #6, !srcloc !152
  unreachable

if.end41:                                         ; preds = %do.body.i.i
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %137 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call44 = tail call i32 @devm_mbox_controller_register(ptr noundef %adev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end41.cleanup_crit_edge, label %do.end49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.9, i32 noundef %call44) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end41.cleanup_crit_edge, %for.body19.i.i.cleanup_crit_edge, %if.then8.i.i.cleanup_crit_edge, %devm_kcalloc.exit.i.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %do.end22.i.i, %do.end13.i.i, %do.end.i.i, %do.end11.i, %devm_kmalloc_array.exit.i.cleanup_crit_edge, %if.end.i99.cleanup_crit_edge, %do.end.i98, %do.end, %do.end19.i, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call44, %do.end49 ], [ 0, %if.end41.cleanup_crit_edge ], [ -22, %do.end ], [ %call14.i, %do.end19.i ], [ -22, %do.end.i ], [ -22, %do.end22.i.i ], [ -22, %do.end.i.i ], [ -22, %do.end13.i.i ], [ -12, %if.end.i99.cleanup_crit_edge ], [ -12, %if.end17.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.cleanup_crit_edge ], [ %call.i42.i, %do.end11.i ], [ -22, %do.end.i98 ], [ -12, %for.body19.i.i.cleanup_crit_edge ], [ -12, %if.then8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_remove(ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %frame = getelementptr inbounds %struct.mhuv2, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds %struct.mhuv2, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %access_request = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %access_request, i32 0) #6, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_iomap(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mhuv2_mbox_of_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %pa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chans1 = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %0 = ptrtoint ptr %chans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chans1, align 8
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %pa, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %pa, i32 0, i32 2
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %pa, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp4 = icmp ugt i32 %5, 31
  br i1 %cmp4, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.mhuv2, ptr %mbox, i32 0, i32 6
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp767.not = icmp eq i32 %7, 0
  br i1 %cmp767.not, label %if.end6.do.end_crit_edge, label %for.body.lr.ph

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end6
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %protocols = getelementptr inbounds %struct.mhuv2, ptr %mbox, i32 0, i32 7
  %10 = ptrtoint ptr %protocols to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %protocols, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.071 = phi i32 [ %9, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add28, %for.inc.for.body_crit_edge ]
  %channel.068 = phi i32 [ 0, %for.body.lr.ph ], [ %channel.1, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr i32, ptr %11, i32 %i.070
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %add = or i32 %i.070, 1
  %arrayidx10 = getelementptr i32, ptr %11, i32 %add
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.071, i32 %15)
  %cmp13 = icmp slt i32 %offset.071, %15
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %offset.071, 5
  %add15 = add i32 %channel.068, %5
  %add16 = add i32 %add15, %mul
  %arrayidx17 = getelementptr %struct.mbox_chan, ptr %1, i32 %add16
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %mul19 = shl i32 %15, 5
  %sub = sub i32 %offset.071, %15
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.071)
  %cmp21 = icmp eq i32 %offset.071, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end24, label %if.then22.do.end_crit_edge

if.then22.do.end_crit_edge:                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end24:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx25 = getelementptr %struct.mbox_chan, ptr %1, i32 %channel.068
  br label %cleanup

if.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i32 %offset.071, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.end18
  %mul19.pn = phi i32 [ %mul19, %if.end18 ], [ 1, %if.end26 ]
  %offset.1 = phi i32 [ %sub, %if.end18 ], [ %dec, %if.end26 ]
  %channel.1 = add i32 %mul19.pn, %channel.068
  %add28 = add i32 %i.070, 2
  %cmp7 = icmp ult i32 %add28, %7
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.then22.do.end_crit_edge, %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge
  %16 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox, align 8
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %args, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef %19, i32 noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end24, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end ], [ %arrayidx17, %if.then14 ], [ %arrayidx25, %if.end24 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_sender_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = getelementptr inbounds %struct.mhuv2, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %chcomb_int_st = getelementptr inbounds %struct.mhu2_send_frame_reg, ptr %4, i32 0, i32 9
  %chans1.i = getelementptr inbounds %struct.mbox_controller, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %chans1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chans1.i, align 8
  %length.i = getelementptr inbounds %struct.mhuv2, ptr %data, i32 0, i32 6
  %protocols.i = getelementptr inbounds %struct.mhuv2, ptr %data, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %entry
  %offset.067.i = phi i32 [ 0, %entry ], [ %offset.2.i, %for.inc25.i.for.body.i_crit_edge ]
  %i.066.i = phi i32 [ 0, %entry ], [ %inc26.i, %for.inc25.i.for.body.i_crit_edge ]
  %channel.065.i = phi i32 [ 0, %entry ], [ %channel.4.i, %for.inc25.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i32, ptr %chcomb_int_st, i32 %i.066.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc25.i_crit_edge, label %if.end.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

if.end.i:                                         ; preds = %for.body.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %mul.i = shl i32 %i.066.i, 5
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #6, !range !153
  %add.i = add i32 %9, %mul.i
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp359.not.i = icmp eq i32 %11, 0
  br i1 %cmp359.not.i, label %if.end.i.for.inc25.i_crit_edge, label %for.body4.lr.ph.i

if.end.i.for.inc25.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

for.body4.lr.ph.i:                                ; preds = %if.end.i
  %12 = ptrtoint ptr %protocols.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %protocols.i, align 8
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.then10.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %offset.162.i = phi i32 [ %offset.067.i, %for.body4.lr.ph.i ], [ %add8.i, %if.then10.i.for.body4.i_crit_edge ]
  %i.161.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %add24.i, %if.then10.i.for.body4.i_crit_edge ]
  %channel.160.i = phi i32 [ %channel.065.i, %for.body4.lr.ph.i ], [ %channel.2.i, %if.then10.i.for.body4.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %13, i32 %i.161.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add6.i = or i32 %i.161.i, 1
  %arrayidx7.i = getelementptr i32, ptr %13, i32 %add6.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.i, align 4
  %add8.i = add i32 %17, %offset.162.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add8.i)
  %cmp9.not.i = icmp slt i32 %add.i, %add8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i, label %get_irq_chan_comb.exit, label %if.then10.i

if.then10.i:                                      ; preds = %for.body4.i
  %mul13.i = shl i32 %17, 5
  %mul13.pn.i = select i1 %cmp18.i, i32 %mul13.i, i32 1
  %channel.2.i = add i32 %mul13.pn.i, %channel.160.i
  %add24.i = add i32 %i.161.i, 2
  %cmp3.i = icmp ult i32 %add24.i, %11
  br i1 %cmp3.i, label %if.then10.i.for.body4.i_crit_edge, label %if.then10.i.for.inc25.i_crit_edge

if.then10.i.for.inc25.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

if.then10.i.for.body4.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i

for.inc25.i:                                      ; preds = %if.then10.i.for.inc25.i_crit_edge, %if.end.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %channel.4.i = phi i32 [ %channel.065.i, %for.body.i.for.inc25.i_crit_edge ], [ %channel.065.i, %if.end.i.for.inc25.i_crit_edge ], [ %channel.2.i, %if.then10.i.for.inc25.i_crit_edge ]
  %i.2.i = phi i32 [ %i.066.i, %for.body.i.for.inc25.i_crit_edge ], [ 0, %if.end.i.for.inc25.i_crit_edge ], [ %add24.i, %if.then10.i.for.inc25.i_crit_edge ]
  %offset.2.i = phi i32 [ %offset.067.i, %for.body.i.for.inc25.i_crit_edge ], [ %offset.067.i, %if.end.i.for.inc25.i_crit_edge ], [ %add8.i, %if.then10.i.for.inc25.i_crit_edge ]
  %inc26.i = add i32 %i.2.i, 1
  %cmp.i = icmp slt i32 %inc26.i, 4
  br i1 %cmp.i, label %for.inc25.i.for.body.i_crit_edge, label %for.inc25.i.do.end_crit_edge

for.inc25.i.do.end_crit_edge:                     ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

get_irq_chan_comb.exit:                           ; preds = %for.body4.i
  %sub.i = sub i32 %add.i, %offset.162.i
  %mul20.i = shl i32 %sub.i, 5
  %add21.i = select i1 %cmp18.i, i32 %mul20.i, i32 0
  %channel.3.i = add i32 %add21.i, %channel.160.i
  %arrayidx23.i = getelementptr %struct.mbox_chan, ptr %6, i32 %channel.3.i
  %cmp.i123 = icmp ugt ptr %arrayidx23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %get_irq_chan_comb.exit.do.end_crit_edge, label %if.end

get_irq_chan_comb.exit.do.end_crit_edge:          ; preds = %get_irq_chan_comb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %get_irq_chan_comb.exit.do.end_crit_edge, %for.inc25.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end:                                           ; preds = %get_irq_chan_comb.exit
  %con_priv = getelementptr %struct.mbox_chan, ptr %6, i32 %channel.3.i, i32 9
  %18 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %con_priv, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp = icmp eq ptr %21, @mhuv2_doorbell_ops
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 8
  %ch_wn_idx12 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %ch_wn_idx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_wn_idx12, align 4
  br i1 %cmp, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %26 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %19, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add = add i32 %25, -1
  %sub = add i32 %add, %28
  %int_clr = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %23, i32 0, i32 %sub, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_clr, i32 16777216) #6, !srcloc !148
  %cl = getelementptr %struct.mbox_chan, ptr %6, i32 %channel.3.i, i32 2
  %29 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %do.end8, label %if.then4

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mbox_chan_txdone(ptr noundef %arrayidx23.i, i32 noundef 0) #6
  br label %cleanup

do.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %ch_wn_idx12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_wn_idx12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %32) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %int_clr14 = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %23, i32 0, i32 %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_clr14, i32 16777216) #6, !srcloc !148
  %doorbell_pending_lock = getelementptr inbounds %struct.mhuv2, ptr %data, i32 0, i32 8
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_pending_lock) #6
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 8
  %35 = ptrtoint ptr %ch_wn_idx12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ch_wn_idx12, align 4
  %arrayidx26 = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %34, i32 0, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx26) #6, !srcloc !147
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %cl52 = getelementptr %struct.mbox_chan, ptr %6, i32 %channel.3.i, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %found.0135 = phi i32 [ 0, %if.end10 ], [ %found.1, %for.inc.for.body_crit_edge ]
  %i.0133 = phi i32 [ 0, %if.end10 ], [ %inc63, %for.inc.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.mbox_chan, ptr %arrayidx23.i, i32 %i.0133
  %con_priv33 = getelementptr %struct.mbox_chan, ptr %arrayidx23.i, i32 %i.0133, i32 9
  %39 = ptrtoint ptr %con_priv33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %con_priv33, align 4
  %pending = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %40, i32 0, i32 2, i32 0, i32 1
  %41 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pending, align 4
  %shr = lshr i32 %38, %i.0133
  %and = and i32 %shr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %and)
  %tobool34.not = icmp eq i32 %42, %and
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %do.body36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool38.not = icmp eq i32 %42, 0
  br i1 %tobool38.not, label %do.body43, label %do.end51, !prof !149

do.body43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/arm_mhuv2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 589, 0\0A.popsection", ""() #6, !srcloc !154
  unreachable

do.end51:                                         ; preds = %do.body36
  %43 = ptrtoint ptr %cl52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cl52, align 4
  %tobool53.not = icmp eq ptr %44, null
  br i1 %tobool53.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  %ch_wn_idx58 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %ch_wn_idx58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_wn_idx58, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %46, i32 noundef %i.0133) #9
  br label %for.inc

if.end59:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mbox_chan_txdone(ptr noundef %arrayidx32, i32 noundef 0) #6
  %47 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pending, align 4
  %inc = add i32 %found.0135, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %do.end57, %for.body.for.inc_crit_edge
  %found.1 = phi i32 [ %inc, %if.end59 ], [ %found.0135, %do.end57 ], [ %found.0135, %for.body.for.inc_crit_edge ]
  %inc63 = add nuw nsw i32 %i.0133, 1
  %exitcond.not = icmp eq i32 %inc63, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_pending_lock, i32 noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool65.not = icmp eq i32 %found.1, 0
  br i1 %tobool65.not, label %do.body67, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body67:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhuv2_sender_interrupt.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhuv2_sender_interrupt, %if.then77)) #6
          to label %cleanup [label %if.then77], !srcloc !155

if.then77:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %ch_wn_idx78 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %40, i32 0, i32 1
  %48 = ptrtoint ptr %ch_wn_idx78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_wn_idx78, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhuv2_sender_interrupt.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %49) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body67, %for.end.cleanup_crit_edge, %do.end8, %if.then4, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then4 ], [ 0, %do.end8 ], [ 0, %if.then77 ], [ 1, %for.end.cleanup_crit_edge ], [ 0, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_sender_send_data(ptr noundef %chan, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %last_tx_done = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %last_tx_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %last_tx_done, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %send_data = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %send_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_data, align 4
  %call2 = tail call i32 %11(ptr noundef %1, ptr noundef %chan, ptr noundef %data) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_sender_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tx_startup = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tx_startup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_startup, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  tail call void %5(ptr noundef %7, ptr noundef %chan) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_sender_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tx_shutdown = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tx_shutdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_shutdown, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  tail call void %5(ptr noundef %7, ptr noundef %chan) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mhuv2_sender_last_tx_done(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %last_tx_done = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %last_tx_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %last_tx_done, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_doorbell_rx_startup(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shl = shl nuw i32 1, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %6 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_wn_idx, align 4
  %mask_clear = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %8, i32 0, i32 %10, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask_clear, i32 %5) #6, !srcloc !148
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_doorbell_rx_shutdown(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shl = shl nuw i32 1, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %6 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_wn_idx, align 4
  %mask_set = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %8, i32 0, i32 %10, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask_set, i32 %5) #6, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mhuv2_doorbell_read_data(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %shl = shl nuw i32 1, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %6 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch_wn_idx, align 4
  %stat_clear = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %8, i32 0, i32 %10, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_clear, i32 %5) #6, !srcloc !148
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_doorbell_last_tx_done(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch_wn_idx, align 4
  %arrayidx = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %4, i32 0, i32 %6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !147
  %8 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = xor i32 %7, -1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = lshr i32 %12, %10
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_doorbell_send_data(ptr noundef %mhu, ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %doorbell_pending_lock = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_pending_lock) #6
  %2 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %pending = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %pending, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %shl = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %7 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_wn_idx, align 4
  %stat_set = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %9, i32 0, i32 %11, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_set, i32 %6) #6, !srcloc !148
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_pending_lock, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_receiver_interrupt(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %minor.i = getelementptr inbounds %struct.mhuv2, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %chans1.i.i = getelementptr inbounds %struct.mbox_controller, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %chans1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chans1.i.i, align 8
  %num_chans.i.i = getelementptr inbounds %struct.mbox_controller, ptr %arg, i32 0, i32 3
  %4 = ptrtoint ptr %num_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.i.i = icmp sgt i32 %5, 0
  br i1 %cmp27.i.i, label %while.body.lr.ph.i.i, label %if.then.i.get_irq_chan_rx.exit.thread_crit_edge

if.then.i.get_irq_chan_rx.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_irq_chan_rx.exit.thread

while.body.lr.ph.i.i:                             ; preds = %if.then.i
  %6 = getelementptr inbounds %struct.mhuv2, ptr %arg, i32 0, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end7.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add10.i.i, %if.end7.i.i.while.body.i.i_crit_edge ]
  %con_priv.i.i = getelementptr %struct.mbox_chan, ptr %3, i32 %i.028.i.i, i32 9
  %7 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %con_priv.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 8
  %ch_wn_idx.i.i = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %ch_wn_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_wn_idx.i.i, align 4
  %stat_masked.i.i = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %10, i32 0, i32 %12, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat_masked.i.i) #6, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  %cmp4.i.i = icmp eq ptr %16, @mhuv2_doorbell_ops
  %17 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #6, !range !153
  %add.i.i = select i1 %cmp4.i.i, i32 %17, i32 0
  %i.1.i.i = add i32 %add.i.i, %i.028.i.i
  %arrayidx6.i.i = getelementptr %struct.mbox_chan, ptr %3, i32 %i.1.i.i
  br label %get_irq_chan_rx.exit

if.end7.i.i:                                      ; preds = %while.body.i.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %8, align 4
  %cmp9.i.i = icmp eq ptr %19, @mhuv2_doorbell_ops
  %cond.i.i = select i1 %cmp9.i.i, i32 32, i32 1
  %add10.i.i = add i32 %cond.i.i, %i.028.i.i
  %20 = ptrtoint ptr %num_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_chans.i.i, align 4
  %cmp.i.i = icmp slt i32 %add10.i.i, %21
  br i1 %cmp.i.i, label %if.end7.i.i.while.body.i.i_crit_edge, label %if.end7.i.i.get_irq_chan_rx.exit.thread_crit_edge

if.end7.i.i.get_irq_chan_rx.exit.thread_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_irq_chan_rx.exit.thread

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.end.i:                                         ; preds = %entry
  %22 = getelementptr inbounds %struct.mhuv2, ptr %arg, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %chcomb_int_st.i.i = getelementptr inbounds %struct.mhu2_recv_frame_reg, ptr %24, i32 0, i32 7
  %chans1.i.i.i = getelementptr inbounds %struct.mbox_controller, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %chans1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chans1.i.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.mhuv2, ptr %arg, i32 0, i32 6
  %protocols.i.i.i = getelementptr inbounds %struct.mhuv2, ptr %arg, i32 0, i32 7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc25.i.i.i.for.body.i.i.i_crit_edge, %if.end.i
  %offset.067.i.i.i = phi i32 [ 0, %if.end.i ], [ %offset.2.i.i.i, %for.inc25.i.i.i.for.body.i.i.i_crit_edge ]
  %i.066.i.i.i = phi i32 [ 0, %if.end.i ], [ %inc26.i.i.i, %for.inc25.i.i.i.for.body.i.i.i_crit_edge ]
  %channel.065.i.i.i = phi i32 [ 0, %if.end.i ], [ %channel.4.i.i.i, %for.inc25.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i32, ptr %chcomb_int_st.i.i, i32 %i.066.i.i.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc25.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.for.inc25.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %mul.i.i.i = shl i32 %i.066.i.i.i, 5
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 false) #6, !range !153
  %add.i.i.i = add i32 %29, %mul.i.i.i
  %30 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp359.not.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp359.not.i.i.i, label %if.end.i.i.i.for.inc25.i.i.i_crit_edge, label %for.body4.lr.ph.i.i.i

if.end.i.i.i.for.inc25.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i.i.i

for.body4.lr.ph.i.i.i:                            ; preds = %if.end.i.i.i
  %32 = ptrtoint ptr %protocols.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %protocols.i.i.i, align 8
  br label %for.body4.i.i.i

for.body4.i.i.i:                                  ; preds = %if.then10.i.i.i.for.body4.i.i.i_crit_edge, %for.body4.lr.ph.i.i.i
  %offset.162.i.i.i = phi i32 [ %offset.067.i.i.i, %for.body4.lr.ph.i.i.i ], [ %add8.i.i.i, %if.then10.i.i.i.for.body4.i.i.i_crit_edge ]
  %i.161.i.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i.i ], [ %add24.i.i.i, %if.then10.i.i.i.for.body4.i.i.i_crit_edge ]
  %channel.160.i.i.i = phi i32 [ %channel.065.i.i.i, %for.body4.lr.ph.i.i.i ], [ %channel.2.i.i.i, %if.then10.i.i.i.for.body4.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i32, ptr %33, i32 %i.161.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i, align 4
  %add6.i.i.i = or i32 %i.161.i.i.i, 1
  %arrayidx7.i.i.i = getelementptr i32, ptr %33, i32 %add6.i.i.i
  %36 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.i.i.i, align 4
  %add8.i.i.i = add i32 %37, %offset.162.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %add8.i.i.i)
  %cmp9.not.i.i.i = icmp slt i32 %add.i.i.i, %add8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp9.not.i.i.i, label %get_irq_chan_comb.exit.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %for.body4.i.i.i
  %mul13.i.i.i = shl i32 %37, 5
  %mul13.pn.i.i.i = select i1 %cmp18.i.i.i, i32 %mul13.i.i.i, i32 1
  %channel.2.i.i.i = add i32 %mul13.pn.i.i.i, %channel.160.i.i.i
  %add24.i.i.i = add i32 %i.161.i.i.i, 2
  %cmp3.i.i.i = icmp ult i32 %add24.i.i.i, %31
  br i1 %cmp3.i.i.i, label %if.then10.i.i.i.for.body4.i.i.i_crit_edge, label %if.then10.i.i.i.for.inc25.i.i.i_crit_edge

if.then10.i.i.i.for.inc25.i.i.i_crit_edge:        ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i.i.i

if.then10.i.i.i.for.body4.i.i.i_crit_edge:        ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.i.i.i

for.inc25.i.i.i:                                  ; preds = %if.then10.i.i.i.for.inc25.i.i.i_crit_edge, %if.end.i.i.i.for.inc25.i.i.i_crit_edge, %for.body.i.i.i.for.inc25.i.i.i_crit_edge
  %channel.4.i.i.i = phi i32 [ %channel.065.i.i.i, %for.body.i.i.i.for.inc25.i.i.i_crit_edge ], [ %channel.065.i.i.i, %if.end.i.i.i.for.inc25.i.i.i_crit_edge ], [ %channel.2.i.i.i, %if.then10.i.i.i.for.inc25.i.i.i_crit_edge ]
  %i.2.i.i.i = phi i32 [ %i.066.i.i.i, %for.body.i.i.i.for.inc25.i.i.i_crit_edge ], [ 0, %if.end.i.i.i.for.inc25.i.i.i_crit_edge ], [ %add24.i.i.i, %if.then10.i.i.i.for.inc25.i.i.i_crit_edge ]
  %offset.2.i.i.i = phi i32 [ %offset.067.i.i.i, %for.body.i.i.i.for.inc25.i.i.i_crit_edge ], [ %offset.067.i.i.i, %if.end.i.i.i.for.inc25.i.i.i_crit_edge ], [ %add8.i.i.i, %if.then10.i.i.i.for.inc25.i.i.i_crit_edge ]
  %inc26.i.i.i = add i32 %i.2.i.i.i, 1
  %cmp.i.i.i = icmp slt i32 %inc26.i.i.i, 4
  br i1 %cmp.i.i.i, label %for.inc25.i.i.i.for.body.i.i.i_crit_edge, label %for.inc25.i.i.i.get_irq_chan_rx.exit.thread_crit_edge

for.inc25.i.i.i.get_irq_chan_rx.exit.thread_crit_edge: ; preds = %for.inc25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_irq_chan_rx.exit.thread

for.inc25.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

get_irq_chan_comb.exit.i.i:                       ; preds = %for.body4.i.i.i
  %sub.i.i.i = sub i32 %add.i.i.i, %offset.162.i.i.i
  %mul20.i.i.i = shl i32 %sub.i.i.i, 5
  %add21.i.i.i = select i1 %cmp18.i.i.i, i32 %mul20.i.i.i, i32 0
  %channel.3.i.i.i = add i32 %add21.i.i.i, %channel.160.i.i.i
  %arrayidx23.i.i.i = getelementptr %struct.mbox_chan, ptr %26, i32 %channel.3.i.i.i
  %cmp.i26.i.i = icmp ugt ptr %arrayidx23.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i.i, label %get_irq_chan_comb.exit.i.i.get_irq_chan_rx.exit_crit_edge, label %if.end.i.i

get_irq_chan_comb.exit.i.i.get_irq_chan_rx.exit_crit_edge: ; preds = %get_irq_chan_comb.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_irq_chan_rx.exit

if.end.i.i:                                       ; preds = %get_irq_chan_comb.exit.i.i
  %con_priv.i4.i = getelementptr %struct.mbox_chan, ptr %26, i32 %channel.3.i.i.i, i32 9
  %38 = ptrtoint ptr %con_priv.i4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %con_priv.i4.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp.i5.i = icmp eq ptr %41, @mhuv2_doorbell_ops
  br i1 %cmp.i5.i, label %if.end3.i.i, label %if.end.i.i.get_irq_chan_rx.exit_crit_edge

if.end.i.i.get_irq_chan_rx.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_irq_chan_rx.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %22, align 8
  %ch_wn_idx.i6.i = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %ch_wn_idx.i6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ch_wn_idx.i6.i, align 4
  %stat_masked.i7.i = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %43, i32 0, i32 %45, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat_masked.i7.i) #6, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i8.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i8.i, label %do.body9.i.i, label %do.end15.i.i, !prof !149

do.body9.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mailbox/arm_mhuv2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 638, 0\0A.popsection", ""() #6, !srcloc !156
  unreachable

do.end15.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 false) #6, !range !153
  %add.ptr.i.i = getelementptr %struct.mbox_chan, ptr %arrayidx23.i.i.i, i32 %48
  br label %get_irq_chan_rx.exit

get_irq_chan_rx.exit.thread:                      ; preds = %for.inc25.i.i.i.get_irq_chan_rx.exit.thread_crit_edge, %if.end7.i.i.get_irq_chan_rx.exit.thread_crit_edge, %if.then.i.get_irq_chan_rx.exit.thread_crit_edge
  %49 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arg, align 8
  br label %do.end

get_irq_chan_rx.exit:                             ; preds = %do.end15.i.i, %if.end.i.i.get_irq_chan_rx.exit_crit_edge, %get_irq_chan_comb.exit.i.i.get_irq_chan_rx.exit_crit_edge, %if.then.i.i
  %retval.0.i = phi ptr [ %arrayidx6.i.i, %if.then.i.i ], [ %add.ptr.i.i, %do.end15.i.i ], [ %arrayidx23.i.i.i, %get_irq_chan_comb.exit.i.i.get_irq_chan_rx.exit_crit_edge ], [ %arrayidx23.i.i.i, %if.end.i.i.get_irq_chan_rx.exit_crit_edge ]
  %51 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arg, align 8
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_irq_chan_rx.exit.do.end_crit_edge, label %if.end

get_irq_chan_rx.exit.do.end_crit_edge:            ; preds = %get_irq_chan_rx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %get_irq_chan_rx.exit.do.end_crit_edge, %get_irq_chan_rx.exit.thread
  %53 = phi ptr [ %50, %get_irq_chan_rx.exit.thread ], [ %52, %get_irq_chan_rx.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end:                                           ; preds = %get_irq_chan_rx.exit
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %retval.0.i, i32 0, i32 9
  %54 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %con_priv, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %read_data = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read_data, align 4
  %call3 = tail call ptr %59(ptr noundef %arg, ptr noundef %retval.0.i) #6
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %retval.0.i, i32 0, i32 2
  %60 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cl, align 4
  %tobool.not = icmp eq ptr %61, null
  br i1 %tobool.not, label %do.end7, label %if.else

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %55, i32 0, i32 1
  %62 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ch_wn_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.41, i32 noundef %63) #9
  br label %if.end16

if.else:                                          ; preds = %if.end
  %cmp.i38 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %do.end12, label %if.else14

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.44, i32 noundef %64) #9
  br label %if.end16

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mbox_chan_received_data(ptr noundef %retval.0.i, ptr noundef %call3) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %do.end12, %do.end7
  %ret.0 = phi i32 [ 0, %do.end12 ], [ 1, %if.else14 ], [ 0, %do.end7 ]
  %cmp.i39 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %if.then18 ], [ %ret.0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_receiver_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34) #9
  ret i32 -5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_receiver_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %1, ptr noundef %chan) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_receiver_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %rx_shutdown = getelementptr inbounds %struct.mhuv2_protocol_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rx_shutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_shutdown, align 4
  tail call void %7(ptr noundef %1, ptr noundef %chan) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mhuv2_receiver_last_tx_done(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #9
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_data_transfer_rx_startup(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_wn_idx, align 4
  %4 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %7 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %mask_clear = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %9, i32 0, i32 %sub, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask_clear, i32 -1) #6, !srcloc !148
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_data_transfer_rx_shutdown(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_wn_idx, align 4
  %4 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %7 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %mask_set = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %9, i32 0, i32 %sub, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask_set, i32 -1) #6, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mhuv2_data_transfer_read_data(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %mul = shl i32 %4, 2
  %add = add i32 %mul, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.arm_mhuv2_mbox_msg, ptr %call9.i.i, i32 1
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call9.i.i, align 128
  %len = getelementptr inbounds %struct.arm_mhuv2_mbox_msg, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp31 = icmp sgt i32 %4, 0
  br i1 %cmp31, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_wn_idx, align 4
  %add4 = add i32 %9, %i.032
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %arrayidx = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %11, i32 0, i32 %add4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !147
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = xor i32 %i.032, -1
  %sub6 = add i32 %4, %14
  %arrayidx7 = getelementptr i32, ptr %add.ptr, i32 %sub6
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %arrayidx7, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %stat_clear = getelementptr [124 x %struct.mhu2_recv_ch_wn_reg], ptr %17, i32 0, i32 %add4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_clear, i32 -1) #6, !srcloc !148
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_data_transfer_tx_startup(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 5
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_wn_idx, align 4
  %6 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %8
  %9 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %int_clr = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %11, i32 0, i32 %sub, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_clr, i32 16777216) #6, !srcloc !148
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %int_en = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %13, i32 0, i32 %sub, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en, i32 16777216) #6, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhuv2_data_transfer_tx_shutdown(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 5
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_wn_idx, align 4
  %6 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %8
  %9 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %int_en = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %11, i32 0, i32 %sub, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_en, i32 0) #6, !srcloc !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_data_transfer_last_tx_done(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_wn_idx, align 4
  %4 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %7 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %arrayidx = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %9, i32 0, i32 %sub
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhuv2_data_transfer_send_data(ptr nocapture noundef readonly %mhu, ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.arm_mhuv2_mbox_msg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %2 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con_priv, align 4
  %4 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not71 = icmp eq i32 %1, 0
  br i1 %tobool.not71, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %9 = getelementptr inbounds %struct.mhuv2, ptr %mhu, i32 0, i32 1
  %mul = shl i32 %6, 2
  %i.065 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.065)
  %cmp666 = icmp sgt i32 %i.065, -1
  %ch_wn_idx = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %data.073 = phi ptr [ %8, %while.body.lr.ph ], [ %add.ptr, %for.end.while.body_crit_edge ]
  %bytes_left.072 = phi i32 [ %1, %while.body.lr.ph ], [ %bytes_left.1.lcssa, %for.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %data.073 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.073, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %do.end, label %while.body.while.cond3_crit_edge

while.body.while.cond3_crit_edge:                 ; preds = %while.body
  br label %while.cond3

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mhu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mhu, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.60) #9
  br label %cleanup

while.cond3:                                      ; preds = %while.cond3.while.cond3_crit_edge, %while.body.while.cond3_crit_edge
  %14 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %con_priv, align 4
  %ch_wn_idx.i = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ch_wn_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch_wn_idx.i, align 4
  %18 = getelementptr inbounds %struct.mhuv2_mbox_chan_priv, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add.i = add i32 %17, -1
  %sub.i = add i32 %add.i, %20
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 8
  %arrayidx.i = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %22, i32 0, i32 %sub.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #6, !srcloc !147
  %tobool.not.i.not = icmp eq i32 %23, 0
  br i1 %tobool.not.i.not, label %while.end, label %while.cond3.while.cond3_crit_edge

while.cond3.while.cond3_crit_edge:                ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3

while.end:                                        ; preds = %while.cond3
  br i1 %cmp666, label %for.body.preheader, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %while.end
  %24 = tail call i32 @llvm.smin.i32(i32 %bytes_left.072, i32 %mul)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.070 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.065, %for.body.preheader ]
  %i.0.in69 = phi i32 [ %i.070, %for.inc.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %bytes_in_round.068 = phi i32 [ %bytes_in_round.1, %for.inc.for.body_crit_edge ], [ %24, %for.body.preheader ]
  %bytes_left.167 = phi i32 [ %bytes_left.2, %for.inc.for.body_crit_edge ], [ %bytes_left.072, %for.body.preheader ]
  %mul7 = shl i32 %i.070, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes_in_round.068, i32 %mul7)
  %cmp8.not = icmp ugt i32 %bytes_in_round.068, %mul7
  br i1 %cmp8.not, label %if.end13, label %for.body.for.inc_crit_edge, !prof !151

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %arrayidx14 = getelementptr i32, ptr %data.073, i32 %i.070
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %and = and i32 %bytes_in_round.068, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end13.if.end26_crit_edge, label %if.then22, !prof !151

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %mul23 = shl nuw nsw i32 %and, 3
  %notmask = shl nsw i32 -1, %mul23
  %sub24 = xor i32 %notmask, -1
  %and25 = and i32 %26, %sub24
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end13.if.end26_crit_edge
  %bytes_to_send.0 = phi i32 [ %and, %if.then22 ], [ 4, %if.end13.if.end26_crit_edge ]
  %word.0 = phi i32 [ %and25, %if.then22 ], [ %26, %if.end13.if.end26_crit_edge ]
  %27 = tail call i32 @llvm.bswap.i32(i32 %word.0)
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 8
  %30 = ptrtoint ptr %ch_wn_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_wn_idx, align 4
  %add = sub i32 %6, %i.0.in69
  %sub28 = add i32 %add, %31
  %stat_set = getelementptr [124 x %struct.mhu2_send_ch_wn_reg], ptr %29, i32 0, i32 %sub28, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_set, i32 %27) #6, !srcloc !148
  %sub30 = sub i32 %bytes_left.167, %bytes_to_send.0
  %sub31 = sub i32 %bytes_in_round.068, %bytes_to_send.0
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %bytes_left.2 = phi i32 [ %bytes_left.167, %for.body.for.inc_crit_edge ], [ %sub30, %if.end26 ]
  %bytes_in_round.1 = phi i32 [ %bytes_in_round.068, %for.body.for.inc_crit_edge ], [ %sub31, %if.end26 ]
  %i.0 = add i32 %i.070, -1
  %cmp6 = icmp sgt i32 %i.0, -1
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %bytes_left.1.lcssa = phi i32 [ %bytes_left.072, %while.end.for.end_crit_edge ], [ %bytes_left.2, %for.inc.for.end_crit_edge ]
  %add.ptr = getelementptr i32, ptr %data.073, i32 %6
  %tobool.not = icmp eq i32 %bytes_left.1.lcssa, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_arm_mhuv2__291_1131_mhuv2_driver_init6, !1, !"__initcall__kmod_arm_mhuv2__291_1131_mhuv2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1131, i32 1}
!2 = !{ptr @__exitcall_mhuv2_driver_exit, !1, !"__exitcall_mhuv2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file292, !4, !"__UNIQUE_ID_file292", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1133, i32 1}
!5 = !{ptr @__UNIQUE_ID_license293, !4, !"__UNIQUE_ID_license293", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description294, !7, !"__UNIQUE_ID_description294", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1134, i32 1}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1135, i32 1}
!10 = !{ptr @__UNIQUE_ID_author296, !11, !"__UNIQUE_ID_author296", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1136, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1125, i32 11}
!14 = !{ptr @mhuv2_driver, !15, !"mhuv2_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1123, i32 27}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1074, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1076, i32 39}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1079, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mhuv2_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mhuv2_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1095, i32 3}
!30 = !{ptr @mhuv2_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mhuv2_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 829, i32 2}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mhuv2_mbox_of_xlate._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mhuv2_mbox_of_xlate._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mhuv2_tx_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 977, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 986, i32 21}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 988, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mhuv2_tx_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mhuv2_tx_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mhuv2_sender_ops, !48, !"mhuv2_sender_ops", i1 false, i1 false}
!48 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 747, i32 35}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 549, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mhuv2_sender_interrupt._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @mhuv2_sender_interrupt._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 562, i32 3}
!57 = !{ptr @mhuv2_sender_interrupt._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @mhuv2_sender_interrupt._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 592, i32 5}
!61 = !{ptr @mhuv2_sender_interrupt._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mhuv2_sender_interrupt._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 611, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mhuv2_sender_interrupt.__UNIQUE_ID_ddebug290, !64, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!67 = !{ptr @mhuv2_doorbell_ops, !68, !"mhuv2_doorbell_ops", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 313, i32 40}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1033, i32 3}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @mhuv2_rx_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @mhuv2_rx_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1039, i32 6}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1041, i32 3}
!78 = !{ptr @mhuv2_rx_init._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mhuv2_rx_init._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mhuv2_receiver_ops, !81, !"mhuv2_receiver_ops", i1 false, i1 false}
!81 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 783, i32 35}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 772, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mhuv2_receiver_send_data._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mhuv2_receiver_send_data._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 779, i32 2}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mhuv2_receiver_last_tx_done._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mhuv2_receiver_last_tx_done._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 684, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mhuv2_receiver_interrupt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @mhuv2_receiver_interrupt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 693, i32 3}
!99 = !{ptr @mhuv2_receiver_interrupt._entry.40, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mhuv2_receiver_interrupt._entry_ptr.42, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 696, i32 3}
!103 = !{ptr @mhuv2_receiver_interrupt._entry.43, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @mhuv2_receiver_interrupt._entry_ptr.45, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 936, i32 42}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 938, i32 3}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mhuv2_parse_channels._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mhuv2_parse_channels._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 949, i32 3}
!114 = !{ptr @mhuv2_parse_channels._entry.49, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mhuv2_parse_channels._entry_ptr.51, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 844, i32 4}
!118 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @mhuv2_verify_protocol._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @mhuv2_verify_protocol._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 854, i32 4}
!123 = !{ptr @mhuv2_verify_protocol._entry.54, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mhuv2_verify_protocol._entry_ptr.56, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 861, i32 3}
!127 = !{ptr @mhuv2_verify_protocol._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @mhuv2_verify_protocol._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @mhuv2_data_transfer_ops, !130, !"mhuv2_data_transfer_ops", i1 false, i1 false}
!130 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 487, i32 40}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 455, i32 4}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mhuv2_data_transfer_send_data._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @mhuv2_data_transfer_send_data._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @mhuv2_ids, !137, !"mhuv2_ids", i1 false, i1 false}
!137 = !{!"../drivers/mailbox/arm_mhuv2.c", i32 1108, i32 23}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 5868512}
!148 = !{i64 5868094}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2155092100, i64 2155092593, i64 2155092137, i64 2155092193, i64 2155092227, i64 2155092251, i64 2155092292, i64 2155092313, i64 2155092341, i64 2155092375}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2155075323, i64 2155075815, i64 2155075360, i64 2155075416, i64 2155075450, i64 2155075474, i64 2155075515, i64 2155075536, i64 2155075564, i64 2155075598}
!153 = !{i32 0, i32 33}
!154 = !{i64 2155035912, i64 2155036404, i64 2155035949, i64 2155036005, i64 2155036039, i64 2155036063, i64 2155036104, i64 2155036125, i64 2155036153, i64 2155036187}
!155 = !{i64 2148756238, i64 2148756243, i64 2148756256, i64 2148756300, i64 2148756334, i64 2148756355}
!156 = !{i64 2155042880, i64 2155043372, i64 2155042917, i64 2155042973, i64 2155043007, i64 2155043031, i64 2155043072, i64 2155043093, i64 2155043121, i64 2155043155}
