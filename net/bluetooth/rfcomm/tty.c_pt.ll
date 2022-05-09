; ModuleID = '/llk/IR_all_yes/net/bluetooth/rfcomm/tty.c_pt.bc'
source_filename = "../net/bluetooth/rfcomm/tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rfcomm_dev_list_req = type { i16, [0 x %struct.rfcomm_dev_info] }
%struct.rfcomm_dev_info = type { i16, i32, i16, %struct.bdaddr_t, %struct.bdaddr_t, i8 }
%struct.bdaddr_t = type { [6 x i8] }
%struct.rfcomm_dlc = type { %struct.list_head, ptr, %struct.sk_buff_head, %struct.timer_list, %struct.mutex, i32, i32, %struct.refcount_struct, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rfcomm_dev = type { %struct.tty_port, %struct.list_head, [12 x i8], i32, i32, i32, i32, %struct.bdaddr_t, %struct.bdaddr_t, i8, i32, ptr, ptr, %struct.atomic_t, %struct.sk_buff_head }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_buffer = type { %union.anon.69, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.69 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rfcomm_dev_req = type { i16, i32, %struct.bdaddr_t, %struct.bdaddr_t, i8 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.118, [0 x i32], %union.anon.119, i16, i16, %union.anon.120, %struct.refcount_struct, [0 x i32], %union.anon.121 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { %struct.hlist_node }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%struct.rfcomm_pinfo = type { %struct.bt_sock, %struct.bdaddr_t, %struct.bdaddr_t, ptr, i8, i8, i8 }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.122, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.123, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.124, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.122 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.123 = type { ptr }
%union.anon.124 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
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
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.70, %struct.anon.71, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.70 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.71 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@rfcomm_dev_ioctl.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rfcomm\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_dev_ioctl\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/bluetooth/rfcomm/tty.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd %d arg %p\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@rfcomm_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @rfcomm_tty_install, ptr null, ptr @rfcomm_tty_open, ptr @rfcomm_tty_close, ptr null, ptr @rfcomm_tty_cleanup, ptr @rfcomm_tty_write, ptr null, ptr null, ptr @rfcomm_tty_write_room, ptr @rfcomm_tty_chars_in_buffer, ptr @rfcomm_tty_ioctl, ptr null, ptr @rfcomm_tty_set_termios, ptr @rfcomm_tty_throttle, ptr @rfcomm_tty_unthrottle, ptr null, ptr null, ptr @rfcomm_tty_hangup, ptr null, ptr @rfcomm_tty_flush_buffer, ptr null, ptr @rfcomm_tty_wait_until_sent, ptr @rfcomm_tty_send_xchar, ptr @rfcomm_tty_tiocmget, ptr @rfcomm_tty_tiocmset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't register RFCOMM TTY driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RFCOMM TTY layer initialized\0A\00", [34 x i8] zeroinitializer }, align 32
@rfcomm_ioctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rfcomm_ioctl_mutex, i64 52), ptr getelementptr (i8, ptr @rfcomm_ioctl_mutex, i64 52) }, ptr @rfcomm_ioctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rfcomm_ioctl_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rfcomm_ioctl_mutex\00", [45 x i8] zeroinitializer }, align 32
@__rfcomm_create_dev.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__rfcomm_create_dev\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sk %p dev_id %d flags 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rfcomm_dev_add.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfcomm_dev_add\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"id %d channel %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dev_attr_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create address attribute\0A\00", [60 x i8] zeroinitializer }, align 32
@dev_attr_channel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create channel attribute\0A\00", [60 x i8] zeroinitializer }, align 32
@rfcomm_dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rfcomm_dev_list, ptr @rfcomm_dev_list }, [24 x i8] zeroinitializer }, align 32
@rfcomm_dev_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rfcomm_dev_lock, i64 52), ptr getelementptr (i8, ptr @rfcomm_dev_lock, i64 52) }, ptr @rfcomm_dev_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rfcomm%d\00", [23 x i8] zeroinitializer }, align 32
@rfcomm_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr @rfcomm_dev_carrier_raised, ptr null, ptr @rfcomm_dev_shutdown, ptr @rfcomm_dev_activate, ptr @rfcomm_dev_destruct }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rfcomm_dev_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_dev_lock\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_dev_destruct.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_dev_destruct\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev %p dlc %p\0A\00", [17 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_dev_data_ready.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_dev_data_ready\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dlc %p len %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_dev_state_change.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_dev_state_change\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlc %p dev %p err %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_dev_modem_status\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dlc %p dev %p v24_sig 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.29, ptr @.str.35, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pMR\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__rfcomm_release_dev.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__rfcomm_release_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dev_id %d flags 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_get_dev_list.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_get_dev_list\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rfcomm_get_dev_info.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.43, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_get_dev_info\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_tty_open.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rfcomm_tty_open\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tty %p id %d\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_tty_open.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dev %p dst %pMR channel %d opened %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rfcomm_tty_copy_pending.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_tty_copy_pending\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dev %p\0A\00", [24 x i8] zeroinitializer }, align 32
@rfcomm_tty_close.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_tty_close\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tty %p dev %p dlc %p opened %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rfcomm_tty_write.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_tty_write\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tty %p count %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rfcomm_tty_write_room.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_tty_write_room\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tty %p room %d\0A\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_tty_chars_in_buffer.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_tty_chars_in_buffer\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tty %p dev %p\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_tty_ioctl.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rfcomm_tty_ioctl\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tty %p cmd 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_tty_ioctl.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCGETS is not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@rfcomm_tty_ioctl.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TCSETS is not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@rfcomm_tty_ioctl.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TIOCMIWAIT\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TIOCSERGETLSR is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TIOCSERCONFIG is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rfcomm_tty_set_termios\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tty %p termios %p\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.67, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Turning off CRTSCTS unsupported\0A\00", [63 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.68, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Parity change detected.\0A\00", [39 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.69, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Parity is ODD\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.70, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Parity is EVEN\0A\00", [16 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.71, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Parity is OFF\0A\00", [17 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.72, i8 0, i8 -31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XOFF custom\0A\00", [19 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.73, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XOFF default\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.74, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"XON custom\0A\00", [20 x i8] zeroinitializer }, align 32
@rfcomm_tty_set_termios.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.75, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XON default\0A\00", [19 x i8] zeroinitializer }, align 32
@rfcomm_tty_throttle.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.57, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_tty_throttle\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_tty_unthrottle.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.57, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_tty_unthrottle\00", [42 x i8] zeroinitializer }, align 32
@rfcomm_tty_hangup.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.57, i8 1, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rfcomm_tty_hangup\00", [46 x i8] zeroinitializer }, align 32
@rfcomm_tty_flush_buffer.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.57, i8 1, i8 2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rfcomm_tty_flush_buffer\00", [40 x i8] zeroinitializer }, align 32
@rfcomm_tty_wait_until_sent.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rfcomm_tty_wait_until_sent\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tty %p timeout %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rfcomm_tty_send_xchar.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rfcomm_tty_send_xchar\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tty %p ch %c\0A\00", [18 x i8] zeroinitializer }, align 32
@rfcomm_tty_tiocmget.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.57, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_tty_tiocmget\00", [44 x i8] zeroinitializer }, align 32
@rfcomm_tty_tiocmset.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.2, ptr @.str.86, i8 1, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rfcomm_tty_tiocmset\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tty %p dev %p set 0x%02x clear 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1074025160, i64 1074025161, i64 2147766994, i64 2147766995]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 21505, i64 21506, i64 21587, i64 21593, i64 21596]
@__sancov_gen_cov_switch_values.89 = internal global [11 x i64] [i64 9, i64 32, i64 2400, i64 4800, i64 7200, i64 9600, i64 19200, i64 38400, i64 57600, i64 115200, i64 230400]
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 584, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"rfcomm_tty_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 44, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"rfcomm_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1106, i32 36 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1148, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1153, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"rfcomm_ioctl_mutex\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 43, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 401, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 230, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 214, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 156, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 324, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"dev_attr_address\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 344, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"dev_attr_channel\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 347, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"rfcomm_dev_list\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 72, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"rfcomm_dev_lock\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 262, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"rfcomm_port_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 142, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 73, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 86, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1984, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 618, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 632, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 649, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1033, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 695, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 723, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1224, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 215, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 205, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 216, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 212, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 447, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 511, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 560, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 752, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 754, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 667, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 777, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 790, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 820, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1019, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 827, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 831, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 835, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 839, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 843, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 847, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 869, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 876, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 882, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 888, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 891, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 895, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 901, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 905, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 910, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 914, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1001, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1010, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1057, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1034, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1050, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1045, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1066, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [30 x i8] c"../net/bluetooth/rfcomm/tty.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1077, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rfcomm_tty_driver, ptr @rfcomm_ops, ptr @.str.4, ptr @.str.5, ptr @rfcomm_ioctl_mutex, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dev_attr_address, ptr @.str.15, ptr @dev_attr_channel, ptr @.str.16, ptr @rfcomm_dev_list, ptr @rfcomm_dev_lock, ptr @.str.17, ptr @rfcomm_port_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_ioctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_dev_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rfcomm_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_dev_ioctl(ptr noundef %sk, i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_ioctl.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_ioctl, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_ioctl.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.3, i32 noundef %cmd, ptr noundef %arg) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.return_crit_edge [
    i32 1074025160, label %sw.bb
    i32 1074025161, label %sw.bb4
    i32 -2147200302, label %sw.bb6
    i32 -2147200301, label %sw.bb8
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_ioctl_mutex, i32 noundef 0) #14
  %call.i = tail call fastcc i32 @__rfcomm_create_dev(ptr noundef %sk, ptr noundef %arg) #14
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_ioctl_mutex) #14
  br label %return

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_ioctl_mutex, i32 noundef 0) #14
  %call.i15 = tail call fastcc i32 @__rfcomm_release_dev(ptr noundef %arg) #14
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_ioctl_mutex) #14
  br label %return

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call fastcc i32 @rfcomm_get_dev_list(ptr noundef %arg)
  br label %return

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call fastcc i32 @rfcomm_get_dev_info(ptr noundef %arg)
  br label %return

