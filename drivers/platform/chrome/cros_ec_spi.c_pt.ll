; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_spi.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.cros_ec_spi = type { ptr, i64, i32, i32, ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.cros_ec_xfer_work_params = type { %struct.kthread_work, ptr, ptr, ptr, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.ec_host_response = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_cros_ec_spi__252_838_cros_ec_driver_spi_init6 = internal global ptr @cros_ec_driver_spi_init, section ".initcall6.init", align 4
@cros_ec_driver_spi = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @cros_ec_spi_id, ptr @cros_ec_spi_probe, ptr @cros_ec_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_spi_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_driver_spi_exit = internal global ptr @cros_ec_driver_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [53 x i8] c"cros_ec_spi.file=drivers/platform/chrome/cros_ec_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [27 x i8] c"cros_ec_spi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [71 x i8] c"cros_ec_spi.description=SPI interface for ChromeOS Embedded Controller\00", section ".modinfo", align 1
@cros_ec_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cros-ec-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros-ec-spi\00", [20 x i8] zeroinitializer }, align 32
@cros_ec_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr @cros_ec_spi_suspend, ptr @cros_ec_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_ec_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 780, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot register EC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/chrome/cros_ec_spi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_spi_probe._entry_ptr = internal global ptr @cros_ec_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"google,cros-ec-spi-pre-delay\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"google,cros-ec-spi-msg-delay\00", [35 x i8] zeroinitializer }, align 32
@do_cros_ec_cmd_xfer_spi.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cros_ec_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_cros_ec_cmd_xfer_spi\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepared, len=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@do_cros_ec_cmd_xfer_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spi transfer failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@do_cros_ec_cmd_xfer_spi._entry_ptr = internal global ptr @do_cros_ec_cmd_xfer_spi._entry, section ".printk_index", align 4
@do_cros_ec_cmd_xfer_spi._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"packet too long (%d bytes, expected %d)\00", [56 x i8] zeroinitializer }, align 32
@do_cros_ec_cmd_xfer_spi._entry_ptr.15 = internal global ptr @do_cros_ec_cmd_xfer_spi._entry.13, section ".printk_index", align 4
@do_cros_ec_cmd_xfer_spi._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.3, i32 631, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad packet checksum, expected %02x, got %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@do_cros_ec_cmd_xfer_spi._entry_ptr.19 = internal global ptr @do_cros_ec_cmd_xfer_spi._entry.17, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cros_ec_spi_receive_response.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_ec_spi_receive_response\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msg found at %zd\0A\00", [46 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 338, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"EC failed to respond in time\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_response._entry_ptr = internal global ptr @cros_ec_spi_receive_response._entry, section ".printk_index", align 4
@cros_ec_spi_receive_response.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.3, ptr @.str.24, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"need %d, got %d bytes from preamble\0A\00", [59 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_response.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.3, ptr @.str.25, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"loop, todo=%d, need_len=%d, ptr=%zd\0A\00", [59 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_response.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.20, ptr @.str.3, ptr @.str.27, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"loop done, ptr=%zd\0A\00", [44 x i8] zeroinitializer }, align 32
@receive_n_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.28, ptr @.str.3, i32 174, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"receive_n_bytes\00", [16 x i8] zeroinitializer }, align 32
@receive_n_bytes._entry_ptr = internal global ptr @receive_n_bytes._entry, section ".printk_index", align 4
@terminate_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cs-deassert spi transfer failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"terminate_request\00", [46 x i8] zeroinitializer }, align 32
@terminate_request._entry_ptr = internal global ptr @terminate_request._entry, section ".printk_index", align 4
@do_cros_ec_pkt_xfer_spi.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.31, ptr @.str.3, ptr @.str.10, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_cros_ec_pkt_xfer_spi\00", [40 x i8] zeroinitializer }, align 32
@do_cros_ec_pkt_xfer_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.31, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@do_cros_ec_pkt_xfer_spi._entry_ptr = internal global ptr @do_cros_ec_pkt_xfer_spi._entry, section ".printk_index", align 4
@do_cros_ec_pkt_xfer_spi._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.31, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@do_cros_ec_pkt_xfer_spi._entry_ptr.33 = internal global ptr @do_cros_ec_pkt_xfer_spi._entry.32, section ".printk_index", align 4
@do_cros_ec_pkt_xfer_spi._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad packet checksum, calculated %x\0A\00", [60 x i8] zeroinitializer }, align 32
@do_cros_ec_pkt_xfer_spi._entry_ptr.36 = internal global ptr @do_cros_ec_pkt_xfer_spi._entry.34, section ".printk_index", align 4
@cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.37, ptr @.str.3, ptr @.str.21, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cros_ec_spi_receive_packet\00", [37 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.37, ptr @.str.3, i32 230, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@cros_ec_spi_receive_packet._entry_ptr = internal global ptr @cros_ec_spi_receive_packet._entry, section ".printk_index", align 4
@cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.37, ptr @.str.3, ptr @.str.24, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.37, ptr @.str.3, ptr @.str.25, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.37, ptr @.str.3, ptr @.str.27, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros_ec_spi_high_pri\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_spi_devm_high_pri_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't create cros_ec high pri worker: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cros_ec_spi_devm_high_pri_alloc\00", [32 x i8] zeroinitializer }, align 32
@cros_ec_spi_devm_high_pri_alloc._entry_ptr = internal global ptr @cros_ec_spi_devm_high_pri_alloc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 237, i64 251, i64 252]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 237, i64 251, i64 252]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"cros_ec_driver_spi\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 827, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"cros_ec_spi_id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 821, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 829, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"cros_ec_spi_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 815, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"cros_ec_spi_pm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 812, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 780, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 699, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 703, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 547, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 590, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 612, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 629, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 324, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 338, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 352, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 365, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 377, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 174, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 139, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 404, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 471, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 495, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 510, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 216, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 230, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 719, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [41 x i8] c"../drivers/platform/chrome/cros_ec_spi.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 723, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_cros_ec_driver_spi_exit, ptr @__initcall__kmod_cros_ec_spi__252_838_cros_ec_driver_spi_init6, ptr @cros_ec_driver_spi_exit, ptr @cros_ec_spi_devm_high_pri_alloc._entry, ptr @cros_ec_spi_devm_high_pri_alloc._entry_ptr, ptr @cros_ec_spi_probe._entry, ptr @cros_ec_spi_probe._entry_ptr, ptr @cros_ec_spi_receive_packet._entry, ptr @cros_ec_spi_receive_packet._entry_ptr, ptr @cros_ec_spi_receive_response._entry, ptr @cros_ec_spi_receive_response._entry_ptr, ptr @do_cros_ec_cmd_xfer_spi._entry, ptr @do_cros_ec_cmd_xfer_spi._entry.13, ptr @do_cros_ec_cmd_xfer_spi._entry.17, ptr @do_cros_ec_cmd_xfer_spi._entry_ptr, ptr @do_cros_ec_cmd_xfer_spi._entry_ptr.15, ptr @do_cros_ec_cmd_xfer_spi._entry_ptr.19, ptr @do_cros_ec_pkt_xfer_spi._entry, ptr @do_cros_ec_pkt_xfer_spi._entry.32, ptr @do_cros_ec_pkt_xfer_spi._entry.34, ptr @do_cros_ec_pkt_xfer_spi._entry_ptr, ptr @do_cros_ec_pkt_xfer_spi._entry_ptr.33, ptr @do_cros_ec_pkt_xfer_spi._entry_ptr.36, ptr @receive_n_bytes._entry, ptr @receive_n_bytes._entry_ptr, ptr @terminate_request._entry, ptr @terminate_request._entry_ptr, ptr @cros_ec_driver_spi, ptr @cros_ec_spi_id, ptr @.str, ptr @cros_ec_spi_of_match, ptr @cros_ec_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_driver_spi to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_cmd_xfer_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_cmd_xfer_spi._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_cmd_xfer_spi._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_receive_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_n_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terminate_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_pkt_xfer_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_pkt_xfer_spi._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_cros_ec_pkt_xfer_spi._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_spi_devm_high_pri_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_driver_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cros_ec_driver_spi) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_driver_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cros_ec_driver_spi, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rt = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 6
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %rt, align 2
  %call = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 32, i32 noundef 3520) #7
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 8
  %call.i61 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 328, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i61, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end9.if.end.i_crit_edge

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %start_of_msg_delay.i = getelementptr inbounds %struct.cros_ec_spi, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %start_of_msg_delay.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %start_of_msg_delay.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %call.i.i8.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i8.i)
  %tobool2.not.i = icmp sgt i32 %call.i.i8.i, -1
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.cros_ec_spi_dt_probe.exit_crit_edge

if.end.i.cros_ec_spi_dt_probe.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_spi_dt_probe.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %end_of_msg_delay.i = getelementptr inbounds %struct.cros_ec_spi, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %end_of_msg_delay.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %end_of_msg_delay.i, align 4
  br label %cros_ec_spi_dt_probe.exit

cros_ec_spi_dt_probe.exit:                        ; preds = %if.then3.i, %if.end.i.cros_ec_spi_dt_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i61, ptr %driver_data.i.i, align 4
  %dev10 = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %dev10, align 4
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 9
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %priv, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq11 = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 10
  %16 = ptrtoint ptr %irq11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq11, align 8
  %cmd_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 17
  %17 = ptrtoint ptr %cmd_xfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cros_ec_cmd_xfer_spi, ptr %cmd_xfer, align 8
  %pkt_xfer = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 18
  %18 = ptrtoint ptr %pkt_xfer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cros_ec_pkt_xfer_spi, ptr %pkt_xfer, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i62 = icmp eq ptr %22, null
  br i1 %tobool.not.i62, label %if.end.i63, label %cros_ec_spi_dt_probe.exit.dev_name.exit_crit_edge

cros_ec_spi_dt_probe.exit.dev_name.exit_crit_edge: ; preds = %cros_ec_spi_dt_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i63:                                       ; preds = %cros_ec_spi_dt_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i63, %cros_ec_spi_dt_probe.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i63 ], [ %22, %cros_ec_spi_dt_probe.exit.dev_name.exit_crit_edge ]
  %25 = ptrtoint ptr %call.i61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i, ptr %call.i61, align 8
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 13
  %26 = ptrtoint ptr %din_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 52, ptr %din_size, align 4
  %dout_size = getelementptr inbounds %struct.cros_ec_device, ptr %call.i61, i32 0, i32 14
  %27 = ptrtoint ptr %dout_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %dout_size, align 8
  %call.i64 = call i64 @ktime_get() #7
  %last_transfer_ns = getelementptr inbounds %struct.cros_ec_spi, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %last_transfer_ns to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i64, ptr %last_transfer_ns, align 8
  %call.i65 = call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.38) #7
  %high_pri_worker.i = getelementptr inbounds %struct.cros_ec_spi, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %high_pri_worker.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i65, ptr %high_pri_worker.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cros_ec_spi_devm_high_pri_alloc.exit, label %if.end.i67

