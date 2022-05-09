; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_uart.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mantis_uart_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_uart_init\09\09\09\09"
module asm "\09.long\09__crc_mantis_uart_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_uart_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_uart_init\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_uart_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mantis_uart_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mantis_uart_exit\09\09\09\09"
module asm "\09.long\09__crc_mantis_uart_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mantis_uart_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mantis_uart_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mantis_uart_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.141 = type { [7 x i8] }
%struct.anon.142 = type { [5 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }

@mantis_uart_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s (%d): Initializing UART @ %sbps parity:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_uart_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/mantis/mantis_uart.c\00", [57 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr = internal global ptr @mantis_uart_init._entry, section ".printk_index", align 4
@rates = internal global { [5 x %struct.anon.141], [61 x i8] } { [5 x %struct.anon.141] [%struct.anon.141 { [7 x i8] c"9600\00\00\00" }, %struct.anon.141 { [7 x i8] c"19200\00\00" }, %struct.anon.141 { [7 x i8] c"38400\00\00" }, %struct.anon.141 { [7 x i8] c"57600\00\00" }, %struct.anon.141 { [7 x i8] c"115200\00" }], [61 x i8] zeroinitializer }, align 32
@parity = internal global { [3 x %struct.anon.142], [17 x i8] } { [3 x %struct.anon.142] [%struct.anon.142 { [5 x i8] c"NONE\00" }, %struct.anon.142 { [5 x i8] c"ODD\00\00" }, %struct.anon.142 { [5 x i8] c"EVEN\00" }], [17 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015%s (%d): Initializing UART @ %sbps parity:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.5 = internal global ptr @mantis_uart_init._entry.3, section ".printk_index", align 4
@mantis_uart_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s (%d): Initializing UART @ %sbps parity:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.8 = internal global ptr @mantis_uart_init._entry.6, section ".printk_index", align 4
@mantis_uart_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s (%d): Initializing UART @ %sbps parity:%s\0A\00", [48 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.11 = internal global ptr @mantis_uart_init._entry.9, section ".printk_index", align 4
@mantis_uart_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.13 = internal global ptr @mantis_uart_init._entry.12, section ".printk_index", align 4
@mantis_uart_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&mantis->uart_work)\00", [58 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s (%d): UART successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.17 = internal global ptr @mantis_uart_init._entry.15, section ".printk_index", align 4
@mantis_uart_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015%s (%d): UART successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.20 = internal global ptr @mantis_uart_init._entry.18, section ".printk_index", align 4
@mantis_uart_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s (%d): UART successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.23 = internal global ptr @mantis_uart_init._entry.21, section ".printk_index", align 4
@mantis_uart_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s (%d): UART successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.26 = internal global ptr @mantis_uart_init._entry.24, section ".printk_index", align 4
@mantis_uart_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_init._entry_ptr.28 = internal global ptr @mantis_uart_init._entry.27, section ".printk_index", align 4
@__kstrtab_mantis_uart_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_uart_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_uart_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_uart_init to i32), ptr @__kstrtab_mantis_uart_init, ptr @__kstrtabns_mantis_uart_init }, section "___ksymtab_gpl+mantis_uart_init", align 4
@__kstrtab_mantis_uart_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mantis_uart_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mantis_uart_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mantis_uart_exit to i32), ptr @__kstrtab_mantis_uart_exit, ptr @__kstrtabns_mantis_uart_exit }, section "___ksymtab_gpl+mantis_uart_exit", align 4
@mantis_uart_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s (%d): RX Fifo FULL\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_uart_work\00", [47 x i8] zeroinitializer }, align 32
@mantis_uart_work._entry_ptr = internal global ptr @mantis_uart_work._entry, section ".printk_index", align 4
@mantis_uart_work._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s (%d): RX Fifo FULL\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_uart_work._entry_ptr.33 = internal global ptr @mantis_uart_work._entry.31, section ".printk_index", align 4
@mantis_uart_work._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s (%d): RX Fifo FULL\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_uart_work._entry_ptr.36 = internal global ptr @mantis_uart_work._entry.34, section ".printk_index", align 4
@mantis_uart_work._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s (%d): RX Fifo FULL\0A\00", [39 x i8] zeroinitializer }, align 32
@mantis_uart_work._entry_ptr.39 = internal global ptr @mantis_uart_work._entry.37, section ".printk_index", align 4
@mantis_uart_work._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_work._entry_ptr.41 = internal global ptr @mantis_uart_work._entry.40, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mantis_uart_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s (%d): UART Reading ...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mantis_uart_read\00", [47 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr = internal global ptr @mantis_uart_read._entry, section ".printk_index", align 4
@mantis_uart_read._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s (%d): UART Reading ...\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.46 = internal global ptr @mantis_uart_read._entry.44, section ".printk_index", align 4
@mantis_uart_read._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s (%d): UART Reading ...\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.49 = internal global ptr @mantis_uart_read._entry.47, section ".printk_index", align 4
@mantis_uart_read._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s (%d): UART Reading ...\0A\00", [35 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.52 = internal global ptr @mantis_uart_read._entry.50, section ".printk_index", align 4
@mantis_uart_read._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.54 = internal global ptr @mantis_uart_read._entry.53, section ".printk_index", align 4
@mantis_uart_read._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.43, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" <%02x>\00", [24 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.57 = internal global ptr @mantis_uart_read._entry.55, section ".printk_index", align 4
@mantis_uart_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s (%d): UART framing error\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.60 = internal global ptr @mantis_uart_read._entry.58, section ".printk_index", align 4
@mantis_uart_read._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s (%d): UART framing error\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.63 = internal global ptr @mantis_uart_read._entry.61, section ".printk_index", align 4
@mantis_uart_read._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s (%d): UART framing error\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.66 = internal global ptr @mantis_uart_read._entry.64, section ".printk_index", align 4
@mantis_uart_read._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s (%d): UART framing error\0A\00", [33 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.69 = internal global ptr @mantis_uart_read._entry.67, section ".printk_index", align 4
@mantis_uart_read._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.43, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.71 = internal global ptr @mantis_uart_read._entry.70, section ".printk_index", align 4
@mantis_uart_read._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.43, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s (%d): UART parity error\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.74 = internal global ptr @mantis_uart_read._entry.72, section ".printk_index", align 4
@mantis_uart_read._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.43, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s (%d): UART parity error\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.77 = internal global ptr @mantis_uart_read._entry.75, section ".printk_index", align 4
@mantis_uart_read._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.43, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s (%d): UART parity error\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.80 = internal global ptr @mantis_uart_read._entry.78, section ".printk_index", align 4
@mantis_uart_read._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.43, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s (%d): UART parity error\0A\00", [34 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.83 = internal global ptr @mantis_uart_read._entry.81, section ".printk_index", align 4
@mantis_uart_read._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.43, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.85 = internal global ptr @mantis_uart_read._entry.84, section ".printk_index", align 4
@mantis_uart_read._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.43, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mantis_uart_read._entry_ptr.88 = internal global ptr @mantis_uart_read._entry.86, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.mantis_uart_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 216, i32 108, i32 54, i32 35, i32 17], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 36, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 46, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 151, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 155, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 173, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 88, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 58, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 62, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 68, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 71, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private constant [42 x i8] c"../drivers/media/pci/mantis/mantis_uart.c\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 73, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [30 x i8] c"switch.table.mantis_uart_init\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__ksymtab_mantis_uart_exit, ptr @__ksymtab_mantis_uart_init, ptr @mantis_uart_init._entry, ptr @mantis_uart_init._entry.12, ptr @mantis_uart_init._entry.15, ptr @mantis_uart_init._entry.18, ptr @mantis_uart_init._entry.21, ptr @mantis_uart_init._entry.24, ptr @mantis_uart_init._entry.27, ptr @mantis_uart_init._entry.3, ptr @mantis_uart_init._entry.6, ptr @mantis_uart_init._entry.9, ptr @mantis_uart_init._entry_ptr, ptr @mantis_uart_init._entry_ptr.11, ptr @mantis_uart_init._entry_ptr.13, ptr @mantis_uart_init._entry_ptr.17, ptr @mantis_uart_init._entry_ptr.20, ptr @mantis_uart_init._entry_ptr.23, ptr @mantis_uart_init._entry_ptr.26, ptr @mantis_uart_init._entry_ptr.28, ptr @mantis_uart_init._entry_ptr.5, ptr @mantis_uart_init._entry_ptr.8, ptr @mantis_uart_read._entry, ptr @mantis_uart_read._entry.44, ptr @mantis_uart_read._entry.47, ptr @mantis_uart_read._entry.50, ptr @mantis_uart_read._entry.53, ptr @mantis_uart_read._entry.55, ptr @mantis_uart_read._entry.58, ptr @mantis_uart_read._entry.61, ptr @mantis_uart_read._entry.64, ptr @mantis_uart_read._entry.67, ptr @mantis_uart_read._entry.70, ptr @mantis_uart_read._entry.72, ptr @mantis_uart_read._entry.75, ptr @mantis_uart_read._entry.78, ptr @mantis_uart_read._entry.81, ptr @mantis_uart_read._entry.84, ptr @mantis_uart_read._entry.86, ptr @mantis_uart_read._entry_ptr, ptr @mantis_uart_read._entry_ptr.46, ptr @mantis_uart_read._entry_ptr.49, ptr @mantis_uart_read._entry_ptr.52, ptr @mantis_uart_read._entry_ptr.54, ptr @mantis_uart_read._entry_ptr.57, ptr @mantis_uart_read._entry_ptr.60, ptr @mantis_uart_read._entry_ptr.63, ptr @mantis_uart_read._entry_ptr.66, ptr @mantis_uart_read._entry_ptr.69, ptr @mantis_uart_read._entry_ptr.71, ptr @mantis_uart_read._entry_ptr.74, ptr @mantis_uart_read._entry_ptr.77, ptr @mantis_uart_read._entry_ptr.80, ptr @mantis_uart_read._entry_ptr.83, ptr @mantis_uart_read._entry_ptr.85, ptr @mantis_uart_read._entry_ptr.88, ptr @mantis_uart_work._entry, ptr @mantis_uart_work._entry.31, ptr @mantis_uart_work._entry.34, ptr @mantis_uart_work._entry.37, ptr @mantis_uart_work._entry.40, ptr @mantis_uart_work._entry_ptr, ptr @mantis_uart_work._entry_ptr.33, ptr @mantis_uart_work._entry_ptr.36, ptr @mantis_uart_work._entry_ptr.39, ptr @mantis_uart_work._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rates, ptr @parity, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @mantis_uart_init.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.87, ptr @switch.table.mantis_uart_init], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parity to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_work._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_work._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_work._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_work._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mantis_uart_read._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mantis_uart_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mantis_uart_init(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hwconfig = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 32
  %0 = ptrtoint ptr %hwconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwconfig, align 4
  %baud_rate = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %baud_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %baud_rate, align 4
  %parity = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parity, align 4
  %6 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch = icmp ult i32 %7, 3
  br i1 %switch, label %entry.do.body100_crit_edge, label %do.end

entry.do.body100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body100

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %arrayidx = getelementptr [5 x %struct.anon.141], ptr @rates, i32 0, i32 %3
  %arrayidx8 = getelementptr [3 x %struct.anon.142], ptr @parity, i32 0, i32 %5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %9, ptr noundef %arrayidx, ptr noundef %arrayidx8) #7
  br label %do.body100