return:                                           ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %do.end.return_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call.i15, %sw.bb4 ], [ %call.i, %sw.bb ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_get_dev_list(ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_get_dev_list.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_get_dev_list, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_get_dev_list.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.43) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 513) #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !215
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #14, !srcloc !218
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #14, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool7.not = icmp eq i32 %asmresult, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %conv = trunc i32 %asmresult5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool10.not = icmp eq i16 %conv, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %conv11 = and i32 %asmresult5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 682, i32 %conv11)
  %cmp = icmp ugt i32 %conv11, 682
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end8.i.i99

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i99:                                    ; preds = %lor.lhs.false
  %mul = mul nuw nsw i32 %conv11, 24
  %add = or i32 %mul, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end8.i.i99.cleanup_crit_edge, label %if.end19

if.end8.i.i99.cleanup_crit_edge:                  ; preds = %if.end8.i.i99
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end8.i.i99
  %dev_info = getelementptr inbounds %struct.rfcomm_dev_list_req, ptr %call9.i.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_dev_lock, i32 noundef 0) #14
  %.pn104 = load ptr, ptr @rfcomm_dev_list, align 4
  %cmp21.not106 = icmp eq ptr %.pn104, @rfcomm_dev_list
  br i1 %cmp21.not106, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19.for.body_crit_edge
  %.pn108 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn104, %if.end19.for.body_crit_edge ]
  %n.0107 = phi i32 [ %n.1, %for.inc.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %dev.0109 = getelementptr i8, ptr %.pn108, i32 -576
  %tobool.not.i = icmp eq ptr %dev.0109, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %land.lhs.true.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %kref.i = getelementptr i8, ptr %.pn108, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %6 = phi i32 [ %5, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #14, !srcloc !219
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !220

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !220

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #14
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc_crit_edge, label %if.end28

kref_get_unless_zero.exit.i.for.inc_crit_edge:    ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end28:                                         ; preds = %kref_get_unless_zero.exit.i
  %id = getelementptr i8, ptr %.pn108, i32 20
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %conv29 = trunc i32 %17 to i16
  %add.ptr30 = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107
  %18 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv29, ptr %add.ptr30, align 4
  %flags = getelementptr i8, ptr %.pn108, i32 24
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %flags33 = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107, i32 1
  %21 = ptrtoint ptr %flags33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %flags33, align 8
  %dlc = getelementptr i8, ptr %.pn108, i32 56
  %22 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dlc, align 4
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %conv34 = trunc i32 %25 to i16
  %state36 = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107, i32 2
  %26 = ptrtoint ptr %state36 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv34, ptr %state36, align 4
  %channel = getelementptr i8, ptr %.pn108, i32 48
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %channel, align 4
  %channel38 = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107, i32 5
  %29 = ptrtoint ptr %channel38 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %channel38, align 2
  %src = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107, i32 3
  %src40 = getelementptr i8, ptr %.pn108, i32 36
  %30 = call ptr @memcpy(ptr %src, ptr %src40, i32 6)
  %dst = getelementptr %struct.rfcomm_dev_info, ptr %dev_info, i32 %n.0107, i32 4
  %dst42 = getelementptr i8, ptr %.pn108, i32 42
  %31 = call ptr @memcpy(ptr %dst, ptr %dst42, i32 6)
  call void @tty_port_put(ptr noundef nonnull %dev.0109) #14
  %inc = add i32 %n.0107, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv11)
  %cmp45.not = icmp slt i32 %inc, %conv11
  br i1 %cmp45.not, label %if.end28.for.inc_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %kref_get_unless_zero.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %inc, %if.end28.for.inc_crit_edge ], [ %n.0107, %for.body.for.inc_crit_edge ], [ %n.0107, %kref_get_unless_zero.exit.i.for.inc_crit_edge ]
  %32 = ptrtoint ptr %.pn108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn108, align 4
  %cmp21.not = icmp eq ptr %.pn, @rfcomm_dev_list
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge, %if.end19.for.end_crit_edge
  %n.2 = phi i32 [ 0, %if.end19.for.end_crit_edge ], [ %inc, %if.end28.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rfcomm_dev_lock) #14
  %conv53 = trunc i32 %n.2 to i16
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv53, ptr %call9.i.i, align 128
  %mul55 = mul i32 %n.2, 24
  %add56 = or i32 %mul55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add56)
  %cmp9.i.i = icmp slt i32 %add56, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !220

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %for.end
  call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %add56, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %add56, i32 -1226833920) #18, !srcloc !221
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %add56) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %call9.i.i, i32 noundef %add56) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ -14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.copy_to_user.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i99.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %n.addr.0.i, %copy_to_user.exit ], [ -14, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -12, %if.end8.i.i99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_get_dev_info(ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %di = alloca %struct.rfcomm_dev_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %di) #14
  %0 = call ptr @memset(ptr %di, i32 255, i32 24)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_get_dev_info.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_get_dev_info, %if.then)) #14
          to label %if.then.i [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_get_dev_info.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.43) #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #18
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !220

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %di, i32 noundef 24) #14
  %2 = call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !215
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %di, ptr noundef %arg, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !220

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.then.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %di, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %6 = ptrtoint ptr %di to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %di, align 4
  %conv = sext i16 %7 to i32
  %call7 = call fastcc ptr @rfcomm_dev_get(i32 noundef %conv)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end8.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %flags = getelementptr inbounds %struct.rfcomm_dev, ptr %call7, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %flags11 = getelementptr inbounds %struct.rfcomm_dev_info, ptr %di, i32 0, i32 1
  %10 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags11, align 4
  %channel = getelementptr inbounds %struct.rfcomm_dev, ptr %call7, i32 0, i32 9
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 4
  %channel12 = getelementptr inbounds %struct.rfcomm_dev_info, ptr %di, i32 0, i32 5
  %13 = ptrtoint ptr %channel12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %channel12, align 2
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %call7, i32 0, i32 11
  %14 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dlc, align 4
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %conv13 = trunc i32 %17 to i16
  %state14 = getelementptr inbounds %struct.rfcomm_dev_info, ptr %di, i32 0, i32 2
  %18 = ptrtoint ptr %state14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv13, ptr %state14, align 4
  %src = getelementptr inbounds %struct.rfcomm_dev_info, ptr %di, i32 0, i32 3
  %src15 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7, i32 0, i32 7
  %19 = call ptr @memcpy(ptr %src, ptr %src15, i32 6)
  %dst = getelementptr inbounds %struct.rfcomm_dev_info, ptr %di, i32 0, i32 4
  %dst16 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7, i32 0, i32 8
  %20 = call ptr @memcpy(ptr %dst, ptr %dst16, i32 6)
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #14
  %call.i.i31 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i31, label %if.end8.i.i.copy_to_user.exit.thread_crit_edge, label %copy_to_user.exit

if.end8.i.i.copy_to_user.exit.thread_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i35 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %di, i32 noundef 24) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %di, i32 noundef 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool18.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end8.i.i.copy_to_user.exit.thread_crit_edge
  %21 = phi i32 [ -14, %if.end8.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @tty_port_put(ptr noundef nonnull %call7) #14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit.thread, %if.end6.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %21, %copy_to_user.exit.thread ], [ -19, %if.end6.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %di) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rfcomm_init_ttys() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 256, ptr noundef null, i32 noundef 12) #14
  store ptr %call, ptr @rfcomm_tty_driver, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 216, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1213, ptr %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 3
  %9 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_lflag, align 4
  %and = and i32 %10, -3
  store i32 %and, ptr %c_lflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rfcomm_ops, ptr %ops.i, align 4
  %call5 = tail call i32 @tty_register_driver(ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4) #14
  %12 = load ptr, ptr @rfcomm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %12) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rfcomm_cleanup_ttys() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rfcomm_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #14
  %1 = load ptr, ptr @rfcomm_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rfcomm_create_dev(ptr noundef %sk, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.rfcomm_dev_req, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #14
  %0 = call ptr @memset(ptr %req, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #18, !srcloc !222
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !220

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 24) #14
  %2 = call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !215
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %arg, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !220

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_create_dev.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_create_dev, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !214

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %req, align 4
  %conv = sext i16 %7 to i32
  %flags = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_create_dev.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.9, ptr noundef %sk, i32 noundef %conv, i32 noundef %9) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %flags7 = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.not = icmp eq i32 %11, 3
  br i1 %cmp.not, label %do.end.if.end11_crit_edge, label %land.lhs.true

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end
  %call9 = call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call9, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %12 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags7, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %14 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp16.not = icmp eq i8 %15, 1
  br i1 %cmp16.not, label %if.end19, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  %dlc20 = getelementptr inbounds %struct.rfcomm_pinfo, ptr %sk, i32 0, i32 3
  %16 = ptrtoint ptr %dlc20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dlc20, align 4
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %17, i32 0, i32 7
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !223
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !224