if.end.i67:                                       ; preds = %dev_name.exit
  %call.i.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @cros_ec_spi_high_pri_release, ptr noundef %call.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cros_ec_spi_devm_high_pri_alloc.exit.thread, label %cros_ec_spi_devm_high_pri_alloc.exit.thread71

cros_ec_spi_devm_high_pri_alloc.exit.thread71:    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  call void @kthread_destroy_worker(ptr noundef %call.i65) #7
  br label %cleanup

cros_ec_spi_devm_high_pri_alloc.exit.thread:      ; preds = %if.end.i67
  %30 = ptrtoint ptr %high_pri_worker.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %high_pri_worker.i, align 8
  %task.i = getelementptr inbounds %struct.kthread_worker, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 4
  call void @sched_set_fifo(ptr noundef %33) #7
  %call20 = call i32 @cros_ec_register(ptr noundef nonnull %call.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end

cros_ec_spi_devm_high_pri_alloc.exit:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call.i65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.39, i32 noundef %34) #10
  br label %cleanup

do.end:                                           ; preds = %cros_ec_spi_devm_high_pri_alloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end23:                                         ; preds = %cros_ec_spi_devm_high_pri_alloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 @device_init_wakeup(ptr noundef %spi, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end, %cros_ec_spi_devm_high_pri_alloc.exit, %cros_ec_spi_devm_high_pri_alloc.exit.thread71, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ 0, %if.end23 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %34, %cros_ec_spi_devm_high_pri_alloc.exit ], [ %call.i.i, %cros_ec_spi_devm_high_pri_alloc.exit.thread71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @cros_ec_unregister(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_cmd_xfer_spi(ptr noundef %ec_dev, ptr noundef %ec_msg) #2 align 64 {
entry:
  %params.i = alloca %struct.cros_ec_xfer_work_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %params.i) #7
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %params.i, ptr %params.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %params.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %params.i, ptr %prev.i, align 4
  %func.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 1
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cros_ec_xfer_high_pri_work, ptr %func.i, align 4
  %worker.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 2
  %5 = ptrtoint ptr %worker.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %worker.i, align 4
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 3
  %6 = ptrtoint ptr %canceling.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %canceling.i, align 4
  %fn5.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 1
  %7 = ptrtoint ptr %fn5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @do_cros_ec_cmd_xfer_spi, ptr %fn5.i, align 4
  %ec_dev6.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 2
  %8 = ptrtoint ptr %ec_dev6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ec_dev, ptr %ec_dev6.i, align 4
  %ec_msg7.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 3
  %9 = ptrtoint ptr %ec_msg7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ec_msg, ptr %ec_msg7.i, align 4
  %ret.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 4
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret.i, align 4
  %high_pri_worker.i = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %high_pri_worker.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %high_pri_worker.i, align 8
  %call.i = call zeroext i1 @kthread_queue_work(ptr noundef %12, ptr noundef nonnull %params.i) #7
  call void @kthread_flush_work(ptr noundef nonnull %params.i) #7
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %params.i) #7
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_pkt_xfer_spi(ptr noundef %ec_dev, ptr noundef %ec_msg) #2 align 64 {
entry:
  %params.i = alloca %struct.cros_ec_xfer_work_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %params.i) #7
  %2 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %params.i, ptr %params.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %params.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %params.i, ptr %prev.i, align 4
  %func.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 1
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cros_ec_xfer_high_pri_work, ptr %func.i, align 4
  %worker.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 2
  %5 = ptrtoint ptr %worker.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %worker.i, align 4
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %params.i, i32 0, i32 3
  %6 = ptrtoint ptr %canceling.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %canceling.i, align 4
  %fn5.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 1
  %7 = ptrtoint ptr %fn5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @do_cros_ec_pkt_xfer_spi, ptr %fn5.i, align 4
  %ec_dev6.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 2
  %8 = ptrtoint ptr %ec_dev6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ec_dev, ptr %ec_dev6.i, align 4
  %ec_msg7.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 3
  %9 = ptrtoint ptr %ec_msg7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ec_msg, ptr %ec_msg7.i, align 4
  %ret.i = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %params.i, i32 0, i32 4
  %10 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ret.i, align 4
  %high_pri_worker.i = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %high_pri_worker.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %high_pri_worker.i, align 8
  %call.i = call zeroext i1 @kthread_queue_work(ptr noundef %12, ptr noundef nonnull %params.i) #7
  call void @kthread_flush_work(ptr noundef nonnull %params.i) #7
  %13 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %params.i) #7
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_cros_ec_cmd_xfer_spi(ptr noundef %ec_dev, ptr noundef %ec_msg) #2 align 64 {
entry:
  %trans = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %trans) #7
  %2 = call ptr @memset(ptr %trans, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %3 = call ptr @memset(ptr %msg, i32 255, i32 56)
  %call = tail call i32 @cros_ec_prepare_tx(ptr noundef %ec_dev, ptr noundef %ec_msg) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cros_ec_cmd_xfer_spi.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_cros_ec_cmd_xfer_spi, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cros_ec_cmd_xfer_spi.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i64 @ktime_get() #7
  %last_transfer_ns = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %last_transfer_ns to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_transfer_ns, align 8
  %sub = sub i64 %call.i, %7
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %conv)
  %cmp = icmp ult i32 %conv, 200000
  br i1 %cmp, label %cond.false8.i, label %do.end.if.end8.i.i_crit_edge

do.end.if.end8.i.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

cond.false8.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 200999, %conv
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %div.i) #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.false8.i, %do.end.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3520) #11
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %call13 = tail call i32 @spi_bus_lock(ptr noundef %12) #7
  %dev14 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %dout = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 12
  %13 = getelementptr inbounds i8, ptr %trans, i32 12
  %14 = call ptr @memset(ptr %13, i32 0, i32 84)
  %15 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dout, align 8
  %17 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %trans, align 4
  %rx_buf16 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 1
  %18 = ptrtoint ptr %rx_buf16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %rx_buf16, align 4
  %len17 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 2
  %19 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %len17, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 7
  %20 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %cs_change, align 4
  %21 = getelementptr inbounds i8, ptr %msg, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i198, label %if.end12.spi_message_add_tail.exit_crit_edge

if.end12.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i198:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i198, %if.end12.spi_message_add_tail.exit_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %call19 = call i32 @spi_sync_locked(ptr noundef %32, ptr noundef nonnull %msg) #7
  %33 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call19, label %do.end45 [
    i32 0, label %for.cond.preheader
    i32 -11, label %spi_message_add_tail.exit.if.end48_crit_edge
  ]

spi_message_add_tail.exit.if.end48_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.cond.preheader:                               ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp22211 = icmp sgt i32 %call, 0
  br i1 %cmp22211, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then38_crit_edge

for.cond.preheader.if.then38_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0212 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %i.0212
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %35, label %for.inc [
    i8 -19, label %for.body.if.end48_crit_edge
    i8 -5, label %for.body.if.end48_crit_edge218
    i8 -4, label %for.body.if.end48_crit_edge219
  ]

for.body.if.end48_crit_edge219:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.body.if.end48_crit_edge218:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.if.then38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then38:                                        ; preds = %for.inc.if.then38_crit_edge, %for.cond.preheader.if.then38_crit_edge
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 3
  %37 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %insize, align 4
  %add = add i32 %38, 4
  %call39 = call fastcc i32 @cros_ec_spi_receive_response(ptr noundef %ec_dev, i32 noundef %add)
  br label %if.end48

do.end45:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %call19) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.then38, %for.body.if.end48_crit_edge, %for.body.if.end48_crit_edge218, %for.body.if.end48_crit_edge219, %spi_message_add_tail.exit.if.end48_crit_edge
  %ret.1 = phi i32 [ %call19, %do.end45 ], [ %call39, %if.then38 ], [ %call19, %spi_message_add_tail.exit.if.end48_crit_edge ], [ -11, %for.body.if.end48_crit_edge ], [ -11, %for.body.if.end48_crit_edge218 ], [ -11, %for.body.if.end48_crit_edge219 ]
  %call49 = call fastcc i32 @terminate_request(ptr noundef %ec_dev)
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %master51 = getelementptr inbounds %struct.spi_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %master51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master51, align 4
  %call52 = call i32 @spi_bus_unlock(ptr noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool53.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool53.not, i32 %call49, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp56 = icmp slt i32 %spec.select, 0
  br i1 %cmp56, label %if.end48.exit_crit_edge, label %if.end59

if.end48.exit_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end59:                                         ; preds = %if.end48
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %45 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %din, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv61 = zext i8 %48 to i32
  %result = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 4
  %49 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv61, ptr %result, align 4
  %call62 = call i32 @cros_ec_check_result(ptr noundef %ec_dev, ptr noundef %ec_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.exit_crit_edge

if.end59.exit_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end65:                                         ; preds = %if.end59
  %arrayidx66 = getelementptr i8, ptr %46, i32 1
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %51 to i32
  %insize73 = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 3
  %52 = ptrtoint ptr %insize73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %insize73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv67)
  %cmp74 = icmp ult i32 %53, %conv67
  br i1 %cmp74, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.14, i32 noundef %conv67, i32 noundef %53) #10
  br label %exit

if.end82:                                         ; preds = %if.end65
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %46, align 1
  %conv69 = zext i8 %57 to i32
  %add72 = add nuw nsw i32 %conv69, %conv67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp84213.not = icmp eq i8 %51, 0
  br i1 %cmp84213.not, label %if.end82.for.end100_crit_edge, label %for.body86.lr.ph

if.end82.for.end100_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.body86.lr.ph:                                 ; preds = %if.end82
  %58 = ptrtoint ptr %insize73 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %insize73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool92.not = icmp eq i32 %59, 0
  br label %for.body86

for.body86:                                       ; preds = %for.inc98.for.body86_crit_edge, %for.body86.lr.ph
  %sum.0216 = phi i32 [ %add72, %for.body86.lr.ph ], [ %add90, %for.inc98.for.body86_crit_edge ]
  %i.1214 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc99, %for.inc98.for.body86_crit_edge ]
  %add87 = add nuw nsw i32 %i.1214, 2
  %arrayidx88 = getelementptr i8, ptr %46, i32 %add87
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %61 to i32
  %add90 = add i32 %sum.0216, %conv89
  br i1 %tobool92.not, label %for.body86.for.inc98_crit_edge, label %if.then93

for.body86.for.inc98_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc98

if.then93:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx96 = getelementptr %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 5, i32 %i.1214
  %62 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx96, align 1
  br label %for.inc98

for.inc98:                                        ; preds = %if.then93, %for.body86.for.inc98_crit_edge
  %inc99 = add nuw nsw i32 %i.1214, 1
  %exitcond217.not = icmp eq i32 %inc99, %conv67
  br i1 %exitcond217.not, label %for.inc98.for.end100_crit_edge, label %for.inc98.for.body86_crit_edge

