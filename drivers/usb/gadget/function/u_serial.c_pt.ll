; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/u_serial.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/u_serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gs_alloc_req\22, \22a\22\09"
module asm "\09.weak\09__crc_gs_alloc_req\09\09\09\09"
module asm "\09.long\09__crc_gs_alloc_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gs_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22gs_alloc_req\22\09\09\09\09\09"
module asm "__kstrtabns_gs_alloc_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gs_free_req\22, \22a\22\09"
module asm "\09.weak\09__crc_gs_free_req\09\09\09\09"
module asm "\09.long\09__crc_gs_free_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gs_free_req:\09\09\09\09\09"
module asm "\09.asciz \09\22gs_free_req\22\09\09\09\09\09"
module asm "__kstrtabns_gs_free_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_set_console\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_set_console\09\09\09\09"
module asm "\09.long\09__crc_gserial_set_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_set_console:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_set_console\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_set_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_get_console\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_get_console\09\09\09\09"
module asm "\09.long\09__crc_gserial_get_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_get_console:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_get_console\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_get_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_free_line\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_free_line\09\09\09\09"
module asm "\09.long\09__crc_gserial_free_line\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_free_line:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_free_line\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_free_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_alloc_line_no_console\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_alloc_line_no_console\09\09\09\09"
module asm "\09.long\09__crc_gserial_alloc_line_no_console\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_alloc_line_no_console:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_alloc_line_no_console\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_alloc_line_no_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_alloc_line\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_alloc_line\09\09\09\09"
module asm "\09.long\09__crc_gserial_alloc_line\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_alloc_line:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_alloc_line\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_alloc_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_connect\09\09\09\09"
module asm "\09.long\09__crc_gserial_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_connect\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_disconnect\09\09\09\09"
module asm "\09.long\09__crc_gserial_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_suspend\09\09\09\09"
module asm "\09.long\09__crc_gserial_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gserial_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_gserial_resume\09\09\09\09"
module asm "\09.long\09__crc_gserial_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gserial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22gserial_resume\22\09\09\09\09\09"
module asm "__kstrtabns_gserial_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.portmaster = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.gs_port = type { %struct.tty_port, %struct.spinlock, ptr, ptr, i8, %struct.list_head, i32, i32, %struct.list_head, i32, %struct.delayed_work, %struct.list_head, i32, i32, %struct.kfifo, %struct.wait_queue_head, i8, %struct.wait_queue_head, i8, i8, %struct.usb_cdc_line_coding }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_buffer = type { %union.anon, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon = type { ptr }
%struct.llist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kfifo = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.gs_console = type { %struct.console, %struct.work_struct, %struct.spinlock, ptr, %struct.kfifo, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }

@__kstrtab_gs_alloc_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_gs_alloc_req = external dso_local constant [0 x i8], align 1
@__ksymtab_gs_alloc_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gs_alloc_req to i32), ptr @__kstrtab_gs_alloc_req, ptr @__kstrtabns_gs_alloc_req }, section "___ksymtab_gpl+gs_alloc_req", align 4
@__kstrtab_gs_free_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_gs_free_req = external dso_local constant [0 x i8], align 1
@__ksymtab_gs_free_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gs_free_req to i32), ptr @__kstrtab_gs_free_req, ptr @__kstrtabns_gs_free_req }, section "___ksymtab_gpl+gs_free_req", align 4
@ports = internal global { [8 x %struct.portmaster], [192 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/function/u_serial.c\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_gserial_set_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_set_console = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_set_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_set_console to i32), ptr @__kstrtab_gserial_set_console, ptr @__kstrtabns_gserial_set_console }, section "___ksymtab_gpl+gserial_set_console", align 4
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_gserial_get_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_get_console = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_get_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_get_console to i32), ptr @__kstrtab_gserial_get_console, ptr @__kstrtabns_gserial_get_console }, section "___ksymtab_gpl+gserial_get_console", align 4
@gs_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_gserial_free_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_free_line = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_free_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_free_line to i32), ptr @__kstrtab_gserial_free_line, ptr @__kstrtabns_gserial_free_line }, section "___ksymtab_gpl+gserial_free_line", align 4
@gserial_alloc_line_no_console._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: failed to register tty for port %d, err %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gserial_alloc_line_no_console\00", [34 x i8] zeroinitializer }, align 32
@gserial_alloc_line_no_console._entry_ptr = internal global ptr @gserial_alloc_line_no_console._entry, section ".printk_index", align 4
@__kstrtab_gserial_alloc_line_no_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_alloc_line_no_console = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_alloc_line_no_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_alloc_line_no_console to i32), ptr @__kstrtab_gserial_alloc_line_no_console, ptr @__kstrtabns_gserial_alloc_line_no_console }, section "___ksymtab_gpl+gserial_alloc_line_no_console", align 4
@__kstrtab_gserial_alloc_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_alloc_line = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_alloc_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_alloc_line to i32), ptr @__kstrtab_gserial_alloc_line, ptr @__kstrtabns_gserial_alloc_line }, section "___ksymtab_gpl+gserial_alloc_line", align 4
@gserial_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013serial line %d not allocated.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gserial_connect\00", [16 x i8] zeroinitializer }, align 32
@gserial_connect._entry_ptr = internal global ptr @gserial_connect._entry, section ".printk_index", align 4
@gserial_connect._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013serial line %d is in use.\0A\00", [35 x i8] zeroinitializer }, align 32
@gserial_connect._entry_ptr.8 = internal global ptr @gserial_connect._entry.6, section ".printk_index", align 4
@gserial_connect.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.5, ptr @.str, ptr @.str.10, i8 1, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"u_serial\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gserial_connect: start ttyGS%d\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_gserial_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_connect to i32), ptr @__kstrtab_gserial_connect, ptr @__kstrtabns_gserial_connect }, section "___ksymtab_gpl+gserial_connect", align 4
@__kstrtab_gserial_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_disconnect to i32), ptr @__kstrtab_gserial_disconnect, ptr @__kstrtabns_gserial_disconnect }, section "___ksymtab_gpl+gserial_disconnect", align 4
@__kstrtab_gserial_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_suspend to i32), ptr @__kstrtab_gserial_suspend, ptr @__kstrtabns_gserial_suspend }, section "___ksymtab_gpl+gserial_suspend", align 4
@gserial_resume.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.11, ptr @.str, ptr @.str.12, i8 1, i8 103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gserial_resume\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"delayed start ttyGS%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_gserial_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_gserial_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_gserial_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gserial_resume to i32), ptr @__kstrtab_gserial_resume, ptr @__kstrtabns_gserial_resume }, section "___ksymtab_gpl+gserial_resume", align 4
@__initcall__kmod_u_serial__252_1497_userial_init6 = internal global ptr @userial_init, section ".initcall6.init", align 4
@__exitcall_userial_cleanup = internal global ptr @userial_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [51 x i8] c"u_serial.file=drivers/usb/gadget/function/u_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [21 x i8] c"u_serial.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyGS\00", [26 x i8] zeroinitializer }, align 32
@gs_console_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&cons->work)\00", [33 x i8] zeroinitializer }, align 32
@gs_console_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cons->lock\00", [20 x i8] zeroinitializer }, align 32
@gs_console_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ttyGS%d: allocate console buffer failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gs_console_init\00", [16 x i8] zeroinitializer }, align 32
@gs_console_init._entry_ptr = internal global ptr @gs_console_init._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A[missed %zu bytes]\0A\00", [43 x i8] zeroinitializer }, align 32
@gs_port_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&port->port_lock\00", [47 x i8] zeroinitializer }, align 32
@gs_port_alloc.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->drain_wait\00", [46 x i8] zeroinitializer }, align 32
@gs_port_alloc.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&port->close_wait\00", [46 x i8] zeroinitializer }, align 32
@gs_port_alloc.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&port->push)->work)\00", [56 x i8] zeroinitializer }, align 32
@gs_port_alloc.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&port->push)->timer\00", [42 x i8] zeroinitializer }, align 32
@gs_rx_push.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.29, ptr @.str, ptr @.str.30, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gs_rx_push\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ttyGS%d: shutdown\0A\00", [45 x i8] zeroinitializer }, align 32
@gs_rx_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ttyGS%d: unexpected RX status %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gs_rx_push._entry_ptr = internal global ptr @gs_rx_push._entry, section ".printk_index", align 4
@gs_rx_push.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.29, ptr @.str, ptr @.str.32, i8 0, i8 103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ttyGS%d: rx block %d/%d\0A\00", [39 x i8] zeroinitializer }, align 32
@gs_start_rx.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.33, ptr @.str, ptr @.str.34, i8 0, i8 83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gs_start_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %s %s err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"queue\00", [26 x i8] zeroinitializer }, align 32
@gs_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: unexpected %s status %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gs_write_complete\00", [46 x i8] zeroinitializer }, align 32
@gs_write_complete._entry_ptr = internal global ptr @gs_write_complete._entry, section ".printk_index", align 4
@gs_write_complete.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.37, ptr @.str, ptr @.str.38, i8 0, i8 120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s shutdown\0A\00", [47 x i8] zeroinitializer }, align 32
@gs_start_tx.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str, ptr @.str.40, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gs_start_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ttyGS%d: tx len=%d, %3ph ...\0A\00", [34 x i8] zeroinitializer }, align 32
@gs_start_tx.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.39, ptr @.str, ptr @.str.34, i8 0, i8 69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@gs_console_connect.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.41, ptr @.str, ptr @.str.42, i8 0, i8 -12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gs_console_connect\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ttyGS%d: console connected!\0A\00", [35 x i8] zeroinitializer }, align 32
@gs_console_complete_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.43, ptr @.str, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gs_console_complete_out\00", [40 x i8] zeroinitializer }, align 32
@gs_console_complete_out._entry_ptr = internal global ptr @gs_console_complete_out._entry, section ".printk_index", align 4
@gs_console_complete_out.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.43, ptr @.str, ptr @.str.38, i8 0, i8 -36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g_serial\00", [23 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@gs_tty_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @gs_open, ptr @gs_close, ptr null, ptr null, ptr @gs_write, ptr @gs_put_char, ptr @gs_flush_chars, ptr @gs_write_room, ptr @gs_chars_in_buffer, ptr null, ptr null, ptr null, ptr null, ptr @gs_unthrottle, ptr null, ptr null, ptr null, ptr @gs_break_ctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@userial_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ports[i].lock\00", [17 x i8] zeroinitializer }, align 32
@userial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: cannot register, err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"userial_init\00", [19 x i8] zeroinitializer }, align 32
@userial_init._entry_ptr = internal global ptr @userial_init._entry, section ".printk_index", align 4
@userial_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.47, ptr @.str, ptr @.str.48, i8 1, i8 116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: registered %d ttyGS* device%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@gs_open.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.50, ptr @.str, ptr @.str.51, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gs_open\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"gs_open: ttyGS%d (%p,%p) no buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@gs_open.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.50, ptr @.str, ptr @.str.52, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gs_open: start ttyGS%d\0A\00", [40 x i8] zeroinitializer }, align 32
@gs_open.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.50, ptr @.str, ptr @.str.53, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"delay start of ttyGS%d\0A\00", [40 x i8] zeroinitializer }, align 32
@gs_open.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.50, ptr @.str, ptr @.str.54, i8 0, i8 -94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gs_open: ttyGS%d (%p,%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@gs_close.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str, ptr @.str.56, i8 0, i8 -85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gs_close\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gs_close: ttyGS%d (%p,%p) ...\0A\00", [33 x i8] zeroinitializer }, align 32
@gs_close.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.55, ptr @.str, ptr @.str.57, i8 0, i8 -76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gs_close: ttyGS%d (%p,%p) done!\0A\00", [63 x i8] zeroinitializer }, align 32
@gs_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.58, ptr @.str, ptr @.str.59, i8 0, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gs_write\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gs_write: ttyGS%d (%p) writing %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@gs_put_char.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.60, ptr @.str, ptr @.str.61, i8 0, i8 -68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gs_put_char\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"gs_put_char: (%d,%p) char=0x%x, called from %ps\0A\00", [47 x i8] zeroinitializer }, align 32
@gs_flush_chars.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.62, ptr @.str, ptr @.str.63, i8 0, i8 -64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gs_flush_chars\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gs_flush_chars: (%d,%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@gs_write_room.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.64, ptr @.str, ptr @.str.65, i8 0, i8 -59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gs_write_room\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gs_write_room: (%d,%p) room=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@gs_chars_in_buffer.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.66, ptr @.str, ptr @.str.67, i8 0, i8 -55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gs_chars_in_buffer\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"gs_chars_in_buffer: (%d,%p) chars=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@gs_unthrottle.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str, ptr @.str.69, i8 0, i8 -51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gs_unthrottle\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttyGS%d: unthrottle\0A\00", [43 x i8] zeroinitializer }, align 32
@gs_break_ctl.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gs_break_ctl\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gs_break_ctl: ttyGS%d, send break (%d) \0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 133, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1080, i32 6 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1107, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"gs_tty_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 860, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1245, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1304, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1308, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1339, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1437, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1020, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1026, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1027, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1031, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 909, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1156, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1157, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1158, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1160, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 380, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 385, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 414, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 332, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 471, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 481, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 261, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 977, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 870, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1457, i32 24 }
@___asan_gen_.236 = private unnamed_addr constant [11 x i8] c"gs_tty_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 846, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1476, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1481, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1488, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 616, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 637, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 643, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 648, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 686, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 721, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 734, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 754, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 769, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 788, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 804, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 822, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [42 x i8] c"../drivers/usb/gadget/function/u_serial.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 834, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_userial_cleanup, ptr @__initcall__kmod_u_serial__252_1497_userial_init6, ptr @__ksymtab_gs_alloc_req, ptr @__ksymtab_gs_free_req, ptr @__ksymtab_gserial_alloc_line, ptr @__ksymtab_gserial_alloc_line_no_console, ptr @__ksymtab_gserial_connect, ptr @__ksymtab_gserial_disconnect, ptr @__ksymtab_gserial_free_line, ptr @__ksymtab_gserial_get_console, ptr @__ksymtab_gserial_resume, ptr @__ksymtab_gserial_set_console, ptr @__ksymtab_gserial_suspend, ptr @gs_console_complete_out._entry, ptr @gs_console_complete_out._entry_ptr, ptr @gs_console_init._entry, ptr @gs_console_init._entry_ptr, ptr @gs_rx_push._entry, ptr @gs_rx_push._entry_ptr, ptr @gs_write_complete._entry, ptr @gs_write_complete._entry_ptr, ptr @gserial_alloc_line_no_console._entry, ptr @gserial_alloc_line_no_console._entry_ptr, ptr @gserial_connect._entry, ptr @gserial_connect._entry.6, ptr @gserial_connect._entry_ptr, ptr @gserial_connect._entry_ptr.8, ptr @userial_init._entry, ptr @userial_init._entry_ptr, ptr @ports, ptr @.str, ptr @.str.1, ptr @gs_tty_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @gs_console_init.__key, ptr @.str.14, ptr @gs_console_init.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @gs_port_alloc.__key, ptr @.str.20, ptr @gs_port_alloc.__key.21, ptr @.str.22, ptr @gs_port_alloc.__key.23, ptr @.str.24, ptr @gs_port_alloc.__key.25, ptr @.str.26, ptr @gs_port_alloc.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @gs_tty_ops, ptr @userial_init.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gserial_alloc_line_no_console._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gserial_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gserial_connect._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_console_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_console_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_console_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_port_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_port_alloc.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_port_alloc.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_port_alloc.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_port_alloc.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_rx_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_console_complete_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_tty_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userial_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gs_alloc_req(ptr noundef %ep, i32 noundef %len, i32 noundef %kmalloc_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_ep_alloc_request(ptr noundef %ep, i32 noundef %kmalloc_flags) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.usb_request, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %length, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef %kmalloc_flags) #13
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i, ptr %call, align 4
  %cmp3 = icmp eq ptr %call9.i, null
  br i1 %cmp3, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ %call, %if.then.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gs_free_req(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gserial_set_console(i8 noundef zeroext %port_num, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #10
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !201
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %enable) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %idxprom = zext i8 %port_num to i32
  %arrayidx = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom
  call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %port3 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom, i32 1
  %1 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port3, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %out.thread, label %if.end27, !prof !202

out.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef null) #10
  call void @mutex_unlock(ptr noundef %arrayidx) #10
  br label %5