if.end19.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end33_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !220

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end33_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end33

if.else:                                          ; preds = %if.end11
  %src = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 2
  %dst = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 3
  %channel = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 4
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel, align 4
  %call21 = call ptr @rfcomm_dlc_exists(ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %21) #14
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %tobool26.not = icmp eq ptr %call21, null
  br i1 %tobool26.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %call29 = call ptr @rfcomm_dlc_alloc(i32 noundef 3264) #14
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end28.if.end33_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end33_crit_edge
  %dlc.0 = phi ptr [ %call29, %if.end28.if.end33_crit_edge ], [ %17, %if.else.i.i.i.i.if.end33_crit_edge ], [ %17, %if.end15.sink.split.i.i.i.i ]
  %call34 = call fastcc i32 @rfcomm_dev_add(ptr noundef nonnull %req, ptr noundef %dlc.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %23 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags7, align 4
  %and40 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %skc_state44 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %25 = ptrtoint ptr %skc_state44 to i32
  call void @__asan_store1_noabort(i32 %25)
  store volatile i8 9, ptr %skc_state44, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then23, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %22, %if.then23 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -77, %if.then14.cleanup_crit_edge ], [ -16, %if.end25.cleanup_crit_edge ], [ -12, %if.end28.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call34, %if.then42 ], [ %call34, %if.end38.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfcomm_dlc_exists(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfcomm_dlc_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rfcomm_dev_add(ptr nocapture noundef readonly %req, ptr noundef %dlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_add.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_add, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %req, align 4
  %conv = sext i16 %1 to i32
  %channel = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  %conv3 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_add.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv3) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc ptr @__rfcomm_dev_add(ptr noundef %req, ptr noundef %dlc)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !226
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !220

if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dlc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %rfcomm_dlc_put.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @rfcomm_dlc_free(ptr noundef %dlc) #14
  br label %rfcomm_dlc_put.exit

rfcomm_dlc_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %6 = load ptr, ptr @rfcomm_tty_driver, align 4
  %id = getelementptr inbounds %struct.rfcomm_dev, ptr %call4, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call9 = tail call ptr @tty_port_register_device(ptr noundef %call4, ptr noundef %6, i32 noundef %8, ptr noundef null) #14
  %cmp.i45 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_port_put(ptr noundef %call4) #14
  %9 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %tty_dev = getelementptr inbounds %struct.rfcomm_dev, ptr %call4, i32 0, i32 12
  %10 = ptrtoint ptr %tty_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %tty_dev, align 4
  tail call fastcc void @rfcomm_reparent_device(ptr noundef %call4)
  %11 = ptrtoint ptr %tty_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tty_dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %driver_data.i, align 4
  %14 = load ptr, ptr %tty_dev, align 4
  %call17 = tail call i32 @device_create_file(ptr noundef %14, ptr noundef nonnull @dev_attr_address) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then19, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %15 = ptrtoint ptr %tty_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tty_dev, align 4
  %call22 = tail call i32 @device_create_file(ptr noundef %16, ptr noundef nonnull @dev_attr_channel) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end20.if.end26_crit_edge
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then11, %rfcomm_dlc_put.exit
  %retval.0 = phi i32 [ %5, %rfcomm_dlc_put.exit ], [ %9, %if.then11 ], [ %18, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rfcomm_dev_add(ptr nocapture noundef readonly %req, ptr noundef %dlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 700) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_dev_lock, i32 noundef 0) #14
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp = icmp slt i16 %2, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %id = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %id, align 4
  %.pn150159 = load ptr, ptr @rfcomm_dev_list, align 4
  %cmp5.not160 = icmp eq ptr %.pn150159, @rfcomm_dev_list
  br i1 %cmp5.not160, label %if.then4.if.end51_crit_edge, label %for.body.preheader

if.then4.if.end51_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.preheader:                               ; preds = %if.then4
  %id7175 = getelementptr i8, ptr %.pn150159, i32 20
  %4 = ptrtoint ptr %id7175 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id7175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not176 = icmp eq i32 %5, 0
  br i1 %cmp9.not176, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.if.end51_crit_edge

for.body.preheader.if.end51_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %storemerge161178 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %.pn150163177 = phi ptr [ %.pn150, %for.body.for.cond_crit_edge ], [ %.pn150159, %for.body.preheader.for.cond_crit_edge ]
  %inc = add i32 %storemerge161178, 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %id, align 4
  %7 = ptrtoint ptr %.pn150163177 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn150 = load ptr, ptr %.pn150163177, align 4
  %cmp5.not = icmp eq ptr %.pn150, @rfcomm_dev_list
  br i1 %cmp5.not, label %for.cond.if.end51_crit_edge, label %for.body

for.cond.if.end51_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body:                                         ; preds = %for.cond
  %id7 = getelementptr i8, ptr %.pn150, i32 20
  %8 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id7, align 4
  %cmp9.not = icmp eq i32 %9, %inc
  br i1 %cmp9.not, label %for.body.for.cond_crit_edge, label %for.body.if.end51_crit_edge

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.else:                                          ; preds = %if.end
  %conv156 = zext i16 %2 to i32
  %id21 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv156, ptr %id21, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %if.end36.for.cond25_crit_edge, %if.else
  %head.1 = phi ptr [ @rfcomm_dev_list, %if.else ], [ %.pn, %if.end36.for.cond25_crit_edge ]
  %11 = ptrtoint ptr %head.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %head.1, align 4
  %cmp27.not = icmp eq ptr %.pn, @rfcomm_dev_list
  br i1 %cmp27.not, label %for.cond25.if.end51_crit_edge, label %for.body30

for.cond25.if.end51_crit_edge:                    ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body30:                                       ; preds = %for.cond25
  %id31 = getelementptr i8, ptr %.pn, i32 20
  %12 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv156)
  %cmp33 = icmp eq i32 %13, %conv156
  br i1 %cmp33, label %for.body30.out_crit_edge, label %if.end36

for.body30.out_crit_edge:                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end36:                                         ; preds = %for.body30
  %cmp39.not = icmp slt i32 %13, %conv156
  br i1 %cmp39.not, label %if.end36.for.cond25_crit_edge, label %if.end36.if.end51_crit_edge

if.end36.if.end51_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end36.for.cond25_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond25

if.end51:                                         ; preds = %if.end36.if.end51_crit_edge, %for.cond25.if.end51_crit_edge, %for.body.if.end51_crit_edge, %for.cond.if.end51_crit_edge, %for.body.preheader.if.end51_crit_edge, %if.then4.if.end51_crit_edge
  %head.2 = phi ptr [ @rfcomm_dev_list, %if.then4.if.end51_crit_edge ], [ @rfcomm_dev_list, %for.body.preheader.if.end51_crit_edge ], [ %.pn150163177, %for.body.if.end51_crit_edge ], [ %.pn150163177, %for.cond.if.end51_crit_edge ], [ %head.1, %if.end36.if.end51_crit_edge ], [ %head.1, %for.cond25.if.end51_crit_edge ]
  %id52 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %id52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %16 = icmp ugt i32 %15, 255
  br i1 %16, label %if.end51.out_crit_edge, label %if.end59

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end59:                                         ; preds = %if.end51
  %name = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 2
  %call61 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef %15)
  %list62 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %head.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.2, align 4
  %call.i.i151 = tail call zeroext i1 @__list_add_valid(ptr noundef %list62, ptr noundef %head.2, ptr noundef %18) #14
  br i1 %call.i.i151, label %if.end.i.i, label %if.end59.list_add.exit_crit_edge

if.end59.list_add.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list62, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %list62 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %list62, align 8
  %prev3.i.i = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.2, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %head.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list62, ptr %head.2, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end59.list_add.exit_crit_edge
  %src = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 7
  %src63 = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 2
  %23 = call ptr @memcpy(ptr %src, ptr %src63, i32 6)
  %dst = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 8
  %dst64 = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 3
  %24 = call ptr @memcpy(ptr %dst, ptr %dst64, i32 6)
  %channel = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 4
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %channel, align 4
  %channel65 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %channel65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %channel65, align 8
  %flags = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 3
  %flags66 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %flags66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %flags66, align 8
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i) #14
  %ops = getelementptr inbounds %struct.tty_port, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rfcomm_port_ops, ptr %ops, align 8
  %pending = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #14
  %32 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pending, ptr %pending, align 4
  %prev.i.i = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pending, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and69 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %list_add.exit.do.body.i155_crit_edge, label %if.then71

list_add.exit.do.body.i155_crit_edge:             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i155

if.then71:                                        ; preds = %list_add.exit
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 22
  %37 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %owner, align 4
  %tobool72.not = icmp eq ptr %38, null
  br i1 %tobool72.not, label %do.body78, label %do.end84, !prof !224

do.body78:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/rfcomm/tty.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 284, 0\0A.popsection", ""() #14, !srcloc !228
  unreachable

do.end84:                                         ; preds = %if.then71
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end84.rfcomm_dlc_throttle.exit_crit_edge

do.end84.rfcomm_dlc_throttle.exit_crit_edge:      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dlc_throttle.exit

if.then.i:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__rfcomm_dlc_throttle(ptr noundef %dlc) #14
  br label %rfcomm_dlc_throttle.exit