for.inc98.for.body86_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.inc98.for.end100_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.end100:                                       ; preds = %for.inc98.for.end100_crit_edge, %if.end82.for.end100_crit_edge
  %sum.0.lcssa = phi i32 [ %add72, %if.end82.for.end100_crit_edge ], [ %add90, %for.inc98.for.end100_crit_edge ]
  %and = and i32 %sum.0.lcssa, 255
  %add103 = add nuw nsw i32 %conv67, 2
  %arrayidx104 = getelementptr i8, ptr %46, i32 %add103
  %63 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv105)
  %cmp106.not = icmp eq i32 %and, %conv105
  br i1 %cmp106.not, label %for.end100.exit_crit_edge, label %do.end111

for.end100.exit_crit_edge:                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end111:                                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.18, i32 noundef %and, i32 noundef %conv105) #10
  br label %exit

exit:                                             ; preds = %do.end111, %for.end100.exit_crit_edge, %do.end79, %if.end59.exit_crit_edge, %if.end48.exit_crit_edge
  %ret.3 = phi i32 [ %spec.select, %if.end48.exit_crit_edge ], [ %call62, %if.end59.exit_crit_edge ], [ -28, %do.end79 ], [ -74, %do.end111 ], [ %conv67, %for.end100.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 1
  %67 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %68)
  %cmp117 = icmp eq i32 %68, 210
  br i1 %cmp117, label %if.then119, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then119:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %exit.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %ret.3, %if.then119 ], [ %ret.3, %exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %trans) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_xfer_high_pri_work(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fn = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fn, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  %ec_msg = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %ec_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_msg, align 4
  %call = tail call i32 %1(ptr noundef %3, ptr noundef %5) #7
  %ret = getelementptr inbounds %struct.cros_ec_xfer_work_params, ptr %work, i32 0, i32 4
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %ret, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_prepare_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_ec_spi_receive_response(ptr nocapture noundef readonly %ec_dev, i32 noundef %need_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 13
  %0 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %do.body2, label %do.end7, !prof !123

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 308, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 20
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %din, align 4
  %call8 = tail call fastcc i32 @receive_n_bytes(ptr noundef %ec_dev, ptr noundef %5, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %while.cond.cleanup156_crit_edge, label %if.end11

while.cond.cleanup156_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup156

if.end11:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %din, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %9)
  %cmp14 = icmp eq i8 %9, -20
  br i1 %cmp14, label %if.end11.do.body17_crit_edge, label %for.inc

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body17:                                        ; preds = %for.inc.30.do.body17_crit_edge, %for.inc.29.do.body17_crit_edge, %for.inc.28.do.body17_crit_edge, %for.inc.27.do.body17_crit_edge, %for.inc.26.do.body17_crit_edge, %for.inc.25.do.body17_crit_edge, %for.inc.24.do.body17_crit_edge, %for.inc.23.do.body17_crit_edge, %for.inc.22.do.body17_crit_edge, %for.inc.21.do.body17_crit_edge, %for.inc.20.do.body17_crit_edge, %for.inc.19.do.body17_crit_edge, %for.inc.18.do.body17_crit_edge, %for.inc.17.do.body17_crit_edge, %for.inc.16.do.body17_crit_edge, %for.inc.15.do.body17_crit_edge, %for.inc.14.do.body17_crit_edge, %for.inc.13.do.body17_crit_edge, %for.inc.12.do.body17_crit_edge, %for.inc.11.do.body17_crit_edge, %for.inc.10.do.body17_crit_edge, %for.inc.9.do.body17_crit_edge, %for.inc.8.do.body17_crit_edge, %for.inc.7.do.body17_crit_edge, %for.inc.6.do.body17_crit_edge, %for.inc.5.do.body17_crit_edge, %for.inc.4.do.body17_crit_edge, %for.inc.3.do.body17_crit_edge, %for.inc.2.do.body17_crit_edge, %for.inc.1.do.body17_crit_edge, %for.inc.do.body17_crit_edge, %if.end11.do.body17_crit_edge
  %ptr.1252.lcssa = phi ptr [ %7, %if.end11.do.body17_crit_edge ], [ %incdec.ptr, %for.inc.do.body17_crit_edge ], [ %incdec.ptr.1, %for.inc.1.do.body17_crit_edge ], [ %incdec.ptr.2, %for.inc.2.do.body17_crit_edge ], [ %incdec.ptr.3, %for.inc.3.do.body17_crit_edge ], [ %incdec.ptr.4, %for.inc.4.do.body17_crit_edge ], [ %incdec.ptr.5, %for.inc.5.do.body17_crit_edge ], [ %incdec.ptr.6, %for.inc.6.do.body17_crit_edge ], [ %incdec.ptr.7, %for.inc.7.do.body17_crit_edge ], [ %incdec.ptr.8, %for.inc.8.do.body17_crit_edge ], [ %incdec.ptr.9, %for.inc.9.do.body17_crit_edge ], [ %incdec.ptr.10, %for.inc.10.do.body17_crit_edge ], [ %incdec.ptr.11, %for.inc.11.do.body17_crit_edge ], [ %incdec.ptr.12, %for.inc.12.do.body17_crit_edge ], [ %incdec.ptr.13, %for.inc.13.do.body17_crit_edge ], [ %incdec.ptr.14, %for.inc.14.do.body17_crit_edge ], [ %incdec.ptr.15, %for.inc.15.do.body17_crit_edge ], [ %incdec.ptr.16, %for.inc.16.do.body17_crit_edge ], [ %incdec.ptr.17, %for.inc.17.do.body17_crit_edge ], [ %incdec.ptr.18, %for.inc.18.do.body17_crit_edge ], [ %incdec.ptr.19, %for.inc.19.do.body17_crit_edge ], [ %incdec.ptr.20, %for.inc.20.do.body17_crit_edge ], [ %incdec.ptr.21, %for.inc.21.do.body17_crit_edge ], [ %incdec.ptr.22, %for.inc.22.do.body17_crit_edge ], [ %incdec.ptr.23, %for.inc.23.do.body17_crit_edge ], [ %incdec.ptr.24, %for.inc.24.do.body17_crit_edge ], [ %incdec.ptr.25, %for.inc.25.do.body17_crit_edge ], [ %incdec.ptr.26, %for.inc.26.do.body17_crit_edge ], [ %incdec.ptr.27, %for.inc.27.do.body17_crit_edge ], [ %incdec.ptr.28, %for.inc.28.do.body17_crit_edge ], [ %incdec.ptr.29, %for.inc.29.do.body17_crit_edge ], [ %incdec.ptr.30, %for.inc.30.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_response, %cleanup.thread230)) #7
          to label %cleanup [label %cleanup.thread230], !srcloc !122

cleanup.thread230:                                ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ptr.1252.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug242, ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %sub.ptr.sub) #7
  br label %while.end

for.inc:                                          ; preds = %if.end11
  %incdec.ptr = getelementptr i8, ptr %7, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %15)
  %cmp14.1 = icmp eq i8 %15, -20
  br i1 %cmp14.1, label %for.inc.do.body17_crit_edge, label %for.inc.1

for.inc.do.body17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i8, ptr %7, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %17)
  %cmp14.2 = icmp eq i8 %17, -20
  br i1 %cmp14.2, label %for.inc.1.do.body17_crit_edge, label %for.inc.2

for.inc.1.do.body17_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i8, ptr %7, i32 3
  %18 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %19)
  %cmp14.3 = icmp eq i8 %19, -20
  br i1 %cmp14.3, label %for.inc.2.do.body17_crit_edge, label %for.inc.3

for.inc.2.do.body17_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i8, ptr %7, i32 4
  %20 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %21)
  %cmp14.4 = icmp eq i8 %21, -20
  br i1 %cmp14.4, label %for.inc.3.do.body17_crit_edge, label %for.inc.4

for.inc.3.do.body17_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr i8, ptr %7, i32 5
  %22 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %23)
  %cmp14.5 = icmp eq i8 %23, -20
  br i1 %cmp14.5, label %for.inc.4.do.body17_crit_edge, label %for.inc.5

for.inc.4.do.body17_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr i8, ptr %7, i32 6
  %24 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %25)
  %cmp14.6 = icmp eq i8 %25, -20
  br i1 %cmp14.6, label %for.inc.5.do.body17_crit_edge, label %for.inc.6

for.inc.5.do.body17_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr i8, ptr %7, i32 7
  %26 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %27)
  %cmp14.7 = icmp eq i8 %27, -20
  br i1 %cmp14.7, label %for.inc.6.do.body17_crit_edge, label %for.inc.7

for.inc.6.do.body17_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr i8, ptr %7, i32 8
  %28 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %29)
  %cmp14.8 = icmp eq i8 %29, -20
  br i1 %cmp14.8, label %for.inc.7.do.body17_crit_edge, label %for.inc.8

for.inc.7.do.body17_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr i8, ptr %7, i32 9
  %30 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %31)
  %cmp14.9 = icmp eq i8 %31, -20
  br i1 %cmp14.9, label %for.inc.8.do.body17_crit_edge, label %for.inc.9

for.inc.8.do.body17_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr i8, ptr %7, i32 10
  %32 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %33)
  %cmp14.10 = icmp eq i8 %33, -20
  br i1 %cmp14.10, label %for.inc.9.do.body17_crit_edge, label %for.inc.10

for.inc.9.do.body17_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr i8, ptr %7, i32 11
  %34 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %35)
  %cmp14.11 = icmp eq i8 %35, -20
  br i1 %cmp14.11, label %for.inc.10.do.body17_crit_edge, label %for.inc.11

for.inc.10.do.body17_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr i8, ptr %7, i32 12
  %36 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %37)
  %cmp14.12 = icmp eq i8 %37, -20
  br i1 %cmp14.12, label %for.inc.11.do.body17_crit_edge, label %for.inc.12

for.inc.11.do.body17_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr i8, ptr %7, i32 13
  %38 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %39)
  %cmp14.13 = icmp eq i8 %39, -20
  br i1 %cmp14.13, label %for.inc.12.do.body17_crit_edge, label %for.inc.13

for.inc.12.do.body17_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr i8, ptr %7, i32 14
  %40 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %41)
  %cmp14.14 = icmp eq i8 %41, -20
  br i1 %cmp14.14, label %for.inc.13.do.body17_crit_edge, label %for.inc.14

for.inc.13.do.body17_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr i8, ptr %7, i32 15
  %42 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %43)
  %cmp14.15 = icmp eq i8 %43, -20
  br i1 %cmp14.15, label %for.inc.14.do.body17_crit_edge, label %for.inc.15