if.end27:                                         ; preds = %if.end
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool28.not = icmp eq i8 %4, 0
  br i1 %tobool28.not, label %out.thread49, label %out

out.thread49:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @gs_console_exit(ptr noundef nonnull %2)
  call void @mutex_unlock(ptr noundef %arrayidx) #10
  br label %cleanup

out:                                              ; preds = %if.end27
  %call30 = call fastcc i32 @gs_console_init(ptr noundef nonnull %2)
  call void @mutex_unlock(ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp35 = icmp slt i32 %call30, 0
  br i1 %cmp35, label %out._crit_edge, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %5

5:                                                ; preds = %out._crit_edge, %out.thread
  %ret.048 = phi i32 [ -6, %out.thread ], [ %call30, %out._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %5, %out.cleanup_crit_edge, %out.thread49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %ret.048, %5 ], [ %count, %out.cleanup_crit_edge ], [ %count, %out.thread49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_console_init(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %console = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %console to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %console, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 184) #14
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.13, i32 6)
  %write = getelementptr inbounds %struct.console, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @gs_console_write, ptr %write, align 8
  %device = getelementptr inbounds %struct.console, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gs_console_device, ptr %device, align 8
  %flags = getelementptr inbounds %struct.console, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 4
  %port_num = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 4
  %7 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_num, align 4
  %conv = zext i8 %8 to i16
  %index = getelementptr inbounds %struct.console, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %index, align 2
  %work = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %10 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @gs_console_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry13 = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry13, ptr %entry13, align 8
  %prev.i = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gs_console_work, ptr %func, align 8
  %lock = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @gs_console_init.__key.15, i16 noundef signext 3) #10
  %buf = getelementptr inbounds %struct.gs_console, ptr %call7.i.i, i32 0, i32 4
  %call19 = tail call i32 @__kfifo_alloc(ptr noundef %buf, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end30, label %do.end25

do.end25:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_num, align 4
  %conv28 = zext i8 %15 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv28) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end3
  %16 = ptrtoint ptr %console to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %console, align 4
  tail call void @register_console(ptr noundef nonnull %call7.i.i) #10
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %17 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port_usb, align 4
  %tobool33.not = icmp eq ptr %18, null
  br i1 %tobool33.not, label %if.end30.if.end36_crit_edge, label %if.then34

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call fastcc i32 @gs_console_connect(ptr noundef %port)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end25 ], [ 0, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gs_console_exit(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %console = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %console to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %console, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @unregister_console(ptr noundef nonnull %1) #10
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %req = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %console to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %console, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then3.if.end4_crit_edge, label %if.end.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i:                                         ; preds = %if.then3
  %lock.i = getelementptr inbounds %struct.gs_console, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %req1.i = getelementptr inbounds %struct.gs_console, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req1.i, align 4
  %data.i = getelementptr inbounds %struct.console, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  store ptr null, ptr %req1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.end.i.if.end4_crit_edge, label %if.end7.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @usb_ep_dequeue(ptr noundef %9, ptr noundef nonnull %7) #10
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %11) #10
  tail call void @usb_ep_free_request(ptr noundef %9, ptr noundef nonnull %7) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end7.i, %if.end.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  %work = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 1
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #10
  %buf = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 4
  tail call void @__kfifo_free(ptr noundef %buf) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %12 = ptrtoint ptr %console to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %console, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gserial_get_console(i8 noundef zeroext %port_num, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %port_num to i32
  %arrayidx = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %port3 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port3, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.else, !prof !202

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1104, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %console = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %console to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %console, align 4
  %tobool24 = icmp ne ptr %3, null
  %lnot.ext28 = zext i1 %tobool24 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.1, i32 noundef %lnot.ext28)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ -6, %do.end ], [ %call, %if.else ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gserial_free_line(i8 noundef zeroext %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %port_num to i32
  %arrayidx = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %port3 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gs_console_exit(ptr noundef nonnull %1)
  %2 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %port3, align 4
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  tail call fastcc void @gserial_free_port(ptr noundef nonnull %1)
  %3 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_unregister_device(ptr noundef %3, i32 noundef %idxprom) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gserial_free_port(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %push = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %push) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1190) #10
  %port_lock.i = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock.i) #10
  %count.i = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock.i) #10
  br i1 %cmp.i.not, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %close_wait = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 17
  %call551 = call i32 @prepare_to_wait_event(ptr noundef %close_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %port_lock.i) #10
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i47.not52 = icmp eq i32 %4, 0
  call void @_raw_spin_unlock_irq(ptr noundef %port_lock.i) #10
  br i1 %cmp.i47.not52, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %close_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  call void @_raw_spin_lock_irq(ptr noundef %port_lock.i) #10
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %cmp.i47.not = icmp eq i32 %6, 0
  call void @_raw_spin_unlock_irq(ptr noundef %port_lock.i) #10
  br i1 %cmp.i47.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %close_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %7 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_usb, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %do.end11.if.end28_crit_edge, label %do.end22, !prof !204

do.end11.if.end28_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end22:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end22, %do.end11.if.end28_crit_edge
  call void @tty_port_destroy(ptr noundef %port) #10
  call void @kfree(ptr noundef %port) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gserial_alloc_line_no_console(ptr nocapture noundef writeonly %line_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ports, i32 noundef 0) #10
  %0 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 0, i32 1), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %for.inc

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.6.if.end.i_crit_edge, %for.inc.5.if.end.i_crit_edge, %for.inc.4.if.end.i_crit_edge, %for.inc.3.if.end.i_crit_edge, %for.inc.2.if.end.i_crit_edge, %for.inc.1.if.end.i_crit_edge, %for.inc.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %port_num.050.lcssa = phi i32 [ 0, %entry.if.end.i_crit_edge ], [ 1, %for.inc.if.end.i_crit_edge ], [ 2, %for.inc.1.if.end.i_crit_edge ], [ 3, %for.inc.2.if.end.i_crit_edge ], [ 4, %for.inc.3.if.end.i_crit_edge ], [ 5, %for.inc.4.if.end.i_crit_edge ], [ 6, %for.inc.5.if.end.i_crit_edge ], [ 7, %for.inc.6.if.end.i_crit_edge ]
  %arrayidx.i.lcssa = phi ptr [ @ports, %entry.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1), %for.inc.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2), %for.inc.1.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3), %for.inc.2.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4), %for.inc.3.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5), %for.inc.4.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6), %for.inc.5.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7), %for.inc.6.if.end.i_crit_edge ]
  %port2.i.lcssa = phi ptr [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 0, i32 1), %entry.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1, i32 1), %for.inc.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2, i32 1), %for.inc.1.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3, i32 1), %for.inc.2.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4, i32 1), %for.inc.3.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5, i32 1), %for.inc.4.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6, i32 1), %for.inc.5.if.end.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7, i32 1), %for.inc.6.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 916) #14
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %gs_port_alloc.exit.thread, label %if.end6

gs_port_alloc.exit.thread:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.lcssa) #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  tail call void @mutex_unlock(ptr noundef nonnull @ports) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1), i32 noundef 0) #10
  %2 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1, i32 1), align 4
  %tobool.not.i.1 = icmp eq ptr %2, null
  br i1 %tobool.not.i.1, label %for.inc.if.end.i_crit_edge, label %for.inc.1

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.1:                                        ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2), i32 noundef 0) #10
  %3 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2, i32 1), align 4
  %tobool.not.i.2 = icmp eq ptr %3, null
  br i1 %tobool.not.i.2, label %for.inc.1.if.end.i_crit_edge, label %for.inc.2