do.body100:                                       ; preds = %do.end, %entry.do.body100_crit_edge
  %uart_work = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41
  tail call void @__init_work(ptr noundef %uart_work, i32 noundef 0) #4
  %10 = ptrtoint ptr %uart_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %uart_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @mantis_uart_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry104 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41, i32 1
  %11 = ptrtoint ptr %entry104 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry104, ptr %entry104, align 4
  %prev.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry104, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mantis_uart_work, ptr %func, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  tail call void @arm_heavy_mb() #4
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %17 = and i32 %16, -268500992
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 8
  %add.ptr115 = getelementptr i8, ptr %19, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %17) #4, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 224
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !123
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  %and.i = and i32 %5, 3
  %or.i = or i32 %23, %and.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 8
  %add.ptr3.i = getelementptr i8, ptr %26, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #4, !srcloc !125
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 8
  %add.ptr7.i = getelementptr i8, ptr %28, i32 236
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %30 = icmp ult i32 %3, 5
  br i1 %30, label %switch.lookup, label %do.body100.mantis_uart_setup.exit_crit_edge

do.body100.mantis_uart_setup.exit_crit_edge:      ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #6
  br label %mantis_uart_setup.exit

switch.lookup:                                    ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mantis_uart_init, i32 0, i32 %3
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or11.i = or i32 %switch.load, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #4
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 8
  %add.ptr24.i = getelementptr i8, ptr %35, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %33) #4, !srcloc !125
  br label %mantis_uart_setup.exit