for.inc.14.do.body17_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.15:                                       ; preds = %for.inc.14
  %incdec.ptr.15 = getelementptr i8, ptr %7, i32 16
  %44 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %45)
  %cmp14.16 = icmp eq i8 %45, -20
  br i1 %cmp14.16, label %for.inc.15.do.body17_crit_edge, label %for.inc.16

for.inc.15.do.body17_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.16:                                       ; preds = %for.inc.15
  %incdec.ptr.16 = getelementptr i8, ptr %7, i32 17
  %46 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %47)
  %cmp14.17 = icmp eq i8 %47, -20
  br i1 %cmp14.17, label %for.inc.16.do.body17_crit_edge, label %for.inc.17

for.inc.16.do.body17_crit_edge:                   ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.17:                                       ; preds = %for.inc.16
  %incdec.ptr.17 = getelementptr i8, ptr %7, i32 18
  %48 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %49)
  %cmp14.18 = icmp eq i8 %49, -20
  br i1 %cmp14.18, label %for.inc.17.do.body17_crit_edge, label %for.inc.18

for.inc.17.do.body17_crit_edge:                   ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.18:                                       ; preds = %for.inc.17
  %incdec.ptr.18 = getelementptr i8, ptr %7, i32 19
  %50 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %51)
  %cmp14.19 = icmp eq i8 %51, -20
  br i1 %cmp14.19, label %for.inc.18.do.body17_crit_edge, label %for.inc.19

for.inc.18.do.body17_crit_edge:                   ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.19:                                       ; preds = %for.inc.18
  %incdec.ptr.19 = getelementptr i8, ptr %7, i32 20
  %52 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %53)
  %cmp14.20 = icmp eq i8 %53, -20
  br i1 %cmp14.20, label %for.inc.19.do.body17_crit_edge, label %for.inc.20

for.inc.19.do.body17_crit_edge:                   ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.20:                                       ; preds = %for.inc.19
  %incdec.ptr.20 = getelementptr i8, ptr %7, i32 21
  %54 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %55)
  %cmp14.21 = icmp eq i8 %55, -20
  br i1 %cmp14.21, label %for.inc.20.do.body17_crit_edge, label %for.inc.21

for.inc.20.do.body17_crit_edge:                   ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.21:                                       ; preds = %for.inc.20
  %incdec.ptr.21 = getelementptr i8, ptr %7, i32 22
  %56 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %57)
  %cmp14.22 = icmp eq i8 %57, -20
  br i1 %cmp14.22, label %for.inc.21.do.body17_crit_edge, label %for.inc.22

for.inc.21.do.body17_crit_edge:                   ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.22:                                       ; preds = %for.inc.21
  %incdec.ptr.22 = getelementptr i8, ptr %7, i32 23
  %58 = ptrtoint ptr %incdec.ptr.22 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %59)
  %cmp14.23 = icmp eq i8 %59, -20
  br i1 %cmp14.23, label %for.inc.22.do.body17_crit_edge, label %for.inc.23

for.inc.22.do.body17_crit_edge:                   ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.23:                                       ; preds = %for.inc.22
  %incdec.ptr.23 = getelementptr i8, ptr %7, i32 24
  %60 = ptrtoint ptr %incdec.ptr.23 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %61)
  %cmp14.24 = icmp eq i8 %61, -20
  br i1 %cmp14.24, label %for.inc.23.do.body17_crit_edge, label %for.inc.24

for.inc.23.do.body17_crit_edge:                   ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.24:                                       ; preds = %for.inc.23
  %incdec.ptr.24 = getelementptr i8, ptr %7, i32 25
  %62 = ptrtoint ptr %incdec.ptr.24 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %63)
  %cmp14.25 = icmp eq i8 %63, -20
  br i1 %cmp14.25, label %for.inc.24.do.body17_crit_edge, label %for.inc.25

for.inc.24.do.body17_crit_edge:                   ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.25:                                       ; preds = %for.inc.24
  %incdec.ptr.25 = getelementptr i8, ptr %7, i32 26
  %64 = ptrtoint ptr %incdec.ptr.25 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %65)
  %cmp14.26 = icmp eq i8 %65, -20
  br i1 %cmp14.26, label %for.inc.25.do.body17_crit_edge, label %for.inc.26

for.inc.25.do.body17_crit_edge:                   ; preds = %for.inc.25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.26:                                       ; preds = %for.inc.25
  %incdec.ptr.26 = getelementptr i8, ptr %7, i32 27
  %66 = ptrtoint ptr %incdec.ptr.26 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %67)
  %cmp14.27 = icmp eq i8 %67, -20
  br i1 %cmp14.27, label %for.inc.26.do.body17_crit_edge, label %for.inc.27

for.inc.26.do.body17_crit_edge:                   ; preds = %for.inc.26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.27:                                       ; preds = %for.inc.26
  %incdec.ptr.27 = getelementptr i8, ptr %7, i32 28
  %68 = ptrtoint ptr %incdec.ptr.27 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr.27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %69)
  %cmp14.28 = icmp eq i8 %69, -20
  br i1 %cmp14.28, label %for.inc.27.do.body17_crit_edge, label %for.inc.28

for.inc.27.do.body17_crit_edge:                   ; preds = %for.inc.27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.28:                                       ; preds = %for.inc.27
  %incdec.ptr.28 = getelementptr i8, ptr %7, i32 29
  %70 = ptrtoint ptr %incdec.ptr.28 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr.28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %71)
  %cmp14.29 = icmp eq i8 %71, -20
  br i1 %cmp14.29, label %for.inc.28.do.body17_crit_edge, label %for.inc.29

for.inc.28.do.body17_crit_edge:                   ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.29:                                       ; preds = %for.inc.28
  %incdec.ptr.29 = getelementptr i8, ptr %7, i32 30
  %72 = ptrtoint ptr %incdec.ptr.29 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %73)
  %cmp14.30 = icmp eq i8 %73, -20
  br i1 %cmp14.30, label %for.inc.29.do.body17_crit_edge, label %for.inc.30

for.inc.29.do.body17_crit_edge:                   ; preds = %for.inc.29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.30:                                       ; preds = %for.inc.29
  %incdec.ptr.30 = getelementptr i8, ptr %7, i32 31
  %74 = ptrtoint ptr %incdec.ptr.30 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %incdec.ptr.30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %75)
  %cmp14.31 = icmp eq i8 %75, -20
  br i1 %cmp14.31, label %for.inc.30.do.body17_crit_edge, label %for.inc.31

for.inc.30.do.body17_crit_edge:                   ; preds = %for.inc.30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.31:                                       ; preds = %for.inc.30
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %do.end41, label %for.inc.31.cleanup_crit_edge

for.inc.31.cleanup_crit_edge:                     ; preds = %for.inc.31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %for.inc.31
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %76 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.22) #10
  br label %cleanup156

cleanup:                                          ; preds = %for.inc.31.cleanup_crit_edge, %do.body17
  %ptr.1244 = phi ptr [ %add.ptr, %for.inc.31.cleanup_crit_edge ], [ %ptr.1252.lcssa, %do.body17 ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %for.inc.31.cleanup_crit_edge ], [ 9, %do.body17 ]
  %78 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup156_crit_edge [
    i32 0, label %cleanup.while.cond_crit_edge
    i32 9, label %cleanup.while.end_crit_edge
  ]

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup.cleanup156_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup156

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread230
  %ptr.1243 = phi ptr [ %ptr.1252.lcssa, %cleanup.thread230 ], [ %ptr.1244, %cleanup.while.end_crit_edge ]
  %incdec.ptr44 = getelementptr i8, ptr %ptr.1243, i32 1
  %sub.ptr.lhs.cast45 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast46 = ptrtoint ptr %incdec.ptr44 to i32
  %sub.ptr.sub47 = sub i32 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub47)
  %cmp49 = icmp slt i32 %sub.ptr.sub47, 0
  br i1 %cmp49, label %while.end.do.body61_crit_edge, label %lor.rhs, !prof !123

while.end.do.body61_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

lor.rhs:                                          ; preds = %while.end
  %79 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub47, i32 %80)
  %cmp52 = icmp sgt i32 %sub.ptr.sub47, %80
  br i1 %cmp52, label %lor.rhs.do.body61_crit_edge, label %do.end69, !prof !123

lor.rhs.do.body61_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

do.body61:                                        ; preds = %lor.rhs.do.body61_crit_edge, %while.end.do.body61_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #7, !srcloc !125
  unreachable

do.end69:                                         ; preds = %lor.rhs
  %81 = tail call i32 @llvm.smin.i32(i32 %sub.ptr.sub47, i32 %need_len)
  %82 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %din, align 4
  %84 = call ptr @memmove(ptr %83, ptr %incdec.ptr44, i32 %81)
  %85 = load ptr, ptr %din, align 4
  %add.ptr75 = getelementptr i8, ptr %85, i32 %81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_response, %if.then88)) #7
          to label %do.end92 [label %if.then88], !srcloc !122

if.then88:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %dev89 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %86 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug245, ptr noundef %87, ptr noundef nonnull @.str.24, i32 noundef %need_len, i32 noundef %81) #7
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.end69
  %sub93 = sub i32 %need_len, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93)
  %cmp95253 = icmp sgt i32 %sub93, 0
  br i1 %cmp95253, label %while.body97.lr.ph, label %do.end92.do.body135_crit_edge

do.end92.do.body135_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

while.body97.lr.ph:                               ; preds = %do.end92
  %dev118 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  br label %while.body97

while.body97:                                     ; preds = %if.end130.while.body97_crit_edge, %while.body97.lr.ph
  %need_len.addr.0255 = phi i32 [ %sub93, %while.body97.lr.ph ], [ %sub133, %if.end130.while.body97_crit_edge ]
  %ptr.3254 = phi ptr [ %add.ptr75, %while.body97.lr.ph ], [ %add.ptr132, %if.end130.while.body97_crit_edge ]
  %88 = tail call i32 @llvm.umin.i32(i32 %need_len.addr.0255, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_response, %if.then117)) #7
          to label %do.end125 [label %if.then117], !srcloc !122