for.inc.1.if.end.i_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.2:                                        ; preds = %for.inc.1
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3), i32 noundef 0) #10
  %4 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3, i32 1), align 4
  %tobool.not.i.3 = icmp eq ptr %4, null
  br i1 %tobool.not.i.3, label %for.inc.2.if.end.i_crit_edge, label %for.inc.3

for.inc.2.if.end.i_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.3:                                        ; preds = %for.inc.2
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4), i32 noundef 0) #10
  %5 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4, i32 1), align 4
  %tobool.not.i.4 = icmp eq ptr %5, null
  br i1 %tobool.not.i.4, label %for.inc.3.if.end.i_crit_edge, label %for.inc.4

for.inc.3.if.end.i_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.4:                                        ; preds = %for.inc.3
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5), i32 noundef 0) #10
  %6 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5, i32 1), align 4
  %tobool.not.i.5 = icmp eq ptr %6, null
  br i1 %tobool.not.i.5, label %for.inc.4.if.end.i_crit_edge, label %for.inc.5

for.inc.4.if.end.i_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.5:                                        ; preds = %for.inc.4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6), i32 noundef 0) #10
  %7 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6, i32 1), align 4
  %tobool.not.i.6 = icmp eq ptr %7, null
  br i1 %tobool.not.i.6, label %for.inc.5.if.end.i_crit_edge, label %for.inc.6

for.inc.5.if.end.i_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.6:                                        ; preds = %for.inc.5
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6)) #10
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7), i32 noundef 0) #10
  %8 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7, i32 1), align 4
  %tobool.not.i.7 = icmp eq ptr %8, null
  br i1 %tobool.not.i.7, label %for.inc.6.if.end.i_crit_edge, label %for.inc.7

for.inc.6.if.end.i_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7)) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  tail call void @tty_port_init(ptr noundef nonnull %call7.i.i.i) #10
  %port_lock.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %port_lock.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @gs_port_alloc.__key, i16 noundef signext 3) #10
  %drain_wait.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %drain_wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @gs_port_alloc.__key.21) #10
  %close_wait.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %close_wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @gs_port_alloc.__key.23) #10
  %push.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %push.i, i32 noundef 0) #10
  %9 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %push.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @gs_port_alloc.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry21.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %entry21.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry21.i, ptr %entry21.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry21.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gs_rx_push, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @gs_port_alloc.__key.27) #10
  %read_pool.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %read_pool.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %read_pool.i, ptr %read_pool.i, align 8
  %prev.i57.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %read_pool.i, ptr %prev.i57.i, align 4
  %read_queue.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %read_queue.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %read_queue.i, ptr %read_queue.i, align 8
  %prev.i58.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %read_queue.i, ptr %prev.i58.i, align 4
  %write_pool.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %write_pool.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %write_pool.i, ptr %write_pool.i, align 8
  %prev.i59.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev.i59.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %write_pool.i, ptr %prev.i59.i, align 4
  %conv.i = trunc i32 %port_num.050.lcssa to i8
  %port_num32.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %port_num32.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %port_num32.i, align 4
  %port_line_coding.i = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 20
  %20 = ptrtoint ptr %port_line_coding.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -2145058816, ptr %port_line_coding.i, align 2
  %coding.sroa.5.0.port_line_coding.i.sroa_idx = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 20, i32 1
  %21 = ptrtoint ptr %coding.sroa.5.0.port_line_coding.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %coding.sroa.5.0.port_line_coding.i.sroa_idx, align 2
  %coding.sroa.7.0.port_line_coding.i.sroa_idx = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %coding.sroa.7.0.port_line_coding.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %coding.sroa.7.0.port_line_coding.i.sroa_idx, align 1
  %coding.sroa.9.0.port_line_coding.i.sroa_idx = getelementptr inbounds %struct.gs_port, ptr %call7.i.i.i, i32 0, i32 20, i32 3
  %23 = ptrtoint ptr %coding.sroa.9.0.port_line_coding.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %coding.sroa.9.0.port_line_coding.i.sroa_idx, align 8
  %24 = ptrtoint ptr %port2.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %port2.i.lcssa, align 4
  tail call void @mutex_unlock(ptr noundef %arrayidx.i.lcssa) #10
  %port7 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %port_num.050.lcssa, i32 1
  %25 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port7, align 4
  %27 = load ptr, ptr @gs_tty_driver, align 4
  %call9 = tail call ptr @tty_port_register_device(ptr noundef %26, ptr noundef %27, i32 noundef %port_num.050.lcssa, ptr noundef null) #10
  %cmp.i42 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %port_num.050.lcssa
  %28 = ptrtoint ptr %call9 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %port_num.050.lcssa, i32 noundef %28) #15
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %29 = ptrtoint ptr %port7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %port7, align 4
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  tail call fastcc void @gserial_free_port(ptr noundef %26)
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %line_num to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %line_num, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %for.inc.7, %gs_port_alloc.exit.thread
  %retval.0 = phi i32 [ %28, %do.end ], [ 0, %if.end20 ], [ -12, %gs_port_alloc.exit.thread ], [ -16, %for.inc.7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gserial_alloc_line(ptr nocapture noundef %line_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gserial_alloc_line_no_console(ptr noundef %line_num)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %line_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %2 = load ptr, ptr getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 0, i32 1), align 4
  %call2 = tail call fastcc i32 @gs_console_init(ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gserial_connect(ptr noundef %gser, i8 noundef zeroext %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %port_num to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %port_num)
  %cmp = icmp ugt i8 %port_num, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port2 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %conv, i32 1
  %0 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_usb, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %in = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 2
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %call15 = tail call i32 @usb_ep_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %7, align 4
  %out = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 3
  %9 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out, align 4
  %call21 = tail call i32 @usb_ep_enable(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %fail_out, label %if.end25

if.end25:                                         ; preds = %if.end19
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %12, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %ioport = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 1
  %14 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %ioport, align 4
  %15 = ptrtoint ptr %port_usb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %gser, ptr %port_usb, align 4
  %port_line_coding = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 4
  %port_line_coding40 = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 20
  %16 = call ptr @memcpy(ptr %port_line_coding, ptr %port_line_coding40, i32 7)
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool42.not = icmp eq i32 %18, 0
  br i1 %tobool42.not, label %if.else, label %do.body44

do.body44:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gserial_connect.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gserial_connect, %do.end56)) #10
          to label %if.then51 [label %do.end56], !srcloc !205

if.then51:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %port_num52 = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %port_num52 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port_num52, align 4
  %conv53 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gserial_connect.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.10, i32 noundef %conv53) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body44
  tail call fastcc void @gs_start_io(ptr noundef nonnull %1)
  %connect = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 5
  %21 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %connect, align 4
  %tobool58.not = icmp eq ptr %22, null
  br i1 %tobool58.not, label %do.end56.if.end66_crit_edge, label %do.end56.if.end66.sink.split_crit_edge

do.end56.if.end66.sink.split_crit_edge:           ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.sink.split

do.end56.if.end66_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.else:                                          ; preds = %if.end25
  %disconnect = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 6
  %23 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %disconnect, align 4
  %tobool62.not = icmp eq ptr %24, null
  br i1 %tobool62.not, label %if.else.if.end66_crit_edge, label %if.else.if.end66.sink.split_crit_edge

if.else.if.end66.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.sink.split

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end66.sink.split:                              ; preds = %if.else.if.end66.sink.split_crit_edge, %do.end56.if.end66.sink.split_crit_edge
  %.sink = phi ptr [ %22, %do.end56.if.end66.sink.split_crit_edge ], [ %24, %if.else.if.end66.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %gser) #10
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %if.else.if.end66_crit_edge, %do.end56.if.end66_crit_edge
  %call67 = tail call fastcc i32 @gs_console_connect(ptr noundef nonnull %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call34) #10
  br label %cleanup