rfcomm_dlc_throttle.exit:                         ; preds = %if.then.i, %do.end84.rfcomm_dlc_throttle.exit_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 8
  %call85165 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %tobool86.not166 = icmp eq ptr %call85165, null
  br i1 %tobool86.not166, label %rfcomm_dlc_throttle.exit.do.body.i155_crit_edge, label %while.body.lr.ph

rfcomm_dlc_throttle.exit.do.body.i155_crit_edge:  ; preds = %rfcomm_dlc_throttle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i155

while.body.lr.ph:                                 ; preds = %rfcomm_dlc_throttle.exit
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %skb_orphan.exit.while.body_crit_edge, %while.body.lr.ph
  %call85167 = phi ptr [ %call85165, %while.body.lr.ph ], [ %call85, %skb_orphan.exit.while.body_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call85167, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i152 = icmp eq ptr %40, null
  br i1 %tobool.not.i152, label %do.body.i, label %if.then.i153

if.then.i153:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %40(ptr noundef nonnull %call85167) #14
  %41 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %destructor.i, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %call85167, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body
  %44 = getelementptr inbounds %struct.sk_buff, ptr %call85167, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool3.not.i = icmp eq ptr %46, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !220

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #14, !srcloc !229
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i153
  tail call void @skb_queue_tail(ptr noundef %pending, ptr noundef nonnull %call85167) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %call85167, i32 0, i32 6
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %48, ptr elementtype(i32) %sk_backlog) #14, !srcloc !230
  %call85 = tail call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #14
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %skb_orphan.exit.do.body.i155_crit_edge, label %skb_orphan.exit.while.body_crit_edge

skb_orphan.exit.while.body_crit_edge:             ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

skb_orphan.exit.do.body.i155_crit_edge:           ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i155

do.body.i155:                                     ; preds = %skb_orphan.exit.do.body.i155_crit_edge, %rfcomm_dlc_throttle.exit.do.body.i155_crit_edge, %list_add.exit.do.body.i155_crit_edge
  %data_ready = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 23
  %50 = ptrtoint ptr %data_ready to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @rfcomm_dev_data_ready, ptr %data_ready, align 4
  %state_change = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 24
  %51 = ptrtoint ptr %state_change to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @rfcomm_dev_state_change, ptr %state_change, align 4
  %modem_status = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 25
  %52 = ptrtoint ptr %modem_status to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @rfcomm_dev_modem_status, ptr %modem_status, align 4
  %owner89 = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 22
  %53 = ptrtoint ptr %owner89 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %owner89, align 4
  %dlc90 = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 11
  %54 = ptrtoint ptr %dlc90 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dlc, ptr %dlc90, align 8
  %remote_v24_sig = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 12
  %55 = ptrtoint ptr %remote_v24_sig to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %remote_v24_sig, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_dev_add, %if.then4.i)) #14
          to label %do.end.i [label %if.then4.i], !srcloc !214

if.then4.i:                                       ; preds = %do.body.i155
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.28, ptr noundef %dlc, ptr noundef nonnull %call7.i.i, i32 noundef %conv.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i155
  %modem_status.i = getelementptr inbounds %struct.rfcomm_dev, ptr %call7.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %modem_status.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %modem_status.i, align 4
  %and.i = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %56)
  %tobool9.not.i = icmp sgt i8 %56, -1
  %or.cond.i = and i1 %tobool9.not.i, %tobool6.not.i
  br i1 %or.cond.i, label %if.then10.i, label %do.end.i.rfcomm_dev_modem_status.exit_crit_edge

do.end.i.rfcomm_dev_modem_status.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dev_modem_status.exit

if.then10.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_port_tty_hangup(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #14
  br label %rfcomm_dev_modem_status.exit

rfcomm_dev_modem_status.exit:                     ; preds = %if.then10.i, %do.end.i.rfcomm_dev_modem_status.exit_crit_edge
  %conv12.i = zext i8 %56 to i32
  %and13.i = and i32 %conv12.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %cond.i = select i1 %tobool14.not.i, i32 0, i32 258
  %and16.i = and i32 %conv12.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %cond18.i = select i1 %tobool17.not.i, i32 0, i32 36
  %and20.i = shl nuw nsw i32 %conv12.i, 1
  %59 = and i32 %and20.i, 128
  %and25.i = lshr i32 %conv12.i, 1
  %60 = and i32 %and25.i, 64
  %or.i = or i32 %60, %59
  %or23.i = or i32 %or.i, %cond18.i
  %or28.i = or i32 %or23.i, %cond.i
  %61 = ptrtoint ptr %modem_status.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or28.i, ptr %modem_status.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  tail call void @__module_get(ptr noundef null) #14
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_dev_lock) #14
  br label %cleanup

out:                                              ; preds = %if.end51.out_crit_edge, %for.body30.out_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -23 to ptr), %if.end51.out_crit_edge ], [ inttoptr (i32 -98 to ptr), %for.body30.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_dev_lock) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %rfcomm_dev_modem_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %out ], [ %call7.i.i, %rfcomm_dev_modem_status.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_reparent_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr inbounds %struct.rfcomm_dev, ptr %dev, i32 0, i32 8
  %src = getelementptr inbounds %struct.rfcomm_dev, ptr %dev, i32 0, i32 7
  %call = tail call ptr @hci_get_route(ptr noundef %dst, ptr noundef %src, i8 noundef zeroext 0) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.hci_dev, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %call, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !231
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 696, ptr noundef nonnull @.str.32) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 1033, ptr noundef nonnull @.str.30) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.024.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not25.i = icmp eq ptr %c.024.i, %conn_hash.i
  br i1 %cmp.not25.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.026.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.024.i, %do.end.i.for.body.i_crit_edge ]
  %type11.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 14
  %5 = ptrtoint ptr %type11.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp13.i = icmp eq i8 %6, 1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %dst, i32 6) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then18.i:                                      ; preds = %land.lhs.true15.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i, label %if.then18.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

if.then18.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %if.then18.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #14
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %if.then18.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !232
  br label %hci_conn_hash_lookup_ba.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %c.026.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %c.0.i = load volatile ptr, ptr %c.026.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i12.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i12.i, label %for.end.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true.i15.i

for.end.i.rcu_read_unlock.exit22.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit22.i

land.lhs.true.i15.i:                              ; preds = %for.end.i
  %call1.i13.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool.not.i14.i, label %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true2.i17.i

land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit22.i

land.lhs.true2.i17.i:                             ; preds = %land.lhs.true.i15.i
  %.b4.i16.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i, label %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, label %if.then.i18.i

land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit22.i

if.then.i18.i:                                    ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 724, ptr noundef nonnull @.str.33) #14
  br label %rcu_read_unlock.exit22.i

rcu_read_unlock.exit22.i:                         ; preds = %if.then.i18.i, %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, %for.end.i.rcu_read_unlock.exit22.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !232
  br label %hci_conn_hash_lookup_ba.exit

hci_conn_hash_lookup_ba.exit:                     ; preds = %rcu_read_unlock.exit22.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %c.026.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit22.i ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i19.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i20.i, align 4
  %sub.i.i.i21.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i21.i, ptr %preempt_count.i.i.i.i20.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %hci_conn_hash_lookup_ba.exit.if.end10_crit_edge, label %land.lhs.true

hci_conn_hash_lookup_ba.exit.if.end10_crit_edge:  ; preds = %hci_conn_hash_lookup_ba.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %hci_conn_hash_lookup_ba.exit
  %state_in_sysfs.i = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i, i32 0, i32 63, i32 0, i32 8
  %12 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %13 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end10_crit_edge, label %if.then7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev4 = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i, i32 0, i32 63
  %tty_dev = getelementptr inbounds %struct.rfcomm_dev, ptr %dev, i32 0, i32 12
  %14 = ptrtoint ptr %tty_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tty_dev, align 4
  %call9 = tail call i32 @device_move(ptr noundef %15, ptr noundef %dev4, i32 noundef 1) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %hci_conn_hash_lookup_ba.exit.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_reparent_device, %if.then.i22)) #14
          to label %hci_dev_put.exit [label %if.then.i22], !srcloc !214

if.then.i22:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #14
  %16 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.35, ptr noundef %name.i, i32 noundef %17) #14
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i22, %if.end10
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #14
  br label %cleanup