if.then117:                                       ; preds = %while.body97
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev118, align 4
  %91 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast120 = ptrtoint ptr %ptr.3254 to i32
  %sub.ptr.rhs.cast121 = ptrtoint ptr %92 to i32
  %sub.ptr.sub122 = sub i32 %sub.ptr.lhs.cast120, %sub.ptr.rhs.cast121
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug248, ptr noundef %90, ptr noundef nonnull @.str.25, i32 noundef %88, i32 noundef %need_len.addr.0255, i32 noundef %sub.ptr.sub122) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then117, %while.body97
  %call126 = tail call fastcc i32 @receive_n_bytes(ptr noundef %ec_dev, ptr noundef %ptr.3254, i32 noundef %88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %do.end125.cleanup156_crit_edge, label %if.end130

do.end125.cleanup156_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup156

if.end130:                                        ; preds = %do.end125
  %add.ptr132 = getelementptr i8, ptr %ptr.3254, i32 %88
  %sub133 = sub nsw i32 %need_len.addr.0255, %88
  %cmp95 = icmp sgt i32 %sub133, 0
  br i1 %cmp95, label %if.end130.while.body97_crit_edge, label %if.end130.do.body135_crit_edge

if.end130.do.body135_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

if.end130.while.body97_crit_edge:                 ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body97

do.body135:                                       ; preds = %if.end130.do.body135_crit_edge, %do.end92.do.body135_crit_edge
  %ptr.3.lcssa = phi ptr [ %add.ptr75, %do.end92.do.body135_crit_edge ], [ %add.ptr132, %if.end130.do.body135_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_response, %if.then147)) #7
          to label %cleanup156 [label %if.then147], !srcloc !122

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %dev148 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %93 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev148, align 4
  %95 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast150 = ptrtoint ptr %ptr.3.lcssa to i32
  %sub.ptr.rhs.cast151 = ptrtoint ptr %96 to i32
  %sub.ptr.sub152 = sub i32 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug249, ptr noundef %94, ptr noundef nonnull @.str.27, i32 noundef %sub.ptr.sub152) #7
  br label %cleanup156

cleanup156:                                       ; preds = %if.then147, %do.body135, %do.end125.cleanup156_crit_edge, %cleanup.cleanup156_crit_edge, %do.end41, %while.cond.cleanup156_crit_edge
  %retval.2 = phi i32 [ 0, %if.then147 ], [ 0, %do.body135 ], [ -110, %do.end41 ], [ %call126, %do.end125.cleanup156_crit_edge ], [ %call8, %cleanup.cleanup156_crit_edge ], [ %call8, %while.cond.cleanup156_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @terminate_request(ptr nocapture noundef readonly %ec_dev) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %trans = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %trans) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %8 = call ptr @memset(ptr %trans, i32 0, i32 96)
  %end_of_msg_delay = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %end_of_msg_delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end_of_msg_delay, align 4
  %conv = trunc i32 %10 to i16
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 9
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %delay, align 2
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call = call i32 @spi_sync_locked(ptr noundef %17, ptr noundef nonnull %msg) #7
  %call.i = call i64 @ktime_get() #7
  %last_transfer_ns = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %last_transfer_ns to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i, ptr %last_transfer_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %spi_message_add_tail.exit.if.end_crit_edge

spi_message_add_tail.exit.if.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %spi_message_add_tail.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %trans) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_check_result(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @receive_n_bytes(ptr nocapture noundef readonly %ec_dev, ptr noundef %buf, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  %trans = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %trans) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %2 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, %n
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 13
  %4 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp sgt i32 %add, %5
  br i1 %cmp, label %do.body2, label %do.end7, !prof !123

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #7, !srcloc !126
  unreachable

do.end7:                                          ; preds = %entry
  %6 = call ptr @memset(ptr %trans, i32 0, i32 96)
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 7
  %7 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %cs_change, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n, ptr %len, align 4
  %10 = getelementptr inbounds i8, ptr %msg, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end7.spi_message_add_tail.exit_crit_edge

do.end7.spi_message_add_tail.exit_crit_edge:      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end7.spi_message_add_tail.exit_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call = call i32 @spi_sync_locked(ptr noundef %21, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %do.end12, label %spi_message_add_tail.exit.if.end13_crit_edge

spi_message_add_tail.exit.if.end13_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end12:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %call) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %spi_message_add_tail.exit.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %trans) #7
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_cros_ec_pkt_xfer_spi(ptr noundef %ec_dev, ptr noundef %ec_msg) #2 align 64 {
entry:
  %trans = alloca %struct.spi_transfer, align 4
  %trans_delay = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %trans) #7
  %2 = call ptr @memset(ptr %trans, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %trans_delay) #7
  %3 = call ptr @memset(ptr %trans_delay, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %4 = call ptr @memset(ptr %msg, i32 255, i32 56)
  %call = tail call i32 @cros_ec_prepare_tx(ptr noundef %ec_dev, ptr noundef %ec_msg) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_cros_ec_pkt_xfer_spi.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_cros_ec_pkt_xfer_spi, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @do_cros_ec_pkt_xfer_spi.__UNIQUE_ID_ddebug250, ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i64 @ktime_get() #7
  %last_transfer_ns = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %last_transfer_ns to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %last_transfer_ns, align 8
  %sub = sub i64 %call.i, %8
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %conv)
  %cmp = icmp ult i32 %conv, 200000
  br i1 %cmp, label %cond.false8.i, label %do.end.if.end8.i.i_crit_edge

do.end.if.end8.i.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

cond.false8.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 200999, %conv
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i) #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cond.false8.i, %do.end.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3520) #11
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8.i.i
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call13 = tail call i32 @spi_bus_lock(ptr noundef %13) #7
  %14 = getelementptr inbounds i8, ptr %msg, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %start_of_msg_delay = getelementptr inbounds %struct.cros_ec_spi, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %start_of_msg_delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start_of_msg_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end12.if.end20_crit_edge, label %if.then15

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  %22 = call ptr @memset(ptr %trans_delay, i32 0, i32 96)
  %23 = ptrtoint ptr %start_of_msg_delay to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start_of_msg_delay, align 8
  %conv17 = trunc i32 %24 to i16
  %delay18 = getelementptr inbounds %struct.spi_transfer, ptr %trans_delay, i32 0, i32 9
  %25 = ptrtoint ptr %delay18 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv17, ptr %delay18, align 2
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %trans_delay, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i190, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i.i.i190:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %trans_delay, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i.i190, %if.then15.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %30 = getelementptr inbounds i8, ptr %trans, i32 12
  %31 = call ptr @memset(ptr %30, i32 0, i32 84)
  %dout = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 12
  %32 = ptrtoint ptr %dout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dout, align 8
  %34 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %trans, align 4
  %rx_buf21 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 1
  %35 = ptrtoint ptr %rx_buf21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i, ptr %rx_buf21, align 4
  %len22 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 2
  %36 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call, ptr %len22, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 7
  %37 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 64, ptr %cs_change, align 4
  %transfer_list.i191 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i193 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i191, ptr noundef %39, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i193, label %if.end.i.i.i195, label %if.end20.spi_message_add_tail.exit196_crit_edge

if.end20.spi_message_add_tail.exit196_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit196

if.end.i.i.i195:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i191, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i191 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg, ptr %transfer_list.i191, align 4
  %prev3.i.i.i194 = getelementptr inbounds %struct.spi_transfer, ptr %trans, i32 0, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i194 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i194, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i191, ptr %39, align 4
  br label %spi_message_add_tail.exit196

spi_message_add_tail.exit196:                     ; preds = %if.end.i.i.i195, %if.end20.spi_message_add_tail.exit196_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %call24 = call i32 @spi_sync_locked(ptr noundef %45, ptr noundef nonnull %msg) #7
  %46 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call24, label %do.end50 [
    i32 0, label %for.cond.preheader
    i32 -11, label %spi_message_add_tail.exit196.if.end53_crit_edge
  ]

spi_message_add_tail.exit196.if.end53_crit_edge:  ; preds = %spi_message_add_tail.exit196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.cond.preheader:                               ; preds = %spi_message_add_tail.exit196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp27209 = icmp sgt i32 %call, 0
  br i1 %cmp27209, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.then43_crit_edge

for.cond.preheader.if.then43_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0210 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %i.0210
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %48, label %for.inc [
    i8 -19, label %for.body.if.end53_crit_edge
    i8 -5, label %for.body.if.end53_crit_edge218
    i8 -4, label %for.body.if.end53_crit_edge219
  ]

for.body.if.end53_crit_edge219:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.body.if.end53_crit_edge218:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0210, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.if.then43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then43:                                        ; preds = %for.inc.if.then43_crit_edge, %for.cond.preheader.if.then43_crit_edge
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 3
  %50 = ptrtoint ptr %insize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %insize, align 4
  %add = add i32 %51, 8
  %call44 = call fastcc i32 @cros_ec_spi_receive_packet(ptr noundef %ec_dev, i32 noundef %add)
  br label %if.end53

do.end50:                                         ; preds = %spi_message_add_tail.exit196
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %52 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.12, i32 noundef %call24) #10
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.then43, %for.body.if.end53_crit_edge, %for.body.if.end53_crit_edge218, %for.body.if.end53_crit_edge219, %spi_message_add_tail.exit196.if.end53_crit_edge
  %ret.1 = phi i32 [ %call24, %do.end50 ], [ %call44, %if.then43 ], [ %call24, %spi_message_add_tail.exit196.if.end53_crit_edge ], [ -11, %for.body.if.end53_crit_edge ], [ -11, %for.body.if.end53_crit_edge218 ], [ -11, %for.body.if.end53_crit_edge219 ]
  %call54 = call fastcc i32 @terminate_request(ptr noundef %ec_dev)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %master56 = getelementptr inbounds %struct.spi_device, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %master56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master56, align 4
  %call57 = call i32 @spi_bus_unlock(ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool58.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool58.not, i32 %call54, i32 %ret.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp61 = icmp slt i32 %spec.select, 0
  br i1 %cmp61, label %if.end53.exit_crit_edge, label %if.end64

if.end53.exit_crit_edge:                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end64:                                         ; preds = %if.end53
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  %58 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %din, align 4
  %result = getelementptr %struct.ec_host_response, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %result, align 1
  %conv65 = zext i16 %61 to i32
  %result66 = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 4
  %62 = ptrtoint ptr %result66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv65, ptr %result66, align 4
  %call67 = call i32 @cros_ec_check_result(ptr noundef %ec_dev, ptr noundef %ec_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end64.exit_crit_edge

if.end64.exit_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end70:                                         ; preds = %if.end64
  %data_len = getelementptr %struct.ec_host_response, ptr %59, i32 0, i32 3
  %63 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %data_len, align 1
  %conv71 = zext i16 %64 to i32
  %insize72 = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 3
  %65 = ptrtoint ptr %insize72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %insize72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %conv71)
  %cmp73 = icmp ult i32 %66, %conv71
  br i1 %cmp73, label %do.end78, label %for.body85.preheader

for.body85.preheader:                             ; preds = %if.end70
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %59, align 1
  %arrayidx86.1 = getelementptr i8, ptr %59, i32 1
  %69 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx86.1, align 1
  %add89.1 = add i8 %70, %68
  %71 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %result, align 1
  %add89.2 = add i8 %72, %add89.1
  %arrayidx86.3 = getelementptr i8, ptr %59, i32 3
  %73 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx86.3, align 1
  %add89.3 = add i8 %74, %add89.2
  %75 = ptrtoint ptr %data_len to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data_len, align 1
  %add89.4 = add i8 %76, %add89.3
  %arrayidx86.5 = getelementptr i8, ptr %59, i32 5
  %77 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx86.5, align 1
  %add89.5 = add i8 %78, %add89.4
  %arrayidx86.6 = getelementptr i8, ptr %59, i32 6
  %79 = ptrtoint ptr %arrayidx86.6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx86.6, align 1
  %add89.6 = add i8 %80, %add89.5
  %arrayidx86.7 = getelementptr i8, ptr %59, i32 7
  %81 = ptrtoint ptr %arrayidx86.7 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx86.7, align 1
  %add89.7 = add i8 %82, %add89.6
  %data = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %59, i32 8
  %83 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %conv71)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp95213.not = icmp eq i16 %64, 0
  br i1 %cmp95213.not, label %for.body85.preheader.for.end106_crit_edge, label %for.body85.preheader.for.body97_crit_edge

