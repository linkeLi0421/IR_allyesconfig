; ModuleID = '/llk/IR_all_yes/drivers/usb/c67x00/c67x00-sched.c_pt.bc'
source_filename = "../drivers/usb/c67x00/c67x00-sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.c67x00_ep_data = type { %struct.list_head, %struct.list_head, ptr, ptr, i16 }
%struct.c67x00_hcd = type { %struct.spinlock, ptr, i32, i32, i32, [4 x %struct.list_head], i32, i32, %struct.list_head, i32, i16, i16, i16, i16, %struct.work_struct, %struct.completion, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.c67x00_urb_priv = type { %struct.list_head, ptr, i32, i32, i32, ptr }
%struct.c67x00_sie = type { %struct.spinlock, ptr, ptr, ptr, i32, i32 }
%struct.c67x00_td = type { i16, i16, i8, i8, i8, i8, i8, i8, i16, %struct.list_head, i16, ptr, ptr, i32, ptr, i32 }

@c67x00_endpoint_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: urb list not empty\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"c67x00_endpoint_disable\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/c67x00/c67x00-sched.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c67x00_endpoint_disable._entry_ptr = internal global ptr @c67x00_endpoint_disable._entry, section ".printk_index", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@c67x00_sched_start_scheduler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&c67x00->work)\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ERROR_FLAG\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TIMEOUT\00", [24 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"c67x00\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dbg_td\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"### %s at 0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"urb:      0x%p\0A\00", [16 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"endpoint:   %4d\0A\00", [47 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pipeout:    %4d\0A\00", [47 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ly_base_addr: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port_length:  0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pid_ep:         0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.17, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dev_addr:       0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.18, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ctrl_reg:       0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.19, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status:         0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.20, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"retry_cnt:      0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.21, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"residue:        0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.22, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"next_td_addr: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@dbg_td.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.23, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data: %*ph\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/usb.h\00", [44 x i8] zeroinitializer }, align 32
@c67x00_fill_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 803, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TD list not empty! This should not happen!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c67x00_fill_frame\00", [46 x i8] zeroinitializer }, align 32
@c67x00_fill_frame._entry_ptr = internal global ptr @c67x00_fill_frame._entry, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unprocessed td\00", [17 x i8] zeroinitializer }, align 32
@c67x00_add_iso_urb.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c67x00_add_iso_urb\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create failed: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@c67x00_send_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1071, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: td list should not be empty here!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"c67x00_send_frame\00", [46 x i8] zeroinitializer }, align 32
@c67x00_send_frame._entry_ptr = internal global ptr @c67x00_send_frame._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 311, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1141, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 843, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 851, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 140, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 141, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 142, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 143, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 144, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 145, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 146, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 147, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 148, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 149, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 150, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 151, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 152, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 153, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 1981, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 802, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 805, i32 23 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 760, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [37 x i8] c"../drivers/usb/c67x00/c67x00-sched.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1069, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @c67x00_endpoint_disable._entry, ptr @c67x00_endpoint_disable._entry_ptr, ptr @c67x00_fill_frame._entry, ptr @c67x00_fill_frame._entry_ptr, ptr @c67x00_send_frame._entry, ptr @c67x00_send_frame._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @c67x00_sched_start_scheduler.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_endpoint_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_sched_start_scheduler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_fill_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_send_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_endpoint_disable(ptr noundef %hcd, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %urb_list = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 4
  %0 = ptrtoint ptr %urb_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %urb_list, align 4
  %cmp.i.not = icmp eq ptr %1, %urb_list
  br i1 %cmp.i.not, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str) #8
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #5
  %hcpriv.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %4 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcpriv.i, align 4
  %tobool.not.i46 = icmp eq ptr %5, null
  br i1 %tobool.not.i46, label %do.body4.while.end_crit_edge, label %if.end.i.lr.ph

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %do.body4
  %endpoint_disable = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %work.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.if.end.i_crit_edge, %if.end.i.lr.ph
  %6 = phi ptr [ %5, %if.end.i.lr.ph ], [ %31, %while.body.if.end.i_crit_edge ]
  %flags.047 = phi i32 [ %call6, %if.end.i.lr.ph ], [ %call25, %while.body.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 4
  %cmp.i.not.i = icmp eq ptr %8, %6
  br i1 %cmp.i.not.i, label %if.end3.i, label %while.body

if.end3.i:                                        ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void @usb_put_dev(ptr noundef %10) #5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %6) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del.exit.i_crit_edge

if.end3.i.list_del.exit.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end3.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %node.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %6, i32 0, i32 1
  %call.i.i12.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #5
  br i1 %call.i.i12.i, label %if.end.i.i15.i, label %list_del.exit.i.list_del.exit17.i_crit_edge

list_del.exit.i.list_del.exit17.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit17.i

if.end.i.i15.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i13.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %6, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i13.i, align 4
  %21 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i14.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i14.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit17.i

list_del.exit17.i:                                ; preds = %if.end.i.i15.i, %list_del.exit.i.list_del.exit17.i_crit_edge
  %25 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i16.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %6, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i16.i, align 4
  tail call void @kfree(ptr noundef nonnull %6) #5
  %27 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %hcpriv.i, align 4
  br label %while.end

while.body:                                       ; preds = %if.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %flags.047) #5
  %28 = ptrtoint ptr %endpoint_disable to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %endpoint_disable, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %29 = load ptr, ptr @system_highpri_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work.i) #5
  %call15 = tail call i32 @wait_for_completion_timeout(ptr noundef %endpoint_disable, i32 noundef 100) #5
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #5
  %30 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hcpriv.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.if.end.i_crit_edge

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %list_del.exit17.i, %do.body4.while.end_crit_edge
  %flags.045 = phi i32 [ %flags.047, %list_del.exit17.i ], [ %call6, %do.body4.while.end_crit_edge ], [ %call25, %while.body.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %flags.045) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_sched_kick(ptr noundef %c67x00) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %0 = load ptr, ptr @system_highpri_wq, align 4
  %work = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c67x00_urb_enqueue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.cond.i.while.cond.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %dev.addr.0.i, i32 0, i32 11
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %get_root_port.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

get_root_port.exit:                               ; preds = %while.cond.i
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %portnum.i = getelementptr inbounds %struct.usb_device, ptr %dev.addr.0.i, i32 0, i32 25
  %6 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum.i, align 2
  %conv.i = zext i8 %7 to i32
  %sub = add nsw i32 %conv.i, -1
  %or.i = or i32 %mem_flags, 256
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %get_root_port.exit.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !86

get_root_port.exit.kzalloc.exit_crit_edge:        ; preds = %get_root_port.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %get_root_port.exit
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %get_root_port.exit.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %get_root_port.exit.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %8 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef %or.i, i32 noundef 28) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %do.body3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body3:                                         ; preds = %kzalloc.exit
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #5
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body3.err_not_linked_crit_edge, label %if.end10

do.body3.err_not_linked_crit_edge:                ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_not_linked

if.end10:                                         ; preds = %do.body3
  %call11 = tail call i32 @usb_hcd_link_urb_to_ep(ptr noundef %hcd, ptr noundef %urb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_not_linked_crit_edge

if.end10.err_not_linked_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_not_linked

if.end14:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %urb15 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %urb15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %urb, ptr %urb15, align 8
  %port16 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %port16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %port16, align 4
  %ep.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 9
  %16 = ptrtoint ptr %ep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep.i, align 4
  %sie.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %18 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sie.i.i, align 4
  %call.i.i = tail call zeroext i16 @c67x00_ll_husb_get_frame(ptr noundef %19) #5
  %20 = and i16 %call.i.i, 2047
  %current_frame.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 5, i32 3
  %21 = ptrtoint ptr %current_frame.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %current_frame.i, align 4
  %hcpriv.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hcpriv.i, align 4
  %tobool.not.i99 = icmp eq ptr %23, null
  br i1 %tobool.not.i99, label %if.end10.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  %next_frame.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %next_frame.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %next_frame.i, align 4
  %narrow.i = add i16 %call.i.i, 2047
  %add.i.i = zext i16 %narrow.i to i32
  %conv1.i.i = zext i16 %25 to i32
  %sub.i.i = sub nsw i32 %add.i.i, %conv1.i.i
  %and.i.i = and i32 %sub.i.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %and.i.i)
  %cmp.i.i = icmp ugt i32 %and.i.i, 1022
  br i1 %cmp.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i82.i = add i16 %call.i.i, 1
  %and.i83.i = and i16 %add.i82.i, 2047
  %26 = ptrtoint ptr %next_frame.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %and.i83.i, ptr %next_frame.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  %27 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcpriv.i, align 4
  br label %c67x00_ep_data_alloc.exit

if.end10.i:                                       ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 28) #9
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %c67x00_ep_data_alloc.exit.thread110, label %if.end14.i

c67x00_ep_data_alloc.exit.thread110:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %ep_data112 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %ep_data112 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ep_data112, align 8
  br label %if.then20

if.end14.i:                                       ; preds = %if.end10.i
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %node.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node.i, ptr %node.i, align 8
  %prev.i84.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node.i, ptr %prev.i84.i, align 4
  %hep15.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %hep15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %17, ptr %hep15.i, align 8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %call16.i = tail call ptr @usb_get_dev(ptr noundef %37) #5
  %dev17.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %dev17.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call16.i, ptr %dev17.i, align 4
  %39 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %hcpriv.i, align 4
  %40 = ptrtoint ptr %current_frame.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %current_frame.i, align 4
  %add.i85.i = add i16 %41, 1
  %and.i86.i = and i16 %add.i85.i, 2047
  %next_frame21.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %call7.i.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %next_frame21.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %and.i86.i, ptr %next_frame21.i, align 8
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %43 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe.i, align 4
  %shr.i = lshr i32 %44, 30
  %45 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %node.i, align 8
  %cmp.i87.not.i = icmp eq ptr %46, %node.i
  %arrayidx.i = getelementptr %struct.c67x00_hcd, ptr %hcd_priv.i, i32 0, i32 5, i32 %shr.i
  br i1 %cmp.i87.not.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end14.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %arrayidx.i, ptr noundef %48) #5
  br i1 %call.i.i.i, label %if.end.i.i.i100, label %if.then25.i.c67x00_ep_data_alloc.exit.thread_crit_edge

if.then25.i.c67x00_ep_data_alloc.exit.thread_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_ep_data_alloc.exit.thread

if.end.i.i.i100:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %node.i, align 8
  %51 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx.i, ptr %prev.i84.i, align 4
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %node.i, ptr %arrayidx.i, align 4
  br label %c67x00_ep_data_alloc.exit.thread

if.else.i:                                        ; preds = %if.end14.i
  %bEndpointAddress34.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else.i
  %.pn.in.i = phi ptr [ %arrayidx.i, %if.else.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %53 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.c67x00_ep_data_alloc.exit_crit_edge, label %for.body.i

for.cond.i.c67x00_ep_data_alloc.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_ep_data_alloc.exit

for.body.i:                                       ; preds = %for.cond.i
  %hep32.i = getelementptr i8, ptr %.pn.i, i32 8
  %54 = ptrtoint ptr %hep32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hep32.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bEndpointAddress.i, align 2
  %58 = ptrtoint ptr %bEndpointAddress34.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress34.i, align 2
  %cmp36.i = icmp ugt i8 %57, %59
  br i1 %cmp36.i, label %if.then38.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then38.i:                                      ; preds = %for.body.i
  %prev41.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev41.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i.i89.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %61, ptr noundef %63) #5
  br i1 %call.i.i89.i, label %if.end.i.i92.i, label %if.then38.i.c67x00_ep_data_alloc.exit_crit_edge

if.then38.i.c67x00_ep_data_alloc.exit_crit_edge:  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_ep_data_alloc.exit

if.end.i.i92.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i90.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %node.i, ptr %prev1.i.i90.i, align 4
  %65 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %node.i, align 8
  %66 = ptrtoint ptr %prev.i84.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %61, ptr %prev.i84.i, align 4
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %node.i, ptr %61, align 4
  br label %c67x00_ep_data_alloc.exit

c67x00_ep_data_alloc.exit.thread:                 ; preds = %if.end.i.i.i100, %if.then25.i.c67x00_ep_data_alloc.exit.thread_crit_edge
  %ep_data106 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %ep_data106 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i, ptr %ep_data106, align 8
  br label %if.end21

c67x00_ep_data_alloc.exit:                        ; preds = %if.end.i.i92.i, %if.then38.i.c67x00_ep_data_alloc.exit_crit_edge, %for.cond.i.c67x00_ep_data_alloc.exit_crit_edge, %if.end.i
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %call7.i.i.i, %if.then38.i.c67x00_ep_data_alloc.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i92.i ], [ %call7.i.i.i, %for.cond.i.c67x00_ep_data_alloc.exit_crit_edge ]
  %ep_data = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %ep_data to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %retval.0.i, ptr %ep_data, align 8
  %tobool19.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool19.not, label %c67x00_ep_data_alloc.exit.if.then20_crit_edge, label %c67x00_ep_data_alloc.exit.if.end21_crit_edge

c67x00_ep_data_alloc.exit.if.end21_crit_edge:     ; preds = %c67x00_ep_data_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

c67x00_ep_data_alloc.exit.if.then20_crit_edge:    ; preds = %c67x00_ep_data_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %c67x00_ep_data_alloc.exit.if.then20_crit_edge, %c67x00_ep_data_alloc.exit.thread110
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef %urb) #5
  br label %err_not_linked

if.end21:                                         ; preds = %c67x00_ep_data_alloc.exit.if.end21_crit_edge, %c67x00_ep_data_alloc.exit.thread
  %ep_data109 = phi ptr [ %ep_data106, %c67x00_ep_data_alloc.exit.thread ], [ %ep_data, %c67x00_ep_data_alloc.exit.if.end21_crit_edge ]
  %retval.0.i108 = phi ptr [ %call7.i.i.i, %c67x00_ep_data_alloc.exit.thread ], [ %retval.0.i, %c67x00_ep_data_alloc.exit.if.end21_crit_edge ]
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %70 = ptrtoint ptr %hcpriv to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %hcpriv, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %71 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %actual_length, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %72 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %73, 30
  %74 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end21.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb23
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %75 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %interval, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end21
  %urb_iso_count = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %76 = ptrtoint ptr %urb_iso_count to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %urb_iso_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp24 = icmp eq i32 %77, 0
  br i1 %cmp24, label %if.then26, label %sw.bb23.if.end27_crit_edge

sw.bb23.if.end27_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %max_frame_bw = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 3
  %78 = ptrtoint ptr %max_frame_bw to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2400, ptr %max_frame_bw, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %sw.bb23.if.end27_crit_edge
  %79 = ptrtoint ptr %urb_iso_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %urb_iso_count, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr %urb_iso_count, align 4
  %81 = ptrtoint ptr %retval.0.i108 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %retval.0.i108, align 4
  %cmp.i.not = icmp eq ptr %82, %retval.0.i108
  br i1 %cmp.i.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %next_frame = getelementptr inbounds %struct.c67x00_ep_data, ptr %retval.0.i108, i32 0, i32 4
  %83 = ptrtoint ptr %next_frame to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %next_frame, align 4
  %conv34 = zext i16 %84 to i32
  br label %if.end46

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %prev = getelementptr inbounds %struct.list_head, ptr %retval.0.i108, i32 0, i32 1
  %85 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev, align 4
  %urb38 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %urb38 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %urb38, align 4
  %start_frame39 = getelementptr inbounds %struct.urb, ptr %88, i32 0, i32 23
  %89 = ptrtoint ptr %start_frame39 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %start_frame39, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %88, i32 0, i32 24
  %91 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %number_of_packets, align 4
  %interval41 = getelementptr inbounds %struct.urb, ptr %88, i32 0, i32 25
  %93 = ptrtoint ptr %interval41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %interval41, align 4
  %mul = mul i32 %94, %92
  %add.i = add i32 %mul, %90
  %and.i = and i32 %add.i, 2047
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then32
  %and.i.sink = phi i32 [ %conv34, %if.then32 ], [ %and.i, %if.else ]
  %95 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and.i.sink, ptr %95, align 4
  %cnt = getelementptr inbounds %struct.c67x00_urb_priv, ptr %call7.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %cnt, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end46, %sw.bb, %if.end21.sw.epilog_crit_edge
  %98 = ptrtoint ptr %ep_data109 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ep_data109, align 4
  %prev.i102 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i102, align 4
  %call.i.i103 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %101, ptr noundef %99) #5
  br i1 %call.i.i103, label %if.end.i.i, label %sw.epilog.list_add_tail.exit_crit_edge