cleanup:                                          ; preds = %hci_dev_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dev_data_ready(ptr noundef %dlc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 22
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %3, %pending
  br i1 %cmp.i.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_queue_tail(ptr noundef %pending, ptr noundef %skb) #14
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_data_ready.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_data_ready, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !214

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_data_ready.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.24, ptr noundef %dlc, i32 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len11, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef nonnull %1, ptr noundef %7, i8 noundef zeroext 0, i32 noundef %9) #14
  tail call void @tty_flip_buffer_push(ptr noundef nonnull %1) #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dev_state_change(ptr noundef %dlc, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 22
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_state_change.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_state_change, %if.then4)) #14
          to label %do.end [label %if.then4], !srcloc !214

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_state_change.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.26, ptr noundef %dlc, ptr noundef nonnull %1, i32 noundef %err) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %err6 = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %err6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %err, ptr %err6, align 4
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %4, label %do.end.cleanup_crit_edge [
    i32 1, label %if.then7
    i32 9, label %if.then10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @rfcomm_reparent_device(ptr noundef nonnull %1)
  %open_wait = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %cleanup

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_port_tty_hangup(ptr noundef nonnull %1, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.then7, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dev_modem_status(ptr noundef %dlc, i8 noundef zeroext %v24_sig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %dlc, i32 0, i32 22
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_modem_status, %if.then4)) #14
          to label %do.end [label %if.then4], !srcloc !214

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %v24_sig to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.28, ptr noundef %dlc, ptr noundef nonnull %1, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %modem_status = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %modem_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modem_status, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %v24_sig)
  %tobool9.not = icmp sgt i8 %v24_sig, -1
  %or.cond = and i1 %tobool9.not, %tobool6.not
  br i1 %or.cond, label %if.then10, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_port_tty_hangup(ptr noundef nonnull %1, i1 noundef zeroext true) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end.if.end11_crit_edge
  %conv12 = zext i8 %v24_sig to i32
  %and13 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool14.not, i32 0, i32 258
  %and16 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, i32 0, i32 36
  %and20 = shl nuw nsw i32 %conv12, 1
  %4 = and i32 %and20, 128
  %and25 = lshr i32 %conv12, 1
  %5 = and i32 %and25, 64
  %or = or i32 %5, %4
  %or23 = or i32 %or, %cond18
  %or28 = or i32 %or23, %cond
  %6 = ptrtoint ptr %modem_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or28, ptr %modem_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rfcomm_dev_carrier_raised(ptr nocapture noundef readonly %port) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc, align 4
  %state = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dev_shutdown(ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tty_dev = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %tty_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @device_move(ptr noundef %1, ptr noundef null, i32 noundef 3) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 11
  %4 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dlc, align 4
  %call2 = tail call i32 @rfcomm_dlc_close(ptr noundef %5, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_dev_activate(ptr noundef %port, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc, align 4
  %src = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 7
  %dst = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 8
  %channel = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  %call = tail call i32 @rfcomm_dlc_open(ptr noundef %1, ptr noundef %src, ptr noundef %dst, i8 noundef zeroext %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_dev_destruct(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dlc1 = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %dlc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_dev_destruct.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_dev_destruct, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_dev_destruct.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.21, ptr noundef %port, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %owner = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %cmp = icmp eq ptr %3, %port
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %refcnt.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #14, !srcloc !226
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !220

if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dlc_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #14
  br label %rfcomm_dlc_put.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @rfcomm_dlc_free(ptr noundef %1) #14
  br label %rfcomm_dlc_put.exit

rfcomm_dlc_put.exit:                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.rfcomm_dlc_put.exit_crit_edge
  %tty_dev = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 12
  %6 = ptrtoint ptr %tty_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty_dev, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %rfcomm_dlc_put.exit.if.end11_crit_edge, label %if.then10

rfcomm_dlc_put.exit.if.end11_crit_edge:           ; preds = %rfcomm_dlc_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %rfcomm_dlc_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %8 = load ptr, ptr @rfcomm_tty_driver, align 4
  %id = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  tail call void @tty_unregister_device(ptr noundef %8, i32 noundef %10) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %rfcomm_dlc_put.exit.if.end11_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_dev_lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_del.exit_crit_edge

if.end11.list_del.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end11.list_del.exit_crit_edge
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rfcomm_dev, ptr %port, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rfcomm_dev_lock) #14
  tail call void @kfree(ptr noundef %port) #14
  tail call void @module_put(ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_close(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_open(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rfcomm_dlc_throttle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_hangup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_dlc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_route(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @address_show(ptr nocapture noundef readonly %tty_dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %tty_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dst = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, ptr noundef %dst)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_show(ptr nocapture noundef readonly %tty_dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %tty_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channel = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %channel, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rfcomm_release_dev(ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.rfcomm_dev_req, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req) #14
  %0 = call ptr @memset(ptr %req, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #18, !srcloc !222
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !220

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 24) #14
  %2 = call i32 @llvm.read_register.i32(metadata !204) #14
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !215
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %arg, i32 noundef 24) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !220

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rfcomm_release_dev.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rfcomm_release_dev, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !214

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %req, align 4
  %conv = sext i16 %7 to i32
  %flags = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rfcomm_release_dev.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %9) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %req, align 4
  %conv8 = sext i16 %11 to i32
  %call9 = call fastcc ptr @rfcomm_dev_get(i32 noundef %conv8)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %flags13 = getelementptr inbounds %struct.rfcomm_dev, ptr %call9, i32 0, i32 4
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.not = icmp eq i32 %13, 3
  br i1 %cmp.not, label %if.end12.if.end17_crit_edge, label %land.lhs.true

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end12
  %call15 = call zeroext i1 @capable(i32 noundef 12) #14
  br i1 %call15, label %land.lhs.true.if.end17_crit_edge, label %if.then16

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @tty_port_put(ptr noundef nonnull %call9) #14
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end12.if.end17_crit_edge
  %status = getelementptr inbounds %struct.rfcomm_dev, ptr %call9, i32 0, i32 6
  %call18 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %status) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  call void @tty_port_put(ptr noundef nonnull %call9) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %flags23 = getelementptr inbounds %struct.rfcomm_dev_req, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags23, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %call9, i32 0, i32 11
  %16 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dlc, align 4
  %call26 = call i32 @rfcomm_dlc_close(ptr noundef %17, i32 noundef 0) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %call29 = call ptr @tty_port_tty_get(ptr noundef nonnull %call9) #14
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void @tty_vhangup(ptr noundef nonnull %call29) #14
  call void @tty_kref_put(ptr noundef nonnull %call29) #14
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool35.not = icmp eq i32 %20, 0
  br i1 %tobool35.not, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  call void @tty_port_put(ptr noundef nonnull %call9) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  call void @tty_port_put(ptr noundef nonnull %call9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then20, %if.then16, %do.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -114, %if.then20 ], [ 0, %if.end38 ], [ -1, %if.then16 ], [ -19, %do.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rfcomm_dev_get(i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @rfcomm_dev_lock, i32 noundef 0) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @rfcomm_dev_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @rfcomm_dev_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %id1.i = getelementptr i8, ptr %.pn.i, i32 20
  %1 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id1.i, align 4
  %cmp2.i = icmp eq i32 %2, %id
  br i1 %cmp2.i, label %__rfcomm_dev_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__rfcomm_dev_lookup.exit:                         ; preds = %for.body.i
  %dev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -576
  %tobool.not = icmp eq ptr %dev.0.le.i, null
  br i1 %tobool.not, label %__rfcomm_dev_lookup.exit.if.end_crit_edge, label %land.lhs.true.i

__rfcomm_dev_lookup.exit.if.end_crit_edge:        ; preds = %__rfcomm_dev_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.i:                                  ; preds = %__rfcomm_dev_lookup.exit
  %kref.i = getelementptr i8, ptr %.pn.i, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #14
  %3 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %kref.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i
  %5 = phi i32 [ %4, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 %8, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i) #14, !srcloc !219
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !220

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !220

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 0) #14
  %13 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #14
  %spec.select = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %dev.0.le.i
  br label %if.end

if.end:                                           ; preds = %kref_get_unless_zero.exit.i, %__rfcomm_dev_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %dev.0 = phi ptr [ null, %__rfcomm_dev_lookup.exit.if.end_crit_edge ], [ %spec.select, %kref_get_unless_zero.exit.i ], [ null, %for.cond.i.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @rfcomm_dev_lock) #14
  ret ptr %dev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_install(ptr noundef %driver, ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @rfcomm_dev_get(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dlc1 = getelementptr inbounds %struct.rfcomm_dev, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %dlc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc1, align 4
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %flags = getelementptr inbounds %struct.rfcomm_dev, ptr %call, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #14
  %call3 = tail call i32 @tty_port_install(ptr noundef nonnull %call, ptr noundef %driver, ptr noundef %tty) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dev, ptr %6, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #14
  %dlc.i = getelementptr inbounds %struct.rfcomm_dev, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlc.i, align 4
  %lock.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %8, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #14
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %driver_data, align 4
  %10 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dlc.i, align 4
  %lock3.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %11, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock3.i) #14
  %12 = ptrtoint ptr %dlc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dlc.i, align 4
  %tx_queue.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %13, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue.i) #14
  tail call void @tty_port_put(ptr noundef %6) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.rfcomm_dev, ptr %call, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #14
  tail call void @tty_port_put(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_open(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_open.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_open, %if.then)) #14
          to label %do.body3 [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_open.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.46, ptr noundef %tty, i32 noundef %3) #14
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_open.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_open, %if.then15)) #14
          to label %do.end18 [label %if.then15], !srcloc !214

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  %dst = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 8
  %channel = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %channel, align 4
  %conv = zext i8 %5 to i32
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_open.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.47, ptr noundef %1, ptr noundef %dst, i32 noundef %conv, i32 noundef %7) #14
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body3
  %call20 = tail call i32 @tty_port_open(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %do.end18
  tail call fastcc void @rfcomm_tty_copy_pending(ptr noundef %1)
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlc, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %9, i32 0, i32 6
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %if.then.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__rfcomm_dlc_unthrottle(ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end23.cleanup_crit_edge, %do.end18.cleanup_crit_edge
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_close(ptr noundef %tty, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_close.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_close, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_close.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.51, ptr noundef %tty, ptr noundef %1, ptr noundef %3, i32 noundef %5) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @tty_port_close(ptr noundef %1, ptr noundef %tty, ptr noundef %filp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_cleanup(ptr nocapture noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %flags = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #14
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data, align 4
  %5 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dlc, align 4
  %lock3 = getelementptr inbounds %struct.rfcomm_dlc, ptr %6, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock3) #14
  %7 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dlc, align 4
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %8, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #14
  tail call void @tty_port_put(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_write(ptr noundef %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dlc1 = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_write.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_write, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_write.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.53, ptr noundef %tty, i32 noundef %count) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool4.not29 = icmp eq i32 %count, 0
  br i1 %tobool4.not29, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %kref.i.i.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 19
  %wmem_alloc.i.i = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.body.lr.ph
  %count.addr.032 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %if.end9.while.body_crit_edge ]
  %sent.030 = phi i32 [ 0, %while.body.lr.ph ], [ %add11, %if.end9.while.body_crit_edge ]
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %6 = call i32 @llvm.umin.i32(i32 %count.addr.032, i32 %5)
  %add = add i32 %6, 10
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %if.then.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then.i:                                        ; preds = %while.body
  br i1 %tobool.not.i.i.i, label %if.end9.critedge, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #14
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i.i, i32 noundef 4) #14
  %7 = ptrtoint ptr %kref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %kref.i.i.i, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i
  %9 = phi i32 [ %8, %land.lhs.true.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %10 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %9, 1
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i, i32 noundef 4) #14
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i.i.i, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i, ptr %kref.i.i.i, i32 %12, i32 %add.i.i.i.i.i.i.i, ptr elementtype(i32) %kref.i.i.i) #14, !srcloc !219
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !220

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %15, 1
  %16 = or i32 %add5.i.i.i.i.i.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !220

if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get_unless_zero.exit.i.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %kref.i.i.i, i32 noundef 0) #14
  br label %kref_get_unless_zero.exit.i.i.i

kref_get_unless_zero.exit.i.i.i:                  ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wmem_alloc.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %wmem_alloc.i.i, i32 1, i32 3, i32 1) #14
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wmem_alloc.i.i, ptr %wmem_alloc.i.i, i32 1, ptr elementtype(i32) %wmem_alloc.i.i) #14, !srcloc !233
  br label %if.end9

if.end9.critedge:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.c = call zeroext i1 @__kasan_check_write(ptr noundef %wmem_alloc.i.i, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %wmem_alloc.i.i, i32 1, i32 3, i32 1) #14
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wmem_alloc.i.i, ptr %wmem_alloc.i.i, i32 1, ptr elementtype(i32) %wmem_alloc.i.i) #14, !srcloc !233
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge, %kref_get_unless_zero.exit.i.i.i
  %.sink = phi ptr [ %1, %kref_get_unless_zero.exit.i.i.i ], [ null, %if.end9.critedge ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.sink, ptr %19, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rfcomm_wfree, ptr %destructor.i.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %buf, i32 %sent.030
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %6) #14
  %26 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %6)
  call void @rfcomm_dlc_send_noerror(ptr noundef %3, ptr noundef nonnull %call.i.i) #14
  %add11 = add i32 %6, %sent.030
  %sub = sub i32 %count.addr.032, %6
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %sent.0.lcssa = phi i32 [ 0, %do.end.while.end_crit_edge ], [ %add11, %if.end9.while.end_crit_edge ], [ %sent.030, %while.body.while.end_crit_edge ]
  ret i32 %sent.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_write_room(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %wmem_alloc.i = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wmem_alloc.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %wmem_alloc.i, align 4
  %sub.i = sub i32 40, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #14
  %mtu.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu.i, align 4
  %mul.i = mul i32 %6, %8
  br label %do.body

do.body:                                          ; preds = %if.then, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %room.0 = phi i32 [ %mul.i, %if.then ], [ 0, %land.lhs.true.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_write_room.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_write_room, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !214

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_write_room.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.55, ptr noundef %tty, i32 noundef %room.0) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  ret i32 %room.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_chars_in_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_chars_in_buffer.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_chars_in_buffer, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_chars_in_buffer.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %tx_queue
  br i1 %cmp.i.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %mtu = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_ioctl, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.59, ptr noundef %tty, i32 noundef %cmd) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cmd, label %do.end.return_crit_edge [
    i32 21505, label %do.body3
    i32 21506, label %do.body19
    i32 21596, label %do.body35
    i32 21593, label %sw.bb50
    i32 21587, label %sw.bb51
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_ioctl, %if.then15)) #14
          to label %return [label %if.then15], !srcloc !214

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.60) #14
  br label %return