for.body85.preheader.for.body97_crit_edge:        ; preds = %for.body85.preheader
  br label %for.body97

for.body85.preheader.for.end106_crit_edge:        ; preds = %for.body85.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end106

do.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %dev79 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %84 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev79, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.14, i32 noundef %conv71, i32 noundef %66) #10
  br label %exit

for.body97:                                       ; preds = %for.body97.for.body97_crit_edge, %for.body85.preheader.for.body97_crit_edge
  %sum.1215 = phi i8 [ %add102, %for.body97.for.body97_crit_edge ], [ %add89.7, %for.body85.preheader.for.body97_crit_edge ]
  %i.2214 = phi i32 [ %inc105, %for.body97.for.body97_crit_edge ], [ 0, %for.body85.preheader.for.body97_crit_edge ]
  %arrayidx99 = getelementptr %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 5, i32 %i.2214
  %86 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx99, align 1
  %add102 = add i8 %87, %sum.1215
  %inc105 = add nuw nsw i32 %i.2214, 1
  %exitcond217.not = icmp eq i32 %inc105, %conv71
  br i1 %exitcond217.not, label %for.body97.for.end106_crit_edge, label %for.body97.for.body97_crit_edge

for.body97.for.body97_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97

for.body97.for.end106_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end106

for.end106:                                       ; preds = %for.body97.for.end106_crit_edge, %for.body85.preheader.for.end106_crit_edge
  %sum.1.lcssa = phi i8 [ %add89.7, %for.body85.preheader.for.end106_crit_edge ], [ %add102, %for.body97.for.end106_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sum.1.lcssa)
  %tobool107.not = icmp eq i8 %sum.1.lcssa, 0
  br i1 %tobool107.not, label %for.end106.exit_crit_edge, label %do.end111

for.end106.exit_crit_edge:                        ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end111:                                        ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #9
  %dev112 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %88 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev112, align 4
  %conv113 = zext i8 %sum.1.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.35, i32 noundef %conv113) #10
  br label %exit

exit:                                             ; preds = %do.end111, %for.end106.exit_crit_edge, %do.end78, %if.end64.exit_crit_edge, %if.end53.exit_crit_edge
  %ret.3 = phi i32 [ %spec.select, %if.end53.exit_crit_edge ], [ %call67, %if.end64.exit_crit_edge ], [ -90, %do.end78 ], [ -74, %do.end111 ], [ %conv71, %for.end106.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %command = getelementptr inbounds %struct.cros_ec_command, ptr %ec_msg, i32 0, i32 1
  %90 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %command, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %91)
  %cmp115 = icmp eq i32 %91, 210
  br i1 %cmp115, label %if.then117, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then117:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %exit.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %ret.3, %if.then117 ], [ %ret.3, %exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %trans_delay) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %trans) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_ec_spi_receive_packet(ptr nocapture noundef readonly %ec_dev, i32 noundef %need_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %din_size = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 13
  %0 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp slt i32 %1, 32
  br i1 %cmp, label %do.body2, label %do.end7, !prof !123

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #7, !srcloc !127
  unreachable

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 20
  %din = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %din, align 4
  %call8 = tail call fastcc i32 @receive_n_bytes(ptr noundef %ec_dev, ptr noundef %5, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %while.cond.cleanup174_crit_edge, label %if.end11

while.cond.cleanup174_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup174

if.end11:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %din, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %9)
  %cmp14 = icmp eq i8 %9, -20
  br i1 %cmp14, label %if.end11.do.body17_crit_edge, label %for.inc

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body17:                                        ; preds = %for.inc.30.do.body17_crit_edge, %for.inc.29.do.body17_crit_edge, %for.inc.28.do.body17_crit_edge, %for.inc.27.do.body17_crit_edge, %for.inc.26.do.body17_crit_edge, %for.inc.25.do.body17_crit_edge, %for.inc.24.do.body17_crit_edge, %for.inc.23.do.body17_crit_edge, %for.inc.22.do.body17_crit_edge, %for.inc.21.do.body17_crit_edge, %for.inc.20.do.body17_crit_edge, %for.inc.19.do.body17_crit_edge, %for.inc.18.do.body17_crit_edge, %for.inc.17.do.body17_crit_edge, %for.inc.16.do.body17_crit_edge, %for.inc.15.do.body17_crit_edge, %for.inc.14.do.body17_crit_edge, %for.inc.13.do.body17_crit_edge, %for.inc.12.do.body17_crit_edge, %for.inc.11.do.body17_crit_edge, %for.inc.10.do.body17_crit_edge, %for.inc.9.do.body17_crit_edge, %for.inc.8.do.body17_crit_edge, %for.inc.7.do.body17_crit_edge, %for.inc.6.do.body17_crit_edge, %for.inc.5.do.body17_crit_edge, %for.inc.4.do.body17_crit_edge, %for.inc.3.do.body17_crit_edge, %for.inc.2.do.body17_crit_edge, %for.inc.1.do.body17_crit_edge, %for.inc.do.body17_crit_edge, %if.end11.do.body17_crit_edge
  %ptr.1277.lcssa = phi ptr [ %7, %if.end11.do.body17_crit_edge ], [ %incdec.ptr, %for.inc.do.body17_crit_edge ], [ %incdec.ptr.1, %for.inc.1.do.body17_crit_edge ], [ %incdec.ptr.2, %for.inc.2.do.body17_crit_edge ], [ %incdec.ptr.3, %for.inc.3.do.body17_crit_edge ], [ %incdec.ptr.4, %for.inc.4.do.body17_crit_edge ], [ %incdec.ptr.5, %for.inc.5.do.body17_crit_edge ], [ %incdec.ptr.6, %for.inc.6.do.body17_crit_edge ], [ %incdec.ptr.7, %for.inc.7.do.body17_crit_edge ], [ %incdec.ptr.8, %for.inc.8.do.body17_crit_edge ], [ %incdec.ptr.9, %for.inc.9.do.body17_crit_edge ], [ %incdec.ptr.10, %for.inc.10.do.body17_crit_edge ], [ %incdec.ptr.11, %for.inc.11.do.body17_crit_edge ], [ %incdec.ptr.12, %for.inc.12.do.body17_crit_edge ], [ %incdec.ptr.13, %for.inc.13.do.body17_crit_edge ], [ %incdec.ptr.14, %for.inc.14.do.body17_crit_edge ], [ %incdec.ptr.15, %for.inc.15.do.body17_crit_edge ], [ %incdec.ptr.16, %for.inc.16.do.body17_crit_edge ], [ %incdec.ptr.17, %for.inc.17.do.body17_crit_edge ], [ %incdec.ptr.18, %for.inc.18.do.body17_crit_edge ], [ %incdec.ptr.19, %for.inc.19.do.body17_crit_edge ], [ %incdec.ptr.20, %for.inc.20.do.body17_crit_edge ], [ %incdec.ptr.21, %for.inc.21.do.body17_crit_edge ], [ %incdec.ptr.22, %for.inc.22.do.body17_crit_edge ], [ %incdec.ptr.23, %for.inc.23.do.body17_crit_edge ], [ %incdec.ptr.24, %for.inc.24.do.body17_crit_edge ], [ %incdec.ptr.25, %for.inc.25.do.body17_crit_edge ], [ %incdec.ptr.26, %for.inc.26.do.body17_crit_edge ], [ %incdec.ptr.27, %for.inc.27.do.body17_crit_edge ], [ %incdec.ptr.28, %for.inc.28.do.body17_crit_edge ], [ %incdec.ptr.29, %for.inc.29.do.body17_crit_edge ], [ %incdec.ptr.30, %for.inc.30.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_packet, %cleanup.thread255)) #7
          to label %cleanup [label %cleanup.thread255], !srcloc !122

cleanup.thread255:                                ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %ptr.1277.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %sub.ptr.sub) #7
  br label %while.end

for.inc:                                          ; preds = %if.end11
  %incdec.ptr = getelementptr i8, ptr %7, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %15)
  %cmp14.1 = icmp eq i8 %15, -20
  br i1 %cmp14.1, label %for.inc.do.body17_crit_edge, label %for.inc.1

for.inc.do.body17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i8, ptr %7, i32 2
  %16 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %17)
  %cmp14.2 = icmp eq i8 %17, -20
  br i1 %cmp14.2, label %for.inc.1.do.body17_crit_edge, label %for.inc.2

for.inc.1.do.body17_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i8, ptr %7, i32 3
  %18 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %19)
  %cmp14.3 = icmp eq i8 %19, -20
  br i1 %cmp14.3, label %for.inc.2.do.body17_crit_edge, label %for.inc.3

for.inc.2.do.body17_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i8, ptr %7, i32 4
  %20 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %21)
  %cmp14.4 = icmp eq i8 %21, -20
  br i1 %cmp14.4, label %for.inc.3.do.body17_crit_edge, label %for.inc.4

for.inc.3.do.body17_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr i8, ptr %7, i32 5
  %22 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %incdec.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %23)
  %cmp14.5 = icmp eq i8 %23, -20
  br i1 %cmp14.5, label %for.inc.4.do.body17_crit_edge, label %for.inc.5

for.inc.4.do.body17_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr i8, ptr %7, i32 6
  %24 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %25)
  %cmp14.6 = icmp eq i8 %25, -20
  br i1 %cmp14.6, label %for.inc.5.do.body17_crit_edge, label %for.inc.6

for.inc.5.do.body17_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr i8, ptr %7, i32 7
  %26 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %27)
  %cmp14.7 = icmp eq i8 %27, -20
  br i1 %cmp14.7, label %for.inc.6.do.body17_crit_edge, label %for.inc.7

for.inc.6.do.body17_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr i8, ptr %7, i32 8
  %28 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %29)
  %cmp14.8 = icmp eq i8 %29, -20
  br i1 %cmp14.8, label %for.inc.7.do.body17_crit_edge, label %for.inc.8

for.inc.7.do.body17_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr i8, ptr %7, i32 9
  %30 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %31)
  %cmp14.9 = icmp eq i8 %31, -20
  br i1 %cmp14.9, label %for.inc.8.do.body17_crit_edge, label %for.inc.9