fail_out:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in, align 4
  %call70 = tail call i32 @usb_ep_disable(ptr noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_out, %if.end66, %if.end14.cleanup_crit_edge, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end10 ], [ %call21, %fail_out ], [ %call67, %if.end66 ], [ -22, %do.end ], [ -6, %entry.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gs_start_io(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_pool = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 5
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_usb, align 4
  %out = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out, align 4
  %read_allocated = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 7
  %call = tail call fastcc i32 @gs_alloc_requests(ptr noundef %3, ptr noundef %read_pool, ptr noundef nonnull @gs_read_complete, ptr noundef %read_allocated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_usb, align 4
  %in = getelementptr inbounds %struct.gserial, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in, align 4
  %write_pool = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 11
  %write_allocated = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 13
  %call2 = tail call fastcc i32 @gs_alloc_requests(ptr noundef %7, ptr noundef %write_pool, ptr noundef nonnull @gs_write_complete, ptr noundef %write_allocated)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not5.i = icmp eq ptr %9, %read_pool
  br i1 %cmp.i.not5.i, label %if.then4.cleanup_crit_edge, label %while.body.lr.ph.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then4
  %tobool1.not.i = icmp eq ptr %read_allocated, null
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi ptr [ %9, %while.body.lr.ph.i ], [ %24, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %10, i32 -36
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %20) #10
  tail call void @usb_ep_free_request(ptr noundef %3, ptr noundef %add.ptr.i) #10
  br i1 %tobool1.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %read_allocated to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_allocated, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %read_allocated, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %23 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not.i = icmp eq ptr %24, %read_pool
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %n_read = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 9
  %25 = ptrtoint ptr %n_read to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %n_read, align 4
  %call7 = tail call fastcc i32 @gs_start_rx(ptr noundef %port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gs_start_tx(ptr noundef %port)
  %tty = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 1
  %26 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tty, align 4
  tail call void @tty_wakeup(ptr noundef %27) #10
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %28 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not5.i1 = icmp eq ptr %29, %read_pool
  br i1 %cmp.i.not5.i1, label %if.else.gs_free_requests.exit16_crit_edge, label %while.body.lr.ph.i3

if.else.gs_free_requests.exit16_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit16

while.body.lr.ph.i3:                              ; preds = %if.else
  %tobool1.not.i2 = icmp eq ptr %read_allocated, null
  br label %while.body.i6

while.body.i6:                                    ; preds = %if.end.i15.while.body.i6_crit_edge, %while.body.lr.ph.i3
  %30 = phi ptr [ %29, %while.body.lr.ph.i3 ], [ %44, %if.end.i15.while.body.i6_crit_edge ]
  %add.ptr.i4 = getelementptr i8, ptr %30, i32 -36
  %call.i.i.i5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #10
  br i1 %call.i.i.i5, label %if.end.i.i.i9, label %while.body.i6.list_del.exit.i11_crit_edge

while.body.i6.list_del.exit.i11_crit_edge:        ; preds = %while.body.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i11

if.end.i.i.i9:                                    ; preds = %while.body.i6
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i7 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i7, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i8, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i11

list_del.exit.i11:                                ; preds = %if.end.i.i.i9, %while.body.i6.list_del.exit.i11_crit_edge
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i10 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i10, align 4
  %39 = ptrtoint ptr %add.ptr.i4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i4, align 4
  tail call void @kfree(ptr noundef %40) #10
  tail call void @usb_ep_free_request(ptr noundef %3, ptr noundef %add.ptr.i4) #10
  br i1 %tobool1.not.i2, label %list_del.exit.i11.if.end.i15_crit_edge, label %if.then.i13

list_del.exit.i11.if.end.i15_crit_edge:           ; preds = %list_del.exit.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i15

if.then.i13:                                      ; preds = %list_del.exit.i11
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %read_allocated to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read_allocated, align 4
  %dec.i12 = add i32 %42, -1
  store i32 %dec.i12, ptr %read_allocated, align 4
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i13, %list_del.exit.i11.if.end.i15_crit_edge
  %43 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not.i14 = icmp eq ptr %44, %read_pool
  br i1 %cmp.i.not.i14, label %if.end.i15.gs_free_requests.exit16_crit_edge, label %if.end.i15.while.body.i6_crit_edge

if.end.i15.while.body.i6_crit_edge:               ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i6

if.end.i15.gs_free_requests.exit16_crit_edge:     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit16

gs_free_requests.exit16:                          ; preds = %if.end.i15.gs_free_requests.exit16_crit_edge, %if.else.gs_free_requests.exit16_crit_edge
  %45 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_usb, align 4
  %in14 = getelementptr inbounds %struct.gserial, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %in14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %in14, align 4
  %49 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not5.i17 = icmp eq ptr %50, %write_pool
  br i1 %cmp.i.not5.i17, label %gs_free_requests.exit16.cleanup_crit_edge, label %while.body.lr.ph.i19

gs_free_requests.exit16.cleanup_crit_edge:        ; preds = %gs_free_requests.exit16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph.i19:                             ; preds = %gs_free_requests.exit16
  %tobool1.not.i18 = icmp eq ptr %write_allocated, null
  br label %while.body.i22

while.body.i22:                                   ; preds = %if.end.i31.while.body.i22_crit_edge, %while.body.lr.ph.i19
  %51 = phi ptr [ %50, %while.body.lr.ph.i19 ], [ %65, %if.end.i31.while.body.i22_crit_edge ]
  %add.ptr.i20 = getelementptr i8, ptr %51, i32 -36
  %call.i.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %51) #10
  br i1 %call.i.i.i21, label %if.end.i.i.i25, label %while.body.i22.list_del.exit.i27_crit_edge

while.body.i22.list_del.exit.i27_crit_edge:       ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i27

if.end.i.i.i25:                                   ; preds = %while.body.i22
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i23, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %prev1.i.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i24, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit.i27

list_del.exit.i27:                                ; preds = %if.end.i.i.i25, %while.body.i22.list_del.exit.i27_crit_edge
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i26, align 4
  %60 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i20, align 4
  tail call void @kfree(ptr noundef %61) #10
  tail call void @usb_ep_free_request(ptr noundef %48, ptr noundef %add.ptr.i20) #10
  br i1 %tobool1.not.i18, label %list_del.exit.i27.if.end.i31_crit_edge, label %if.then.i29

list_del.exit.i27.if.end.i31_crit_edge:           ; preds = %list_del.exit.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i31

if.then.i29:                                      ; preds = %list_del.exit.i27
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %write_allocated to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %write_allocated, align 4
  %dec.i28 = add i32 %63, -1
  store i32 %dec.i28, ptr %write_allocated, align 4
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i29, %list_del.exit.i27.if.end.i31_crit_edge
  %64 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not.i30 = icmp eq ptr %65, %write_pool
  br i1 %cmp.i.not.i30, label %if.end.i31.cleanup_crit_edge, label %if.end.i31.while.body.i22_crit_edge

if.end.i31.while.body.i22_crit_edge:              ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i22

if.end.i31.cleanup_crit_edge:                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31.cleanup_crit_edge, %gs_free_requests.exit16.cleanup_crit_edge, %if.then9, %if.end.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_console_connect(ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %console = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 3
  %0 = ptrtoint ptr %console to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %console, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_usb, align 4
  %in = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %call.i = tail call ptr @usb_ep_alloc_request(ptr noundef %5, i32 noundef 2592) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %length.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %bf.cast, ptr %length.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %bf.cast, i32 noundef 2592) #13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %call.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end3

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_ep_free_request(ptr noundef %5, ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end3:                                          ; preds = %if.then.i
  %complete = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gs_console_complete_out, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %context, align 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %length.i, align 4
  %lock = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %req4 = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %req4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %req4, align 4
  %data = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_console_connect.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_console_connect, %do.end)) #10
          to label %if.then12 [label %do.end], !srcloc !205

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 4
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_num, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_console_connect.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.42, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end3
  %work = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then4.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gserial_disconnect(ptr nocapture noundef %gser) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioport = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 1
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioport, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %console.i = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %console.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %console.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body1.gs_console_disconnect.exit_crit_edge, label %if.end.i

do.body1.gs_console_disconnect.exit_crit_edge:    ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_console_disconnect.exit

if.end.i:                                         ; preds = %do.body1
  %lock.i = getelementptr inbounds %struct.gs_console, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %req1.i = getelementptr inbounds %struct.gs_console, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req1.i, align 4
  %data.i = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  store ptr null, ptr %req1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %tobool5.not.i = icmp eq ptr %5, null
  br i1 %tobool5.not.i, label %if.end.i.gs_console_disconnect.exit_crit_edge, label %if.end7.i

if.end.i.gs_console_disconnect.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_console_disconnect.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @usb_ep_dequeue(ptr noundef %7, ptr noundef nonnull %5) #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @usb_ep_free_request(ptr noundef %7, ptr noundef nonnull %5) #10
  br label %gs_console_disconnect.exit

gs_console_disconnect.exit:                       ; preds = %if.end7.i, %if.end.i.gs_console_disconnect.exit_crit_edge, %do.body1.gs_console_disconnect.exit_crit_edge
  %port_line_coding = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 20
  %port_line_coding5 = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %port_line_coding, ptr %port_line_coding5, i32 7)
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %port_usb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %port_usb, align 4
  %12 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ioport, align 4
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp sgt i32 %14, 0
  br i1 %cmp8, label %if.then10, label %gs_console_disconnect.exit.if.end17_crit_edge

gs_console_disconnect.exit.if.end17_crit_edge:    ; preds = %gs_console_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then10:                                        ; preds = %gs_console_disconnect.exit
  %drain_wait = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %drain_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %tty = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tty, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %if.then10.if.end17_crit_edge, label %if.then13

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_hangup(ptr noundef nonnull %16) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then10.if.end17_crit_edge, %gs_console_disconnect.exit.if.end17_crit_edge
  %suspended = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  %out = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 3
  %18 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out, align 4
  %call19 = tail call i32 @usb_ep_disable(ptr noundef %19) #10
  %in = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 2
  %20 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in, align 4
  %call20 = tail call i32 @usb_ep_disable(ptr noundef %21) #10
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp37 = icmp eq i32 %23, 0
  br i1 %cmp37, label %if.then39, label %if.end17.if.end40_crit_edge

if.end17.if.end40_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  tail call void @__kfifo_free(ptr noundef %port_write_buf) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end17.if.end40_crit_edge
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out, align 4
  %read_pool = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not5.i = icmp eq ptr %27, %read_pool
  br i1 %cmp.i.not5.i, label %if.end40.gs_free_requests.exit_crit_edge, label %if.end40.while.body.i_crit_edge

if.end40.while.body.i_crit_edge:                  ; preds = %if.end40
  br label %while.body.i

if.end40.gs_free_requests.exit_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end40.while.body.i_crit_edge
  %28 = phi ptr [ %40, %list_del.exit.i.while.body.i_crit_edge ], [ %27, %if.end40.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %28, i32 -36
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %38) #10
  tail call void @usb_ep_free_request(ptr noundef %25, ptr noundef %add.ptr.i) #10
  %39 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not.i = icmp eq ptr %40, %read_pool
  br i1 %cmp.i.not.i, label %list_del.exit.i.gs_free_requests.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.gs_free_requests.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit

gs_free_requests.exit:                            ; preds = %list_del.exit.i.gs_free_requests.exit_crit_edge, %if.end40.gs_free_requests.exit_crit_edge
  %41 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %out, align 4
  %read_queue = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not5.i77 = icmp eq ptr %44, %read_queue
  br i1 %cmp.i.not5.i77, label %gs_free_requests.exit.gs_free_requests.exit89_crit_edge, label %gs_free_requests.exit.while.body.i81_crit_edge

gs_free_requests.exit.while.body.i81_crit_edge:   ; preds = %gs_free_requests.exit
  br label %while.body.i81

gs_free_requests.exit.gs_free_requests.exit89_crit_edge: ; preds = %gs_free_requests.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit89

while.body.i81:                                   ; preds = %list_del.exit.i86.while.body.i81_crit_edge, %gs_free_requests.exit.while.body.i81_crit_edge
  %45 = phi ptr [ %57, %list_del.exit.i86.while.body.i81_crit_edge ], [ %44, %gs_free_requests.exit.while.body.i81_crit_edge ]
  %add.ptr.i79 = getelementptr i8, ptr %45, i32 -36
  %call.i.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %45) #10
  br i1 %call.i.i.i80, label %if.end.i.i.i84, label %while.body.i81.list_del.exit.i86_crit_edge

while.body.i81.list_del.exit.i86_crit_edge:       ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i86

if.end.i.i.i84:                                   ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i82, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i83, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i86

list_del.exit.i86:                                ; preds = %if.end.i.i.i84, %while.body.i81.list_del.exit.i86_crit_edge
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  %prev.i.i85 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i85, align 4
  %54 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i79, align 4
  tail call void @kfree(ptr noundef %55) #10
  tail call void @usb_ep_free_request(ptr noundef %42, ptr noundef %add.ptr.i79) #10
  %56 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not.i87 = icmp eq ptr %57, %read_queue
  br i1 %cmp.i.not.i87, label %list_del.exit.i86.gs_free_requests.exit89_crit_edge, label %list_del.exit.i86.while.body.i81_crit_edge

list_del.exit.i86.while.body.i81_crit_edge:       ; preds = %list_del.exit.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i81

list_del.exit.i86.gs_free_requests.exit89_crit_edge: ; preds = %list_del.exit.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit89

gs_free_requests.exit89:                          ; preds = %list_del.exit.i86.gs_free_requests.exit89_crit_edge, %gs_free_requests.exit.gs_free_requests.exit89_crit_edge
  %58 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %in, align 4
  %write_pool = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not5.i90 = icmp eq ptr %61, %write_pool
  br i1 %cmp.i.not5.i90, label %gs_free_requests.exit89.gs_free_requests.exit102_crit_edge, label %gs_free_requests.exit89.while.body.i94_crit_edge

gs_free_requests.exit89.while.body.i94_crit_edge: ; preds = %gs_free_requests.exit89
  br label %while.body.i94

gs_free_requests.exit89.gs_free_requests.exit102_crit_edge: ; preds = %gs_free_requests.exit89
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit102

while.body.i94:                                   ; preds = %list_del.exit.i99.while.body.i94_crit_edge, %gs_free_requests.exit89.while.body.i94_crit_edge
  %62 = phi ptr [ %74, %list_del.exit.i99.while.body.i94_crit_edge ], [ %61, %gs_free_requests.exit89.while.body.i94_crit_edge ]
  %add.ptr.i92 = getelementptr i8, ptr %62, i32 -36
  %call.i.i.i93 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %62) #10
  br i1 %call.i.i.i93, label %if.end.i.i.i97, label %while.body.i94.list_del.exit.i99_crit_edge

while.body.i94.list_del.exit.i99_crit_edge:       ; preds = %while.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i99

if.end.i.i.i97:                                   ; preds = %while.body.i94
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i95 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i.i95, align 4
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  %prev1.i.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i.i96, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit.i99

list_del.exit.i99:                                ; preds = %if.end.i.i.i97, %while.body.i94.list_del.exit.i99_crit_edge
  %69 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %62, align 4
  %prev.i.i98 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i98, align 4
  %71 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i92, align 4
  tail call void @kfree(ptr noundef %72) #10
  tail call void @usb_ep_free_request(ptr noundef %59, ptr noundef %add.ptr.i92) #10
  %73 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not.i100 = icmp eq ptr %74, %write_pool
  br i1 %cmp.i.not.i100, label %list_del.exit.i99.gs_free_requests.exit102_crit_edge, label %list_del.exit.i99.while.body.i94_crit_edge

list_del.exit.i99.while.body.i94_crit_edge:       ; preds = %list_del.exit.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i94

list_del.exit.i99.gs_free_requests.exit102_crit_edge: ; preds = %list_del.exit.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_free_requests.exit102