sw.epilog.list_add_tail.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i, ptr %prev.i102, align 4
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %99, ptr %call7.i.i, align 8
  %104 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %call7.i.i, ptr %101, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_add_tail.exit_crit_edge
  %urb_count = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %106 = ptrtoint ptr %urb_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %urb_count, align 4
  %inc50 = add i32 %107, 1
  store i32 %inc50, ptr %urb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool51.not = icmp eq i32 %107, 0
  br i1 %tobool51.not, label %if.then52, label %list_add_tail.exit.if.end53_crit_edge

list_add_tail.exit.if.end53_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then52:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sie.i.i, align 4
  tail call void @c67x00_ll_hpi_enable_sofeop(ptr noundef %109) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %list_add_tail.exit.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %110 = load ptr, ptr @system_highpri_wq, align 4
  %work.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 10
  %call.i.i104 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %110, ptr noundef %work.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call5) #5
  br label %cleanup

err_not_linked:                                   ; preds = %if.then20, %if.end10.err_not_linked_crit_edge, %do.body3.err_not_linked_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_not_linked_crit_edge ], [ -12, %if.then20 ], [ -19, %do.body3.err_not_linked_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call5) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_not_linked, %if.end53, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ %ret.0, %err_not_linked ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_hpi_enable_sofeop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c67x00_urb_dequeue(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hcd_priv.i) #5
  %call6 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %hcd, ptr noundef %urb, i32 noundef %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %urb, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !87

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/c67x00/c67x00-sched.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #5, !srcloc !88
  unreachable

do.end9.i:                                        ; preds = %if.end
  %urb_count.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %urb_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urb_count.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %urb_count.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp.i = icmp ult i32 %3, 1073741824
  br i1 %cmp.i, label %if.then10.i, label %do.end9.i.if.end16.i_crit_edge

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then10.i:                                      ; preds = %do.end9.i
  %urb_iso_count.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %urb_iso_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %urb_iso_count.i, align 4
  %dec11.i = add i32 %5, -1
  store i32 %dec11.i, ptr %urb_iso_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec11.i)
  %cmp13.i = icmp eq i32 %dec11.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.then10.i.if.end16.i_crit_edge

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_frame_bw.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 3
  %6 = ptrtoint ptr %max_frame_bw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9750, ptr %max_frame_bw.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then10.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %td_list.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %td_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn46.i = load ptr, ptr %td_list.i, align 4
  %cmp19.not47.i = icmp eq ptr %.pn46.i, %td_list.i
  br i1 %cmp19.not47.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %.pn48.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn46.i, %if.end16.i.for.body.i_crit_edge ]
  %urb22.i = getelementptr i8, ptr %.pn48.i, i32 16
  %8 = ptrtoint ptr %urb22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb22.i, align 4
  %cmp23.i = icmp eq ptr %9, %urb
  br i1 %cmp23.i, label %if.then24.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %urb22.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %urb22.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn48.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn.i, %td_list.i
  br i1 %cmp19.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %hcpriv.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %12 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hcpriv.i, align 4
  store ptr null, ptr %hcpriv.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.c67x00_release_urb.exit_crit_edge

for.end.i.c67x00_release_urb.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_urb.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %c67x00_release_urb.exit

c67x00_release_urb.exit:                          ; preds = %if.end.i.i.i, %for.end.i.c67x00_release_urb.exit_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %13) #5
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %hcd, ptr noundef nonnull %urb) #5
  tail call void @_raw_spin_unlock(ptr noundef %hcd_priv.i) #5
  tail call void @usb_hcd_giveback_urb(ptr noundef %hcd, ptr noundef nonnull %urb, i32 noundef %status) #5
  tail call void @_raw_spin_lock(ptr noundef %hcd_priv.i) #5
  br label %cleanup

cleanup:                                          ; preds = %c67x00_release_urb.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %c67x00_release_urb.exit ], [ %call6, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hcd_priv.i, i32 noundef %call3) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c67x00_sched_start_scheduler(ptr noundef %c67x00) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @c67x00_sched_start_scheduler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry4 = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @c67x00_sched_work, ptr %func, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c67x00_sched_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #5
  %sie.i.i = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sie.i.i, align 4
  %call.i.i = tail call zeroext i16 @c67x00_ll_husb_get_current_td(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i)
  %tobool.not.i.not.i = icmp eq i16 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i, label %entry.c67x00_do_work.exit_crit_edge

entry.c67x00_do_work.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_do_work.exit

if.end.i:                                         ; preds = %entry
  %td_list.i.i = getelementptr i8, ptr %work, i32 -20
  %2 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %td_list.i.i, align 4
  %cmp.not177.i.i = icmp eq ptr %3, %td_list.i.i
  br i1 %cmp.not177.i.i, label %if.end.i.c67x00_check_td_list.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.c67x00_check_td_list.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_check_td_list.exit.i

for.body.i.i:                                     ; preds = %c67x00_release_td.exit.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %.pn178.i.i = phi ptr [ %205, %c67x00_release_td.exit.i.i.for.body.i.i_crit_edge ], [ %3, %if.end.i.for.body.i.i_crit_edge ]
  %td.0184.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -12
  %4 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sie.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.c67x00_sie, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i.i, align 4
  %td_addr.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 8
  %8 = ptrtoint ptr %td_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %td_addr.i.i.i, align 4
  tail call void @c67x00_ll_read_mem_le16(ptr noundef %7, i16 noundef zeroext %9, ptr noundef %td.0184.i.i, i32 noundef 12) #5
  %pipe.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 28
  %10 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe.i.i.i, align 4
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.c67x00_parse_td.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.c67x00_parse_td.exit.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_parse_td.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %port_length.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -10
  %12 = ptrtoint ptr %port_length.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port_length.i.i.i, align 2
  %14 = and i16 %13, -253
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #5
  %and1.i.i.i = zext i16 %15 to i32
  %residue.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -3
  %16 = ptrtoint ptr %residue.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %residue.i.i.i, align 1
  %conv2.i.i.i = sext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i.i.i, i32 %conv2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and1.i.i.i, %conv2.i.i.i
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.c67x00_parse_td.exitthread-pre-split.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.c67x00_parse_td.exitthread-pre-split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_parse_td.exitthread-pre-split.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = sub nsw i32 %and1.i.i.i, %conv2.i.i.i
  %18 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sie.i.i, align 4
  %dev5.i.i.i = getelementptr inbounds %struct.c67x00_sie, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev5.i.i.i, align 4
  %22 = ptrtoint ptr %td.0184.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %td.0184.i.i, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #5
  %data.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 12
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  tail call void @c67x00_ll_read_mem_le16(ptr noundef %21, i16 noundef zeroext %24, ptr noundef %26, i32 noundef %sub.i.i.i) #5
  br label %c67x00_parse_td.exitthread-pre-split.i.i

c67x00_parse_td.exitthread-pre-split.i.i:         ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.c67x00_parse_td.exitthread-pre-split.i.i_crit_edge
  %27 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i.i = load i32, ptr %pipe.i.i.i, align 4
  br label %c67x00_parse_td.exit.i.i

c67x00_parse_td.exit.i.i:                         ; preds = %c67x00_parse_td.exitthread-pre-split.i.i, %for.body.i.i.c67x00_parse_td.exit.i.i_crit_edge
  %28 = phi i32 [ %.pr.i.i, %c67x00_parse_td.exitthread-pre-split.i.i ], [ %11, %for.body.i.i.c67x00_parse_td.exit.i.i_crit_edge ]
  %urb9.i.i = getelementptr i8, ptr %.pn178.i.i, i32 16
  %29 = ptrtoint ptr %urb9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %urb9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %28)
  %cmp10.i.i = icmp ult i32 %28, 1073741824
  br i1 %cmp10.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %c67x00_parse_td.exit.i.i
  %tobool.not.i141.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i141.i.i, label %if.then.i.i.if.end92.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end92.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %privdata.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 20
  %31 = ptrtoint ptr %privdata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %privdata.i.i.i, align 4
  %status.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -5
  %33 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %status.i.i.i, align 1
  %35 = and i8 %34, -122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool2.not.i.i.i = icmp eq i8 %35, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.end4.i.i.i_crit_edge, label %if.then3.i.i.i

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %error_count.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 26
  %36 = ptrtoint ptr %error_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error_count.i.i.i, align 4
  %inc.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i, ptr %error_count.i.i.i, align 4
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i.i.if.end4.i.i.i_crit_edge
  %port_length.i142.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -10
  %38 = ptrtoint ptr %port_length.i142.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %port_length.i142.i.i, align 2
  %40 = and i16 %39, -253
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #5
  %and6.i.i.i = zext i16 %41 to i32
  %residue.i143.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -3
  %42 = ptrtoint ptr %residue.i143.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %residue.i143.i.i, align 1
  %conv7.i.i.i = sext i8 %43 to i32
  %sub.i144.i.i = sub nsw i32 %and6.i.i.i, %conv7.i.i.i
  %actual_length.i.i.i = getelementptr %struct.urb, ptr %30, i32 0, i32 29, i32 %32, i32 2
  %44 = ptrtoint ptr %actual_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i144.i.i, ptr %actual_length.i.i.i, align 4
  %45 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %status.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %46 to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.i.i.return.sink.split.i.i.i.i_crit_edge

if.end4.i.i.i.return.sink.split.i.i.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i.i.i
  %and3.i.i.i.i = and i32 %conv.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %and3.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end6.i.i.i.i, label %if.end.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge

if.end.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_td_to_error.exit.i.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %and9.i.i.i.i = and i32 %conv.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i.i)
  %tobool10.not.i.i.i.i = icmp eq i32 %and9.i.i.i.i, 0
  br i1 %tobool10.not.i.i.i.i, label %if.end6.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge, label %if.end6.i.i.i.i.return.sink.split.i.i.i.i_crit_edge

if.end6.i.i.i.i.return.sink.split.i.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.i.i.i

if.end6.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge: ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_td_to_error.exit.i.i.i

return.sink.split.i.i.i.i:                        ; preds = %if.end6.i.i.i.i.return.sink.split.i.i.i.i_crit_edge, %if.end4.i.i.i.return.sink.split.i.i.i.i_crit_edge
  %.str.7.sink.i.i.i.i = phi ptr [ @.str.6, %if.end4.i.i.i.return.sink.split.i.i.i.i_crit_edge ], [ @.str.7, %if.end6.i.i.i.i.return.sink.split.i.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i.i = phi i32 [ -84, %if.end4.i.i.i.return.sink.split.i.i.i.i_crit_edge ], [ -110, %if.end6.i.i.i.i.return.sink.split.i.i.i.i_crit_edge ]
  tail call fastcc void @dbg_td(ptr noundef %add.ptr, ptr noundef %td.0184.i.i, ptr noundef nonnull %.str.7.sink.i.i.i.i) #5
  br label %c67x00_td_to_error.exit.i.i.i

c67x00_td_to_error.exit.i.i.i:                    ; preds = %return.sink.split.i.i.i.i, %if.end6.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge, %if.end.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ -32, %if.end.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge ], [ 0, %if.end6.i.i.i.i.c67x00_td_to_error.exit.i.i.i_crit_edge ], [ %retval.0.ph.i.i.i.i, %return.sink.split.i.i.i.i ]
  %status10.i.i.i = getelementptr %struct.urb, ptr %30, i32 0, i32 29, i32 %32, i32 3
  %47 = ptrtoint ptr %status10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i.i.i.i, ptr %status10.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  %number_of_packets.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 24
  %48 = ptrtoint ptr %number_of_packets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number_of_packets.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %49)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %49
  br i1 %cmp.i.i.i, label %if.then12.i.i.i, label %c67x00_td_to_error.exit.i.i.i.if.end92.i.i_crit_edge

c67x00_td_to_error.exit.i.i.i.if.end92.i.i_crit_edge: ; preds = %c67x00_td_to_error.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i.i

if.then12.i.i.i:                                  ; preds = %c67x00_td_to_error.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @c67x00_giveback_urb(ptr noundef %add.ptr, ptr noundef nonnull %30, i32 noundef 0) #5
  br label %if.end92.i.i

if.end.i.i:                                       ; preds = %c67x00_parse_td.exit.i.i
  %status.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -5
  %50 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status.i.i, align 1
  %conv.i.i = zext i8 %51 to i32
  %and11.i.i = and i32 %conv.i.i, 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i38.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i38.i, label %if.end13.i.i, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  %and.i146.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146.i.i)
  %tobool.not.i147.i.i = icmp eq i32 %and.i146.i.i, 0
  br i1 %tobool.not.i147.i.i, label %if.end.i148.i.i, label %if.then12.i.i.return.sink.split.i.i.i_crit_edge

if.then12.i.i.return.sink.split.i.i.i_crit_edge:  ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.i.i

if.end.i148.i.i:                                  ; preds = %if.then12.i.i
  %and3.i.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i148.i.i.if.then60.sink.split.i.i_crit_edge

if.end.i148.i.i.if.then60.sink.split.i.i_crit_edge: ; preds = %if.end.i148.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.sink.split.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i148.i.i
  %and9.i.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end6.i.i.i.if.then60.sink.split.i.i_crit_edge, label %if.end6.i.i.i.return.sink.split.i.i.i_crit_edge

if.end6.i.i.i.return.sink.split.i.i.i_crit_edge:  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.i.i

if.end6.i.i.i.if.then60.sink.split.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.sink.split.i.i

return.sink.split.i.i.i:                          ; preds = %if.end6.i.i.i.return.sink.split.i.i.i_crit_edge, %if.then12.i.i.return.sink.split.i.i.i_crit_edge
  %.str.7.sink.i.i.i = phi ptr [ @.str.6, %if.then12.i.i.return.sink.split.i.i.i_crit_edge ], [ @.str.7, %if.end6.i.i.i.return.sink.split.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ -84, %if.then12.i.i.return.sink.split.i.i.i_crit_edge ], [ -110, %if.end6.i.i.i.return.sink.split.i.i.i_crit_edge ]
  tail call fastcc void @dbg_td(ptr noundef %add.ptr, ptr noundef %td.0184.i.i, ptr noundef nonnull %.str.7.sink.i.i.i) #5
  br label %if.then60.sink.split.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %and16.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i, label %if.end13.i.i.if.then60.i.i_crit_edge

if.end13.i.i.if.then60.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.i.i

lor.lhs.false.i.i:                                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool19.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool19.not.i.i, label %lor.lhs.false.i.i.if.end58.i.i_crit_edge, label %lor.lhs.false20.i.i

lor.lhs.false.i.i.if.end58.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i.i