for.inc.8.do.body17_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr i8, ptr %7, i32 10
  %32 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %33)
  %cmp14.10 = icmp eq i8 %33, -20
  br i1 %cmp14.10, label %for.inc.9.do.body17_crit_edge, label %for.inc.10

for.inc.9.do.body17_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr i8, ptr %7, i32 11
  %34 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %35)
  %cmp14.11 = icmp eq i8 %35, -20
  br i1 %cmp14.11, label %for.inc.10.do.body17_crit_edge, label %for.inc.11

for.inc.10.do.body17_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr i8, ptr %7, i32 12
  %36 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %37)
  %cmp14.12 = icmp eq i8 %37, -20
  br i1 %cmp14.12, label %for.inc.11.do.body17_crit_edge, label %for.inc.12

for.inc.11.do.body17_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr i8, ptr %7, i32 13
  %38 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr.12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %39)
  %cmp14.13 = icmp eq i8 %39, -20
  br i1 %cmp14.13, label %for.inc.12.do.body17_crit_edge, label %for.inc.13

for.inc.12.do.body17_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr i8, ptr %7, i32 14
  %40 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %41)
  %cmp14.14 = icmp eq i8 %41, -20
  br i1 %cmp14.14, label %for.inc.13.do.body17_crit_edge, label %for.inc.14

for.inc.13.do.body17_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr i8, ptr %7, i32 15
  %42 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %43)
  %cmp14.15 = icmp eq i8 %43, -20
  br i1 %cmp14.15, label %for.inc.14.do.body17_crit_edge, label %for.inc.15

for.inc.14.do.body17_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.15:                                       ; preds = %for.inc.14
  %incdec.ptr.15 = getelementptr i8, ptr %7, i32 16
  %44 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %45)
  %cmp14.16 = icmp eq i8 %45, -20
  br i1 %cmp14.16, label %for.inc.15.do.body17_crit_edge, label %for.inc.16

for.inc.15.do.body17_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.16:                                       ; preds = %for.inc.15
  %incdec.ptr.16 = getelementptr i8, ptr %7, i32 17
  %46 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %47)
  %cmp14.17 = icmp eq i8 %47, -20
  br i1 %cmp14.17, label %for.inc.16.do.body17_crit_edge, label %for.inc.17

for.inc.16.do.body17_crit_edge:                   ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.17:                                       ; preds = %for.inc.16
  %incdec.ptr.17 = getelementptr i8, ptr %7, i32 18
  %48 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %49)
  %cmp14.18 = icmp eq i8 %49, -20
  br i1 %cmp14.18, label %for.inc.17.do.body17_crit_edge, label %for.inc.18

for.inc.17.do.body17_crit_edge:                   ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.18:                                       ; preds = %for.inc.17
  %incdec.ptr.18 = getelementptr i8, ptr %7, i32 19
  %50 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr.18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %51)
  %cmp14.19 = icmp eq i8 %51, -20
  br i1 %cmp14.19, label %for.inc.18.do.body17_crit_edge, label %for.inc.19

for.inc.18.do.body17_crit_edge:                   ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.19:                                       ; preds = %for.inc.18
  %incdec.ptr.19 = getelementptr i8, ptr %7, i32 20
  %52 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %53)
  %cmp14.20 = icmp eq i8 %53, -20
  br i1 %cmp14.20, label %for.inc.19.do.body17_crit_edge, label %for.inc.20

for.inc.19.do.body17_crit_edge:                   ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.20:                                       ; preds = %for.inc.19
  %incdec.ptr.20 = getelementptr i8, ptr %7, i32 21
  %54 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %55)
  %cmp14.21 = icmp eq i8 %55, -20
  br i1 %cmp14.21, label %for.inc.20.do.body17_crit_edge, label %for.inc.21

for.inc.20.do.body17_crit_edge:                   ; preds = %for.inc.20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.21:                                       ; preds = %for.inc.20
  %incdec.ptr.21 = getelementptr i8, ptr %7, i32 22
  %56 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %57)
  %cmp14.22 = icmp eq i8 %57, -20
  br i1 %cmp14.22, label %for.inc.21.do.body17_crit_edge, label %for.inc.22

for.inc.21.do.body17_crit_edge:                   ; preds = %for.inc.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.22:                                       ; preds = %for.inc.21
  %incdec.ptr.22 = getelementptr i8, ptr %7, i32 23
  %58 = ptrtoint ptr %incdec.ptr.22 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr.22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %59)
  %cmp14.23 = icmp eq i8 %59, -20
  br i1 %cmp14.23, label %for.inc.22.do.body17_crit_edge, label %for.inc.23

for.inc.22.do.body17_crit_edge:                   ; preds = %for.inc.22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.23:                                       ; preds = %for.inc.22
  %incdec.ptr.23 = getelementptr i8, ptr %7, i32 24
  %60 = ptrtoint ptr %incdec.ptr.23 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %61)
  %cmp14.24 = icmp eq i8 %61, -20
  br i1 %cmp14.24, label %for.inc.23.do.body17_crit_edge, label %for.inc.24

for.inc.23.do.body17_crit_edge:                   ; preds = %for.inc.23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.24:                                       ; preds = %for.inc.23
  %incdec.ptr.24 = getelementptr i8, ptr %7, i32 25
  %62 = ptrtoint ptr %incdec.ptr.24 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %incdec.ptr.24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %63)
  %cmp14.25 = icmp eq i8 %63, -20
  br i1 %cmp14.25, label %for.inc.24.do.body17_crit_edge, label %for.inc.25

for.inc.24.do.body17_crit_edge:                   ; preds = %for.inc.24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.25:                                       ; preds = %for.inc.24
  %incdec.ptr.25 = getelementptr i8, ptr %7, i32 26
  %64 = ptrtoint ptr %incdec.ptr.25 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %65)
  %cmp14.26 = icmp eq i8 %65, -20
  br i1 %cmp14.26, label %for.inc.25.do.body17_crit_edge, label %for.inc.26

for.inc.25.do.body17_crit_edge:                   ; preds = %for.inc.25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.26:                                       ; preds = %for.inc.25
  %incdec.ptr.26 = getelementptr i8, ptr %7, i32 27
  %66 = ptrtoint ptr %incdec.ptr.26 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %67)
  %cmp14.27 = icmp eq i8 %67, -20
  br i1 %cmp14.27, label %for.inc.26.do.body17_crit_edge, label %for.inc.27

for.inc.26.do.body17_crit_edge:                   ; preds = %for.inc.26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.27:                                       ; preds = %for.inc.26
  %incdec.ptr.27 = getelementptr i8, ptr %7, i32 28
  %68 = ptrtoint ptr %incdec.ptr.27 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr.27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %69)
  %cmp14.28 = icmp eq i8 %69, -20
  br i1 %cmp14.28, label %for.inc.27.do.body17_crit_edge, label %for.inc.28

for.inc.27.do.body17_crit_edge:                   ; preds = %for.inc.27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.28:                                       ; preds = %for.inc.27
  %incdec.ptr.28 = getelementptr i8, ptr %7, i32 29
  %70 = ptrtoint ptr %incdec.ptr.28 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %incdec.ptr.28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %71)
  %cmp14.29 = icmp eq i8 %71, -20
  br i1 %cmp14.29, label %for.inc.28.do.body17_crit_edge, label %for.inc.29

for.inc.28.do.body17_crit_edge:                   ; preds = %for.inc.28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.29:                                       ; preds = %for.inc.28
  %incdec.ptr.29 = getelementptr i8, ptr %7, i32 30
  %72 = ptrtoint ptr %incdec.ptr.29 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %73)
  %cmp14.30 = icmp eq i8 %73, -20
  br i1 %cmp14.30, label %for.inc.29.do.body17_crit_edge, label %for.inc.30

for.inc.29.do.body17_crit_edge:                   ; preds = %for.inc.29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.30:                                       ; preds = %for.inc.29
  %incdec.ptr.30 = getelementptr i8, ptr %7, i32 31
  %74 = ptrtoint ptr %incdec.ptr.30 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %incdec.ptr.30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -20, i8 %75)
  %cmp14.31 = icmp eq i8 %75, -20
  br i1 %cmp14.31, label %for.inc.30.do.body17_crit_edge, label %for.inc.31

for.inc.30.do.body17_crit_edge:                   ; preds = %for.inc.30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

for.inc.31:                                       ; preds = %for.inc.30
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %do.end41, label %for.inc.31.cleanup_crit_edge

for.inc.31.cleanup_crit_edge:                     ; preds = %for.inc.31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %for.inc.31
  call void @__sanitizer_cov_trace_pc() #9
  %dev42 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %76 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.22) #10
  br label %cleanup174

cleanup:                                          ; preds = %for.inc.31.cleanup_crit_edge, %do.body17
  %ptr.1269 = phi ptr [ %add.ptr, %for.inc.31.cleanup_crit_edge ], [ %ptr.1277.lcssa, %do.body17 ]
  %cleanup.dest.slot.0 = phi i32 [ 0, %for.inc.31.cleanup_crit_edge ], [ 9, %do.body17 ]
  %78 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cleanup.dest.slot.0, label %cleanup.cleanup174_crit_edge [
    i32 0, label %cleanup.while.cond_crit_edge
    i32 9, label %cleanup.while.end_crit_edge
  ]

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup.cleanup174_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup174

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread255
  %ptr.1268 = phi ptr [ %ptr.1277.lcssa, %cleanup.thread255 ], [ %ptr.1269, %cleanup.while.end_crit_edge ]
  %incdec.ptr44 = getelementptr i8, ptr %ptr.1268, i32 1
  %sub.ptr.lhs.cast45 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast46 = ptrtoint ptr %incdec.ptr44 to i32
  %sub.ptr.sub47 = sub i32 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub47)
  %cmp49 = icmp slt i32 %sub.ptr.sub47, 0
  br i1 %cmp49, label %while.end.do.body61_crit_edge, label %lor.rhs, !prof !123

while.end.do.body61_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

lor.rhs:                                          ; preds = %while.end
  %79 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub47, i32 %80)
  %cmp52 = icmp sgt i32 %sub.ptr.sub47, %80
  br i1 %cmp52, label %lor.rhs.do.body61_crit_edge, label %do.end69, !prof !123

lor.rhs.do.body61_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

do.body61:                                        ; preds = %lor.rhs.do.body61_crit_edge, %while.end.do.body61_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/platform/chrome/cros_ec_spi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #7, !srcloc !128
  unreachable

do.end69:                                         ; preds = %lor.rhs
  %81 = tail call i32 @llvm.smin.i32(i32 %sub.ptr.sub47, i32 %need_len)
  %82 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %din, align 4
  %84 = call ptr @memmove(ptr %83, ptr %incdec.ptr44, i32 %81)
  %85 = load ptr, ptr %din, align 4
  %add.ptr75 = getelementptr i8, ptr %85, i32 %81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_packet, %if.then88)) #7
          to label %do.end92 [label %if.then88], !srcloc !122