mantis_uart_setup.exit:                           ; preds = %switch.lookup, %do.body100.mantis_uart_setup.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 8
  %add.ptr123 = getelementptr i8, ptr %37, i32 236
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #4, !srcloc !123
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  %bytes = getelementptr inbounds %struct.mantis_hwconfig, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytes, align 4
  %shl = shl i32 %41, 8
  %or = or i32 %shl, %39
  %42 = tail call i32 @llvm.bswap.i32(i32 %or)
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 8
  %add.ptr128 = getelementptr i8, ptr %44, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %42) #4, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio, align 8
  %add.ptr135 = getelementptr i8, ptr %46, i32 224
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  %48 = or i32 %47, 67108864
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 8
  %add.ptr141 = getelementptr i8, ptr %50, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %48) #4, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %51 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio, align 8
  %add.ptr148 = getelementptr i8, ptr %52, i32 224
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  %54 = or i32 %53, 268435456
  %55 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio, align 8
  %add.ptr154 = getelementptr i8, ptr %56, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %54) #4, !srcloc !125
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  %57 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio, align 8
  %add.ptr.i293 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i293) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  %60 = or i32 %59, 524288
  %61 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio, align 8
  %add.ptr12.i = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %60) #4, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %63 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %63, ptr noundef %uart_work) #4
  %64 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %switch289 = icmp ult i32 %65, 4
  br i1 %switch289, label %mantis_uart_setup.exit.do.end228_crit_edge, label %do.end166