lor.lhs.false20.i.i:                              ; preds = %lor.lhs.false.i.i
  %and23.i.i = lshr i32 %conv.i.i, 3
  %and23.lobit.i.i = and i32 %and23.i.i, 1
  %52 = xor i32 %and23.lobit.i.i, 1
  %ctrl_reg.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -6
  %53 = ptrtoint ptr %ctrl_reg.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ctrl_reg.i.i, align 2
  %55 = lshr i8 %54, 6
  %.lobit140.i.i = and i8 %55, 1
  %56 = xor i8 %.lobit140.i.i, 1
  %57 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %57)
  %cmp31.i.i = icmp ne i32 %52, %57
  %58 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool40.not.i.i = icmp eq i8 %58, 0
  %or.cond.i.i = select i1 %cmp31.i.i, i1 true, i1 %tobool40.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false20.i.i.if.then60.i.i_crit_edge, label %if.end42.i.i

lor.lhs.false20.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.i.i

if.end42.i.i:                                     ; preds = %lor.lhs.false20.i.i
  %59 = and i8 %51, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool46.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool46.not.i.i, label %if.end42.i.i.if.end58.i.i_crit_edge, label %if.then52.i.i, !prof !86

if.end42.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i.i

if.then52.i.i:                                    ; preds = %if.end42.i.i
  %residue.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -3
  %60 = ptrtoint ptr %residue.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %residue.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %61)
  %tobool55.not.i.i = icmp sgt i8 %61, -1
  br i1 %tobool55.not.i.i, label %if.then52.i.i.if.end58.i.i_crit_edge, label %if.then52.i.i.if.then60.sink.split.i.i_crit_edge

if.then52.i.i.if.then60.sink.split.i.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then60.sink.split.i.i

if.then52.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then52.i.i.if.end58.i.i_crit_edge, %if.end42.i.i.if.end58.i.i_crit_edge, %lor.lhs.false.i.i.if.end58.i.i_crit_edge
  %tobool.not.i150.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i150.i.i, label %if.end58.i.i.if.then63.i.i_crit_edge, label %if.end.i159.i.i

if.end58.i.i.if.then63.i.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

if.end.i159.i.i:                                  ; preds = %if.end58.i.i
  %port_length.i151.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -10
  %62 = ptrtoint ptr %port_length.i151.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %port_length.i151.i.i, align 2
  %64 = and i16 %63, -253
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #5
  %and.i152.i.i = zext i16 %65 to i32
  %residue.i153.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -3
  %66 = ptrtoint ptr %residue.i153.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %residue.i153.i.i, align 1
  %conv2.i154.i.i = sext i8 %67 to i32
  %actual_length.i155.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 20
  %68 = ptrtoint ptr %actual_length.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %actual_length.i155.i.i, align 4
  %sub.i156.i.i = sub i32 %69, %conv2.i154.i.i
  %add.i157.i.i = add i32 %sub.i156.i.i, %and.i152.i.i
  store i32 %add.i157.i.i, ptr %actual_length.i155.i.i, align 4
  %70 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pipe.i.i.i, align 4
  %shr.i.i.i = lshr i32 %71, 30
  %72 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i.i, label %if.end.i159.i.i.if.then63.i.i_crit_edge [
    i32 2, label %sw.bb.i.i.i
    i32 1, label %if.end.i159.i.i.sw.bb14.i.i.i_crit_edge
    i32 3, label %if.end.i159.i.i.sw.bb14.i.i.i_crit_edge3
  ]

if.end.i159.i.i.sw.bb14.i.i.i_crit_edge3:         ; preds = %if.end.i159.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14.i.i.i

if.end.i159.i.i.sw.bb14.i.i.i_crit_edge:          ; preds = %if.end.i159.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb14.i.i.i

if.end.i159.i.i.if.then63.i.i_crit_edge:          ; preds = %if.end.i159.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i159.i.i
  %privdata.i160.i.i = getelementptr i8, ptr %.pn178.i.i, i32 20
  %73 = ptrtoint ptr %privdata.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %privdata.i160.i.i, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %74, label %sw.bb.i.i.i.if.then63.i.i_crit_edge [
    i32 0, label %sw.bb4.i.i.i
    i32 1, label %sw.bb7.i.i.i
    i32 2, label %sw.bb12.i.i.i
  ]

sw.bb.i.i.i.if.then63.i.i_crit_edge:              ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

sw.bb4.i.i.i:                                     ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 19
  %76 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %transfer_buffer_length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool5.not.i.i.i = icmp eq i32 %77, 0
  %cond.i.i.i = select i1 %tobool5.not.i.i.i, i32 2, i32 1
  %interval.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 25
  %78 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond.i.i.i, ptr %interval.i.i.i, align 4
  %79 = ptrtoint ptr %actual_length.i155.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %actual_length.i155.i.i, align 4
  br label %if.then63.i.i

sw.bb7.i.i.i:                                     ; preds = %sw.bb.i.i.i
  %80 = ptrtoint ptr %urb9.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %urb9.i.i, align 4
  %82 = ptrtoint ptr %port_length.i151.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %port_length.i151.i.i, align 2
  %84 = and i16 %83, -253
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #5
  %and.i.i161.i.i = zext i16 %85 to i32
  %86 = ptrtoint ptr %residue.i153.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %residue.i153.i.i, align 1
  %conv2.i.i.i.i = sext i8 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i161.i.i, i32 %conv2.i.i.i.i)
  %tobool.not.i.i162.i.i = icmp eq i32 %and.i.i161.i.i, %conv2.i.i.i.i
  br i1 %tobool.not.i.i162.i.i, label %sw.bb7.i.i.i.if.then9.i.i.i_crit_edge, label %if.end.i.i163.i.i, !prof !87

sw.bb7.i.i.i.if.then9.i.i.i_crit_edge:            ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i.i

if.end.i.i163.i.i:                                ; preds = %sw.bb7.i.i.i
  %sub.i.i.i.i = sub nsw i32 %and.i.i161.i.i, %conv2.i.i.i.i
  %ep_data.i.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 24
  %88 = ptrtoint ptr %ep_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ep_data.i.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i.i.i, align 4
  %92 = lshr i32 %71, 15
  %and.i.i.i.i.i = and i32 %92, 15
  %93 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.not.i.i.i.i = icmp eq i32 %93, 0
  %arrayidx.i.i.i.i.i = getelementptr %struct.usb_device, ptr %91, i32 0, i32 22, i32 %and.i.i.i.i.i
  %arrayidx57.i.i.i.i.i = getelementptr %struct.usb_device, ptr %91, i32 0, i32 21, i32 %and.i.i.i.i.i
  %ep.0.in.i.i.i.i.i = select i1 %tobool.not.i.not.i.i.i.i, ptr %arrayidx.i.i.i.i.i, ptr %arrayidx57.i.i.i.i.i
  %94 = ptrtoint ptr %ep.0.in.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %ep.0.i.i.i.i.i = load ptr, ptr %ep.0.in.i.i.i.i.i, align 4
  %tobool59.not.i.i.i.i.i = icmp eq ptr %ep.0.i.i.i.i.i, null
  br i1 %tobool59.not.i.i.i.i.i, label %if.end.i.i163.i.i.usb_maxpacket.exit.i.i.i.i_crit_edge, label %if.end61.i.i.i.i.i

if.end.i.i163.i.i.usb_maxpacket.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i163.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_maxpacket.exit.i.i.i.i

if.end61.i.i.i.i.i:                               ; preds = %if.end.i.i163.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %wMaxPacketSize.i.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i.i.i.i, i32 0, i32 4
  %95 = ptrtoint ptr %wMaxPacketSize.i.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %wMaxPacketSize.i.i.i.i.i.i, align 1
  %97 = and i16 %96, -249
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #5
  %phi.cast.i.i.i.i = zext i16 %98 to i32
  br label %usb_maxpacket.exit.i.i.i.i

usb_maxpacket.exit.i.i.i.i:                       ; preds = %if.end61.i.i.i.i.i, %if.end.i.i163.i.i.usb_maxpacket.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %phi.cast.i.i.i.i, %if.end61.i.i.i.i.i ], [ 0, %if.end.i.i163.i.i.usb_maxpacket.exit.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %retval.0.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, %retval.0.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %usb_maxpacket.exit.i.i.i.i.if.then9.i.i.i_crit_edge, label %if.end20.i.i.i.i, !prof !87

usb_maxpacket.exit.i.i.i.i.if.then9.i.i.i_crit_edge: ; preds = %usb_maxpacket.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i.i

if.end20.i.i.i.i:                                 ; preds = %usb_maxpacket.exit.i.i.i.i
  %transfer_buffer_length.i.i.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 19
  %99 = ptrtoint ptr %transfer_buffer_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %transfer_buffer_length.i.i.i.i, align 4
  %actual_length.i.i.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 20
  %101 = ptrtoint ptr %actual_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %actual_length.i.i.i.i, align 4
  %sub21.i.i.i.i = sub i32 %100, %102
  %transfer_flags.i.i.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 13
  %103 = ptrtoint ptr %transfer_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %transfer_flags.i.i.i.i, align 4
  %and22.i.i.i.i = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i.i)
  %tobool23.not.i.i.i.i = icmp eq i32 %and22.i.i.i.i, 0
  br i1 %tobool23.not.i.i.i.i, label %if.end20.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end20.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge: ; preds = %if.end20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_end_of_data.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end20.i.i.i.i
  %pipe24.i.i.i.i = getelementptr inbounds %struct.urb, ptr %81, i32 0, i32 10
  %105 = ptrtoint ptr %pipe24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pipe24.i.i.i.i, align 4
  %and25.i.i.i.i = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i.i)
  %tobool26.not.i.i.i.i = icmp eq i32 %and25.i.i.i.i, 0
  br i1 %tobool26.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_end_of_data.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i.i.i.i = srem i32 %sub21.i.i.i.i, %retval.0.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i)
  %tobool27.i.i.i.i = icmp ne i32 %rem.i.i.i.i, 0
  br label %c67x00_end_of_data.exit.i.i.i

c67x00_end_of_data.exit.i.i.i:                    ; preds = %land.rhs.i.i.i.i, %land.lhs.true.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge, %if.end20.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge
  %107 = phi i1 [ true, %land.lhs.true.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge ], [ true, %if.end20.i.i.i.i.c67x00_end_of_data.exit.i.i.i_crit_edge ], [ %tobool27.i.i.i.i, %land.rhs.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %tobool30.not.i.i.i.i = icmp eq i32 %100, %102
  %spec.select.i.i.i.i = select i1 %tobool30.not.i.i.i.i, i1 %107, i1 false
  br i1 %spec.select.i.i.i.i, label %c67x00_end_of_data.exit.i.i.i.if.then9.i.i.i_crit_edge, label %c67x00_end_of_data.exit.i.i.i.if.then63.i.i_crit_edge

c67x00_end_of_data.exit.i.i.i.if.then63.i.i_crit_edge: ; preds = %c67x00_end_of_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

c67x00_end_of_data.exit.i.i.i.if.then9.i.i.i_crit_edge: ; preds = %c67x00_end_of_data.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i.i

if.then9.i.i.i:                                   ; preds = %c67x00_end_of_data.exit.i.i.i.if.then9.i.i.i_crit_edge, %usb_maxpacket.exit.i.i.i.i.if.then9.i.i.i_crit_edge, %sw.bb7.i.i.i.if.then9.i.i.i_crit_edge
  %interval10.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 25
  %108 = ptrtoint ptr %interval10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2, ptr %interval10.i.i.i, align 4
  %109 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %.pn178.i.i, align 4
  %cmp.not14.i.i.i.i = icmp eq ptr %110, %td_list.i.i
  br i1 %cmp.not14.i.i.i.i, label %if.then9.i.i.i.if.then63.i.i_crit_edge, label %if.then9.i.i.i.while.body.i.i.i.i_crit_edge

if.then9.i.i.i.while.body.i.i.i.i_crit_edge:      ; preds = %if.then9.i.i.i
  br label %while.body.i.i.i.i

if.then9.i.i.i.if.then63.i.i_crit_edge:           ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

while.body.i.i.i.i:                               ; preds = %if.end.i42.i.i.i.while.body.i.i.i.i_crit_edge, %if.then9.i.i.i.while.body.i.i.i.i_crit_edge
  %111 = phi ptr [ %125, %if.end.i42.i.i.i.while.body.i.i.i.i_crit_edge ], [ %110, %if.then9.i.i.i.while.body.i.i.i.i_crit_edge ]
  %td.015.i.i.i.i = phi ptr [ %td.1.i.i.i.i, %if.end.i42.i.i.i.while.body.i.i.i.i_crit_edge ], [ %td.0184.i.i, %if.then9.i.i.i.while.body.i.i.i.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %111, i32 -12
  %pipe.i41.i.i.i = getelementptr i8, ptr %111, i32 28
  %112 = ptrtoint ptr %pipe.i41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pipe.i41.i.i.i, align 4
  %114 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pipe.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp6.i.i.i.i = icmp eq i32 %113, %115
  br i1 %cmp6.i.i.i.i, label %if.then.i.i.i.i, label %while.body.i.i.i.i.if.end.i42.i.i.i_crit_edge

while.body.i.i.i.i.if.end.i42.i.i.i_crit_edge:    ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i42.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %111) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.i.i.i.c67x00_release_td.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.c67x00_release_td.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_td.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i.i.i.i = getelementptr i8, ptr %111, i32 4
  %116 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %111, align 4
  %prev1.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i.i.i.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %c67x00_release_td.exit.i.i.i.i

c67x00_release_td.exit.i.i.i.i:                   ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.i.i.i.c67x00_release_td.exit.i.i.i.i_crit_edge
  %122 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %111, ptr %111, align 4
  %prev.i3.i.i.i.i.i.i = getelementptr i8, ptr %111, i32 4
  %123 = ptrtoint ptr %prev.i3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %111, ptr %prev.i3.i.i.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i.i.i.i) #5
  br label %if.end.i42.i.i.i

if.end.i42.i.i.i:                                 ; preds = %c67x00_release_td.exit.i.i.i.i, %while.body.i.i.i.i.if.end.i42.i.i.i_crit_edge
  %td.1.i.i.i.i = phi ptr [ %td.015.i.i.i.i, %c67x00_release_td.exit.i.i.i.i ], [ %add.ptr.i.i.i.i, %while.body.i.i.i.i.if.end.i42.i.i.i_crit_edge ]
  %td_list.i.i.i.i = getelementptr inbounds %struct.c67x00_td, ptr %td.1.i.i.i.i, i32 0, i32 9
  %124 = ptrtoint ptr %td_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %td_list.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %125, %td_list.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i42.i.i.i.if.then63.i.i_crit_edge, label %if.end.i42.i.i.i.while.body.i.i.i.i_crit_edge

if.end.i42.i.i.i.while.body.i.i.i.i_crit_edge:    ; preds = %if.end.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i.i

if.end.i42.i.i.i.if.then63.i.i_crit_edge:         ; preds = %if.end.i42.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

sw.bb12.i.i.i:                                    ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %interval13.i.i.i = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 25
  %126 = ptrtoint ptr %interval13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %interval13.i.i.i, align 4
  tail call fastcc void @c67x00_giveback_urb(ptr noundef %add.ptr, ptr noundef nonnull %30, i32 noundef 0) #5
  br label %if.then63.i.i

sw.bb14.i.i.i:                                    ; preds = %if.end.i159.i.i.sw.bb14.i.i.i_crit_edge, %if.end.i159.i.i.sw.bb14.i.i.i_crit_edge3
  %127 = ptrtoint ptr %urb9.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %urb9.i.i, align 4
  %129 = ptrtoint ptr %port_length.i151.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %port_length.i151.i.i, align 2
  %131 = and i16 %130, -253
  %132 = tail call i16 @llvm.bswap.i16(i16 %131) #5
  %and.i45.i.i.i = zext i16 %132 to i32
  %133 = ptrtoint ptr %residue.i153.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %residue.i153.i.i, align 1
  %conv2.i47.i.i.i = sext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i45.i.i.i, i32 %conv2.i47.i.i.i)
  %tobool.not.i48.i.i.i = icmp eq i32 %and.i45.i.i.i, %conv2.i47.i.i.i
  br i1 %tobool.not.i48.i.i.i, label %sw.bb14.i.i.i.if.then19.i.i.i_crit_edge, label %if.end.i60.i.i.i, !prof !87