gs_free_requests.exit102:                         ; preds = %list_del.exit.i99.gs_free_requests.exit102_crit_edge, %gs_free_requests.exit89.gs_free_requests.exit102_crit_edge
  %write_started = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 12
  %75 = ptrtoint ptr %write_started to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %write_started, align 4
  %write_allocated = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 13
  %76 = ptrtoint ptr %write_allocated to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %write_allocated, align 4
  %read_started = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 6
  %77 = ptrtoint ptr %read_started to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %read_started, align 4
  %read_allocated = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %read_allocated to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %read_allocated, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call30) #10
  br label %cleanup

cleanup:                                          ; preds = %gs_free_requests.exit102, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gserial_suspend(ptr nocapture noundef readonly %gser) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioport = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 1
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioport, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %suspended = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gserial_resume(ptr noundef %gser) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioport = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 1
  %0 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioport, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %suspended = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %suspended, align 4
  %start_delayed = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %start_delayed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %start_delayed, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gserial_resume.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gserial_resume, %do.end17)) #10
          to label %if.then13 [label %do.end17], !srcloc !205

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port_num, align 4
  %conv14 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gserial_resume.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.12, i32 noundef %conv14) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body6
  tail call fastcc void @gs_start_io(ptr noundef %1)
  %connect = getelementptr inbounds %struct.gserial, ptr %gser, i32 0, i32 5
  %7 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %connect, align 4
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %do.end17.if.end22_crit_edge, label %if.then20

do.end17.if.end22_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %8(ptr noundef %gser) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end17.if.end22_crit_edge
  %9 = ptrtoint ptr %start_delayed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %start_delayed, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userial_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 12) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.44, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.13, ptr %name, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %5 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 36)
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3261, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9600, ptr %c_ispeed, align 4
  %c_ospeed = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12, i32 7
  %8 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9600, ptr %c_ospeed, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gs_tty_ops, ptr %ops.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull @ports, ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 1), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 2), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 3), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 4), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 5), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 6), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  tail call void @__mutex_init(ptr noundef getelementptr inbounds ([8 x %struct.portmaster], ptr @ports, i32 0, i32 7), ptr noundef nonnull @.str.45, ptr noundef nonnull @userial_init.__key) #10
  %call6 = tail call i32 @tty_register_driver(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %call6) #15
  tail call void @tty_driver_kref_put(ptr noundef %call) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call, ptr @gs_tty_driver, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @userial_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@userial_init, %cleanup)) #10
          to label %if.then20 [label %cleanup], !srcloc !205

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @userial_init.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef 8, ptr noundef nonnull @.str.49) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end12, %do.end10, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %do.end10 ], [ 0, %if.then20 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userial_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #10
  %1 = load ptr, ptr @gs_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #10
  store ptr null, ptr @gs_tty_driver, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_console_write(ptr noundef %co, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gs_console, ptr %co, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %buf6 = getelementptr inbounds %struct.gs_console, ptr %co, i32 0, i32 4
  %call8 = tail call i32 @__kfifo_in(ptr noundef %buf6, ptr noundef %buf, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %count)
  %cmp9 = icmp ult i32 %call8, %count
  br i1 %cmp9, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %count, %call8
  %missed = getelementptr inbounds %struct.gs_console, ptr %co, i32 0, i32 5
  %0 = ptrtoint ptr %missed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %missed, align 4
  %add = add i32 %sub, %1
  store i32 %add, ptr %missed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req = getelementptr inbounds %struct.gs_console, ptr %co, i32 0, i32 3
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.gs_console, ptr %co, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gs_console_device(ptr nocapture noundef readonly %co, ptr nocapture noundef writeonly %index) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.console, ptr %co, i32 0, i32 9
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %index1, align 2
  %conv = sext i16 %1 to i32
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %index, align 4
  %3 = load ptr, ptr @gs_tty_driver, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_console_work(ptr noundef %work) #0 align 64 {
entry:
  %buf16.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %req1.i = getelementptr i8, ptr %work, i32 88
  %0 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__gs_console_push.exit_crit_edge, label %if.end.i

entry.__gs_console_push.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gs_console_push.exit

if.end.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.__gs_console_push.exit_crit_edge

if.end.i.__gs_console_push.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gs_console_push.exit

if.end4.i:                                        ; preds = %if.end.i
  %data.i = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %buf.i = getelementptr i8, ptr %work, i32 92
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %maxpacket.i = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load.i = load i56, ptr %maxpacket.i, align 2
  %bf.lshr.i = lshr i56 %bf.load.i, 40
  %bf.cast.i = trunc i56 %bf.lshr.i to i32
  %call.i = tail call i32 @__kfifo_out(ptr noundef %buf.i, ptr noundef %7, i32 noundef %bf.cast.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.__gs_console_push.exit_crit_edge, label %if.end9.i

if.end4.i.__gs_console_push.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gs_console_push.exit

if.end9.i:                                        ; preds = %if.end4.i
  %missed.i = getelementptr i8, ptr %work, i32 112
  %9 = ptrtoint ptr %missed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %missed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %if.end9.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.end9.i.if.end29.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %11 = ptrtoint ptr %maxpacket.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load12.i = load i56, ptr %maxpacket.i, align 2
  %cmp.not.i = icmp ult i56 %bf.load12.i, 70368744177664
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %if.then15.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf16.i) #10
  %12 = call ptr @memset(ptr %buf16.i, i32 255, i32 64)
  %call18.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf16.i, ptr noundef nonnull @.str.19, i32 noundef %10) #10
  %call27.i = call i32 @__kfifo_in(ptr noundef %buf.i, ptr noundef nonnull %buf16.i, i32 noundef %call18.i) #10
  %13 = ptrtoint ptr %missed.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %missed.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf16.i) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then15.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end9.i.if.end29.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %length.i, align 4
  %call31.i = call i32 @usb_ep_queue(ptr noundef %5, ptr noundef nonnull %1, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end29.i.__gs_console_push.exit_crit_edge, label %if.then33.i

if.end29.i.__gs_console_push.exit_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gs_console_push.exit

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %length.i, align 4
  br label %__gs_console_push.exit

__gs_console_push.exit:                           ; preds = %if.then33.i, %if.end29.i.__gs_console_push.exit_crit_edge, %if.end4.i.__gs_console_push.exit_crit_edge, %if.end.i.__gs_console_push.exit_crit_edge, %entry.__gs_console_push.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_rx_push(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -660
  %read_queue = getelementptr i8, ptr %work, i32 -12
  %port_lock = getelementptr i8, ptr %work, i32 -84
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %tty2 = getelementptr i8, ptr %work, i32 -476
  %0 = ptrtoint ptr %tty2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty2, align 4
  %2 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not167 = icmp eq ptr %3, %read_queue
  br i1 %cmp.i.not167, label %entry.if.end76_crit_edge, label %while.body.lr.ph

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

while.body.lr.ph:                                 ; preds = %entry
  %tobool7.not = icmp eq ptr %1, null
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %port_num = getelementptr i8, ptr %work, i32 -32
  %n_read = getelementptr i8, ptr %work, i32 -4
  %read_pool = getelementptr i8, ptr %work, i32 -28
  %read_started = getelementptr i8, ptr %work, i32 -20
  br label %while.body

while.body:                                       ; preds = %cleanup70.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %42, %cleanup70.while.body_crit_edge ]
  %disconnect.0.off0170 = phi i1 [ false, %while.body.lr.ph ], [ %disconnect.1.off0, %cleanup70.while.body_crit_edge ]
  %do_push.0.off0168 = phi i1 [ false, %while.body.lr.ph ], [ %do_push.2.off0, %cleanup70.while.body_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %4, i32 -36
  br i1 %tobool7.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup70.thread_crit_edge

land.lhs.true.cleanup70.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70.thread

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %status = getelementptr i8, ptr %4, i32 12
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end20 [
    i32 -108, label %sw.bb
    i32 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_rx_push.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_rx_push, %sw.epilog)) #10
          to label %if.then16 [label %sw.epilog], !srcloc !205

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 4
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_rx_push.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.30, i32 noundef %conv) #10
  br label %sw.epilog

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_num, align 4
  %conv23 = zext i8 %13 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv23, i32 noundef %8) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end20, %if.then16, %sw.bb, %if.end.sw.epilog_crit_edge
  %disconnect.1.off0 = phi i1 [ %disconnect.0.off0170, %do.end20 ], [ %disconnect.0.off0170, %if.end.sw.epilog_crit_edge ], [ true, %if.then16 ], [ true, %sw.bb ]
  %actual = getelementptr i8, ptr %4, i32 16
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool26.not = icmp eq i32 %15, 0
  %brmerge = select i1 %tobool26.not, i1 true, i1 %tobool7.not
  br i1 %brmerge, label %sw.epilog.if.end69_crit_edge, label %if.then29

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then29:                                        ; preds = %sw.epilog
  %16 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr6, align 4
  %18 = ptrtoint ptr %n_read to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_read, align 4
  %add.ptr33 = getelementptr i8, ptr %17, i32 %19
  %sub = sub i32 %15, %19
  %call.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %add.ptr, ptr noundef %add.ptr33, i8 noundef zeroext 0, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp ne i32 %call.i, 0
  %do_push.1.off0 = select i1 %tobool37.not, i1 true, i1 %do_push.0.off0168
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub)
  %cmp.not = icmp eq i32 %call.i, %sub
  br i1 %cmp.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %n_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_read, align 4
  %add = add i32 %21, %call.i
  store i32 %add, ptr %n_read, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_rx_push.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_rx_push, %cleanup70.thread)) #10
          to label %if.then57 [label %cleanup70.thread], !srcloc !205

if.then57:                                        ; preds = %if.then41
  %actual.le = getelementptr i8, ptr %4, i32 16
  %22 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_num, align 4
  %conv59 = zext i8 %23 to i32
  %24 = ptrtoint ptr %actual.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_rx_push.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.32, i32 noundef %conv59, i32 noundef %call.i, i32 noundef %25) #10
  br i1 %do_push.1.off0, label %if.then57.if.then74_crit_edge, label %if.then57.if.end76_crit_edge

if.then57.if.end76_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then57.if.then74_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then74

cleanup:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %n_read to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %n_read, align 4
  br label %if.end69

if.end69:                                         ; preds = %cleanup, %sw.epilog.if.end69_crit_edge
  %do_push.2.off0 = phi i1 [ %do_push.1.off0, %cleanup ], [ %do_push.0.off0168, %sw.epilog.if.end69_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end69.__list_del_entry.exit.i_crit_edge

if.end69.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end69.__list_del_entry.exit.i_crit_edge
  %33 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_pool, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %4, ptr noundef %read_pool, ptr noundef %34) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup70_crit_edge

__list_del_entry.exit.i.cleanup70_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %4, ptr %prev1.i.i2.i, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %read_pool, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %read_pool to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %4, ptr %read_pool, align 4
  br label %cleanup70

cleanup70.thread:                                 ; preds = %if.then41, %land.lhs.true.cleanup70.thread_crit_edge
  %do_push.3.off0.ph = phi i1 [ %do_push.1.off0, %if.then41 ], [ %do_push.0.off0168, %land.lhs.true.cleanup70.thread_crit_edge ]
  %disconnect.2.off0.ph = phi i1 [ %disconnect.1.off0, %if.then41 ], [ %disconnect.0.off0170, %land.lhs.true.cleanup70.thread_crit_edge ]
  br i1 %do_push.3.off0.ph, label %cleanup70.thread.if.then74_crit_edge, label %cleanup70.thread.if.end76_crit_edge

cleanup70.thread.if.end76_crit_edge:              ; preds = %cleanup70.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

cleanup70.thread.if.then74_crit_edge:             ; preds = %cleanup70.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then74

cleanup70:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.cleanup70_crit_edge
  %39 = ptrtoint ptr %read_started to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_started, align 4
  %dec = add i32 %40, -1
  store i32 %dec, ptr %read_started, align 4
  %41 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i.not = icmp eq ptr %42, %read_queue
  br i1 %cmp.i.not, label %while.end, label %cleanup70.while.body_crit_edge