if.then88:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %dev89 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %86 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev89, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug237, ptr noundef %87, ptr noundef nonnull @.str.24, i32 noundef %need_len, i32 noundef %81) #7
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.end69
  %sub93 = sub i32 %need_len, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %81)
  %cmp94 = icmp ult i32 %81, 8
  br i1 %cmp94, label %if.then96, label %do.end92.if.end105_crit_edge

do.end92.if.end105_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then96:                                        ; preds = %do.end92
  %sub97 = sub nuw nsw i32 8, %81
  %call98 = tail call fastcc i32 @receive_n_bytes(ptr noundef %ec_dev, ptr noundef %add.ptr75, i32 noundef %sub97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then96.cleanup174_crit_edge, label %if.end102

if.then96.cleanup174_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup174

if.end102:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr104 = getelementptr i8, ptr %85, i32 8
  br label %if.end105

if.end105:                                        ; preds = %if.end102, %do.end92.if.end105_crit_edge
  %ptr.3 = phi ptr [ %add.ptr104, %if.end102 ], [ %add.ptr75, %do.end92.if.end105_crit_edge ]
  %88 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %din, align 4
  %data_len = getelementptr inbounds %struct.ec_host_response, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %data_len, align 1
  %conv107 = zext i16 %91 to i32
  %92 = ptrtoint ptr %din_size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %din_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %conv107)
  %cmp109 = icmp slt i32 %93, %conv107
  br i1 %cmp109, label %if.end105.cleanup174_crit_edge, label %while.cond113.preheader

if.end105.cleanup174_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup174

while.cond113.preheader:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93)
  %cmp114278 = icmp sgt i32 %sub93, 0
  br i1 %cmp114278, label %while.body116.lr.ph, label %while.cond113.preheader.do.body153_crit_edge

while.cond113.preheader.do.body153_crit_edge:     ; preds = %while.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

while.body116.lr.ph:                              ; preds = %while.cond113.preheader
  %dev137 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  br label %while.body116

while.body116:                                    ; preds = %if.end149.while.body116_crit_edge, %while.body116.lr.ph
  %need_len.addr.0280 = phi i32 [ %sub93, %while.body116.lr.ph ], [ %sub151, %if.end149.while.body116_crit_edge ]
  %ptr.4279 = phi ptr [ %ptr.3, %while.body116.lr.ph ], [ %add.ptr150, %if.end149.while.body116_crit_edge ]
  %94 = tail call i32 @llvm.umin.i32(i32 %need_len.addr.0280, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_packet, %if.then136)) #7
          to label %do.end144 [label %if.then136], !srcloc !122

if.then136:                                       ; preds = %while.body116
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev137, align 4
  %97 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast139 = ptrtoint ptr %ptr.4279 to i32
  %sub.ptr.rhs.cast140 = ptrtoint ptr %98 to i32
  %sub.ptr.sub141 = sub i32 %sub.ptr.lhs.cast139, %sub.ptr.rhs.cast140
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug240, ptr noundef %96, ptr noundef nonnull @.str.25, i32 noundef %94, i32 noundef %need_len.addr.0280, i32 noundef %sub.ptr.sub141) #7
  br label %do.end144

do.end144:                                        ; preds = %if.then136, %while.body116
  %call145 = tail call fastcc i32 @receive_n_bytes(ptr noundef %ec_dev, ptr noundef %ptr.4279, i32 noundef %94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %do.end144.cleanup174_crit_edge, label %if.end149

do.end144.cleanup174_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup174

if.end149:                                        ; preds = %do.end144
  %add.ptr150 = getelementptr i8, ptr %ptr.4279, i32 %94
  %sub151 = sub nsw i32 %need_len.addr.0280, %94
  %cmp114 = icmp sgt i32 %sub151, 0
  br i1 %cmp114, label %if.end149.while.body116_crit_edge, label %if.end149.do.body153_crit_edge

if.end149.do.body153_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.end149.while.body116_crit_edge:                ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body116

do.body153:                                       ; preds = %if.end149.do.body153_crit_edge, %while.cond113.preheader.do.body153_crit_edge
  %ptr.4.lcssa = phi ptr [ %ptr.3, %while.cond113.preheader.do.body153_crit_edge ], [ %add.ptr150, %if.end149.do.body153_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_spi_receive_packet, %if.then165)) #7
          to label %cleanup174 [label %if.then165], !srcloc !122

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %dev166 = getelementptr inbounds %struct.cros_ec_device, ptr %ec_dev, i32 0, i32 1
  %99 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev166, align 4
  %101 = ptrtoint ptr %din to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %din, align 4
  %sub.ptr.lhs.cast168 = ptrtoint ptr %ptr.4.lcssa to i32
  %sub.ptr.rhs.cast169 = ptrtoint ptr %102 to i32
  %sub.ptr.sub170 = sub i32 %sub.ptr.lhs.cast168, %sub.ptr.rhs.cast169
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug241, ptr noundef %100, ptr noundef nonnull @.str.27, i32 noundef %sub.ptr.sub170) #7
  br label %cleanup174

cleanup174:                                       ; preds = %if.then165, %do.body153, %do.end144.cleanup174_crit_edge, %if.end105.cleanup174_crit_edge, %if.then96.cleanup174_crit_edge, %cleanup.cleanup174_crit_edge, %do.end41, %while.cond.cleanup174_crit_edge
  %retval.2 = phi i32 [ -74, %if.then96.cleanup174_crit_edge ], [ -90, %if.end105.cleanup174_crit_edge ], [ 0, %if.then165 ], [ 0, %do.body153 ], [ -110, %do.end41 ], [ %call145, %do.end144.cleanup174_crit_edge ], [ %call8, %cleanup.cleanup174_crit_edge ], [ %call8, %while.cond.cleanup174_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_spi_high_pri_release(ptr noundef %worker) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kthread_destroy_worker(ptr noundef %worker) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cros_ec_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cros_ec_resume(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_cros_ec_spi__252_838_cros_ec_driver_spi_init6, !1, !"__initcall__kmod_cros_ec_spi__252_838_cros_ec_driver_spi_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 838, i32 1}
!2 = !{ptr @__exitcall_cros_ec_driver_spi_exit, !1, !"__exitcall_cros_ec_driver_spi_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file253, !4, !"__UNIQUE_ID_file253", i1 false, i1 false}
!4 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 840, i32 1}
!5 = !{ptr @__UNIQUE_ID_license254, !4, !"__UNIQUE_ID_license254", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description255, !7, !"__UNIQUE_ID_description255", i1 false, i1 false}
!7 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 841, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 829, i32 11}
!10 = !{ptr @cros_ec_driver_spi, !11, !"cros_ec_driver_spi", i1 false, i1 false}
!11 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 827, i32 26}
!12 = !{ptr @cros_ec_spi_id, !13, !"cros_ec_spi_id", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 821, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 780, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_ec_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_ec_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 699, i32 33}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 703, i32 33}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 547, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @do_cros_ec_cmd_xfer_spi.__UNIQUE_ID_ddebug251, !27, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 561, i32 28}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 590, i32 3}
!35 = !{ptr @do_cros_ec_cmd_xfer_spi._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @do_cros_ec_cmd_xfer_spi._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 612, i32 3}
!39 = !{ptr @do_cros_ec_cmd_xfer_spi._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @do_cros_ec_cmd_xfer_spi._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 626, i32 28}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 629, i32 3}
!45 = !{ptr @do_cros_ec_cmd_xfer_spi._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @do_cros_ec_cmd_xfer_spi._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 324, i32 5}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug242, !48, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 338, i32 4}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cros_ec_spi_receive_response._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cros_ec_spi_receive_response._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 352, i32 2}
!58 = !{ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug245, !57, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 365, i32 3}
!61 = !{ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug248, !60, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 372, i32 29}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 377, i32 2}
!66 = !{ptr @cros_ec_spi_receive_response.__UNIQUE_ID_ddebug249, !65, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 174, i32 3}
!69 = !{ptr @receive_n_bytes._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @receive_n_bytes._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 139, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @terminate_request._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @terminate_request._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 404, i32 2}
!78 = !{ptr @do_cros_ec_pkt_xfer_spi.__UNIQUE_ID_ddebug250, !77, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!79 = !{ptr @do_cros_ec_pkt_xfer_spi._entry, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 471, i32 3}
!81 = !{ptr @do_cros_ec_pkt_xfer_spi._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @do_cros_ec_pkt_xfer_spi._entry.32, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 495, i32 3}
!84 = !{ptr @do_cros_ec_pkt_xfer_spi._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 510, i32 3}
!87 = !{ptr @do_cros_ec_pkt_xfer_spi._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @do_cros_ec_pkt_xfer_spi._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 216, i32 5}
!91 = !{ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug234, !90, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!92 = !{ptr @cros_ec_spi_receive_packet._entry, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 230, i32 4}
!94 = !{ptr @cros_ec_spi_receive_packet._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug237, !96, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!96 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 244, i32 2}
!97 = !{ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug240, !98, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!98 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 272, i32 3}
!99 = !{ptr @cros_ec_spi_receive_packet.__UNIQUE_ID_ddebug241, !100, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!100 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 283, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 719, i32 28}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 723, i32 3}
!105 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cros_ec_spi_devm_high_pri_alloc._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @cros_ec_spi_devm_high_pri_alloc._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cros_ec_spi_of_match, !109, !"cros_ec_spi_of_match", i1 false, i1 false}
!109 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 815, i32 34}
!110 = !{ptr @cros_ec_spi_pm_ops, !111, !"cros_ec_spi_pm_ops", i1 false, i1 false}
!111 = !{!"../drivers/platform/chrome/cros_ec_spi.c", i32 812, i32 8}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 2148776686, i64 2148776691, i64 2148776704, i64 2148776748, i64 2148776782, i64 2148776803}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2154525904, i64 2154526406, i64 2154525941, i64 2154525997, i64 2154526031, i64 2154526055, i64 2154526096, i64 2154526117, i64 2154526145, i64 2154526179}
!125 = !{i64 2154531931, i64 2154532433, i64 2154531968, i64 2154532024, i64 2154532058, i64 2154532082, i64 2154532123, i64 2154532144, i64 2154532172, i64 2154532206}
!126 = !{i64 2154504992, i64 2154505494, i64 2154505029, i64 2154505085, i64 2154505119, i64 2154505143, i64 2154505184, i64 2154505205, i64 2154505233, i64 2154505267}
!127 = !{i64 2154508271, i64 2154508773, i64 2154508308, i64 2154508364, i64 2154508398, i64 2154508422, i64 2154508463, i64 2154508484, i64 2154508512, i64 2154508546}
!128 = !{i64 2154514298, i64 2154514800, i64 2154514335, i64 2154514391, i64 2154514425, i64 2154514449, i64 2154514490, i64 2154514511, i64 2154514539, i64 2154514573}