sw.bb14.i.i.i.if.then19.i.i.i_crit_edge:          ; preds = %sw.bb14.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i.i.i

if.end.i60.i.i.i:                                 ; preds = %sw.bb14.i.i.i
  %sub.i49.i.i.i = sub nsw i32 %and.i45.i.i.i, %conv2.i47.i.i.i
  %ep_data.i50.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 24
  %135 = ptrtoint ptr %ep_data.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ep_data.i50.i.i.i, align 4
  %dev.i51.i.i.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %dev.i51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i51.i.i.i, align 4
  %139 = lshr i32 %71, 15
  %and.i.i53.i.i.i = and i32 %139, 15
  %140 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i.not.i54.i.i.i = icmp eq i32 %140, 0
  %arrayidx.i.i55.i.i.i = getelementptr %struct.usb_device, ptr %138, i32 0, i32 22, i32 %and.i.i53.i.i.i
  %arrayidx57.i.i56.i.i.i = getelementptr %struct.usb_device, ptr %138, i32 0, i32 21, i32 %and.i.i53.i.i.i
  %ep.0.in.i.i57.i.i.i = select i1 %tobool.not.i.not.i54.i.i.i, ptr %arrayidx.i.i55.i.i.i, ptr %arrayidx57.i.i56.i.i.i
  %141 = ptrtoint ptr %ep.0.in.i.i57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %ep.0.i.i58.i.i.i = load ptr, ptr %ep.0.in.i.i57.i.i.i, align 4
  %tobool59.not.i.i59.i.i.i = icmp eq ptr %ep.0.i.i58.i.i.i, null
  br i1 %tobool59.not.i.i59.i.i.i, label %if.end.i60.i.i.i.usb_maxpacket.exit.i66.i.i.i_crit_edge, label %if.end61.i.i63.i.i.i

if.end.i60.i.i.i.usb_maxpacket.exit.i66.i.i.i_crit_edge: ; preds = %if.end.i60.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_maxpacket.exit.i66.i.i.i

if.end61.i.i63.i.i.i:                             ; preds = %if.end.i60.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %wMaxPacketSize.i.i.i61.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i58.i.i.i, i32 0, i32 4
  %142 = ptrtoint ptr %wMaxPacketSize.i.i.i61.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %wMaxPacketSize.i.i.i61.i.i.i, align 1
  %144 = and i16 %143, -249
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #5
  %phi.cast.i62.i.i.i = zext i16 %145 to i32
  br label %usb_maxpacket.exit.i66.i.i.i

usb_maxpacket.exit.i66.i.i.i:                     ; preds = %if.end61.i.i63.i.i.i, %if.end.i60.i.i.i.usb_maxpacket.exit.i66.i.i.i_crit_edge
  %retval.0.i.i64.i.i.i = phi i32 [ %phi.cast.i62.i.i.i, %if.end61.i.i63.i.i.i ], [ 0, %if.end.i60.i.i.i.usb_maxpacket.exit.i66.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i49.i.i.i, i32 %retval.0.i.i64.i.i.i)
  %cmp.i65.i.i.i = icmp slt i32 %sub.i49.i.i.i, %retval.0.i.i64.i.i.i
  br i1 %cmp.i65.i.i.i, label %usb_maxpacket.exit.i66.i.i.i.if.then19.i.i.i_crit_edge, label %if.end20.i73.i.i.i, !prof !87

usb_maxpacket.exit.i66.i.i.i.if.then19.i.i.i_crit_edge: ; preds = %usb_maxpacket.exit.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i.i.i

if.end20.i73.i.i.i:                               ; preds = %usb_maxpacket.exit.i66.i.i.i
  %transfer_buffer_length.i67.i.i.i = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 19
  %146 = ptrtoint ptr %transfer_buffer_length.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %transfer_buffer_length.i67.i.i.i, align 4
  %actual_length.i68.i.i.i = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 20
  %148 = ptrtoint ptr %actual_length.i68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %actual_length.i68.i.i.i, align 4
  %sub21.i69.i.i.i = sub i32 %147, %149
  %transfer_flags.i70.i.i.i = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 13
  %150 = ptrtoint ptr %transfer_flags.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %transfer_flags.i70.i.i.i, align 4
  %and22.i71.i.i.i = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i71.i.i.i)
  %tobool23.not.i72.i.i.i = icmp eq i32 %and22.i71.i.i.i, 0
  br i1 %tobool23.not.i72.i.i.i, label %if.end20.i73.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge, label %land.lhs.true.i77.i.i.i

if.end20.i73.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge: ; preds = %if.end20.i73.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_end_of_data.exit86.i.i.i

land.lhs.true.i77.i.i.i:                          ; preds = %if.end20.i73.i.i.i
  %pipe24.i74.i.i.i = getelementptr inbounds %struct.urb, ptr %128, i32 0, i32 10
  %152 = ptrtoint ptr %pipe24.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pipe24.i74.i.i.i, align 4
  %and25.i75.i.i.i = and i32 %153, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i75.i.i.i)
  %tobool26.not.i76.i.i.i = icmp eq i32 %and25.i75.i.i.i, 0
  br i1 %tobool26.not.i76.i.i.i, label %land.rhs.i80.i.i.i, label %land.lhs.true.i77.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge

land.lhs.true.i77.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge: ; preds = %land.lhs.true.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_end_of_data.exit86.i.i.i

land.rhs.i80.i.i.i:                               ; preds = %land.lhs.true.i77.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i78.i.i.i = srem i32 %sub21.i69.i.i.i, %retval.0.i.i64.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i78.i.i.i)
  %tobool27.i79.i.i.i = icmp ne i32 %rem.i78.i.i.i, 0
  br label %c67x00_end_of_data.exit86.i.i.i

c67x00_end_of_data.exit86.i.i.i:                  ; preds = %land.rhs.i80.i.i.i, %land.lhs.true.i77.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge, %if.end20.i73.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge
  %154 = phi i1 [ true, %land.lhs.true.i77.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge ], [ true, %if.end20.i73.i.i.i.c67x00_end_of_data.exit86.i.i.i_crit_edge ], [ %tobool27.i79.i.i.i, %land.rhs.i80.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %tobool30.not.i81.i.i.i = icmp eq i32 %147, %149
  %spec.select.i82.i.i.i = select i1 %tobool30.not.i81.i.i.i, i1 %154, i1 false
  br i1 %spec.select.i82.i.i.i, label %c67x00_end_of_data.exit86.i.i.i.if.then19.i.i.i_crit_edge, label %c67x00_end_of_data.exit86.i.i.i.if.then63.i.i_crit_edge, !prof !87

c67x00_end_of_data.exit86.i.i.i.if.then63.i.i_crit_edge: ; preds = %c67x00_end_of_data.exit86.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

c67x00_end_of_data.exit86.i.i.i.if.then19.i.i.i_crit_edge: ; preds = %c67x00_end_of_data.exit86.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19.i.i.i

if.then19.i.i.i:                                  ; preds = %c67x00_end_of_data.exit86.i.i.i.if.then19.i.i.i_crit_edge, %usb_maxpacket.exit.i66.i.i.i.if.then19.i.i.i_crit_edge, %sw.bb14.i.i.i.if.then19.i.i.i_crit_edge
  %155 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %.pn178.i.i, align 4
  %cmp.not14.i = icmp eq ptr %156, %td_list.i.i
  br i1 %cmp.not14.i, label %if.then19.i.i.i.c67x00_clear_pipe.exit_crit_edge, label %if.then19.i.i.i.while.body.i_crit_edge

if.then19.i.i.i.while.body.i_crit_edge:           ; preds = %if.then19.i.i.i
  br label %while.body.i

if.then19.i.i.i.c67x00_clear_pipe.exit_crit_edge: ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_clear_pipe.exit

while.body.i:                                     ; preds = %if.end.i2.while.body.i_crit_edge, %if.then19.i.i.i.while.body.i_crit_edge
  %157 = phi ptr [ %171, %if.end.i2.while.body.i_crit_edge ], [ %156, %if.then19.i.i.i.while.body.i_crit_edge ]
  %td.015.i = phi ptr [ %td.1.i, %if.end.i2.while.body.i_crit_edge ], [ %td.0184.i.i, %if.then19.i.i.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %157, i32 -12
  %pipe.i = getelementptr i8, ptr %157, i32 28
  %158 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pipe.i, align 4
  %160 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pipe.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %161)
  %cmp6.i = icmp eq i32 %159, %161
  br i1 %cmp6.i, label %if.then.i, label %while.body.i.if.end.i2_crit_edge

while.body.i.if.end.i2_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i2

if.then.i:                                        ; preds = %while.body.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %157) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i1, label %if.then.i.c67x00_release_td.exit.i_crit_edge

if.then.i.c67x00_release_td.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_td.exit.i

if.end.i.i.i.i1:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr i8, ptr %157, i32 4
  %162 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prev.i.i.i.i, align 4
  %164 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %157, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %163, ptr %prev1.i.i.i.i.i, align 4
  %167 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %165, ptr %163, align 4
  br label %c67x00_release_td.exit.i

c67x00_release_td.exit.i:                         ; preds = %if.end.i.i.i.i1, %if.then.i.c67x00_release_td.exit.i_crit_edge
  %168 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %157, ptr %157, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %157, i32 4
  %169 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %157, ptr %prev.i3.i.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #5
  br label %if.end.i2

if.end.i2:                                        ; preds = %c67x00_release_td.exit.i, %while.body.i.if.end.i2_crit_edge
  %td.1.i = phi ptr [ %td.015.i, %c67x00_release_td.exit.i ], [ %add.ptr.i, %while.body.i.if.end.i2_crit_edge ]
  %td_list.i = getelementptr inbounds %struct.c67x00_td, ptr %td.1.i, i32 0, i32 9
  %170 = ptrtoint ptr %td_list.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %td_list.i, align 4
  %cmp.not.i = icmp eq ptr %171, %td_list.i.i
  br i1 %cmp.not.i, label %if.end.i2.c67x00_clear_pipe.exit_crit_edge, label %if.end.i2.while.body.i_crit_edge

if.end.i2.while.body.i_crit_edge:                 ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end.i2.c67x00_clear_pipe.exit_crit_edge:       ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_clear_pipe.exit

c67x00_clear_pipe.exit:                           ; preds = %if.end.i2.c67x00_clear_pipe.exit_crit_edge, %if.then19.i.i.i.c67x00_clear_pipe.exit_crit_edge
  tail call fastcc void @c67x00_giveback_urb(ptr noundef %add.ptr, ptr noundef nonnull %30, i32 noundef 0) #5
  br label %if.then63.i.i

if.then60.sink.split.i.i:                         ; preds = %if.then52.i.i.if.then60.sink.split.i.i_crit_edge, %return.sink.split.i.i.i, %if.end6.i.i.i.if.then60.sink.split.i.i_crit_edge, %if.end.i148.i.i.if.then60.sink.split.i.i_crit_edge
  %retval.0.i.sink.i.i = phi i32 [ -32, %if.end.i148.i.i.if.then60.sink.split.i.i_crit_edge ], [ 0, %if.end6.i.i.i.if.then60.sink.split.i.i_crit_edge ], [ %retval.0.ph.i.i.i, %return.sink.split.i.i.i ], [ -75, %if.then52.i.i.if.then60.sink.split.i.i_crit_edge ]
  %172 = xor i1 %tobool.not.i38.i, true
  tail call fastcc void @c67x00_giveback_urb(ptr noundef %add.ptr, ptr noundef %30, i32 noundef %retval.0.i.sink.i.i) #5
  br label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.then60.sink.split.i.i, %lor.lhs.false20.i.i.if.then60.i.i_crit_edge, %if.end13.i.i.if.then60.i.i_crit_edge
  %tobool62.not.i.i = phi i1 [ true, %if.end13.i.i.if.then60.i.i_crit_edge ], [ true, %lor.lhs.false20.i.i.if.then60.i.i_crit_edge ], [ %172, %if.then60.sink.split.i.i ]
  %173 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %.pn178.i.i, align 4
  %cmp.not14.i.i.i = icmp eq ptr %174, %td_list.i.i
  br i1 %cmp.not14.i.i.i, label %if.then60.i.i.if.end61.i.i_crit_edge, label %if.then60.i.i.while.body.i.i.i_crit_edge

if.then60.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then60.i.i
  br label %while.body.i.i.i

if.then60.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i.i

while.body.i.i.i:                                 ; preds = %if.end.i166.i.i.while.body.i.i.i_crit_edge, %if.then60.i.i.while.body.i.i.i_crit_edge
  %175 = phi ptr [ %189, %if.end.i166.i.i.while.body.i.i.i_crit_edge ], [ %174, %if.then60.i.i.while.body.i.i.i_crit_edge ]
  %td.015.i.i.i = phi ptr [ %td.1.i.i.i, %if.end.i166.i.i.while.body.i.i.i_crit_edge ], [ %td.0184.i.i, %if.then60.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %175, i32 -12
  %pipe.i164.i.i = getelementptr i8, ptr %175, i32 28
  %176 = ptrtoint ptr %pipe.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pipe.i164.i.i, align 4
  %178 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %pipe.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp6.i.i.i = icmp eq i32 %177, %179
  br i1 %cmp6.i.i.i, label %if.then.i165.i.i, label %while.body.i.i.i.if.end.i166.i.i_crit_edge

while.body.i.i.i.if.end.i166.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i166.i.i

if.then.i165.i.i:                                 ; preds = %while.body.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %175) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.i165.i.i.c67x00_release_td.exit.i.i.i_crit_edge

if.then.i165.i.i.c67x00_release_td.exit.i.i.i_crit_edge: ; preds = %if.then.i165.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_td.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then.i165.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i.i.i = getelementptr i8, ptr %175, i32 4
  %180 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %182 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %175, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %181, ptr %prev1.i.i.i.i.i.i.i, align 4
  %185 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %183, ptr %181, align 4
  br label %c67x00_release_td.exit.i.i.i

c67x00_release_td.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i, %if.then.i165.i.i.c67x00_release_td.exit.i.i.i_crit_edge
  %186 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %175, ptr %175, align 4
  %prev.i3.i.i.i.i.i = getelementptr i8, ptr %175, i32 4
  %187 = ptrtoint ptr %prev.i3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %175, ptr %prev.i3.i.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i.i.i) #5
  br label %if.end.i166.i.i

if.end.i166.i.i:                                  ; preds = %c67x00_release_td.exit.i.i.i, %while.body.i.i.i.if.end.i166.i.i_crit_edge
  %td.1.i.i.i = phi ptr [ %td.015.i.i.i, %c67x00_release_td.exit.i.i.i ], [ %add.ptr.i.i.i, %while.body.i.i.i.if.end.i166.i.i_crit_edge ]
  %td_list.i.i.i = getelementptr inbounds %struct.c67x00_td, ptr %td.1.i.i.i, i32 0, i32 9
  %188 = ptrtoint ptr %td_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %td_list.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %189, %td_list.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i166.i.i.if.end61.i.i_crit_edge, label %if.end.i166.i.i.while.body.i.i.i_crit_edge

if.end.i166.i.i.while.body.i.i.i_crit_edge:       ; preds = %if.end.i166.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i.i

if.end.i166.i.i.if.end61.i.i_crit_edge:           ; preds = %if.end.i166.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.end.i166.i.i.if.end61.i.i_crit_edge, %if.then60.i.i.if.end61.i.i_crit_edge
  br i1 %tobool62.not.i.i, label %if.end61.i.i.if.end92.i.i_crit_edge, label %if.end61.i.i.if.then63.i.i_crit_edge