cleanup70.while.body_crit_edge:                   ; preds = %cleanup70
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %cleanup70
  br i1 %do_push.2.off0, label %while.end.if.then74_crit_edge, label %while.end.if.end76_crit_edge

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

while.end.if.then74_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then74

if.then74:                                        ; preds = %while.end.if.then74_crit_edge, %cleanup70.thread.if.then74_crit_edge, %if.then57.if.then74_crit_edge
  %disconnect.3.off0162 = phi i1 [ %disconnect.2.off0.ph, %cleanup70.thread.if.then74_crit_edge ], [ %disconnect.1.off0, %while.end.if.then74_crit_edge ], [ %disconnect.1.off0, %if.then57.if.then74_crit_edge ]
  tail call void @tty_flip_buffer_push(ptr noundef %add.ptr) #10
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %while.end.if.end76_crit_edge, %cleanup70.thread.if.end76_crit_edge, %if.then57.if.end76_crit_edge, %entry.if.end76_crit_edge
  %disconnect.3.off0161 = phi i1 [ %disconnect.2.off0.ph, %cleanup70.thread.if.end76_crit_edge ], [ %disconnect.3.off0162, %if.then74 ], [ %disconnect.1.off0, %while.end.if.end76_crit_edge ], [ %disconnect.1.off0, %if.then57.if.end76_crit_edge ], [ false, %entry.if.end76_crit_edge ]
  %43 = ptrtoint ptr %read_queue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %read_queue, align 4
  %cmp.i148.not = icmp eq ptr %44, %read_queue
  br i1 %cmp.i148.not, label %if.end76.if.end83_crit_edge, label %land.lhs.true79

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

land.lhs.true79:                                  ; preds = %if.end76
  %flags.i150 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %45 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i150, align 4
  %and1.i.i151 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i151)
  %tobool.i152.not = icmp eq i32 %and1.i.i151, 0
  br i1 %tobool.i152.not, label %if.then81, label %land.lhs.true79.if.end83_crit_edge

land.lhs.true79.if.end83_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then81:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i153 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work, i32 noundef 1) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %land.lhs.true79.if.end83_crit_edge, %if.end76.if.end83_crit_edge
  br i1 %disconnect.3.off0161, label %if.end83.if.end89_crit_edge, label %land.lhs.true85

if.end83.if.end89_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

land.lhs.true85:                                  ; preds = %if.end83
  %port_usb = getelementptr i8, ptr %work, i32 -40
  %48 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_usb, align 4
  %tobool86.not = icmp eq ptr %49, null
  br i1 %tobool86.not, label %land.lhs.true85.if.end89_crit_edge, label %if.then87

land.lhs.true85.if.end89_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call fastcc i32 @gs_start_rx(ptr noundef %add.ptr)
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %land.lhs.true85.if.end89_crit_edge, %if.end83.if.end89_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_start_rx(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %read_pool = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 5
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_usb, align 4
  %out1 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %out1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out1, align 4
  %tty3 = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 1
  %read_started = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 6
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 7
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end21.while.cond_crit_edge, %entry
  %4 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %read_pool, align 4
  %cmp.i.not = icmp eq ptr %5, %read_pool
  br i1 %cmp.i.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %tty3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %read_started to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp = icmp sgt i32 %9, 15
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end6

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %5, i32 -36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %length = getelementptr i8, ptr %5, i32 -32
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.cast, ptr %length, align 4
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #10
  %call7 = tail call i32 @usb_ep_queue(ptr noundef %3, ptr noundef %add.ptr, i32 noundef 2592) #10
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end21, label %do.body

do.body:                                          ; preds = %list_del.exit
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_start_rx.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_start_rx, %do.end)) #10
          to label %if.then18 [label %do.end], !srcloc !205

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_start_rx.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.35, ptr noundef %21, i32 noundef %call7) #10
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %22 = ptrtoint ptr %read_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_pool, align 4
  %call.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %read_pool, ptr noundef %23) #10
  br i1 %call.i.i48, label %if.end.i.i49, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.i.i49:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %5, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %5, align 4
  %26 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %read_pool, ptr %prev.i.le, align 4
  %27 = ptrtoint ptr %read_pool to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %5, ptr %read_pool, align 4
  br label %while.end

if.end21:                                         ; preds = %list_del.exit
  %28 = ptrtoint ptr %read_started to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read_started, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %read_started, align 4
  %30 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port_usb, align 4
  %tobool24.not = icmp eq ptr %31, null
  br i1 %tobool24.not, label %if.end21.while.end_crit_edge, label %if.end21.while.cond_crit_edge

if.end21.while.cond_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end.i.i49, %do.end.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %32 = ptrtoint ptr %read_started to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read_started, align 4
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gs_alloc_requests(ptr noundef %ep, ptr noundef %head, ptr noundef %fn, ptr noundef %allocated) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %allocated, null
  br i1 %tobool.not, label %entry.for.body.lr.ph_crit_edge, label %cond.end

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %allocated, align 4
  %sub = sub i32 16, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp sgt i32 %sub, 0
  br i1 %cmp23, label %cond.end.for.body.lr.ph_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end.for.body.lr.ph_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %cond.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %cond29 = phi i32 [ %sub, %cond.end.for.body.lr.ph_crit_edge ], [ 16, %entry.for.body.lr.ph_crit_edge ]
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %2, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %call.i = tail call ptr @usb_ep_alloc_request(ptr noundef %ep, i32 noundef 2592) #10
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.body.if.then_crit_edge, label %if.then.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then.i:                                        ; preds = %for.body
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %length.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %length.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %bf.cast, i32 noundef 2592) #13
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %call.i, align 4
  %cmp3.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef nonnull %call.i) #10
  br label %if.then

if.then:                                          ; preds = %if.then4.i, %for.body.if.then_crit_edge
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %6, %head
  %cond4 = select i1 %cmp.i.not, i32 -12, i32 0
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  %complete = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fn, ptr %complete, align 4
  %list = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %head) #10
  br i1 %call.i.i, label %if.end.i.i19, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i19:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i19, %if.end.list_add_tail.exit_crit_edge
  br i1 %tobool.not, label %list_add_tail.exit.for.inc_crit_edge, label %if.then6

list_add_tail.exit.for.inc_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then6:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %allocated, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %allocated, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %list_add_tail.exit.for.inc_crit_edge
  %inc8 = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc8, %cond29
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond4, %if.then ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_read_complete(ptr nocapture noundef readonly %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #10
  %list = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9
  %read_queue = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %read_queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %read_queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %push = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %push, i32 noundef 0) #10
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_write_complete(ptr nocapture noundef readonly %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #10
  %list = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9
  %write_pool = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %write_pool, ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %write_pool, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %write_pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %write_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %write_started = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %write_started to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_started, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %write_started, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %11, label %do.end [
    i32 0, label %list_add.exit.sw.bb_crit_edge
    i32 -108, label %do.body4
  ]

list_add.exit.sw.bb_crit_edge:                    ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end:                                           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef %14, i32 noundef %11) #15
  br label %sw.bb

sw.bb:                                            ; preds = %do.end, %list_add.exit.sw.bb_crit_edge
  tail call fastcc void @gs_start_tx(ptr noundef %1)
  br label %sw.epilog

do.body4:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_write_complete.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_write_complete, %sw.epilog)) #10
          to label %if.then [label %sw.epilog], !srcloc !205

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %name10 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %15 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_write_complete.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, ptr noundef %16) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body4, %sw.bb
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gs_start_tx(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %write_pool = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 11
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_usb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

if.end:                                           ; preds = %entry
  %in2 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in2, align 4
  %write_busy = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 16
  %write_started = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 12
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 7
  %port_write_buf.i = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 14
  %out.i = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 14, i32 0, i32 0, i32 1
  %port_num = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end51.while.cond_crit_edge, %if.end
  %do_tty_wake.0.off0 = phi i1 [ false, %if.end ], [ true, %if.end51.while.cond_crit_edge ]
  %4 = ptrtoint ptr %write_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %write_busy, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %write_pool, align 4
  %cmp.i.not = icmp eq ptr %7, %write_pool
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %write_started to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp = icmp sgt i32 %9, 15
  br i1 %cmp, label %cleanup.thread, label %if.end6

if.end6:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %7, i32 -36
  %10 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %11 = ptrtoint ptr %port_write_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_write_buf.i, align 4
  %13 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out.i, align 4
  %sub.i = sub i32 %12, %14
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %bf.cast) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.not.i = icmp eq i32 %15, 0
  br i1 %cmp1.not.i, label %if.end6.if.then9_crit_edge, label %gs_send_packet.exit

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

gs_send_packet.exit:                              ; preds = %if.end6
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @__kfifo_out(ptr noundef %port_write_buf.i, ptr noundef %17, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp eq i32 %call.i, 0
  br i1 %cmp8, label %gs_send_packet.exit.if.then9_crit_edge, label %if.end10

gs_send_packet.exit.if.then9_crit_edge:           ; preds = %gs_send_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %gs_send_packet.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %drain_wait = getelementptr inbounds %struct.gs_port, ptr %port, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %drain_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br i1 %do_tty_wake.0.off0, label %if.then9.land.lhs.true_crit_edge, label %if.then9.cleanup66_crit_edge

if.then9.cleanup66_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

if.then9.land.lhs.true_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end10:                                         ; preds = %gs_send_packet.exit
  %length = getelementptr i8, ptr %7, i32 -32
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %length, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %port_write_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_write_buf.i, align 4
  %29 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp13 = icmp eq i32 %28, %30
  %zero = getelementptr i8, ptr %7, i32 -12
  %31 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load14 = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp13, i32 8192, i32 0
  %bf.clear = and i32 %bf.load14, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_start_tx.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_start_tx, %do.end)) #10
          to label %if.then22 [label %do.end], !srcloc !205

if.then22:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port_num, align 4
  %conv23 = zext i8 %33 to i32
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_start_tx.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.40, i32 noundef %conv23, i32 noundef %call.i, ptr noundef %35) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %list_del.exit
  %36 = ptrtoint ptr %write_busy to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %write_busy, align 4
  tail call void @_raw_spin_unlock(ptr noundef %port_lock) #10
  %call27 = tail call i32 @usb_ep_queue(ptr noundef %3, ptr noundef %add.ptr, i32 noundef 2592) #10
  tail call void @_raw_spin_lock(ptr noundef %port_lock) #10
  %37 = ptrtoint ptr %write_busy to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %write_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool30.not = icmp eq i32 %call27, 0
  br i1 %tobool30.not, label %if.end51, label %do.body32

do.body32:                                        ; preds = %do.end
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_start_tx.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_start_tx, %do.end49)) #10
          to label %if.then46 [label %do.end49], !srcloc !205

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_start_tx.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, ptr noundef %39, i32 noundef %call27) #10
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %do.body32
  %40 = ptrtoint ptr %write_pool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_pool, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef %7, ptr noundef %write_pool, ptr noundef %41) #10
  br i1 %call.i.i9, label %if.end.i.i10, label %do.end49.land.lhs.true_crit_edge

do.end49.land.lhs.true_crit_edge:                 ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.i.i10:                                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %7, ptr %prev1.i.i, align 4
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %7, align 4
  %44 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %write_pool, ptr %prev.i.le, align 4
  %45 = ptrtoint ptr %write_pool to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %7, ptr %write_pool, align 4
  br label %land.lhs.true

if.end51:                                         ; preds = %do.end
  %46 = ptrtoint ptr %write_started to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %write_started, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %write_started, align 4
  %48 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port_usb, align 4
  %tobool54.not = icmp eq ptr %49, null
  br i1 %tobool54.not, label %if.end51.land.lhs.true_crit_edge, label %if.end51.while.cond_crit_edge

if.end51.while.cond_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end51.land.lhs.true_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