mantis_uart_setup.exit.do.end228_crit_edge:       ; preds = %mantis_uart_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end228

do.end166:                                        ; preds = %mantis_uart_setup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %num168 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %66 = ptrtoint ptr %num168 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num168, align 8
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef %67) #7
  br label %do.end228

do.end228:                                        ; preds = %do.end166, %mantis_uart_setup.exit.do.end228_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mantis_uart_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3764
  %mmio = getelementptr i8, ptr %work, i32 -3740
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !123
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end67_crit_edge, label %do.body

entry.if.end67_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body.if.end67_crit_edge, label %do.end

do.body.if.end67_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr i8, ptr %work, i32 -3732
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %7) #7
  br label %if.end67

if.end67:                                         ; preds = %do.end, %do.body.if.end67_crit_edge, %entry.if.end67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg = xor i32 %8, -1
  %hwconfig.i = getelementptr i8, ptr %work, i32 -40
  %num.i = getelementptr i8, ptr %work, i32 -3732
  br label %while.cond

while.cond:                                       ; preds = %mantis_uart_read.exit.while.cond_crit_edge, %if.end67
  %stat.0 = phi i32 [ %3, %if.end67 ], [ %38, %mantis_uart_read.exit.while.cond_crit_edge ]
  %and69 = and i32 %stat.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %hwconfig.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwconfig.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %switch.i = icmp ult i32 %12, 4
  br i1 %switch.i, label %while.body.do.end60.i_crit_edge, label %do.end.i

while.body.do.end60.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end60.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %14) #7
  br label %do.end60.i