if.end61.i.i.if.then63.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then63.i.i

if.end61.i.i.if.end92.i.i_crit_edge:              ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i.i

if.then63.i.i:                                    ; preds = %if.end61.i.i.if.then63.i.i_crit_edge, %c67x00_clear_pipe.exit, %c67x00_end_of_data.exit86.i.i.i.if.then63.i.i_crit_edge, %sw.bb12.i.i.i, %if.end.i42.i.i.i.if.then63.i.i_crit_edge, %if.then9.i.i.i.if.then63.i.i_crit_edge, %c67x00_end_of_data.exit.i.i.i.if.then63.i.i_crit_edge, %sw.bb4.i.i.i, %sw.bb.i.i.i.if.then63.i.i_crit_edge, %if.end.i159.i.i.if.then63.i.i_crit_edge, %if.end58.i.i.if.then63.i.i_crit_edge
  %ep_data.i.i = getelementptr i8, ptr %.pn178.i.i, i32 24
  %190 = ptrtoint ptr %ep_data.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ep_data.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev.i.i, align 4
  %194 = ptrtoint ptr %pipe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pipe.i.i.i, align 4
  %and65.i.i = lshr i32 %195, 7
  %and65.lobit.i.i = and i32 %and65.i.i, 1
  %196 = xor i32 %and65.lobit.i.i, 1
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %193, i32 0, i32 10, i32 %196
  %197 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx.i.i, align 4
  %shr70.i.i = lshr i32 %195, 15
  %and71.i.i = and i32 %shr70.i.i, 15
  %shl.i.i = shl nuw nsw i32 1, %and71.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and72.i.i = and i32 %198, %neg.i.i
  %ctrl_reg73.i.i = getelementptr i8, ptr %.pn178.i.i, i32 -6
  %199 = ptrtoint ptr %ctrl_reg73.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %ctrl_reg73.i.i, align 2
  %201 = lshr i8 %200, 6
  %.lobit.i.i = and i8 %201, 1
  %202 = xor i8 %.lobit.i.i, 1
  %203 = zext i8 %202 to i32
  %shl82.i.i = shl nuw nsw i32 %203, %and71.i.i
  %or.i.i = or i32 %shl82.i.i, %and72.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then63.i.i, %if.end61.i.i.if.end92.i.i_crit_edge, %if.then12.i.i.i, %c67x00_td_to_error.exit.i.i.i.if.end92.i.i_crit_edge, %if.then.i.i.if.end92.i.i_crit_edge
  %204 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %.pn178.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn178.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end92.i.i.c67x00_release_td.exit.i.i_crit_edge

if.end92.i.i.c67x00_release_td.exit.i.i_crit_edge: ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_td.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 4
  %206 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %208 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %.pn178.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %207, ptr %prev1.i.i.i.i.i.i, align 4
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %209, ptr %207, align 4
  br label %c67x00_release_td.exit.i.i

c67x00_release_td.exit.i.i:                       ; preds = %if.end.i.i.i.i.i, %if.end92.i.i.c67x00_release_td.exit.i.i_crit_edge
  %212 = ptrtoint ptr %.pn178.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %.pn178.i.i, ptr %.pn178.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr i8, ptr %.pn178.i.i, i32 4
  %213 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %.pn178.i.i, ptr %prev.i3.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %td.0184.i.i) #5
  %cmp.not.i.i = icmp eq ptr %205, %td_list.i.i
  br i1 %cmp.not.i.i, label %c67x00_release_td.exit.i.i.c67x00_check_td_list.exit.i_crit_edge, label %c67x00_release_td.exit.i.i.for.body.i.i_crit_edge

c67x00_release_td.exit.i.i.for.body.i.i_crit_edge: ; preds = %c67x00_release_td.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

c67x00_release_td.exit.i.i.c67x00_check_td_list.exit.i_crit_edge: ; preds = %c67x00_release_td.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_check_td_list.exit.i

c67x00_check_td_list.exit.i:                      ; preds = %c67x00_release_td.exit.i.i.c67x00_check_td_list.exit.i_crit_edge, %if.end.i.c67x00_check_td_list.exit.i_crit_edge
  %endpoint_disable.i = getelementptr i8, ptr %work, i32 44
  tail call void @complete(ptr noundef %endpoint_disable.i) #5
  %214 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %td_list.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %215, %td_list.i.i
  br i1 %cmp.i.not.i, label %if.end4.i, label %c67x00_check_td_list.exit.i.c67x00_do_work.exit_crit_edge

c67x00_check_td_list.exit.i.c67x00_do_work.exit_crit_edge: ; preds = %c67x00_check_td_list.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_do_work.exit

if.end4.i:                                        ; preds = %c67x00_check_td_list.exit.i
  %216 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %sie.i.i, align 4
  %call.i41.i = tail call zeroext i16 @c67x00_ll_husb_get_frame(ptr noundef %217) #5
  %218 = and i16 %call.i41.i, 2047
  %current_frame.i = getelementptr i8, ptr %work, i32 100
  %219 = ptrtoint ptr %current_frame.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %current_frame.i, align 4
  %last_frame.i = getelementptr i8, ptr %work, i32 102
  %220 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %last_frame.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %218, i16 %221)
  %cmp.i = icmp eq i16 %218, %221
  br i1 %cmp.i, label %if.end4.i.c67x00_do_work.exit_crit_edge, label %if.end10.i

if.end4.i.c67x00_do_work.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_do_work.exit

if.end10.i:                                       ; preds = %if.end4.i
  %222 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %218, ptr %last_frame.i, align 2
  %urb_count.i = getelementptr i8, ptr %work, i32 -68
  %223 = ptrtoint ptr %urb_count.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %urb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool13.not.i = icmp eq i32 %224, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %225 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %sie.i.i, align 4
  tail call void @c67x00_ll_hpi_disable_sofeop(ptr noundef %226) #5
  br label %c67x00_do_work.exit

if.end15.i:                                       ; preds = %if.end10.i
  %227 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %td_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %228, %td_list.i.i
  br i1 %cmp.i.not.i.i, label %if.end15.i.if.end.i52.i_crit_edge, label %do.end.i.i

if.end15.i.if.end.i52.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i52.i

do.end.i.i:                                       ; preds = %if.end15.i
  %add.ptr.i.i43.i = getelementptr i8, ptr %work, i32 -720
  %229 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %add.ptr.i.i43.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.25) #8
  %231 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %td_list.i.i, align 4
  %cmp.not81.i.i = icmp eq ptr %232, %td_list.i.i
  br i1 %cmp.not81.i.i, label %do.end.i.i.if.end.i52.i_crit_edge, label %do.end.i.i.for.body.i45.i_crit_edge

do.end.i.i.for.body.i45.i_crit_edge:              ; preds = %do.end.i.i
  br label %for.body.i45.i

do.end.i.i.if.end.i52.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i52.i

for.body.i45.i:                                   ; preds = %c67x00_release_td.exit.i51.i.for.body.i45.i_crit_edge, %do.end.i.i.for.body.i45.i_crit_edge
  %.pn.in82.i.i = phi ptr [ %.pn.i.i, %c67x00_release_td.exit.i51.i.for.body.i45.i_crit_edge ], [ %232, %do.end.i.i.for.body.i45.i_crit_edge ]
  %td.0.i.i = getelementptr i8, ptr %.pn.in82.i.i, i32 -12
  %233 = ptrtoint ptr %.pn.in82.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %.pn.i.i = load ptr, ptr %.pn.in82.i.i, align 4
  tail call fastcc void @dbg_td(ptr noundef %add.ptr, ptr noundef %td.0.i.i, ptr noundef nonnull @.str.27) #5
  %call.i.i.i.i44.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in82.i.i) #5
  br i1 %call.i.i.i.i44.i, label %if.end.i.i.i.i48.i, label %for.body.i45.i.c67x00_release_td.exit.i51.i_crit_edge

for.body.i45.i.c67x00_release_td.exit.i51.i_crit_edge: ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_td.exit.i51.i

if.end.i.i.i.i48.i:                               ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i46.i = getelementptr i8, ptr %.pn.in82.i.i, i32 4
  %234 = ptrtoint ptr %prev.i.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %prev.i.i.i.i46.i, align 4
  %236 = ptrtoint ptr %.pn.in82.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %.pn.in82.i.i, align 4
  %prev1.i.i.i.i.i47.i = getelementptr inbounds %struct.list_head, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %prev1.i.i.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %235, ptr %prev1.i.i.i.i.i47.i, align 4
  %239 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile ptr %237, ptr %235, align 4
  br label %c67x00_release_td.exit.i51.i

c67x00_release_td.exit.i51.i:                     ; preds = %if.end.i.i.i.i48.i, %for.body.i45.i.c67x00_release_td.exit.i51.i_crit_edge
  %240 = ptrtoint ptr %.pn.in82.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %.pn.in82.i.i, ptr %.pn.in82.i.i, align 4
  %prev.i3.i.i.i49.i = getelementptr i8, ptr %.pn.in82.i.i, i32 4
  %241 = ptrtoint ptr %prev.i3.i.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %.pn.in82.i.i, ptr %prev.i3.i.i.i49.i, align 4
  tail call void @kfree(ptr noundef %td.0.i.i) #5
  %cmp.not.i50.i = icmp eq ptr %.pn.i.i, %td_list.i.i
  br i1 %cmp.not.i50.i, label %c67x00_release_td.exit.i51.i.if.end.i52.i_crit_edge, label %c67x00_release_td.exit.i51.i.for.body.i45.i_crit_edge

c67x00_release_td.exit.i51.i.for.body.i45.i_crit_edge: ; preds = %c67x00_release_td.exit.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i45.i

c67x00_release_td.exit.i51.i.if.end.i52.i_crit_edge: ; preds = %c67x00_release_td.exit.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i52.i

if.end.i52.i:                                     ; preds = %c67x00_release_td.exit.i51.i.if.end.i52.i_crit_edge, %do.end.i.i.if.end.i52.i_crit_edge, %if.end15.i.if.end.i52.i_crit_edge
  %bandwidth_allocated.i.i = getelementptr i8, ptr %work, i32 -28
  %242 = ptrtoint ptr %bandwidth_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %bandwidth_allocated.i.i, align 4
  %periodic_bw_allocated.i.i = getelementptr i8, ptr %work, i32 -24
  %243 = ptrtoint ptr %periodic_bw_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %periodic_bw_allocated.i.i, align 4
  %td_base_addr.i.i = getelementptr i8, ptr %work, i32 -8
  %244 = ptrtoint ptr %td_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %td_base_addr.i.i, align 4
  %next_td_addr.i.i = getelementptr i8, ptr %work, i32 -4
  %246 = ptrtoint ptr %next_td_addr.i.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %245, ptr %next_td_addr.i.i, align 4
  %buf_base_addr.i.i = getelementptr i8, ptr %work, i32 -6
  %247 = ptrtoint ptr %buf_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %buf_base_addr.i.i, align 2
  %next_buf_addr.i.i = getelementptr i8, ptr %work, i32 -2
  %249 = ptrtoint ptr %next_buf_addr.i.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %248, ptr %next_buf_addr.i.i, align 2
  %arrayidx.i.i.i = getelementptr i8, ptr %work, i32 -60
  %250 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %.pn21.i.i.i = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp.not22.i.i.i = icmp eq ptr %.pn21.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not22.i.i.i, label %if.end.i52.i.c67x00_fill_from_list.exit.i.i_crit_edge, label %if.end.i52.i.for.body.i.i.i_crit_edge

if.end.i52.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i52.i
  br label %for.body.i.i.i

if.end.i52.i.c67x00_fill_from_list.exit.i.i_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i52.i.for.body.i.i.i_crit_edge
  %.pn23.i.i.i = phi ptr [ %.pn.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn21.i.i.i, %if.end.i52.i.for.body.i.i.i_crit_edge ]
  %ep_data.0.i.i.i = getelementptr i8, ptr %.pn23.i.i.i, i32 -8
  %251 = ptrtoint ptr %ep_data.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load volatile ptr, ptr %ep_data.0.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %252, %ep_data.0.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i53.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then.i.i53.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %urb8.i.i.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %urb8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %urb8.i.i.i, align 4
  %call9.i.i.i = tail call fastcc i32 @c67x00_add_iso_urb(ptr noundef %add.ptr, ptr noundef %254) #5, !callees !89
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i53.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %255 = ptrtoint ptr %.pn23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %.pn.i.i.i = load ptr, ptr %.pn23.i.i.i, align 4
  %cmp.not.i.i54.i = icmp eq ptr %.pn.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i54.i, label %for.inc.i.i.i.c67x00_fill_from_list.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.c67x00_fill_from_list.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit.i.i

c67x00_fill_from_list.exit.i.i:                   ; preds = %for.inc.i.i.i.c67x00_fill_from_list.exit.i.i_crit_edge, %if.end.i52.i.c67x00_fill_from_list.exit.i.i_crit_edge
  %arrayidx.i34.i.i = getelementptr i8, ptr %work, i32 -52
  %256 = ptrtoint ptr %arrayidx.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %.pn21.i35.i.i = load ptr, ptr %arrayidx.i34.i.i, align 4
  %cmp.not22.i36.i.i = icmp eq ptr %.pn21.i35.i.i, %arrayidx.i34.i.i
  br i1 %cmp.not22.i36.i.i, label %c67x00_fill_from_list.exit.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge, label %c67x00_fill_from_list.exit.i.i.for.body.i40.i.i_crit_edge

c67x00_fill_from_list.exit.i.i.for.body.i40.i.i_crit_edge: ; preds = %c67x00_fill_from_list.exit.i.i
  br label %for.body.i40.i.i

c67x00_fill_from_list.exit.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge: ; preds = %c67x00_fill_from_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit47.i.i

for.body.i40.i.i:                                 ; preds = %for.inc.i46.i.i.for.body.i40.i.i_crit_edge, %c67x00_fill_from_list.exit.i.i.for.body.i40.i.i_crit_edge
  %.pn23.i37.i.i = phi ptr [ %.pn.i44.i.i, %for.inc.i46.i.i.for.body.i40.i.i_crit_edge ], [ %.pn21.i35.i.i, %c67x00_fill_from_list.exit.i.i.for.body.i40.i.i_crit_edge ]
  %ep_data.0.i38.i.i = getelementptr i8, ptr %.pn23.i37.i.i, i32 -8
  %257 = ptrtoint ptr %ep_data.0.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile ptr, ptr %ep_data.0.i38.i.i, align 4
  %cmp.i.not.i39.i.i = icmp eq ptr %258, %ep_data.0.i38.i.i
  br i1 %cmp.i.not.i39.i.i, label %for.body.i40.i.i.for.inc.i46.i.i_crit_edge, label %if.then.i43.i.i

for.body.i40.i.i.for.inc.i46.i.i_crit_edge:       ; preds = %for.body.i40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i46.i.i

if.then.i43.i.i:                                  ; preds = %for.body.i40.i.i
  %urb8.i41.i.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %urb8.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %urb8.i41.i.i, align 4
  %hcpriv.i.i.i = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %hcpriv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hcpriv.i.i.i, align 4
  %263 = ptrtoint ptr %current_frame.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %current_frame.i, align 4
  %ep_data.i.i.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %262, i32 0, i32 5
  %265 = ptrtoint ptr %ep_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %ep_data.i.i.i, align 4
  %next_frame.i.i.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %266, i32 0, i32 4
  %267 = ptrtoint ptr %next_frame.i.i.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %next_frame.i.i.i, align 4
  %conv.i.i.i55.i = zext i16 %264 to i32
  %conv1.i.i.i.i = zext i16 %268 to i32
  %sub.i.i.i56.i = sub nsw i32 %conv.i.i.i55.i, %conv1.i.i.i.i
  %and.i.i.i57.i = and i32 %sub.i.i.i56.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %and.i.i.i57.i)
  %cmp.i.i.i58.i = icmp ugt i32 %and.i.i.i57.i, 1022
  br i1 %cmp.i.i.i58.i, label %if.then.i43.i.i.for.inc.i46.i.i_crit_edge, label %if.then.i77.i.i