do.body19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_ioctl, %if.then31)) #14
          to label %return [label %if.then31], !srcloc !214

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.61) #14
  br label %return

do.body35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_ioctl, %if.then47)) #14
          to label %return [label %if.then47], !srcloc !214

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.62) #14
  br label %return

sw.bb50:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.63) #14
  br label %return

sw.bb51:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.64) #14
  br label %return

return:                                           ; preds = %sw.bb51, %sw.bb50, %if.then47, %do.body35, %if.then31, %do.body19, %if.then15, %do.body3, %do.end.return_crit_edge
  ret i32 -515
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_set_termios(ptr noundef %tty, ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call = tail call i32 @tty_termios_baud_rate(ptr noundef %old) #14
  %call1 = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #14
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.66, ptr noundef %tty, ptr noundef %old) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %session, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_cflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool12.not = icmp sgt i32 %7, -1
  br i1 %tobool12.not, label %if.end11.if.end33_crit_edge, label %land.lhs.true

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end11
  %c_cflag13 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %c_cflag13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool15.not = icmp sgt i32 %9, -1
  br i1 %tobool15.not, label %do.body17, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

do.body17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then29)) #14
          to label %if.end33 [label %if.then29], !srcloc !214

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.67) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.body17, %land.lhs.true.if.end33_crit_edge, %if.end11.if.end33_crit_edge
  %10 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag, align 4
  %c_cflag36 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %12 = ptrtoint ptr %c_cflag36 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_cflag36, align 4
  %14 = xor i32 %13, %11
  %15 = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %if.end33.if.end62_crit_edge, label %if.then44

if.end33.if.end62_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then58)) #14
          to label %if.end62 [label %if.then58], !srcloc !214

if.then58:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.68) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.then44, %if.end33.if.end62_crit_edge
  %changes.0 = phi i16 [ 8, %if.then58 ], [ 8, %if.then44 ], [ 0, %if.end33.if.end62_crit_edge ]
  %17 = ptrtoint ptr %c_cflag36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag36, align 4
  %and64 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body105, label %if.then66

if.then66:                                        ; preds = %if.end62
  %and68 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body87, label %do.body71

do.body71:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then83)) #14
          to label %if.end121 [label %if.then83], !srcloc !214

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.69) #14
  br label %if.end121

do.body87:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then99)) #14
          to label %if.end121 [label %if.then99], !srcloc !214

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.70) #14
  br label %if.end121

do.body105:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then117)) #14
          to label %if.end121 [label %if.then117], !srcloc !214

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.71) #14
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %do.body105, %if.then99, %do.body87, %if.then83, %do.body71
  %parity.0 = phi i8 [ 1, %if.then83 ], [ 3, %if.then99 ], [ 0, %if.then117 ], [ 1, %do.body71 ], [ 3, %do.body87 ], [ 0, %do.body105 ]
  %arrayidx = getelementptr %struct.ktermios, ptr %old, i32 0, i32 5, i32 9
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %arrayidx124 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %21 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp126.not = icmp eq i8 %20, %22
  br i1 %cmp126.not, label %do.body151, label %do.body129

do.body129:                                       ; preds = %if.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then141)) #14
          to label %do.end144 [label %if.then141], !srcloc !214

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.72) #14
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %do.body129
  %23 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx124, align 1
  %25 = or i16 %changes.0, 32
  br label %if.end167

do.body151:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then163)) #14
          to label %if.end167 [label %if.then163], !srcloc !214

if.then163:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.73) #14
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %do.body151, %do.end144
  %changes.1 = phi i16 [ %25, %do.end144 ], [ %changes.0, %if.then163 ], [ %changes.0, %do.body151 ]
  %x_on.0 = phi i8 [ %24, %do.end144 ], [ 17, %if.then163 ], [ 17, %do.body151 ]
  %arrayidx169 = getelementptr %struct.ktermios, ptr %old, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx169, align 1
  %arrayidx172 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %28 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx172, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp174.not = icmp eq i8 %27, %29
  br i1 %cmp174.not, label %do.body199, label %do.body177

do.body177:                                       ; preds = %if.end167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then189)) #14
          to label %do.end192 [label %if.then189], !srcloc !214

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.74) #14
  br label %do.end192

do.end192:                                        ; preds = %if.then189, %do.body177
  %30 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx172, align 1
  %32 = or i16 %changes.1, 64
  br label %if.end215