do.end60.i:                                       ; preds = %do.end.i, %while.body.do.end60.i_crit_edge
  %bytes.i = getelementptr inbounds %struct.mantis_hwconfig, ptr %10, i32 0, i32 5
  %15 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp61309.not.i = icmp eq i32 %16, -1
  br i1 %cmp61309.not.i, label %do.end60.i.do.body229.i_crit_edge, label %do.end60.i.for.body.i_crit_edge

do.end60.i.for.body.i_crit_edge:                  ; preds = %do.end60.i
  br label %for.body.i

do.end60.i.do.body229.i_crit_edge:                ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body229.i

for.body.i:                                       ; preds = %if.end228.i.for.body.i_crit_edge, %do.end60.i.for.body.i_crit_edge
  %i.0312.i = phi i32 [ %inc.i, %if.end228.i.for.body.i_crit_edge ], [ 0, %do.end60.i.for.body.i_crit_edge ]
  %scancode.0311.i = phi i32 [ %or.i, %if.end228.i.for.body.i_crit_edge ], [ 0, %do.end60.i.for.body.i_crit_edge ]
  %err.0310.i = phi i32 [ %or77.i, %if.end228.i.for.body.i_crit_edge ], [ 0, %do.end60.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 232
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !123
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp67.i = icmp ugt i32 %22, 3
  br i1 %cmp67.i, label %do.end71.i, label %for.body.i.do.end76.i_crit_edge

for.body.i.do.end76.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end76.i

do.end71.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %20) #7
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end71.i, %for.body.i.do.end76.i_crit_edge
  %shl.i = shl i32 %scancode.0311.i, 8
  %and.i = and i32 %20, 63
  %or.i = or i32 %and.i, %shl.i
  %or77.i = or i32 %20, %err.0310.i
  %and78.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool.not.i, label %do.end76.i.if.end152.i_crit_edge, label %do.body80.i

do.end76.i.if.end152.i_crit_edge:                 ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152.i

do.body80.i:                                      ; preds = %do.end76.i
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp82.not.i = icmp eq i32 %24, 0
  br i1 %cmp82.not.i, label %do.body80.i.if.end152.i_crit_edge, label %do.end89.i

do.body80.i.if.end152.i_crit_edge:                ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end152.i

do.end89.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num.i, align 8
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.43, i32 noundef %26) #7
  br label %if.end152.i

if.end152.i:                                      ; preds = %do.end89.i, %do.body80.i.if.end152.i_crit_edge, %do.end76.i.if.end152.i_crit_edge
  %and153.i = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153.i)
  %tobool154.not.i = icmp eq i32 %and153.i, 0
  br i1 %tobool154.not.i, label %if.end152.i.if.end228.i_crit_edge, label %do.body156.i

if.end152.i.if.end228.i_crit_edge:                ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end228.i

do.body156.i:                                     ; preds = %if.end152.i
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp158.not.i = icmp eq i32 %28, 0
  br i1 %cmp158.not.i, label %do.body156.i.if.end228.i_crit_edge, label %do.end165.i

do.body156.i.if.end228.i_crit_edge:               ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end228.i

do.end165.i:                                      ; preds = %do.body156.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num.i, align 8
  %call168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.43, i32 noundef %30) #7
  br label %if.end228.i

if.end228.i:                                      ; preds = %do.end165.i, %do.body156.i.if.end228.i_crit_edge, %if.end152.i.if.end228.i_crit_edge
  %inc.i = add nuw i32 %i.0312.i, 1
  %31 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %32, 1
  %cmp61.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp61.i, label %if.end228.i.for.body.i_crit_edge, label %do.body229.loopexit.i

if.end228.i.for.body.i_crit_edge:                 ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.body229.loopexit.i:                            ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #6
  %phi.bo.i = and i32 %or77.i, 192
  br label %do.body229.i

do.body229.i:                                     ; preds = %do.body229.loopexit.i, %do.end60.i.do.body229.i_crit_edge
  %err.0.lcssa.i = phi i32 [ 0, %do.end60.i.do.body229.i_crit_edge ], [ %phi.bo.i, %do.body229.loopexit.i ]
  %scancode.0.lcssa.i = phi i32 [ 0, %do.end60.i.do.body229.i_crit_edge ], [ %or.i, %do.body229.loopexit.i ]
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp231.i = icmp ugt i32 %34, 3
  br i1 %cmp231.i, label %do.end235.i, label %do.body229.i.do.end240.i_crit_edge