if.then.i43.i.i.for.inc.i46.i.i_crit_edge:        ; preds = %if.then.i43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i46.i.i

if.then.i77.i.i:                                  ; preds = %if.then.i43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %interval.i.i59.i = getelementptr inbounds %struct.urb, ptr %260, i32 0, i32 25
  %269 = ptrtoint ptr %interval.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %interval.i.i59.i, align 4
  %conv.i76.i.i = trunc i32 %270 to i16
  %add.i.i.i.i = add i16 %268, %conv.i76.i.i
  %and.i12.i.i.i = and i16 %add.i.i.i.i, 2047
  %271 = ptrtoint ptr %next_frame.i.i.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %and.i12.i.i.i, ptr %next_frame.i.i.i, align 4
  %call6.i.i.i = tail call fastcc i32 @c67x00_add_data_urb(ptr noundef %add.ptr, ptr noundef %260) #5
  br label %for.inc.i46.i.i

for.inc.i46.i.i:                                  ; preds = %if.then.i77.i.i, %if.then.i43.i.i.for.inc.i46.i.i_crit_edge, %for.body.i40.i.i.for.inc.i46.i.i_crit_edge
  %272 = ptrtoint ptr %.pn23.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %.pn.i44.i.i = load ptr, ptr %.pn23.i37.i.i, align 4
  %cmp.not.i45.i.i = icmp eq ptr %.pn.i44.i.i, %arrayidx.i34.i.i
  br i1 %cmp.not.i45.i.i, label %for.inc.i46.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge, label %for.inc.i46.i.i.for.body.i40.i.i_crit_edge

for.inc.i46.i.i.for.body.i40.i.i_crit_edge:       ; preds = %for.inc.i46.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i40.i.i

for.inc.i46.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge: ; preds = %for.inc.i46.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit47.i.i

c67x00_fill_from_list.exit47.i.i:                 ; preds = %for.inc.i46.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge, %c67x00_fill_from_list.exit.i.i.c67x00_fill_from_list.exit47.i.i_crit_edge
  %arrayidx.i48.i.i = getelementptr i8, ptr %work, i32 -44
  %273 = ptrtoint ptr %arrayidx.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %.pn21.i49.i.i = load ptr, ptr %arrayidx.i48.i.i, align 4
  %cmp.not22.i50.i.i = icmp eq ptr %.pn21.i49.i.i, %arrayidx.i48.i.i
  br i1 %cmp.not22.i50.i.i, label %c67x00_fill_from_list.exit47.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge, label %c67x00_fill_from_list.exit47.i.i.for.body.i54.i.i_crit_edge

c67x00_fill_from_list.exit47.i.i.for.body.i54.i.i_crit_edge: ; preds = %c67x00_fill_from_list.exit47.i.i
  br label %for.body.i54.i.i

c67x00_fill_from_list.exit47.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge: ; preds = %c67x00_fill_from_list.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit61.i.i

for.body.i54.i.i:                                 ; preds = %for.inc.i60.i.i.for.body.i54.i.i_crit_edge, %c67x00_fill_from_list.exit47.i.i.for.body.i54.i.i_crit_edge
  %.pn23.i51.i.i = phi ptr [ %.pn.i58.i.i, %for.inc.i60.i.i.for.body.i54.i.i_crit_edge ], [ %.pn21.i49.i.i, %c67x00_fill_from_list.exit47.i.i.for.body.i54.i.i_crit_edge ]
  %ep_data.0.i52.i.i = getelementptr i8, ptr %.pn23.i51.i.i, i32 -8
  %274 = ptrtoint ptr %ep_data.0.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load volatile ptr, ptr %ep_data.0.i52.i.i, align 4
  %cmp.i.not.i53.i.i = icmp eq ptr %275, %ep_data.0.i52.i.i
  br i1 %cmp.i.not.i53.i.i, label %for.body.i54.i.i.for.inc.i60.i.i_crit_edge, label %if.then.i57.i.i

for.body.i54.i.i.for.inc.i60.i.i_crit_edge:       ; preds = %for.body.i54.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i60.i.i

if.then.i57.i.i:                                  ; preds = %for.body.i54.i.i
  %urb8.i55.i.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %urb8.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %urb8.i55.i.i, align 4
  %interval.i78.i.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 25
  %278 = ptrtoint ptr %interval.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %interval.i78.i.i, align 4
  %280 = zext i32 %279 to i64
  call void @__sanitizer_cov_trace_switch(i64 %280, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %279, label %sw.bb.i.i61.i [
    i32 2, label %if.then.i57.i.i.sw.bb26.i.i.i_crit_edge
    i32 1, label %sw.bb18.i.i.i
  ]

if.then.i57.i.i.sw.bb26.i.i.i_crit_edge:          ; preds = %if.then.i57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26.i.i.i

sw.bb.i.i61.i:                                    ; preds = %if.then.i57.i.i
  %setup_packet.i.i.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 21
  %281 = ptrtoint ptr %setup_packet.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %setup_packet.i.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @c67x00_create_td(ptr noundef %add.ptr, ptr noundef %277, ptr noundef %282, i32 noundef 8, i32 noundef 45, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i60.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i60.i, label %if.end.i.i66.i, label %sw.bb.i.i61.i.for.inc.i60.i.i_crit_edge

sw.bb.i.i61.i.for.inc.i60.i.i_crit_edge:          ; preds = %sw.bb.i.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i60.i.i

if.end.i.i66.i:                                   ; preds = %sw.bb.i.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  %283 = ptrtoint ptr %interval.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %interval.i78.i.i, align 4
  %dev.i.i62.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 8
  %284 = ptrtoint ptr %dev.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev.i.i62.i, align 4
  %pipe.i.i63.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 10
  %286 = ptrtoint ptr %pipe.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %pipe.i.i63.i, align 4
  %and.i.i64.i = lshr i32 %287, 7
  %and.lobit.i.i.i = and i32 %and.i.i64.i, 1
  %288 = xor i32 %and.lobit.i.i.i, 1
  %arrayidx.i79.i.i = getelementptr %struct.usb_device, ptr %285, i32 0, i32 10, i32 %288
  %289 = ptrtoint ptr %arrayidx.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i79.i.i, align 4
  %shr.i.i65.i = lshr i32 %287, 15
  %and4.i.i.i = and i32 %shr.i.i65.i, 15
  %shl.i.i.i = shl nuw nsw i32 1, %and4.i.i.i
  %or.i.i.i = or i32 %shl.i.i.i, %290
  store i32 %or.i.i.i, ptr %arrayidx.i79.i.i, align 4
  br label %for.inc.i60.i.i

sw.bb18.i.i.i:                                    ; preds = %if.then.i57.i.i
  %transfer_buffer_length.i.i67.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 19
  %291 = ptrtoint ptr %transfer_buffer_length.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %transfer_buffer_length.i.i67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %tobool19.not.i.i.i = icmp eq i32 %292, 0
  br i1 %tobool19.not.i.i.i, label %sw.bb18.i.i.i.sw.bb26.i.i.i_crit_edge, label %if.then20.i.i.i

sw.bb18.i.i.i.sw.bb26.i.i.i_crit_edge:            ; preds = %sw.bb18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb26.i.i.i

if.then20.i.i.i:                                  ; preds = %sw.bb18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i.i.i = tail call fastcc i32 @c67x00_add_data_urb(ptr noundef %add.ptr, ptr noundef %277) #5
  br label %for.inc.i60.i.i

sw.bb26.i.i.i:                                    ; preds = %sw.bb18.i.i.i.sw.bb26.i.i.i_crit_edge, %if.then.i57.i.i.sw.bb26.i.i.i_crit_edge
  %pipe27.i.i.i = getelementptr inbounds %struct.urb, ptr %277, i32 0, i32 10
  %293 = ptrtoint ptr %pipe27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %pipe27.i.i.i, align 4
  %and28.i.i.i = and i32 %294, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %and28.i.i.i, 0
  %cond.i.i68.i = select i1 %tobool29.not.i.i.i, i32 105, i32 225
  %call34.i.i.i = tail call fastcc i32 @c67x00_create_td(ptr noundef %add.ptr, ptr noundef %277, ptr noundef null, i32 noundef 0, i32 noundef %cond.i.i68.i, i32 noundef 1, i32 noundef 2) #5
  br label %for.inc.i60.i.i

for.inc.i60.i.i:                                  ; preds = %sw.bb26.i.i.i, %if.then20.i.i.i, %if.end.i.i66.i, %sw.bb.i.i61.i.for.inc.i60.i.i_crit_edge, %for.body.i54.i.i.for.inc.i60.i.i_crit_edge
  %295 = ptrtoint ptr %.pn23.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %.pn.i58.i.i = load ptr, ptr %.pn23.i51.i.i, align 4
  %cmp.not.i59.i.i = icmp eq ptr %.pn.i58.i.i, %arrayidx.i48.i.i
  br i1 %cmp.not.i59.i.i, label %for.inc.i60.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge, label %for.inc.i60.i.i.for.body.i54.i.i_crit_edge

for.inc.i60.i.i.for.body.i54.i.i_crit_edge:       ; preds = %for.inc.i60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i54.i.i

for.inc.i60.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge: ; preds = %for.inc.i60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_from_list.exit61.i.i

c67x00_fill_from_list.exit61.i.i:                 ; preds = %for.inc.i60.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge, %c67x00_fill_from_list.exit47.i.i.c67x00_fill_from_list.exit61.i.i_crit_edge
  %arrayidx.i62.i.i = getelementptr i8, ptr %work, i32 -36
  %296 = ptrtoint ptr %arrayidx.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %.pn21.i63.i.i = load ptr, ptr %arrayidx.i62.i.i, align 4
  %cmp.not22.i64.i.i = icmp eq ptr %.pn21.i63.i.i, %arrayidx.i62.i.i
  br i1 %cmp.not22.i64.i.i, label %c67x00_fill_from_list.exit61.i.i.c67x00_fill_frame.exit.i_crit_edge, label %c67x00_fill_from_list.exit61.i.i.for.body.i68.i.i_crit_edge

c67x00_fill_from_list.exit61.i.i.for.body.i68.i.i_crit_edge: ; preds = %c67x00_fill_from_list.exit61.i.i
  br label %for.body.i68.i.i

c67x00_fill_from_list.exit61.i.i.c67x00_fill_frame.exit.i_crit_edge: ; preds = %c67x00_fill_from_list.exit61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_frame.exit.i

for.body.i68.i.i:                                 ; preds = %for.inc.i74.i.i.for.body.i68.i.i_crit_edge, %c67x00_fill_from_list.exit61.i.i.for.body.i68.i.i_crit_edge
  %.pn23.i65.i.i = phi ptr [ %.pn.i72.i.i, %for.inc.i74.i.i.for.body.i68.i.i_crit_edge ], [ %.pn21.i63.i.i, %c67x00_fill_from_list.exit61.i.i.for.body.i68.i.i_crit_edge ]
  %ep_data.0.i66.i.i = getelementptr i8, ptr %.pn23.i65.i.i, i32 -8
  %297 = ptrtoint ptr %ep_data.0.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile ptr, ptr %ep_data.0.i66.i.i, align 4
  %cmp.i.not.i67.i.i = icmp eq ptr %298, %ep_data.0.i66.i.i
  br i1 %cmp.i.not.i67.i.i, label %for.body.i68.i.i.for.inc.i74.i.i_crit_edge, label %if.then.i71.i.i

for.body.i68.i.i.for.inc.i74.i.i_crit_edge:       ; preds = %for.body.i68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i74.i.i

if.then.i71.i.i:                                  ; preds = %for.body.i68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %urb8.i69.i.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %298, i32 0, i32 1
  %299 = ptrtoint ptr %urb8.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %urb8.i69.i.i, align 4
  %call9.i70.i.i = tail call fastcc i32 @c67x00_add_data_urb(ptr noundef %add.ptr, ptr noundef %300) #5, !callees !89
  br label %for.inc.i74.i.i

for.inc.i74.i.i:                                  ; preds = %if.then.i71.i.i, %for.body.i68.i.i.for.inc.i74.i.i_crit_edge
  %301 = ptrtoint ptr %.pn23.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %.pn.i72.i.i = load ptr, ptr %.pn23.i65.i.i, align 4
  %cmp.not.i73.i.i = icmp eq ptr %.pn.i72.i.i, %arrayidx.i62.i.i
  br i1 %cmp.not.i73.i.i, label %for.inc.i74.i.i.c67x00_fill_frame.exit.i_crit_edge, label %for.inc.i74.i.i.for.body.i68.i.i_crit_edge

for.inc.i74.i.i.for.body.i68.i.i_crit_edge:       ; preds = %for.inc.i74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i68.i.i

for.inc.i74.i.i.c67x00_fill_frame.exit.i_crit_edge: ; preds = %for.inc.i74.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_fill_frame.exit.i

c67x00_fill_frame.exit.i:                         ; preds = %for.inc.i74.i.i.c67x00_fill_frame.exit.i_crit_edge, %c67x00_fill_from_list.exit61.i.i.c67x00_fill_frame.exit.i_crit_edge
  %302 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load volatile ptr, ptr %td_list.i.i, align 4
  %cmp.i69.not.i = icmp eq ptr %303, %td_list.i.i
  br i1 %cmp.i69.not.i, label %c67x00_fill_frame.exit.i.c67x00_do_work.exit_crit_edge, label %if.then19.i

c67x00_fill_frame.exit.i.c67x00_do_work.exit_crit_edge: ; preds = %c67x00_fill_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_do_work.exit

if.then19.i:                                      ; preds = %c67x00_fill_frame.exit.i
  %304 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load volatile ptr, ptr %td_list.i.i, align 4
  %cmp.i.not.i72.i = icmp eq ptr %305, %td_list.i.i
  br i1 %cmp.i.not.i72.i, label %do.end.i74.i, label %if.then19.i.if.end.i75.i_crit_edge

if.then19.i.if.end.i75.i_crit_edge:               ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i75.i

do.end.i74.i:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i73.i = getelementptr i8, ptr %work, i32 -720
  %306 = ptrtoint ptr %add.ptr.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %add.ptr.i.i73.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %307, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #8
  br label %if.end.i75.i

if.end.i75.i:                                     ; preds = %do.end.i74.i, %if.then19.i.if.end.i75.i_crit_edge
  %308 = ptrtoint ptr %td_list.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %.pn27.i.i = load ptr, ptr %td_list.i.i, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn27.i.i, %td_list.i.i
  br i1 %cmp.not29.i.i, label %if.end.i75.i.c67x00_send_frame.exit.i_crit_edge, label %if.end.i75.i.for.body.i78.i_crit_edge

if.end.i75.i.for.body.i78.i_crit_edge:            ; preds = %if.end.i75.i
  br label %for.body.i78.i

if.end.i75.i.c67x00_send_frame.exit.i_crit_edge:  ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_send_frame.exit.i

for.body.i78.i:                                   ; preds = %c67x00_send_td.exit.i.i.for.body.i78.i_crit_edge, %if.end.i75.i.for.body.i78.i_crit_edge
  %.pn30.i.i = phi ptr [ %.pn.i90.i, %c67x00_send_td.exit.i.i.for.body.i78.i_crit_edge ], [ %.pn27.i.i, %if.end.i75.i.for.body.i78.i_crit_edge ]
  %td.031.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -12
  %309 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %.pn30.i.i, align 4
  %cmp8.i.i = icmp eq ptr %310, %td_list.i.i
  br i1 %cmp8.i.i, label %if.then9.i.i, label %for.body.i78.i.if.end10.i.i_crit_edge

for.body.i78.i.if.end10.i.i_crit_edge:            ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #7
  %next_td_addr.i79.i = getelementptr i8, ptr %.pn30.i.i, i32 -2
  %311 = ptrtoint ptr %next_td_addr.i79.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 0, ptr %next_td_addr.i79.i, align 2
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %for.body.i78.i.if.end10.i.i_crit_edge
  %port_length.i.i80.i = getelementptr i8, ptr %.pn30.i.i, i32 -10
  %312 = ptrtoint ptr %port_length.i.i80.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %port_length.i.i80.i, align 2
  %314 = and i16 %313, -253
  %315 = tail call i16 @llvm.bswap.i16(i16 %314) #5
  %and.i.i81.i = zext i16 %315 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %314)
  %tobool.not.i.i82.i = icmp eq i16 %314, 0
  br i1 %tobool.not.i.i82.i, label %if.end10.i.i.c67x00_send_td.exit.i.i_crit_edge, label %land.lhs.true.i.i84.i

if.end10.i.i.c67x00_send_td.exit.i.i_crit_edge:   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_send_td.exit.i.i

land.lhs.true.i.i84.i:                            ; preds = %if.end10.i.i
  %pid_ep.i.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -8
  %316 = ptrtoint ptr %pid_ep.i.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %pid_ep.i.i.i, align 4
  %318 = and i8 %317, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %318)
  %cmp.not.i.i83.i = icmp eq i8 %318, -112
  br i1 %cmp.not.i.i83.i, label %land.lhs.true.i.i84.i.c67x00_send_td.exit.i.i_crit_edge, label %if.then.i.i87.i