do.body199:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_set_termios, %if.then211)) #14
          to label %if.end215 [label %if.then211], !srcloc !214

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.75) #14
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %do.body199, %do.end192
  %changes.2 = phi i16 [ %32, %do.end192 ], [ %changes.1, %if.then211 ], [ %changes.1, %do.body199 ]
  %x_off.0 = phi i8 [ %31, %do.end192 ], [ 19, %if.then211 ], [ 19, %do.body199 ]
  %33 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %c_cflag, align 4
  %35 = ptrtoint ptr %c_cflag36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %c_cflag36, align 4
  %37 = xor i32 %36, %34
  %38 = trunc i32 %37 to i16
  %39 = lshr i16 %38, 4
  %40 = and i16 %39, 4
  %41 = or i16 %40, %changes.2
  %42 = trunc i32 %36 to i8
  %43 = lshr i8 %42, 6
  %44 = and i8 %43, 1
  %45 = and i32 %37, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp237.not = icmp eq i32 %45, 0
  %46 = or i16 %41, 2
  %changes.4 = select i1 %cmp237.not, i16 %41, i16 %46
  %47 = trunc i32 %36 to i8
  %48 = lshr i8 %47, 4
  %switch.idx.cast = and i8 %48, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call1)
  %cmp249.not = icmp ne i32 %call, %call1
  %49 = zext i1 %cmp249.not to i16
  %spec.select320 = or i16 %changes.4, %49
  %50 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call1, label %sw.default265 [
    i32 2400, label %if.end215.sw.epilog266_crit_edge
    i32 4800, label %sw.bb257
    i32 7200, label %sw.bb258
    i32 9600, label %sw.bb259
    i32 19200, label %sw.bb260
    i32 38400, label %sw.bb261
    i32 57600, label %sw.bb262
    i32 115200, label %sw.bb263
    i32 230400, label %sw.bb264
  ]

if.end215.sw.epilog266_crit_edge:                 ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb257:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb258:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb259:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb260:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb261:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb262:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb263:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.bb264:                                         ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.default265:                                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog266

sw.epilog266:                                     ; preds = %sw.default265, %sw.bb264, %sw.bb263, %sw.bb262, %sw.bb261, %sw.bb260, %sw.bb259, %sw.bb258, %sw.bb257, %if.end215.sw.epilog266_crit_edge
  %baud.0 = phi i8 [ 3, %sw.default265 ], [ 8, %sw.bb264 ], [ 7, %sw.bb263 ], [ 6, %sw.bb262 ], [ 5, %sw.bb261 ], [ 4, %sw.bb260 ], [ 3, %sw.bb259 ], [ 2, %sw.bb258 ], [ 1, %sw.bb257 ], [ 0, %if.end215.sw.epilog266_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select320)
  %tobool267.not = icmp eq i16 %spec.select320, 0
  br i1 %tobool267.not, label %sw.epilog266.cleanup_crit_edge, label %if.then268

sw.epilog266.cleanup_crit_edge:                   ; preds = %sw.epilog266
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then268:                                       ; preds = %sw.epilog266
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dlc, align 4
  %session270 = getelementptr inbounds %struct.rfcomm_dlc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %session270 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %session270, align 4
  %dlci = getelementptr inbounds %struct.rfcomm_dlc, ptr %52, i32 0, i32 8
  %55 = ptrtoint ptr %dlci to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dlci, align 4
  %call272 = tail call i32 @rfcomm_send_rpn(ptr noundef %54, i32 noundef 1, i8 noundef zeroext %56, i8 noundef zeroext %baud.0, i8 noundef zeroext %switch.idx.cast, i8 noundef zeroext %44, i8 noundef zeroext %parity.0, i8 noundef zeroext 0, i8 noundef zeroext %x_on.0, i8 noundef zeroext %x_off.0, i16 noundef zeroext %spec.select320) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then268, %sw.epilog266.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_throttle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_throttle.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_throttle, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_throttle.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 6
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.rfcomm_dlc_throttle.exit_crit_edge

do.end.rfcomm_dlc_throttle.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dlc_throttle.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__rfcomm_dlc_throttle(ptr noundef %3) #14
  br label %rfcomm_dlc_throttle.exit

rfcomm_dlc_throttle.exit:                         ; preds = %if.then.i, %do.end.rfcomm_dlc_throttle.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_unthrottle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_unthrottle.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_unthrottle, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_unthrottle.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %flags.i = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 6
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.rfcomm_dlc_unthrottle.exit_crit_edge, label %if.then.i

do.end.rfcomm_dlc_unthrottle.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rfcomm_dlc_unthrottle.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__rfcomm_dlc_unthrottle(ptr noundef %3) #14
  br label %rfcomm_dlc_unthrottle.exit