do.body229.i.do.end240.i_crit_edge:               ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end240.i

do.end235.i:                                      ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #6
  %call237.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #7
  br label %do.end240.i

do.end240.i:                                      ; preds = %do.end235.i, %do.body229.i.do.end240.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa.i)
  %cmp242.i = icmp eq i32 %err.0.lcssa.i, 0
  br i1 %cmp242.i, label %if.then243.i, label %do.end240.i.mantis_uart_read.exit_crit_edge

do.end240.i.mantis_uart_read.exit_crit_edge:      ; preds = %do.end240.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mantis_uart_read.exit

if.then243.i:                                     ; preds = %do.end240.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mantis_input_process(ptr noundef %add.ptr, i32 noundef %scancode.0.lcssa.i) #4
  br label %mantis_uart_read.exit

mantis_uart_read.exit:                            ; preds = %if.then243.i, %do.end240.i.mantis_uart_read.exit_crit_edge
  %35 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio, align 8
  %add.ptr74 = getelementptr i8, ptr %36, i32 240
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #4, !srcloc !123
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %39, %add.neg
  %cmp78 = icmp slt i32 %sub, 0
  br i1 %cmp78, label %mantis_uart_read.exit.while.cond_crit_edge, label %mantis_uart_read.exit.while.end_crit_edge

mantis_uart_read.exit.while.end_crit_edge:        ; preds = %mantis_uart_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