cleanup.thread:                                   ; preds = %while.body
  br i1 %do_tty_wake.0.off0, label %cleanup.thread.land.lhs.true_crit_edge, label %cleanup.thread.cleanup66_crit_edge

cleanup.thread.cleanup66_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

cleanup.thread.land.lhs.true_crit_edge:           ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  br i1 %do_tty_wake.0.off0, label %while.end.land.lhs.true_crit_edge, label %while.end.cleanup66_crit_edge

while.end.cleanup66_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

while.end.land.lhs.true_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end.land.lhs.true_crit_edge, %cleanup.thread.land.lhs.true_crit_edge, %if.end51.land.lhs.true_crit_edge, %if.end.i.i10, %do.end49.land.lhs.true_crit_edge, %if.then9.land.lhs.true_crit_edge
  %tty = getelementptr inbounds %struct.tty_port, ptr %port, i32 0, i32 1
  %50 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tty, align 4
  %tobool61.not = icmp eq ptr %51, null
  br i1 %tobool61.not, label %land.lhs.true.cleanup66_crit_edge, label %if.then62

land.lhs.true.cleanup66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup66

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_wakeup(ptr noundef nonnull %51) #10
  br label %cleanup66

cleanup66:                                        ; preds = %if.then62, %land.lhs.true.cleanup66_crit_edge, %while.end.cleanup66_crit_edge, %cleanup.thread.cleanup66_crit_edge, %if.then9.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_console_complete_out(ptr nocapture noundef readonly %ep, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 -104, label %entry.do.body5_crit_edge
    i32 -108, label %entry.do.body5_crit_edge21
  ]

entry.do.body5_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.43, ptr noundef %6, i32 noundef %3) #15
  br label %sw.bb

sw.bb:                                            ; preds = %do.end, %entry.sw.bb_crit_edge
  %lock = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %length, align 4
  %work = getelementptr inbounds %struct.gs_console, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %sw.epilog

do.body5:                                         ; preds = %entry.do.body5_crit_edge, %entry.do.body5_crit_edge21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_console_complete_out.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_console_complete_out, %sw.epilog)) #10
          to label %if.then [label %sw.epilog], !srcloc !205

if.then:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %name11 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %9 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_console_complete_out.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.43, ptr noundef %10) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body5, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_open(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %1
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #10
  %port2 = getelementptr [8 x %struct.portmaster], ptr @ports, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %mask = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 14, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then4:                                         ; preds = %if.end
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  %call = tail call i32 @__kfifo_alloc(ptr noundef %port_write_buf, i32 noundef 8192, i32 noundef 1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_open.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_open, %out)) #10
          to label %if.then16 [label %out], !srcloc !205

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_open.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.51, i32 noundef %1, ptr noundef %tty, ptr noundef %file) #10
  br label %out

if.end18:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end.if.end20_crit_edge
  %count = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool22.not = icmp eq i32 %7, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.exit_unlock_port_crit_edge

if.end20.exit_unlock_port_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_unlock_port

if.end24:                                         ; preds = %if.end20
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %driver_data, align 4
  %tty26 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %tty26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tty, ptr %tty26, align 4
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_usb, align 4
  %tobool27.not = icmp eq ptr %11, null
  br i1 %tobool27.not, label %if.end24.do.body78_crit_edge, label %if.then28

if.end24.do.body78_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

if.then28:                                        ; preds = %if.end24
  %suspended = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspended, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp eq i8 %13, 0
  br i1 %tobool29.not, label %if.then30, label %do.body56

if.then30:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_open.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_open, %do.end50)) #10
          to label %if.then46 [label %do.end50], !srcloc !205

if.then46:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %port_num47 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %port_num47 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_num47, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_open.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.52, i32 noundef %conv) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %if.then30
  tail call fastcc void @gs_start_io(ptr noundef nonnull %3)
  %connect = getelementptr inbounds %struct.gserial, ptr %11, i32 0, i32 5
  %16 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %connect, align 4
  %tobool52.not = icmp eq ptr %17, null
  br i1 %tobool52.not, label %do.end50.do.body78_crit_edge, label %if.then53

do.end50.do.body78_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body78

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef nonnull %11) #10
  br label %do.body78

do.body56:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_open.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_open, %do.end75)) #10
          to label %if.then70 [label %do.end75], !srcloc !205

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %port_num71 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %port_num71 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_num71, align 4
  %conv72 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_open.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.53, i32 noundef %conv72) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %do.body56
  %start_delayed = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %start_delayed to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %start_delayed, align 1
  br label %do.body78

do.body78:                                        ; preds = %do.end75, %if.then53, %do.end50.do.body78_crit_edge, %if.end24.do.body78_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_open.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_open, %exit_unlock_port)) #10
          to label %if.then92 [label %exit_unlock_port], !srcloc !205

if.then92:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #12
  %port_num93 = getelementptr inbounds %struct.gs_port, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %port_num93 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port_num93, align 4
  %conv94 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_open.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.54, i32 noundef %conv94, ptr noundef %tty, ptr noundef %file) #10
  br label %exit_unlock_port

exit_unlock_port:                                 ; preds = %if.then92, %do.body78, %if.end20.exit_unlock_port_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  br label %out

out:                                              ; preds = %exit_unlock_port, %if.then16, %do.body, %entry.out_crit_edge
  %status.1 = phi i32 [ 0, %exit_unlock_port ], [ %call, %if.then16 ], [ -19, %entry.out_crit_edge ], [ %call, %do.body ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #10
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_close(ptr noundef %tty, ptr noundef %file) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %count = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.body25, label %entry.raced_with_open_crit_edge

entry.raced_with_open_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %raced_with_open

raced_with_open:                                  ; preds = %if.end107.raced_with_open_crit_edge, %entry.raced_with_open_crit_edge
  %4 = phi i32 [ %38, %if.end107.raced_with_open_crit_edge ], [ %3, %entry.raced_with_open_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %do.end, label %if.else

do.end:                                           ; preds = %raced_with_open
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 680, i32 noundef 9, ptr noundef null) #10
  br label %exit

if.else:                                          ; preds = %raced_with_open
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %count, align 4
  br label %exit

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_close.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_close, %do.end39)) #10
          to label %if.then36 [label %do.end39], !srcloc !205

if.then36:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_close.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.56, i32 noundef %conv, ptr noundef %tty, ptr noundef %file) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body25
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_usb, align 4
  %tobool40.not = icmp eq ptr %9, null
  br i1 %tobool40.not, label %if.end117.thread, label %land.lhs.true

if.end117.thread:                                 ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  %port_write_buf215 = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  br label %if.then120

land.lhs.true:                                    ; preds = %do.end39
  %suspended = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspended, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool41.not = icmp eq i8 %11, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true42:                                  ; preds = %land.lhs.true
  %disconnect = getelementptr inbounds %struct.gserial, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disconnect, align 4
  %tobool43.not = icmp eq ptr %13, null
  br i1 %tobool43.not, label %land.lhs.true42.if.end46_crit_edge, label %if.then44

land.lhs.true42.if.end46_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %13(ptr noundef nonnull %9) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true42.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_write_buf, align 4
  %out = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp48.not = icmp eq i32 %15, %17
  br i1 %cmp48.not, label %if.end46.if.end117_crit_edge, label %if.then52

if.end46.if.end117_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then52:                                        ; preds = %if.end46
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 699) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %18 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_usb, align 4
  %cmp.i = icmp eq ptr %19, null
  br i1 %cmp.i, label %if.then52.gs_close_flush_done.exit.thread_crit_edge, label %lor.lhs.false.i

if.then52.gs_close_flush_done.exit.thread_crit_edge: ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_close_flush_done.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then52
  %20 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_write_buf, align 4
  %22 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %tobool.not.i = icmp eq i32 %21, %23
  br i1 %tobool.not.i, label %lor.lhs.false.i.gs_close_flush_done.exit.thread_crit_edge, label %gs_close_flush_done.exit

lor.lhs.false.i.gs_close_flush_done.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_close_flush_done.exit.thread

gs_close_flush_done.exit.thread:                  ; preds = %lor.lhs.false.i.gs_close_flush_done.exit.thread_crit_edge, %if.then52.gs_close_flush_done.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  br label %if.end107

gs_close_flush_done.exit:                         ; preds = %lor.lhs.false.i
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp1.i = icmp slt i32 %25, 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  br i1 %cmp1.i, label %if.then76, label %gs_close_flush_done.exit.if.end107_crit_edge

gs_close_flush_done.exit.if.end107_crit_edge:     ; preds = %gs_close_flush_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then76:                                        ; preds = %gs_close_flush_done.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %drain_wait = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 15
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then76
  %__ret77.0 = phi i32 [ 1500, %if.then76 ], [ %call104, %cleanup ]
  %call78 = call i32 @prepare_to_wait_event(ptr noundef %drain_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %27 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_usb, align 4
  %cmp.i204 = icmp eq ptr %28, null
  br i1 %cmp.i204, label %for.cond.gs_close_flush_done.exit213_crit_edge, label %lor.lhs.false.i208

for.cond.gs_close_flush_done.exit213_crit_edge:   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_close_flush_done.exit213

lor.lhs.false.i208:                               ; preds = %for.cond
  %29 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_write_buf, align 4
  %31 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %tobool.not.i207 = icmp eq i32 %30, %32
  br i1 %tobool.not.i207, label %lor.lhs.false.i208.gs_close_flush_done.exit213_crit_edge, label %lor.rhs.i212

lor.lhs.false.i208.gs_close_flush_done.exit213_crit_edge: ; preds = %lor.lhs.false.i208
  call void @__sanitizer_cov_trace_pc() #12
  br label %gs_close_flush_done.exit213

lor.rhs.i212:                                     ; preds = %lor.lhs.false.i208
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp1.i210 = icmp sgt i32 %34, 1
  %phi.cast.i211 = zext i1 %cmp1.i210 to i32
  br label %gs_close_flush_done.exit213

gs_close_flush_done.exit213:                      ; preds = %lor.rhs.i212, %lor.lhs.false.i208.gs_close_flush_done.exit213_crit_edge, %for.cond.gs_close_flush_done.exit213_crit_edge
  %35 = phi i32 [ 1, %lor.lhs.false.i208.gs_close_flush_done.exit213_crit_edge ], [ 1, %for.cond.gs_close_flush_done.exit213_crit_edge ], [ %phi.cast.i211, %lor.rhs.i212 ]
  call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool81.not = icmp eq i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret77.0)
  %tobool86.not = icmp eq i32 %__ret77.0, 0
  %spec.store.select154 = select i1 %tobool86.not, i32 1, i32 %__ret77.0
  %__ret77.1 = select i1 %tobool81.not, i32 %__ret77.0, i32 %spec.store.select154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret77.1)
  %tobool93.not = icmp eq i32 %__ret77.1, 0
  %not.tobool81.not = xor i1 %tobool81.not, true
  %36 = select i1 %not.tobool81.not, i1 true, i1 %tobool93.not
  br i1 %36, label %for.end, label %if.end100

if.end100:                                        ; preds = %gs_close_flush_done.exit213
  %tobool101.not = icmp eq i32 %call78, 0
  br i1 %tobool101.not, label %cleanup, label %if.end100.__out_crit_edge

if.end100.__out_crit_edge:                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = call i32 @schedule_timeout(i32 noundef %__ret77.1) #10
  br label %for.cond

for.end:                                          ; preds = %gs_close_flush_done.exit213
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %drain_wait, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end100.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end107

if.end107:                                        ; preds = %__out, %gs_close_flush_done.exit.if.end107_crit_edge, %gs_close_flush_done.exit.thread
  call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %37 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp112.not = icmp eq i32 %38, 1
  br i1 %cmp112.not, label %if.end115, label %if.end107.raced_with_open_crit_edge

if.end107.raced_with_open_crit_edge:              ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %raced_with_open