rfcomm_dlc_unthrottle.exit:                       ; preds = %if.then.i, %do.end.rfcomm_dlc_unthrottle.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_hangup(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_hangup.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_hangup, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_hangup.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @tty_port_hangup(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_flush_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_flush_buffer.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_flush_buffer, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_flush_buffer.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %tx_queue = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 2
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #14
  tail call void @tty_wakeup(ptr noundef %tty) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_wait_until_sent(ptr noundef %tty, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_wait_until_sent.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_wait_until_sent, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_wait_until_sent.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.81, ptr noundef %tty, i32 noundef %timeout) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_tty_send_xchar(ptr noundef %tty, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_send_xchar.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_send_xchar, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %ch to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_send_xchar.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.83, ptr noundef %tty, i32 noundef %conv) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_tiocmget(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_tiocmget.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_tiocmget, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_tiocmget.__UNIQUE_ID_ddebug516, ptr noundef nonnull @.str.57, ptr noundef %tty, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %modem_status = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %modem_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modem_status, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfcomm_tty_tiocmset(ptr noundef %tty, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  %v24_sig = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %dlc1 = getelementptr inbounds %struct.rfcomm_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dlc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v24_sig) #14
  %4 = ptrtoint ptr %v24_sig to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %v24_sig, align 1, !annotation !234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_tiocmset.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_tiocmset, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_tiocmset.__UNIQUE_ID_ddebug517, ptr noundef nonnull @.str.86, ptr noundef %tty, ptr noundef %1, i32 noundef %set, i32 noundef %clear) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @rfcomm_dlc_get_modem_status(ptr noundef %3, ptr noundef nonnull %v24_sig) #14
  %5 = and i32 %set, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %do.end.if.end10_crit_edge, label %if.then8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %v24_sig, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %v24_sig, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end.if.end10_crit_edge
  %10 = and i32 %set, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end10.if.end20_crit_edge, label %if.then16

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %v24_sig, align 1
  %14 = or i8 %13, 8
  store i8 %14, ptr %v24_sig, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end10.if.end20_crit_edge
  %and21 = and i32 %set, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %v24_sig, align 1
  %17 = or i8 %16, 64
  store i8 %17, ptr %v24_sig, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20.if.end27_crit_edge
  %and28 = and i32 %set, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %v24_sig, align 1
  %20 = or i8 %19, -128
  store i8 %20, ptr %v24_sig, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %21 = and i32 %clear, 258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end34.if.end44_crit_edge, label %if.then40

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %v24_sig, align 1
  %25 = and i8 %24, -5
  store i8 %25, ptr %v24_sig, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end34.if.end44_crit_edge
  %26 = and i32 %clear, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %if.end44.if.end54_crit_edge, label %if.then50

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %v24_sig, align 1
  %30 = and i8 %29, -9
  store i8 %30, ptr %v24_sig, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end44.if.end54_crit_edge
  %and55 = and i32 %clear, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end61_crit_edge, label %if.then57

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %v24_sig, align 1
  %33 = and i8 %32, -65
  store i8 %33, ptr %v24_sig, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.end54.if.end61_crit_edge
  %and62 = and i32 %clear, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %if.then64

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %v24_sig, align 1
  %36 = and i8 %35, 127
  store i8 %36, ptr %v24_sig, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61.if.end68_crit_edge
  %37 = ptrtoint ptr %v24_sig to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %v24_sig, align 1
  %call69 = call i32 @rfcomm_dlc_set_modem_status(ptr noundef %3, i8 noundef zeroext %38) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v24_sig) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfcomm_tty_copy_pending(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfcomm_tty_copy_pending.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rfcomm_tty_copy_pending, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rfcomm_tty_copy_pending.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.49, ptr noundef %dev) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dlc = getelementptr inbounds %struct.rfcomm_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dlc, align 4
  %lock = getelementptr inbounds %struct.rfcomm_dlc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %pending = getelementptr inbounds %struct.rfcomm_dev, ptr %dev, i32 0, i32 14
  %call320 = tail call ptr @skb_dequeue(ptr noundef %pending) #14
  %tobool4.not21 = icmp eq ptr %call320, null
  br i1 %tobool4.not21, label %while.end.thread, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.end.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dlc, align 4
  %lock725 = getelementptr inbounds %struct.rfcomm_dlc, ptr %3, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock725) #14
  br label %if.end10

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %call323 = phi ptr [ %call3, %while.body.while.body_crit_edge ], [ %call320, %do.end.while.body_crit_edge ]
  %inserted.022 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %do.end.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call323, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call323, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %dev, ptr noundef %5, i8 noundef zeroext 0, i32 noundef %7) #14
  %add = add i32 %call.i, %inserted.022
  tail call void @kfree_skb_reason(ptr noundef nonnull %call323, i32 noundef 0) #14
  %call3 = tail call ptr @skb_dequeue(ptr noundef %pending) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp sgt i32 %add, 0
  %8 = ptrtoint ptr %dlc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dlc, align 4
  %lock7 = getelementptr inbounds %struct.rfcomm_dlc, ptr %9, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock7) #14
  br i1 %phi.cmp, label %if.then8, label %while.end.if.end10_crit_edge

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_flip_buffer_push(ptr noundef %dev) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %while.end.if.end10_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rfcomm_dlc_unthrottle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfcomm_dlc_send_noerror(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rfcomm_wfree(ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %wmem_alloc = getelementptr inbounds %struct.rfcomm_dev, ptr %2, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wmem_alloc, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %wmem_alloc, i32 1, i32 3, i32 1) #14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wmem_alloc, ptr %wmem_alloc, i32 1, ptr elementtype(i32) %wmem_alloc) #14, !srcloc !230
  %flags = getelementptr inbounds %struct.rfcomm_dev, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @tty_port_tty_wakeup(ptr noundef %2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tty_port_put(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_send_rpn(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_get_modem_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfcomm_dlc_set_modem_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !144, !146, !148, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203}
!llvm.named.register.sp = !{!204}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/rfcomm/tty.c", i32 584, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rfcomm_dev_ioctl.__UNIQUE_ID_ddebug483, !1, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1148, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1153, i32 2}
!10 = !{ptr @rfcomm_tty_driver, !11, !"rfcomm_tty_driver", i1 false, i1 false}
!11 = !{!"../net/bluetooth/rfcomm/tty.c", i32 44, i32 27}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/rfcomm/tty.c", i32 43, i32 8}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rfcomm_ioctl_mutex, !13, !"rfcomm_ioctl_mutex", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/rfcomm/tty.c", i32 401, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__rfcomm_create_dev.__UNIQUE_ID_ddebug479, !17, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/rfcomm/tty.c", i32 324, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rfcomm_dev_add.__UNIQUE_ID_ddebug476, !28, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/bluetooth/rfcomm/tty.c", i32 344, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/bluetooth/rfcomm/tty.c", i32 347, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/bluetooth/rfcomm/tty.c", i32 262, i32 21}
!37 = !{ptr @rfcomm_dev_list, !38, !"rfcomm_dev_list", i1 false, i1 false}
!38 = !{!"../net/bluetooth/rfcomm/tty.c", i32 72, i32 8}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/bluetooth/rfcomm/tty.c", i32 73, i32 8}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rfcomm_dev_lock, !40, !"rfcomm_dev_lock", i1 false, i1 false}
!43 = !{ptr @rfcomm_port_ops, !44, !"rfcomm_port_ops", i1 false, i1 false}
!44 = !{!"../net/bluetooth/rfcomm/tty.c", i32 142, i32 41}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bluetooth/rfcomm/tty.c", i32 86, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rfcomm_dev_destruct.__UNIQUE_ID_ddebug475, !46, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!49 = !{ptr @skb_queue_head_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/bluetooth/rfcomm/tty.c", i32 618, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rfcomm_dev_data_ready.__UNIQUE_ID_ddebug484, !53, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bluetooth/rfcomm/tty.c", i32 632, i32 2}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rfcomm_dev_state_change.__UNIQUE_ID_ddebug485, !57, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/bluetooth/rfcomm/tty.c", i32 649, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rfcomm_dev_modem_status.__UNIQUE_ID_ddebug486, !61, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/net/bluetooth/hci_core.h", i32 1033, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !76, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/bluetooth/rfcomm/tty.c", i32 215, i32 8}
!81 = !{ptr @dev_attr_address, !80, !"dev_attr_address", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bluetooth/rfcomm/tty.c", i32 205, i32 22}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/bluetooth/rfcomm/tty.c", i32 216, i32 8}
!86 = !{ptr @dev_attr_channel, !85, !"dev_attr_channel", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/bluetooth/rfcomm/tty.c", i32 212, i32 22}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bluetooth/rfcomm/tty.c", i32 447, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__rfcomm_release_dev.__UNIQUE_ID_ddebug480, !90, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/bluetooth/rfcomm/tty.c", i32 511, i32 2}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rfcomm_get_dev_list.__UNIQUE_ID_ddebug481, !94, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/bluetooth/rfcomm/tty.c", i32 560, i32 2}
!99 = !{ptr @rfcomm_get_dev_info.__UNIQUE_ID_ddebug482, !98, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!100 = !{ptr @rfcomm_ops, !101, !"rfcomm_ops", i1 false, i1 false}
!101 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1106, i32 36}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/rfcomm/tty.c", i32 752, i32 2}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rfcomm_tty_open.__UNIQUE_ID_ddebug488, !103, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/bluetooth/rfcomm/tty.c", i32 754, i32 2}
!108 = !{ptr @rfcomm_tty_open.__UNIQUE_ID_ddebug489, !107, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/bluetooth/rfcomm/tty.c", i32 667, i32 2}
!111 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rfcomm_tty_copy_pending.__UNIQUE_ID_ddebug487, !110, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bluetooth/rfcomm/tty.c", i32 777, i32 2}
!115 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rfcomm_tty_close.__UNIQUE_ID_ddebug490, !114, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/bluetooth/rfcomm/tty.c", i32 790, i32 2}
!119 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rfcomm_tty_write.__UNIQUE_ID_ddebug491, !118, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/bluetooth/rfcomm/tty.c", i32 820, i32 2}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rfcomm_tty_write_room.__UNIQUE_ID_ddebug494, !122, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1019, i32 2}
!127 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rfcomm_tty_chars_in_buffer.__UNIQUE_ID_ddebug511, !126, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/bluetooth/rfcomm/tty.c", i32 827, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug495, !130, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/bluetooth/rfcomm/tty.c", i32 831, i32 3}
!135 = !{ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug496, !134, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/bluetooth/rfcomm/tty.c", i32 835, i32 3}
!138 = !{ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug497, !137, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/bluetooth/rfcomm/tty.c", i32 839, i32 3}
!141 = !{ptr @rfcomm_tty_ioctl.__UNIQUE_ID_ddebug498, !140, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/bluetooth/rfcomm/tty.c", i32 843, i32 3}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/bluetooth/rfcomm/tty.c", i32 847, i32 3}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/bluetooth/rfcomm/tty.c", i32 869, i32 2}
!148 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug499, !147, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/bluetooth/rfcomm/tty.c", i32 876, i32 3}
!152 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug500, !151, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/bluetooth/rfcomm/tty.c", i32 882, i32 3}
!155 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug501, !154, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/bluetooth/rfcomm/tty.c", i32 888, i32 4}
!158 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug502, !157, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/rfcomm/tty.c", i32 891, i32 4}
!161 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug503, !160, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/bluetooth/rfcomm/tty.c", i32 895, i32 3}
!164 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug504, !163, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/bluetooth/rfcomm/tty.c", i32 901, i32 3}
!167 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug505, !166, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/bluetooth/rfcomm/tty.c", i32 905, i32 3}
!170 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug506, !169, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/bluetooth/rfcomm/tty.c", i32 910, i32 3}
!173 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug507, !172, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/bluetooth/rfcomm/tty.c", i32 914, i32 3}
!176 = !{ptr @rfcomm_tty_set_termios.__UNIQUE_ID_ddebug508, !175, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1001, i32 2}
!179 = !{ptr @rfcomm_tty_throttle.__UNIQUE_ID_ddebug509, !178, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1010, i32 2}
!182 = !{ptr @rfcomm_tty_unthrottle.__UNIQUE_ID_ddebug510, !181, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1057, i32 2}
!185 = !{ptr @rfcomm_tty_hangup.__UNIQUE_ID_ddebug515, !184, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1034, i32 2}
!188 = !{ptr @rfcomm_tty_flush_buffer.__UNIQUE_ID_ddebug512, !187, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1050, i32 2}
!191 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @rfcomm_tty_wait_until_sent.__UNIQUE_ID_ddebug514, !190, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!193 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1045, i32 2}
!195 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rfcomm_tty_send_xchar.__UNIQUE_ID_ddebug513, !194, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1066, i32 2}
!199 = !{ptr @rfcomm_tty_tiocmget.__UNIQUE_ID_ddebug516, !198, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!200 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/bluetooth/rfcomm/tty.c", i32 1077, i32 2}
!202 = !{ptr @.str.86, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @rfcomm_tty_tiocmset.__UNIQUE_ID_ddebug517, !201, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!204 = !{!"sp"}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{i64 2148978576, i64 2148978581, i64 2148978594, i64 2148978638, i64 2148978672, i64 2148978693}
!215 = !{i64 4943598}
!216 = !{i64 4943795}
!217 = !{i64 2152429028}
!218 = !{i64 2157518352, i64 2157518632, i64 2157518966, i64 2157519300}
!219 = !{i64 849732, i64 849756, i64 849777, i64 849794, i64 849811}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2152448724, i64 2152448749}
!222 = !{i64 2152448043, i64 2152448068}
!223 = !{i64 2148366729, i64 2148366761, i64 2148366790, i64 2148366824, i64 2148366855, i64 2148366878}
!224 = !{!"branch_weights", i32 1, i32 2000}
!225 = !{i64 2148454754}
!226 = !{i64 2148369194, i64 2148369226, i64 2148369255, i64 2148369289, i64 2148369320, i64 2148369343}
!227 = !{i64 2149330868}
!228 = !{i64 2157499333, i64 2157499824, i64 2157499370, i64 2157499426, i64 2157499460, i64 2157499484, i64 2157499525, i64 2157499546, i64 2157499574, i64 2157499608}
!229 = !{i64 2155322326, i64 2155322814, i64 2155322363, i64 2155322419, i64 2155322453, i64 2155322477, i64 2155322518, i64 2155322539, i64 2155322567, i64 2155322601}
!230 = !{i64 2148367664, i64 2148367690, i64 2148367719, i64 2148367753, i64 2148367784, i64 2148367807}
!231 = !{i64 2149381358}
!232 = !{i64 2149381624}
!233 = !{i64 2148365199, i64 2148365225, i64 2148365254, i64 2148365288, i64 2148365319, i64 2148365342}
!234 = !{!"auto-init"}