mantis_uart_read.exit.while.cond_crit_edge:       ; preds = %mantis_uart_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %mantis_uart_read.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %intmask_lock.i = getelementptr i8, ptr %work, i32 -3680
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  tail call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 8
  %add.ptr.i101 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  %43 = or i32 %42, 524288
  %44 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio, align 8
  %add.ptr12.i = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %43) #4, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mantis_uart_exit(ptr noundef %mantis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intmask_lock.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 19
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intmask_lock.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  tail call void @arm_heavy_mb() #4
  %mmio.i = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 8
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !142
  %3 = and i32 %2, -524289
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %3) #4, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intmask_lock.i, i32 noundef %call2.i) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !143
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !144
  %9 = and i32 %8, -268500992
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 8
  %add.ptr3 = getelementptr i8, ptr %11, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #4, !srcloc !125
  %uart_work = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 41
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %uart_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_input_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 151, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mantis_uart_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mantis_uart_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mantis_uart_init._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @mantis_uart_init._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mantis_uart_init._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @mantis_uart_init._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mantis_uart_init._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @mantis_uart_init._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mantis_uart_init._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @mantis_uart_init._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mantis_uart_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 155, i32 2}
!19 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 173, i32 2}
!22 = !{ptr @mantis_uart_init._entry.15, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mantis_uart_init._entry_ptr.17, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.19, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mantis_uart_init._entry.18, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @mantis_uart_init._entry_ptr.20, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.22, !21, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mantis_uart_init._entry.21, !21, !"_entry", i1 false, i1 false}
!29 = !{ptr @mantis_uart_init._entry_ptr.23, !21, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.25, !21, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mantis_uart_init._entry.24, !21, !"_entry", i1 false, i1 false}
!32 = !{ptr @mantis_uart_init._entry_ptr.26, !21, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mantis_uart_init._entry.27, !21, !"_entry", i1 false, i1 false}
!34 = !{ptr @mantis_uart_init._entry_ptr.28, !21, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_mantis_uart_init, !36, !"__ksymtab_mantis_uart_init", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 177, i32 1}
!37 = !{ptr @__ksymtab_mantis_uart_exit, !38, !"__ksymtab_mantis_uart_exit", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 186, i32 1}
!39 = !{ptr @rates, !40, !"rates", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 36, i32 3}
!41 = !{ptr @parity, !42, !"parity", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 46, i32 3}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 88, i32 3}
!45 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mantis_uart_work._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mantis_uart_work._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mantis_uart_work._entry.31, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @mantis_uart_work._entry_ptr.33, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.35, !44, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mantis_uart_work._entry.34, !44, !"_entry", i1 false, i1 false}
!53 = !{ptr @mantis_uart_work._entry_ptr.36, !44, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.38, !44, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mantis_uart_work._entry.37, !44, !"_entry", i1 false, i1 false}
!56 = !{ptr @mantis_uart_work._entry_ptr.39, !44, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @mantis_uart_work._entry.40, !44, !"_entry", i1 false, i1 false}
!58 = !{ptr @mantis_uart_work._entry_ptr.41, !44, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 58, i32 2}
!61 = !{ptr @.str.43, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mantis_uart_read._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mantis_uart_read._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.45, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mantis_uart_read._entry.44, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @mantis_uart_read._entry_ptr.46, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.48, !60, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mantis_uart_read._entry.47, !60, !"_entry", i1 false, i1 false}
!69 = !{ptr @mantis_uart_read._entry_ptr.49, !60, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.51, !60, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mantis_uart_read._entry.50, !60, !"_entry", i1 false, i1 false}
!72 = !{ptr @mantis_uart_read._entry_ptr.52, !60, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mantis_uart_read._entry.53, !60, !"_entry", i1 false, i1 false}
!74 = !{ptr @mantis_uart_read._entry_ptr.54, !60, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.56, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 62, i32 3}
!77 = !{ptr @mantis_uart_read._entry.55, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mantis_uart_read._entry_ptr.57, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.59, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 68, i32 4}
!81 = !{ptr @mantis_uart_read._entry.58, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mantis_uart_read._entry_ptr.60, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.62, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mantis_uart_read._entry.61, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @mantis_uart_read._entry_ptr.63, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.65, !80, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mantis_uart_read._entry.64, !80, !"_entry", i1 false, i1 false}
!88 = !{ptr @mantis_uart_read._entry_ptr.66, !80, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.68, !80, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mantis_uart_read._entry.67, !80, !"_entry", i1 false, i1 false}
!91 = !{ptr @mantis_uart_read._entry_ptr.69, !80, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mantis_uart_read._entry.70, !80, !"_entry", i1 false, i1 false}
!93 = !{ptr @mantis_uart_read._entry_ptr.71, !80, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.73, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 71, i32 4}
!96 = !{ptr @mantis_uart_read._entry.72, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mantis_uart_read._entry_ptr.74, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.76, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mantis_uart_read._entry.75, !95, !"_entry", i1 false, i1 false}
!100 = !{ptr @mantis_uart_read._entry_ptr.77, !95, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.79, !95, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mantis_uart_read._entry.78, !95, !"_entry", i1 false, i1 false}
!103 = !{ptr @mantis_uart_read._entry_ptr.80, !95, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.82, !95, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mantis_uart_read._entry.81, !95, !"_entry", i1 false, i1 false}
!106 = !{ptr @mantis_uart_read._entry_ptr.83, !95, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @mantis_uart_read._entry.84, !95, !"_entry", i1 false, i1 false}
!108 = !{ptr @mantis_uart_read._entry_ptr.85, !95, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.87, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/mantis/mantis_uart.c", i32 73, i32 2}
!111 = !{ptr @mantis_uart_read._entry.86, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mantis_uart_read._entry_ptr.88, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2158149192}
!123 = !{i64 1709106}
!124 = !{i64 2158150151}
!125 = !{i64 1708688}
!126 = !{i64 2158132693}
!127 = !{i64 2158133692}
!128 = !{i64 2158134319}
!129 = !{i64 2158134659}
!130 = !{i64 2158151926}
!131 = !{i64 2158152921}
!132 = !{i64 2158154687}
!133 = !{i64 2158155660}
!134 = !{i64 2158157403}
!135 = !{i64 2158158366}
!136 = !{i64 2158067210}
!137 = !{i64 2158068165}
!138 = !{i64 2158120042}
!139 = !{i64 2158079126}
!140 = !{i64 2158130443}
!141 = !{i64 2158063993}
!142 = !{i64 2158064950}
!143 = !{i64 2158176309}
!144 = !{i64 2158177268}