if.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port_usb, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end115, %if.end46.if.end117_crit_edge
  %gser.0 = phi ptr [ %40, %if.end115 ], [ %9, %if.end46.if.end117_crit_edge ]
  %cmp118 = icmp eq ptr %gser.0, null
  br i1 %cmp118, label %if.end117.if.then120_crit_edge, label %if.else122

if.end117.if.then120_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then120

if.then120:                                       ; preds = %if.end117.if.then120_crit_edge, %if.end117.thread
  %port_write_buf220232 = phi ptr [ %port_write_buf215, %if.end117.thread ], [ %port_write_buf, %if.end117.if.then120_crit_edge ]
  call void @__kfifo_free(ptr noundef %port_write_buf220232) #10
  br label %if.end128

if.else122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %out, align 4
  %42 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %port_write_buf, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else122, %if.then120
  %start_delayed = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %start_delayed to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %start_delayed, align 1
  %44 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %count, align 4
  %tty132 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %tty132 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %tty132, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_close.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_close, %do.end152)) #10
          to label %if.then147 [label %do.end152], !srcloc !205

if.then147:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %port_num148 = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %port_num148 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port_num148, align 4
  %conv149 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_close.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.57, i32 noundef %conv149, ptr noundef %tty, ptr noundef %file) #10
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %if.end128
  %close_wait = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 17
  call void @__wake_up(ptr noundef %close_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %exit

exit:                                             ; preds = %do.end152, %if.else, %do.end
  call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_write(ptr noundef %tty, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_write, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_write.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.59, i32 noundef %conv, ptr noundef %tty, i32 noundef %count) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool14.not = icmp eq i32 %count, 0
  br i1 %tobool14.not, label %do.body5.if.end18_crit_edge, label %if.then15

do.body5.if.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then15:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  %call17 = tail call i32 @__kfifo_in(ptr noundef %port_write_buf, ptr noundef %buf, i32 noundef %count) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.body5.if.end18_crit_edge
  %count.addr.0 = phi i32 [ %call17, %if.then15 ], [ 0, %do.body5.if.end18_crit_edge ]
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_usb, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gs_start_tx(ptr noundef %1)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call9) #10
  ret i32 %count.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_put_char(ptr noundef %tty, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_put_char.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_put_char, %do.body6)) #10
          to label %if.then [label %do.body6], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  %conv4 = zext i8 %ch to i32
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_put_char.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.61, i32 noundef %conv, ptr noundef %tty, i32 noundef %conv4, ptr noundef %4) #10
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_write_buf, align 4
  %out = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  %sub = sub i32 %6, %8
  %mask = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %10)
  %cmp20 = icmp ule i32 %sub, %10
  br i1 %cmp20, label %if.then26, label %do.body6.if.end37_crit_edge

do.body6.if.end37_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then26:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %and = and i32 %10, %6
  %arrayidx = getelementptr i8, ptr %12, i32 %and
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %ch, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  %14 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_write_buf, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %port_write_buf, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %do.body6.if.end37_crit_edge
  %lnot.ext24 = zext i1 %cmp20 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call10) #10
  ret i32 %lnot.ext24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_flush_chars(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_flush_chars.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_flush_chars, %do.body5)) #10
          to label %if.then [label %do.body5], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_flush_chars.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.63, i32 noundef %conv, ptr noundef %tty) #10
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_usb, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.body5.if.end17_crit_edge, label %if.then15

do.body5.if.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gs_start_tx(ptr noundef %1)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body5.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call9) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_write_room(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_usb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  %mask = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_write_buf, align 4
  %out = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  %sub.neg = add i32 %5, 1
  %add = sub i32 %sub.neg, %7
  %sub6 = add i32 %add, %9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %room.0 = phi i32 [ %sub6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_write_room.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_write_room, %do.end21)) #10
          to label %if.then17 [label %do.end21], !srcloc !205

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 4
  %conv18 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_write_room.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.65, i32 noundef %conv18, ptr noundef %tty, i32 noundef %room.0) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %if.end
  ret i32 %room.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_chars_in_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %port_write_buf = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %port_write_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_write_buf, align 4
  %out = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out, align 4
  %sub = sub i32 %3, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_chars_in_buffer.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_chars_in_buffer, %do.end15)) #10
          to label %if.then [label %do.end15], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 4
  %conv13 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_chars_in_buffer.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.67, i32 noundef %conv13, ptr noundef %tty, i32 noundef %sub) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gs_unthrottle(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %port_lock) #10
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_usb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body5

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_unthrottle.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_unthrottle, %do.end15)) #10
          to label %if.then12 [label %do.end15], !srcloc !205

if.then12:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_num, align 4
  %conv13 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_unthrottle.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.69, i32 noundef %conv13) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body5
  %push = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %push, i32 noundef 0) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %entry.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %port_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_break_ctl(ptr nocapture noundef readonly %tty, i32 noundef %duration) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gs_break_ctl.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gs_break_ctl, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !205

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %port_num = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port_num, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gs_break_ctl.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.71, i32 noundef %conv, i32 noundef %duration) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %port_lock = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %port_lock) #10
  %port_usb = getelementptr inbounds %struct.gs_port, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port_usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_usb, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end9_crit_edge, label %land.lhs.true

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %send_break = getelementptr inbounds %struct.gserial, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %send_break to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_break, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end9_crit_edge, label %if.then6

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 %7(ptr noundef nonnull %5, i32 noundef %duration) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %status.0 = phi i32 [ %call8, %if.then6 ], [ 0, %land.lhs.true.if.end9_crit_edge ], [ 0, %do.end.if.end9_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %port_lock) #10
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__ksymtab_gs_alloc_req, !1, !"__ksymtab_gs_alloc_req", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 179, i32 1}
!2 = !{ptr @__ksymtab_gs_free_req, !3, !"__ksymtab_gs_free_req", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 191, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1080, i32 6}
!6 = !{ptr @__ksymtab_gserial_set_console, !7, !"__ksymtab_gserial_set_console", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1094, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1107, i32 23}
!10 = !{ptr @__ksymtab_gserial_get_console, !11, !"__ksymtab_gserial_get_console", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1113, i32 1}
!12 = !{ptr @__ksymtab_gserial_free_line, !13, !"__ksymtab_gserial_free_line", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1213, i32 1}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1245, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gserial_alloc_line_no_console._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @gserial_alloc_line_no_console._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_gserial_alloc_line_no_console, !20, !"__ksymtab_gserial_alloc_line_no_console", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1259, i32 1}
!21 = !{ptr @__ksymtab_gserial_alloc_line, !22, !"__ksymtab_gserial_alloc_line", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1270, i32 1}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1304, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gserial_connect._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @gserial_connect._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1308, i32 3}
!30 = !{ptr @gserial_connect._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gserial_connect._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1339, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gserial_connect.__UNIQUE_ID_ddebug249, !33, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!36 = !{ptr @__ksymtab_gserial_connect, !37, !"__ksymtab_gserial_connect", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1357, i32 1}
!38 = !{ptr @__ksymtab_gserial_disconnect, !39, !"__ksymtab_gserial_disconnect", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1412, i32 1}
!40 = !{ptr @__ksymtab_gserial_suspend, !41, !"__ksymtab_gserial_suspend", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1423, i32 1}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1437, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gserial_resume.__UNIQUE_ID_ddebug250, !43, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!46 = !{ptr @__ksymtab_gserial_resume, !47, !"__ksymtab_gserial_resume", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1444, i32 1}
!48 = !{ptr @__initcall__kmod_u_serial__252_1497_userial_init6, !49, !"__initcall__kmod_u_serial__252_1497_userial_init6", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1497, i32 1}
!50 = !{ptr @__exitcall_userial_cleanup, !51, !"__exitcall_userial_cleanup", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1505, i32 1}
!52 = !{ptr @__UNIQUE_ID_file253, !53, !"__UNIQUE_ID_file253", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1507, i32 1}
!54 = !{ptr @__UNIQUE_ID_license254, !53, !"__UNIQUE_ID_license254", i1 false, i1 false}
!55 = !{ptr @ports, !56, !"ports", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 133, i32 3}
!57 = !{ptr @gs_tty_driver, !58, !"gs_tty_driver", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 860, i32 27}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1020, i32 29}
!61 = !{ptr @gs_console_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1026, i32 2}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gs_console_init.__key.15, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1027, i32 2}
!66 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1031, i32 3}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gs_console_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @gs_console_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 909, i32 22}
!74 = !{ptr @gs_port_alloc.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1156, i32 2}
!76 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gs_port_alloc.__key.21, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1157, i32 2}
!79 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @gs_port_alloc.__key.23, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1158, i32 2}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gs_port_alloc.__key.25, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1160, i32 2}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @gs_port_alloc.__key.27, !84, !"__key", i1 false, i1 false}
!87 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 380, i32 4}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @gs_rx_push.__UNIQUE_ID_ddebug231, !89, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 385, i32 4}
!94 = !{ptr @gs_rx_push._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @gs_rx_push._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 414, i32 5}
!98 = !{ptr @gs_rx_push.__UNIQUE_ID_ddebug232, !97, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 332, i32 4}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gs_start_rx.__UNIQUE_ID_ddebug230, !100, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!103 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 471, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @gs_write_complete._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @gs_write_complete._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 481, i32 3}
!111 = !{ptr @gs_write_complete.__UNIQUE_ID_ddebug233, !110, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 261, i32 3}
!114 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gs_start_tx.__UNIQUE_ID_ddebug228, !113, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!116 = !{ptr @gs_start_tx.__UNIQUE_ID_ddebug229, !117, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 277, i32 4}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 977, i32 2}
!120 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @gs_console_connect.__UNIQUE_ID_ddebug248, !119, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 870, i32 3}
!124 = !{ptr @gs_console_complete_out._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @gs_console_complete_out._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @gs_console_complete_out.__UNIQUE_ID_ddebug247, !127, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 883, i32 3}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1457, i32 24}
!130 = !{ptr @userial_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1476, i32 3}
!132 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1481, i32 3}
!135 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @userial_init._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @userial_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 1488, i32 2}
!140 = !{ptr @userial_init.__UNIQUE_ID_ddebug251, !139, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!141 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @gs_tty_ops, !143, !"gs_tty_ops", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 846, i32 36}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 616, i32 4}
!146 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @gs_open.__UNIQUE_ID_ddebug234, !145, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 637, i32 4}
!150 = !{ptr @gs_open.__UNIQUE_ID_ddebug235, !149, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 643, i32 4}
!153 = !{ptr @gs_open.__UNIQUE_ID_ddebug236, !152, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!154 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 648, i32 2}
!156 = !{ptr @gs_open.__UNIQUE_ID_ddebug237, !155, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!157 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 686, i32 2}
!159 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @gs_close.__UNIQUE_ID_ddebug238, !158, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 721, i32 2}
!163 = !{ptr @gs_close.__UNIQUE_ID_ddebug239, !162, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 734, i32 2}
!166 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @gs_write.__UNIQUE_ID_ddebug240, !165, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 754, i32 2}
!170 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @gs_put_char.__UNIQUE_ID_ddebug241, !169, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!172 = !{ptr @.str.62, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 769, i32 2}
!174 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @gs_flush_chars.__UNIQUE_ID_ddebug242, !173, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!176 = !{ptr @.str.64, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 788, i32 2}
!178 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @gs_write_room.__UNIQUE_ID_ddebug243, !177, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!180 = !{ptr @.str.66, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 804, i32 2}
!182 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @gs_chars_in_buffer.__UNIQUE_ID_ddebug244, !181, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!184 = !{ptr @.str.68, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 822, i32 3}
!186 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @gs_unthrottle.__UNIQUE_ID_ddebug245, !185, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/function/u_serial.c", i32 834, i32 2}
!190 = !{ptr @.str.71, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @gs_break_ctl.__UNIQUE_ID_ddebug246, !189, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{i8 0, i8 2}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2148726693, i64 2148726698, i64 2148726711, i64 2148726755, i64 2148726789, i64 2148726810}
!206 = !{i64 2154322784}