land.lhs.true.i.i84.i.c67x00_send_td.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_send_td.exit.i.i

if.then.i.i87.i:                                  ; preds = %land.lhs.true.i.i84.i
  call void @__sanitizer_cov_trace_pc() #7
  %319 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sie.i.i, align 4
  %dev.i.i85.i = getelementptr inbounds %struct.c67x00_sie, ptr %320, i32 0, i32 3
  %321 = ptrtoint ptr %dev.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %dev.i.i85.i, align 4
  %323 = ptrtoint ptr %td.031.i.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %td.031.i.i, align 4
  %325 = tail call i16 @llvm.bswap.i16(i16 %324) #5
  %data.i.i86.i = getelementptr i8, ptr %.pn30.i.i, i32 12
  %326 = ptrtoint ptr %data.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %data.i.i86.i, align 4
  tail call void @c67x00_ll_write_mem_le16(ptr noundef %322, i16 noundef zeroext %325, ptr noundef %327, i32 noundef %and.i.i81.i) #5
  br label %c67x00_send_td.exit.i.i

c67x00_send_td.exit.i.i:                          ; preds = %if.then.i.i87.i, %land.lhs.true.i.i84.i.c67x00_send_td.exit.i.i_crit_edge, %if.end10.i.i.c67x00_send_td.exit.i.i_crit_edge
  %328 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %sie.i.i, align 4
  %dev5.i.i88.i = getelementptr inbounds %struct.c67x00_sie, ptr %329, i32 0, i32 3
  %330 = ptrtoint ptr %dev5.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %dev5.i.i88.i, align 4
  %td_addr.i.i89.i = getelementptr i8, ptr %.pn30.i.i, i32 8
  %332 = ptrtoint ptr %td_addr.i.i89.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %td_addr.i.i89.i, align 4
  tail call void @c67x00_ll_write_mem_le16(ptr noundef %331, i16 noundef zeroext %333, ptr noundef %td.031.i.i, i32 noundef 12) #5
  %334 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %.pn.i90.i = load ptr, ptr %.pn30.i.i, align 4
  %cmp.not.i91.i = icmp eq ptr %.pn.i90.i, %td_list.i.i
  br i1 %cmp.not.i91.i, label %c67x00_send_td.exit.i.i.c67x00_send_frame.exit.i_crit_edge, label %c67x00_send_td.exit.i.i.for.body.i78.i_crit_edge

c67x00_send_td.exit.i.i.for.body.i78.i_crit_edge: ; preds = %c67x00_send_td.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i78.i

c67x00_send_td.exit.i.i.c67x00_send_frame.exit.i_crit_edge: ; preds = %c67x00_send_td.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_send_frame.exit.i

c67x00_send_frame.exit.i:                         ; preds = %c67x00_send_td.exit.i.i.c67x00_send_frame.exit.i_crit_edge, %if.end.i75.i.c67x00_send_frame.exit.i_crit_edge
  %335 = ptrtoint ptr %sie.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %sie.i.i, align 4
  %337 = ptrtoint ptr %td_base_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %337)
  %338 = load i16, ptr %td_base_addr.i.i, align 4
  tail call void @c67x00_ll_husb_set_current_td(ptr noundef %336, i16 noundef zeroext %338) #5
  br label %c67x00_do_work.exit

c67x00_do_work.exit:                              ; preds = %c67x00_send_frame.exit.i, %c67x00_fill_frame.exit.i.c67x00_do_work.exit_crit_edge, %if.then14.i, %if.end4.i.c67x00_do_work.exit_crit_edge, %c67x00_check_td_list.exit.i.c67x00_do_work.exit_crit_edge, %entry.c67x00_do_work.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_sched_stop_scheduler(ptr noundef %c67x00) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_husb_get_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_hpi_disable_sofeop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_husb_get_current_td(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c67x00_giveback_urb(ptr noundef %c67x00, ptr noundef %urb, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %urb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %status1 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.do.end9.i_crit_edge

if.end.do.end9.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i.i, %if.end.do.end9.i_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %prev.i3.i, align 4
  %urb_count.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 3
  %11 = ptrtoint ptr %urb_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %urb_count.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %urb_count.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %13 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %14)
  %cmp.i = icmp ult i32 %14, 1073741824
  br i1 %cmp.i, label %if.then10.i, label %do.end9.i.if.end16.i_crit_edge

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then10.i:                                      ; preds = %do.end9.i
  %urb_iso_count.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 4
  %15 = ptrtoint ptr %urb_iso_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urb_iso_count.i, align 4
  %dec11.i = add i32 %16, -1
  store i32 %dec11.i, ptr %urb_iso_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec11.i)
  %cmp13.i = icmp eq i32 %dec11.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.then10.i.if.end16.i_crit_edge

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_frame_bw.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 9
  %17 = ptrtoint ptr %max_frame_bw.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 9750, ptr %max_frame_bw.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then10.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %td_list.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 8
  %18 = ptrtoint ptr %td_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn46.i = load ptr, ptr %td_list.i, align 4
  %cmp19.not47.i = icmp eq ptr %.pn46.i, %td_list.i
  br i1 %cmp19.not47.i, label %if.end16.i.for.end.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %.pn48.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn46.i, %if.end16.i.for.body.i_crit_edge ]
  %urb22.i = getelementptr i8, ptr %.pn48.i, i32 16
  %19 = ptrtoint ptr %urb22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %urb22.i, align 4
  %cmp23.i = icmp eq ptr %20, %urb
  br i1 %cmp23.i, label %if.then24.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %urb22.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %urb22.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then24.i, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn48.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn48.i, align 4
  %cmp19.not.i = icmp eq ptr %.pn.i, %td_list.i
  br i1 %cmp19.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcpriv, align 4
  store ptr null, ptr %hcpriv, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.c67x00_release_urb.exit_crit_edge

for.end.i.c67x00_release_urb.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %c67x00_release_urb.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %c67x00_release_urb.exit

c67x00_release_urb.exit:                          ; preds = %if.end.i.i.i, %for.end.i.c67x00_release_urb.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i14 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i14, align 4
  tail call void @kfree(ptr noundef %24) #5
  %add.ptr.i = getelementptr i8, ptr %c67x00, i32 -600
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %add.ptr.i, ptr noundef nonnull %urb) #5
  tail call void @_raw_spin_unlock(ptr noundef %c67x00) #5
  tail call void @usb_hcd_giveback_urb(ptr noundef %add.ptr.i, ptr noundef nonnull %urb, i32 noundef %status) #5
  tail call void @_raw_spin_lock(ptr noundef %c67x00) #5
  br label %cleanup

cleanup:                                          ; preds = %c67x00_release_urb.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_read_mem_le16(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbg_td(ptr nocapture noundef readonly %c67x00, ptr nocapture noundef readonly %td, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %c67x00, i32 -600
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then)) #5
          to label %do.body4 [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %td_addr = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 10
  %2 = ptrtoint ptr %td_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %td_addr, align 4
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug232, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %msg, i32 noundef %conv) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then16)) #5
          to label %do.body20 [label %if.then16], !srcloc !90

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %urb = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 12
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %5) #5
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then32)) #5
          to label %do.body36 [label %if.then32], !srcloc !90

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %pipe = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 15
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %7, 15
  %and = and i32 %shr, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %and) #5
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then48)) #5
          to label %do.body57 [label %if.then48], !srcloc !90

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  %pipe49 = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 15
  %8 = ptrtoint ptr %pipe49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe49, align 4
  %and50 = lshr i32 %9, 7
  %and50.lobit = and i32 %and50, 1
  %10 = xor i32 %and50.lobit, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug235, ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %10) #5
  br label %do.body57

do.body57:                                        ; preds = %if.then48, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then69)) #5
          to label %do.body74 [label %if.then69], !srcloc !90

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %td to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %td, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv70 = zext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %conv70) #5
  br label %do.body74

do.body74:                                        ; preds = %if.then69, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then86)) #5
          to label %do.body91 [label %if.then86], !srcloc !90

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %port_length = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 1
  %14 = ptrtoint ptr %port_length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %port_length, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv87 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %conv87) #5
  br label %do.body91

do.body91:                                        ; preds = %if.then86, %do.body74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then103)) #5
          to label %do.body108 [label %if.then103], !srcloc !90

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #7
  %pid_ep = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 2
  %17 = ptrtoint ptr %pid_ep to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pid_ep, align 4
  %conv104 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %conv104) #5
  br label %do.body108

do.body108:                                       ; preds = %if.then103, %do.body91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then120)) #5
          to label %do.body125 [label %if.then120], !srcloc !90

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %dev_addr = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 3
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dev_addr, align 1
  %conv121 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %conv121) #5
  br label %do.body125

do.body125:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then137)) #5
          to label %do.body142 [label %if.then137], !srcloc !90

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl_reg = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 4
  %21 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl_reg, align 2
  %conv138 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %conv138) #5
  br label %do.body142

do.body142:                                       ; preds = %if.then137, %do.body125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then154)) #5
          to label %do.body159 [label %if.then154], !srcloc !90

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 5
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %conv155 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %conv155) #5
  br label %do.body159

do.body159:                                       ; preds = %if.then154, %do.body142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then171)) #5
          to label %do.body176 [label %if.then171], !srcloc !90

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  %retry_cnt = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 6
  %25 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %retry_cnt, align 4
  %conv172 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug242, ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %conv172) #5
  br label %do.body176

do.body176:                                       ; preds = %if.then171, %do.body159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then188)) #5
          to label %do.body193 [label %if.then188], !srcloc !90

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #7
  %residue = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 7
  %27 = ptrtoint ptr %residue to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %residue, align 1
  %conv189 = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %conv189) #5
  br label %do.body193

do.body193:                                       ; preds = %if.then188, %do.body176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then205)) #5
          to label %do.body210 [label %if.then205], !srcloc !90

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #7
  %next_td_addr = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 8
  %29 = ptrtoint ptr %next_td_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %next_td_addr, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv206 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %conv206) #5
  br label %do.body210

do.body210:                                       ; preds = %if.then205, %do.body193
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_td.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_td, %if.then222)) #5
          to label %do.end228 [label %if.then222], !srcloc !90

if.then222:                                       ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  %port_length223 = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 1
  %32 = ptrtoint ptr %port_length223 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %port_length223, align 2
  %34 = and i16 %33, -253
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %and225 = zext i16 %35 to i32
  %data = getelementptr inbounds %struct.c67x00_td, ptr %td, i32 0, i32 11
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_td.__UNIQUE_ID_ddebug245, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %and225, ptr noundef %37) #5
  br label %do.end228

do.end228:                                        ; preds = %if.then222, %do.body210
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c67x00_add_iso_urb(ptr noundef %c67x00, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %current_frame = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 16
  %2 = ptrtoint ptr %current_frame to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %current_frame, align 4
  %ep_data = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ep_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_data, align 4
  %next_frame = getelementptr inbounds %struct.c67x00_ep_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %next_frame to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_frame, align 4
  %conv.i = zext i16 %3 to i32
  %conv1.i = zext i16 %7 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %and.i = and i32 %sub.i, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 1022
  br i1 %cmp.i, label %entry.if.end53_crit_edge, label %if.then

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then:                                          ; preds = %entry
  %cnt = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp slt i32 %9, %11
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !86

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/c67x00/c67x00-sched.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 750, 0\0A.popsection", ""() #5, !srcloc !91
  unreachable

do.end9:                                          ; preds = %if.then
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %9, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 4
  %and = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool14.not, i32 225, i32 105
  %call18 = tail call fastcc i32 @c67x00_create_td(ptr noundef %c67x00, ptr noundef %urb, ptr noundef %add.ptr, i32 noundef %17, i32 noundef %cond, i32 noundef 0, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end9.if.end46_crit_edge, label %do.body21

do.end9.if.end46_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body21:                                        ; preds = %do.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_add_iso_urb.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_add_iso_urb, %if.then30)) #5
          to label %do.end34 [label %if.then30], !srcloc !90

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %c67x00, i32 -600
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_add_iso_urb.__UNIQUE_ID_ddebug246, ptr noundef %21, ptr noundef nonnull @.str.29, i32 noundef %call18) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body21
  %22 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnt, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %23, i32 2
  %24 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %actual_length, align 4
  %25 = load i32, ptr %cnt, align 4
  %status = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %25, i32 3
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call18, ptr %status, align 4
  %27 = load i32, ptr %cnt, align 4
  %add = add i32 %27, 1
  %28 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp43 = icmp eq i32 %add, %29
  br i1 %cmp43, label %if.then44, label %do.end34.if.end46_crit_edge

do.end34.if.end46_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then44:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @c67x00_giveback_urb(ptr noundef %c67x00, ptr noundef %urb, i32 noundef 0)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end34.if.end46_crit_edge, %do.end9.if.end46_crit_edge
  %30 = ptrtoint ptr %ep_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_data, align 4
  %next_frame48 = getelementptr inbounds %struct.c67x00_ep_data, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %next_frame48 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_frame48, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %34 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %interval, align 4
  %conv = trunc i32 %35 to i16
  %add.i = add i16 %33, %conv
  %and.i80 = and i16 %add.i, 2047
  store i16 %and.i80, ptr %next_frame48, align 4
  %36 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cnt, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %cnt, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %entry.if.end53_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c67x00_add_data_urb(ptr noundef %c67x00, ptr noundef %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %and = lshr i32 %3, 7
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  %arrayidx = getelementptr %struct.usb_device, ptr %1, i32 0, i32 10, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %3, 15
  %and3 = and i32 %shr, 15
  %shr4 = lshr i32 %6, %and3
  %and5 = and i32 %shr4, 1
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %7 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %transfer_buffer_length, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %and24.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool25.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i, !prof !86

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1981, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 22, i32 %and3
  br label %if.end58.i

if.else.i:                                        ; preds = %entry
  br i1 %tobool25.not.i, label %do.end43.i, label %if.else.i.if.end49.i_crit_edge, !prof !87

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

do.end43.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1984, i32 noundef 9, ptr noundef null) #5
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %if.else.i.if.end49.i_crit_edge
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %1, i32 0, i32 21, i32 %and3
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end49.i, %if.end.i
  %ep.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx57.i, %if.end49.i ]
  %11 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %if.end58.i.usb_maxpacket.exit_crit_edge, label %if.end61.i

if.end58.i.usb_maxpacket.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_maxpacket.exit

if.end61.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %14 = and i16 %13, -249
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #5
  %phi.cast86 = zext i16 %15 to i32
  br label %usb_maxpacket.exit

usb_maxpacket.exit:                               ; preds = %if.end61.i, %if.end58.i.usb_maxpacket.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast86, %if.end61.i ], [ 0, %if.end58.i.usb_maxpacket.exit_crit_edge ]
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_flags, align 4
  %and13 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %usb_maxpacket.exit.land.end_crit_edge, label %land.lhs.true

usb_maxpacket.exit.land.end_crit_edge:            ; preds = %usb_maxpacket.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true:                                    ; preds = %usb_maxpacket.exit
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 4
  %and16 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %rem = srem i32 %sub, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool18.not = icmp eq i32 %rem, 0
  %phi.cast = zext i1 %tobool18.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %usb_maxpacket.exit.land.end_crit_edge
  %20 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %usb_maxpacket.exit.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %if.end36.while.cond_crit_edge, %land.end
  %remaining.0 = phi i32 [ %sub, %land.end ], [ %sub37, %if.end36.while.cond_crit_edge ]
  %toggle.0 = phi i32 [ %and5, %land.end ], [ %xor, %if.end36.while.cond_crit_edge ]
  %need_empty.0 = phi i32 [ %20, %land.end ], [ %need_empty.1, %if.end36.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0)
  %tobool21.not = icmp eq i32 %remaining.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_empty.0)
  %tobool22.not = icmp eq i32 %need_empty.0, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool22.not, i1 false
  br i1 %or.cond, label %while.cond.cleanup46_crit_edge, label %while.body

while.cond.cleanup46_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

while.body:                                       ; preds = %while.cond
  %21 = tail call i32 @llvm.smin.i32(i32 %remaining.0, i32 %retval.0.i)
  %22 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pipe, align 4
  %and26 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %cond30 = select i1 %tobool27.not, i32 225, i32 105
  %24 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer, align 4
  %26 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %27
  %idx.neg = sub i32 0, %remaining.0
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call33 = tail call fastcc i32 @c67x00_create_td(ptr noundef %c67x00, ptr noundef %urb, ptr noundef %add.ptr32, i32 noundef %21, i32 noundef %cond30, i32 noundef %toggle.0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %while.body.cleanup46_crit_edge

while.body.cleanup46_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end36:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  %need_empty.1 = select i1 %tobool24.not, i32 0, i32 %need_empty.0
  %xor = xor i32 %toggle.0, 1
  %sub37 = sub i32 %remaining.0, %21
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pipe, align 4
  %shr39.mask = and i32 %29, -1073741824
  %cmp41 = icmp eq i32 %shr39.mask, -2147483648
  br i1 %cmp41, label %if.end36.cleanup46_crit_edge, label %if.end36.while.cond_crit_edge

if.end36.while.cond_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.end36.cleanup46_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

cleanup46:                                        ; preds = %if.end36.cleanup46_crit_edge, %while.body.cleanup46_crit_edge, %while.cond.cleanup46_crit_edge
  %retval.2 = phi i32 [ 0, %while.cond.cleanup46_crit_edge ], [ %call33, %while.body.cleanup46_crit_edge ], [ 0, %if.end36.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c67x00_create_td(ptr noundef %c67x00, ptr noundef %urb, ptr noundef %data, i32 noundef %len, i32 noundef %pid, i32 noundef %toggle, i32 noundef %privdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp = icmp ult i32 %3, 1073741824
  %shr.mask = and i32 %3, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask)
  %cmp4 = icmp eq i32 %shr.mask, 1073741824
  %narrow = or i1 %cmp, %cmp4
  %ep_data.i = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ep_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep_data.i, align 4
  %dev.i = getelementptr inbounds %struct.c67x00_ep_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else4.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul i32 %len, 7578
  br label %if.end16.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul2.i = mul i32 %len, 7467
  br label %if.end16.i

if.else4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i = select i1 %tobool.not.i, i32 7840, i32 9050
  %bit_time.0.i = select i1 %cmp, i32 %cond.i, i32 11250
  %mul14.i = mul i32 %len, 936
  %phi.bo = add i32 %mul14.i, 50
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else4.i, %if.else.i, %if.then1.i
  %.sink.i = phi i32 [ 80290, %if.then1.i ], [ 80310, %if.else.i ], [ %phi.bo, %if.else4.i ]
  %mul.sink.i = phi i32 [ %mul.i, %if.then1.i ], [ %mul2.i, %if.else.i ], [ %bit_time.0.i, %if.else4.i ]
  %add17.i = add i32 %.sink.i, %mul.sink.i
  %div.i = sdiv i32 %add17.i, 100
  %add18.i = add nsw i32 %div.i, 106
  %bandwidth_allocated.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 6
  %10 = ptrtoint ptr %bandwidth_allocated.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bandwidth_allocated.i, align 4
  %add19.i = add i32 %add18.i, %11
  %max_frame_bw.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 9
  %12 = ptrtoint ptr %max_frame_bw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_frame_bw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %13)
  %cmp20.not.i = icmp slt i32 %add19.i, %13
  br i1 %cmp20.not.i, label %if.end24.i, label %if.end16.i.cleanup_crit_edge, !prof !86

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.i:                                       ; preds = %if.end16.i
  %next_td_addr.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 12
  %14 = ptrtoint ptr %next_td_addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %next_td_addr.i, align 4
  %conv.i = zext i16 %15 to i32
  %add25.i = add nuw nsw i32 %conv.i, 12
  %td_base_addr.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 10
  %16 = ptrtoint ptr %td_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %td_base_addr.i, align 4
  %conv26.i = zext i16 %17 to i32
  %add27.i = add nuw nsw i32 %conv26.i, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %add27.i)
  %cmp28.not.i = icmp ult i32 %add25.i, %add27.i
  br i1 %cmp28.not.i, label %if.end37.i, label %if.end24.i.cleanup_crit_edge, !prof !86

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37.i:                                       ; preds = %if.end24.i
  %next_buf_addr.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 13
  %18 = ptrtoint ptr %next_buf_addr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %next_buf_addr.i, align 2
  %conv38.i = zext i16 %19 to i32
  %add39.i = add i32 %conv38.i, %len
  %buf_base_addr.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 11
  %20 = ptrtoint ptr %buf_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %buf_base_addr.i, align 2
  %conv40.i = zext i16 %21 to i32
  %add41.i = add nuw nsw i32 %conv40.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i, i32 %add41.i)
  %cmp42.not.i = icmp slt i32 %add39.i, %add41.i
  br i1 %cmp42.not.i, label %if.end51.i, label %if.end37.i.cleanup_crit_edge, !prof !86

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51.i:                                       ; preds = %if.end37.i
  br i1 %narrow, label %if.then53.i, label %if.end51.i.if.end_crit_edge

if.end51.i.if.end_crit_edge:                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then53.i:                                      ; preds = %if.end51.i
  %periodic_bw_allocated.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 7
  %22 = ptrtoint ptr %periodic_bw_allocated.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %periodic_bw_allocated.i, align 4
  %add54.i = add i32 %23, %add18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i, i32 %13)
  %cmp56.not.i = icmp slt i32 %add54.i, %13
  br i1 %cmp56.not.i, label %if.end65.i, label %if.then53.i.cleanup_crit_edge, !prof !86

if.then53.i.cleanup_crit_edge:                    ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %periodic_bw_allocated.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add54.i, ptr %periodic_bw_allocated.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end65.i, %if.end51.i.if.end_crit_edge
  %25 = ptrtoint ptr %bandwidth_allocated.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add19.i, ptr %bandwidth_allocated.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 44) #9
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %27 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe, align 4
  %pipe10 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %pipe10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pipe10, align 8
  %30 = ptrtoint ptr %ep_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_data.i, align 4
  %ep_data11 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %ep_data11 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ep_data11, align 4
  %dev = getelementptr inbounds %struct.c67x00_ep_data, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp13 = icmp eq i32 %36, 1
  br i1 %cmp13, label %land.lhs.true, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %low_speed_ports = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 2
  %37 = ptrtoint ptr %low_speed_ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %low_speed_ports, align 4
  %port = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %shl = shl nuw i32 1, %40
  %and14 = and i32 %shl, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %spec.select = select i1 %tobool15.not, i8 -128, i8 0
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end8.if.end18_crit_edge
  %cmd.0 = phi i8 [ 0, %if.end8.if.end18_crit_edge ], [ %spec.select, %land.lhs.true ]
  %shr20 = lshr i32 %28, 30
  %41 = zext i32 %shr20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %shr20, label %if.end18.unreachabledefault [
    i32 0, label %sw.bb
    i32 2, label %if.end18.sw.epilog_crit_edge
    i32 3, label %sw.bb26
    i32 1, label %sw.bb27
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %42 = or i8 %cmd.0, 16
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end18.unreachabledefault:                      ; preds = %if.end18
  unreachable

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb26, %sw.bb, %if.end18.sw.epilog_crit_edge
  %cmd.1 = phi i8 [ %cmd.0, %sw.bb27 ], [ %cmd.0, %sw.bb26 ], [ %42, %sw.bb ], [ %cmd.0, %if.end18.sw.epilog_crit_edge ]
  %tt.0 = phi i8 [ 31, %sw.bb27 ], [ 27, %sw.bb26 ], [ 23, %sw.bb ], [ 19, %if.end18.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %toggle)
  %tobool28.not = icmp eq i32 %toggle, 0
  %43 = or i8 %cmd.1, 64
  %spec.select125 = select i1 %tobool28.not, i8 %cmd.1, i8 %43
  %44 = or i8 %spec.select125, 1
  %45 = ptrtoint ptr %next_td_addr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %next_td_addr.i, align 4
  %td_addr = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %td_addr to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %td_addr, align 4
  %add = add i16 %46, 12
  store i16 %add, ptr %next_td_addr.i, align 4
  %48 = ptrtoint ptr %next_buf_addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %next_buf_addr.i, align 2
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %call7.i.i, align 8
  %sie = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 1
  %52 = ptrtoint ptr %sie to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sie, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sie_num, align 4
  %shl41 = shl i32 %55, 15
  %port42 = getelementptr inbounds %struct.c67x00_urb_priv, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port42, align 4
  %shl43 = shl i32 %57, 14
  %and45 = and i32 %len, 1023
  %or44 = or i32 %shl41, %and45
  %or46 = or i32 %or44, %shl43
  %conv47 = trunc i32 %or46 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv47)
  %port_length = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %port_length to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %port_length, align 2
  %and48 = shl i32 %pid, 4
  %shr51 = lshr i32 %28, 15
  %and52 = and i32 %shr51, 15
  %or54 = or i32 %and52, %and48
  %conv55 = trunc i32 %or54 to i8
  %pid_ep = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %pid_ep to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv55, ptr %pid_ep, align 4
  %shr57 = lshr i32 %28, 8
  %61 = trunc i32 %shr57 to i8
  %conv60 = and i8 %61, 127
  %dev_addr = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv60, ptr %dev_addr, align 1
  %ctrl_reg = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %44, ptr %ctrl_reg, align 2
  %status = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %status, align 1
  %retry_cnt65 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 6
  %65 = ptrtoint ptr %retry_cnt65 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %tt.0, ptr %retry_cnt65, align 8
  %residue = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 7
  %66 = ptrtoint ptr %residue to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %residue, align 1
  %67 = tail call i16 @llvm.bswap.i16(i16 %add)
  %next_td_addr67 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 8
  %68 = ptrtoint ptr %next_td_addr67 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %next_td_addr67, align 2
  %data68 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 11
  %69 = ptrtoint ptr %data68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %data, ptr %data68, align 8
  %urb69 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 12
  %70 = ptrtoint ptr %urb69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %urb, ptr %urb69, align 4
  %privdata70 = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 13
  %71 = ptrtoint ptr %privdata70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %privdata, ptr %privdata70, align 8
  %72 = trunc i32 %len to i16
  %73 = add i16 %72, 1
  %74 = and i16 %73, -2
  %conv76 = add i16 %49, %74
  %75 = ptrtoint ptr %next_buf_addr.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv76, ptr %next_buf_addr.i, align 2
  %td_list = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 9
  %td_list77 = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.c67x00_hcd, ptr %c67x00, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %td_list, ptr noundef %77, ptr noundef %td_list77) #5
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %td_list, ptr %prev.i, align 4
  %79 = ptrtoint ptr %td_list to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %td_list77, ptr %td_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.c67x00_td, ptr %call7.i.i, i32 0, i32 9, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i, align 8
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %td_list, ptr %77, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then53.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -90, %if.end16.i.cleanup_crit_edge ], [ -90, %if.end24.i.cleanup_crit_edge ], [ -90, %if.end37.i.cleanup_crit_edge ], [ -90, %if.then53.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_husb_set_current_td(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_write_mem_le16(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 311, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @c67x00_endpoint_disable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @c67x00_endpoint_disable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @c67x00_sched_start_scheduler.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 1141, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 843, i32 22}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 851, i32 22}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 140, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dbg_td.__UNIQUE_ID_ddebug232, !16, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 141, i32 2}
!22 = !{ptr @dbg_td.__UNIQUE_ID_ddebug233, !21, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 142, i32 2}
!25 = !{ptr @dbg_td.__UNIQUE_ID_ddebug234, !24, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 143, i32 2}
!28 = !{ptr @dbg_td.__UNIQUE_ID_ddebug235, !27, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 144, i32 2}
!31 = !{ptr @dbg_td.__UNIQUE_ID_ddebug236, !30, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 145, i32 2}
!34 = !{ptr @dbg_td.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 146, i32 2}
!37 = !{ptr @dbg_td.__UNIQUE_ID_ddebug238, !36, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 147, i32 2}
!40 = !{ptr @dbg_td.__UNIQUE_ID_ddebug239, !39, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 148, i32 2}
!43 = !{ptr @dbg_td.__UNIQUE_ID_ddebug240, !42, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 149, i32 2}
!46 = !{ptr @dbg_td.__UNIQUE_ID_ddebug241, !45, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 150, i32 2}
!49 = !{ptr @dbg_td.__UNIQUE_ID_ddebug242, !48, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 151, i32 2}
!52 = !{ptr @dbg_td.__UNIQUE_ID_ddebug243, !51, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 152, i32 2}
!55 = !{ptr @dbg_td.__UNIQUE_ID_ddebug244, !54, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 153, i32 2}
!58 = !{ptr @dbg_td.__UNIQUE_ID_ddebug245, !57, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 802, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @c67x00_fill_frame._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @c67x00_fill_frame._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 805, i32 23}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 760, i32 4}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @c67x00_add_iso_urb.__UNIQUE_ID_ddebug246, !69, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/c67x00/c67x00-sched.c", i32 1069, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @c67x00_send_frame._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @c67x00_send_frame._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2154031021, i64 2154031519, i64 2154031058, i64 2154031114, i64 2154031148, i64 2154031172, i64 2154031213, i64 2154031234, i64 2154031262, i64 2154031296}
!89 = distinct !{null, ptr @c67x00_add_data_urb, null, ptr @c67x00_add_iso_urb}
!90 = !{i64 2148278731, i64 2148278736, i64 2148278749, i64 2148278793, i64 2148278827, i64 2148278848}
!91 = !{i64 2154047394, i64 2154047892, i64 2154047431, i64 2154047487, i64 2154047521, i64 2154047545, i64 2154047586, i64 2154047607, i64 2154047635, i64 2154047669}
