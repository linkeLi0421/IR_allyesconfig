; ModuleID = '/llk/IR_all_yes/drivers/misc/ti-st/st_core.c_pt.bc'
source_filename = "../drivers/misc/ti-st/st_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+st_register\22, \22a\22\09"
module asm "\09.weak\09__crc_st_register\09\09\09\09"
module asm "\09.long\09__crc_st_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_register:\09\09\09\09\09"
module asm "\09.asciz \09\22st_register\22\09\09\09\09\09"
module asm "__kstrtabns_st_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_st_unregister\09\09\09\09"
module asm "\09.long\09__crc_st_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22st_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_st_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.st_data_s = type { i32, ptr, i32, [16 x ptr], [16 x i8], i32, i32, ptr, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, i8, i32, ptr, ptr, %struct.work_struct }
%struct.sk_buff_head = type { %union.anon.18, i32, %struct.spinlock }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.93, %struct.anon.94, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.93 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.94 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.st_proto_s = type { i32, ptr, ptr, ptr, ptr, ptr, i8, i16, i8, i8, i8, i8 }

@st_get_uart_wr_room._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013(stc): tty unavailable to perform write\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_get_uart_wr_room\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/misc/ti-st/st_core.c\00", [35 x i8] zeroinitializer }, align 32
@st_get_uart_wr_room._entry_ptr = internal global ptr @st_get_uart_wr_room._entry, section ".printk_index", align 4
@st_int_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_int_write\00", [19 x i8] zeroinitializer }, align 32
@st_int_write._entry_ptr = internal global ptr @st_int_write._entry, section ".printk_index", align 4
@st_int_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stc):  received null from TTY \00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_int_recv\00", [20 x i8] zeroinitializer }, align 32
@st_int_recv._entry_ptr = internal global ptr @st_int_recv._entry, section ".printk_index", align 4
@st_int_recv.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_drv\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"count %ld rx_state %ldrx_count %ld\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(stc): count %ld rx_state %ldrx_count %ld\00", [54 x i8] zeroinitializer }, align 32
@st_int_recv.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Complete pkt received\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(stc): Complete pkt received\00", [35 x i8] zeroinitializer }, align 32
@st_int_recv.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.11, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"plen pointing to %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(stc): plen pointing to %x\0A\00", [36 x i8] zeroinitializer }, align 32
@st_int_recv._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016(stc): %s: invalid length for id %d\0A\00", [57 x i8] zeroinitializer }, align 32
@st_int_recv._entry_ptr.15 = internal global ptr @st_int_recv._entry.13, section ".printk_index", align 4
@st_int_recv.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.16, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"off %d, pay len %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(stc): off %d, pay len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@st_int_recv.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.18, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PM packet\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(stc): PM packet\00", [47 x i8] zeroinitializer }, align 32
@st_int_recv.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.18, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@st_int_recv._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013(stc): chip/interface misbehavior: dropping frame starting with 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@st_int_recv._entry_ptr.22 = internal global ptr @st_int_recv._entry.20, section ".printk_index", align 4
@st_int_recv._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stc): out of memory: dropping\0A\00", [62 x i8] zeroinitializer }, align 32
@st_int_recv._entry_ptr.25 = internal global ptr @st_int_recv._entry.23, section ".printk_index", align 4
@st_int_recv.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.26, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_count %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(stc): rx_count %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@st_int_recv.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.5, ptr @.str.2, ptr @.str.28, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"done %s\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(stc): done %s\00", [17 x i8] zeroinitializer }, align 32
@st_tx_wakeup.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_tx_wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(stc): %s\00", [22 x i8] zeroinitializer }, align 32
@st_tx_wakeup.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.30, ptr @.str.2, ptr @.str.33, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ST already sending\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(stc): ST already sending\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%d]\0ABT=%c\0AFM=%c\0AGPS=%c\0A\00", [39 x i8] zeroinitializer }, align 32
@st_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013(stc): gdata/new_proto/recv or reg_complete_cb not ready\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_register\00", [20 x i8] zeroinitializer }, align 32
@st_register._entry_ptr = internal global ptr @st_register._entry, section ".printk_index", align 4
@st_register._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stc): chnl_id %d not supported\00", [62 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.40 = internal global ptr @st_register._entry.38, section ".printk_index", align 4
@st_register._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(stc): chnl_id %d already registered\00", [57 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.43 = internal global ptr @st_register._entry.41, section ".printk_index", align 4
@st_register._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016(stc):  ST_REG_IN_PROGRESS:%d \00", [63 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.46 = internal global ptr @st_register._entry.44, section ".printk_index", align 4
@st_register._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016(stc):  chnl_id list empty :%d \00", [62 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.49 = internal global ptr @st_register._entry.47, section ".printk_index", align 4
@st_recv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@st_register._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013(stc):  KIM failure complete callback \00", [55 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.52 = internal global ptr @st_register._entry.50, section ".printk_index", align 4
@st_register.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.37, ptr @.str.2, ptr @.str.53, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" call reg complete callback \00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(stc):  call reg complete callback \00", [60 x i8] zeroinitializer }, align 32
@st_register._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.37, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(stc):  proto %d already registered \00", [57 x i8] zeroinitializer }, align 32
@st_register._entry_ptr.57 = internal global ptr @st_register._entry.55, section ".printk_index", align 4
@__kstrtab_st_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_register = external dso_local constant [0 x i8], align 1
@__ksymtab_st_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_register to i32), ptr @__kstrtab_st_register, ptr @__kstrtabns_st_register }, section "___ksymtab_gpl+st_register", align 4
@st_unregister.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_unregister\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d \00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(stc): %s: %d \00", [17 x i8] zeroinitializer }, align 32
@st_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.2, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013(stc):  chnl_id %d not supported\00", [61 x i8] zeroinitializer }, align 32
@st_unregister._entry_ptr = internal global ptr @st_unregister._entry, section ".printk_index", align 4
@st_unregister._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013(stc):  chnl_id %d not registered\00", [60 x i8] zeroinitializer }, align 32
@st_unregister._entry_ptr.64 = internal global ptr @st_unregister._entry.62, section ".printk_index", align 4
@st_unregister._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016(stc):  all chnl_ids unregistered \00", [59 x i8] zeroinitializer }, align 32
@st_unregister._entry_ptr.67 = internal global ptr @st_unregister._entry.65, section ".printk_index", align 4
@st_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013(stc): data/tty unavailable to perform write\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_write\00", [23 x i8] zeroinitializer }, align 32
@st_write._entry_ptr = internal global ptr @st_write._entry, section ".printk_index", align 4
@st_write.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d to be written\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(stc): %d to be written\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_st_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_st_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_unregister to i32), ptr @__kstrtab_st_unregister, ptr @__kstrtabns_st_unregister }, section "___ksymtab_gpl+st_unregister", align 4
@st_ldisc_ops = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.116, i32 22, ptr @st_tty_open, ptr @st_tty_close, ptr @st_tty_flush_buffer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_tty_receive, ptr @st_tty_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@st_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013(stc): error registering %d line discipline %ld\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_core_init\00", [19 x i8] zeroinitializer }, align 32
@st_core_init._entry_ptr = internal global ptr @st_core_init._entry, section ".printk_index", align 4
@st_core_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"registered n_shared line discipline\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(stc): registered n_shared line discipline\00", [53 x i8] zeroinitializer }, align 32
@st_core_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013(stc): memory allocation failed\00", [62 x i8] zeroinitializer }, align 32
@st_core_init._entry_ptr.78 = internal global ptr @st_core_init._entry.76, section ".printk_index", align 4
@st_core_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&st_gdata->lock\00", [16 x i8] zeroinitializer }, align 32
@st_core_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013(stc): error during st_ll initialization(%ld)\00", [48 x i8] zeroinitializer }, align 32
@st_core_init._entry_ptr.82 = internal global ptr @st_core_init._entry.80, section ".printk_index", align 4
@st_core_init.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&st_gdata->work_write_wakeup)\00", [48 x i8] zeroinitializer }, align 32
@st_core_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013(stc): error during deinit of ST LL %ld\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_core_exit\00", [19 x i8] zeroinitializer }, align 32
@st_core_exit._entry_ptr = internal global ptr @st_core_exit._entry, section ".printk_index", align 4
@st_send_frame.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_send_frame\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" %s(prot:%d) \00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(stc):  %s(prot:%d) \00", [43 x i8] zeroinitializer }, align 32
@st_send_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013(stc): chnl_id %d not registered, no data to send?\00", [43 x i8] zeroinitializer }, align 32
@st_send_frame._entry_ptr = internal global ptr @st_send_frame._entry, section ".printk_index", align 4
@st_send_frame._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013(stc):  proto stack %d's ->recv failed\00", [55 x i8] zeroinitializer }, align 32
@st_send_frame._entry_ptr.93 = internal global ptr @st_send_frame._entry.91, section ".printk_index", align 4
@st_send_frame._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(stc):  proto stack %d's ->recv null\00", [57 x i8] zeroinitializer }, align 32
@st_send_frame._entry_ptr.96 = internal global ptr @st_send_frame._entry.94, section ".printk_index", align 4
@st_check_data_len.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_check_data_len\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"len %d room %d\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(stc): len %d room %d\00", [42 x i8] zeroinitializer }, align 32
@st_check_data_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013(stc): Data length is too large len %d room %d\00", [47 x i8] zeroinitializer }, align 32
@st_check_data_len._entry_ptr = internal global ptr @st_check_data_len._entry, section ".printk_index", align 4
@st_int_dequeue.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.101, ptr @.str.2, ptr @.str.31, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_int_dequeue\00", [17 x i8] zeroinitializer }, align 32
@add_channel_to_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016(stc): %s: id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"add_channel_to_table\00", [43 x i8] zeroinitializer }, align 32
@add_channel_to_table._entry_ptr = internal global ptr @add_channel_to_table._entry, section ".printk_index", align 4
@st_reg_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016(stc):  %s \00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_reg_complete\00", [16 x i8] zeroinitializer }, align 32
@st_reg_complete._entry_ptr = internal global ptr @st_reg_complete._entry, section ".printk_index", align 4
@st_reg_complete._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016(stc): protocol %d's cb sent %d\0A\00", [61 x i8] zeroinitializer }, align 32
@st_reg_complete._entry_ptr.108 = internal global ptr @st_reg_complete._entry.106, section ".printk_index", align 4
@remove_channel_from_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.109, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"remove_channel_from_table\00", [38 x i8] zeroinitializer }, align 32
@remove_channel_from_table._entry_ptr = internal global ptr @remove_channel_from_table._entry, section ".printk_index", align 4
@st_int_enqueue.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.110, ptr @.str.2, ptr @.str.31, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_int_enqueue\00", [17 x i8] zeroinitializer }, align 32
@st_int_enqueue.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ST LL is AWAKE, sending normally\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(stc): ST LL is AWAKE, sending normally\00", [56 x i8] zeroinitializer }, align 32
@st_int_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.110, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013(stc): ST LL is illegal state(%ld),purging received skb.\00", [37 x i8] zeroinitializer }, align 32
@st_int_enqueue._entry_ptr = internal global ptr @st_int_enqueue._entry, section ".printk_index", align 4
@st_int_enqueue._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.110, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@st_int_enqueue._entry_ptr.115 = internal global ptr @st_int_enqueue._entry.114, section ".printk_index", align 4
@st_int_enqueue.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.110, ptr @.str.2, ptr @.str.28, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"n_st\00", [27 x i8] zeroinitializer }, align 32
@st_tty_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016(stc): %s \00", [19 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_tty_open\00", [20 x i8] zeroinitializer }, align 32
@st_tty_open._entry_ptr = internal global ptr @st_tty_open._entry, section ".printk_index", align 4
@st_tty_open.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.118, ptr @.str.2, ptr @.str.28, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@st_tty_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.119, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_tty_close\00", [19 x i8] zeroinitializer }, align 32
@st_tty_close._entry_ptr = internal global ptr @st_tty_close._entry, section ".printk_index", align 4
@st_tty_close._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013(stc): %d not un-registered\00", [34 x i8] zeroinitializer }, align 32
@st_tty_close._entry_ptr.122 = internal global ptr @st_tty_close._entry.120, section ".printk_index", align 4
@st_tty_close.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.119, ptr @.str.2, ptr @.str.123, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: done \00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(stc): %s: done \00", [47 x i8] zeroinitializer }, align 32
@st_tty_flush_buffer.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_tty_flush_buffer\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(stc): %s \00", [21 x i8] zeroinitializer }, align 32
@st_tty_receive.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.128, ptr @.str.2, ptr @.str.28, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st_tty_receive\00", [17 x i8] zeroinitializer }, align 32
@st_tty_wakeup.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.129, ptr @.str.2, ptr @.str.126, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_tty_wakeup\00", [18 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 8, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 56, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 76, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 243, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 247, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 268, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 284, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 291, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 296, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 312, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 359, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 369, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 381, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 388, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 473, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 476, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 516, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 537, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 542, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 547, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 555, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 566, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [8 x i8] c"st_recv\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 26, i32 15 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 585, i32 5 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 605, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 615, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 650, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 654, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 661, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 674, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 702, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 706, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [13 x i8] c"st_ldisc_ops\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 846, i32 29 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 865, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 869, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 873, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 885, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 889, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 893, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 910, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 94, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 99, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 115, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 120, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 157, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 172, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 402, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 32, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 135, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 142, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 41, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 424, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 429, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 436, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 445, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 848, i32 10 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 728, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 759, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 769, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 796, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 837, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 812, i32 2 }
@___asan_gen_.525 = private constant [32 x i8] c"../drivers/misc/ti-st/st_core.c\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 822, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1984, i32 2 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__ksymtab_st_register, ptr @__ksymtab_st_unregister, ptr @add_channel_to_table._entry, ptr @add_channel_to_table._entry_ptr, ptr @remove_channel_from_table._entry, ptr @remove_channel_from_table._entry_ptr, ptr @st_check_data_len._entry, ptr @st_check_data_len._entry_ptr, ptr @st_core_exit._entry, ptr @st_core_exit._entry_ptr, ptr @st_core_init._entry, ptr @st_core_init._entry.76, ptr @st_core_init._entry.80, ptr @st_core_init._entry_ptr, ptr @st_core_init._entry_ptr.78, ptr @st_core_init._entry_ptr.82, ptr @st_get_uart_wr_room._entry, ptr @st_get_uart_wr_room._entry_ptr, ptr @st_int_enqueue._entry, ptr @st_int_enqueue._entry.114, ptr @st_int_enqueue._entry_ptr, ptr @st_int_enqueue._entry_ptr.115, ptr @st_int_recv._entry, ptr @st_int_recv._entry.13, ptr @st_int_recv._entry.20, ptr @st_int_recv._entry.23, ptr @st_int_recv._entry_ptr, ptr @st_int_recv._entry_ptr.15, ptr @st_int_recv._entry_ptr.22, ptr @st_int_recv._entry_ptr.25, ptr @st_int_write._entry, ptr @st_int_write._entry_ptr, ptr @st_reg_complete._entry, ptr @st_reg_complete._entry.106, ptr @st_reg_complete._entry_ptr, ptr @st_reg_complete._entry_ptr.108, ptr @st_register._entry, ptr @st_register._entry.38, ptr @st_register._entry.41, ptr @st_register._entry.44, ptr @st_register._entry.47, ptr @st_register._entry.50, ptr @st_register._entry.55, ptr @st_register._entry_ptr, ptr @st_register._entry_ptr.40, ptr @st_register._entry_ptr.43, ptr @st_register._entry_ptr.46, ptr @st_register._entry_ptr.49, ptr @st_register._entry_ptr.52, ptr @st_register._entry_ptr.57, ptr @st_send_frame._entry, ptr @st_send_frame._entry.91, ptr @st_send_frame._entry.94, ptr @st_send_frame._entry_ptr, ptr @st_send_frame._entry_ptr.93, ptr @st_send_frame._entry_ptr.96, ptr @st_tty_close._entry, ptr @st_tty_close._entry.120, ptr @st_tty_close._entry_ptr, ptr @st_tty_close._entry_ptr.122, ptr @st_tty_open._entry, ptr @st_tty_open._entry_ptr, ptr @st_unregister._entry, ptr @st_unregister._entry.62, ptr @st_unregister._entry.65, ptr @st_unregister._entry_ptr, ptr @st_unregister._entry_ptr.64, ptr @st_unregister._entry_ptr.67, ptr @st_write._entry, ptr @st_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @st_recv, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @st_ldisc_ops, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @st_core_init.__key, ptr @.str.79, ptr @.str.81, ptr @st_core_init.__key.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @skb_queue_head_init.__key, ptr @.str.130], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_get_uart_wr_room._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_recv._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_recv._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_recv._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_recv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_register._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_unregister._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_unregister._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ldisc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_init.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_core_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_send_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_send_frame._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_send_frame._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_check_data_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_channel_to_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_reg_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_reg_complete._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remove_channel_from_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_int_enqueue._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tty_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tty_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tty_close._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_get_uart_wr_room(ptr noundef readonly %st_gdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %st_gdata, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs, !prof !271

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %tty = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 15
  %0 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !271

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %return

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @tty_write_room(ptr noundef nonnull %1) #6
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_int_write(ptr noundef readonly %st_gdata, ptr noundef %data, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %st_gdata, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs, !prof !271

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %tty1 = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 15
  %0 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %lor.rhs.do.end_crit_edge, label %if.end, !prof !271

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %call5 = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %count) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_int_recv(ptr noundef %disc_data, ptr noundef readonly %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %data, null
  %cmp2 = icmp eq ptr %disc_data, null
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %do.end, label %do.body3, !prof !272

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then13)) #6
          to label %do.body18 [label %if.then13], !srcloc !273

if.then13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %rx_state = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 5
  %0 = ptrtoint ptr %rx_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_state, align 4
  %rx_count = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 6
  %2 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.8, i32 noundef %count, i32 noundef %1, i32 noundef %3) #6
  br label %do.body18

do.body18:                                        ; preds = %if.then13, %do.body3
  %lock = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 11
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool27.not438442448 = icmp eq i32 %count, 0
  br i1 %tobool27.not438442448, label %do.body18.done_crit_edge, label %while.body.lr.ph.lr.ph.lr.ph

do.body18.done_crit_edge:                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

while.body.lr.ph.lr.ph.lr.ph:                     ; preds = %do.body18
  %rx_count28 = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 6
  %rx_skb = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 7
  %rx_state42 = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 5
  %rx_chnl = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 8
  %tx_waitq.i393 = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 10
  %txq.i396 = getelementptr inbounds %struct.st_data_s, ptr %disc_data, i32 0, i32 9
  br label %while.body.lr.ph.lr.ph

while.body.lr.ph.lr.ph:                           ; preds = %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge, %while.body.lr.ph.lr.ph.lr.ph
  %count.addr.0.ph452 = phi i32 [ %count, %while.body.lr.ph.lr.ph.lr.ph ], [ %count.addr.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge ]
  %ptr.0.ph451 = phi ptr [ %data, %while.body.lr.ph.lr.ph.lr.ph ], [ %ptr.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge ]
  %payload_len.0.ph450 = phi i16 [ 0, %while.body.lr.ph.lr.ph.lr.ph ], [ %payload_len.0.ph414443, %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge ]
  %flags.0.ph449 = phi i32 [ %call22, %while.body.lr.ph.lr.ph.lr.ph ], [ %call192, %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge ]
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end124.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %count.addr.0.ph416445 = phi i32 [ %count.addr.0.ph452, %while.body.lr.ph.lr.ph ], [ %sub37, %do.end124.while.body.lr.ph_crit_edge ]
  %ptr.0.ph415444 = phi ptr [ %ptr.0.ph451, %while.body.lr.ph.lr.ph ], [ %add.ptr, %do.end124.while.body.lr.ph_crit_edge ]
  %payload_len.0.ph414443 = phi i16 [ %payload_len.0.ph450, %while.body.lr.ph.lr.ph ], [ %payload_len.1, %do.end124.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %count.addr.0440 = phi i32 [ %count.addr.0.ph416445, %while.body.lr.ph ], [ %count.addr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %ptr.0439 = phi ptr [ %ptr.0.ph415444, %while.body.lr.ph ], [ %ptr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %rx_count28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_count28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.not = icmp eq i32 %5, 0
  br i1 %tobool29.not, label %while.body.if.end125_crit_edge, label %if.then30

while.body.if.end125_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then30:                                        ; preds = %while.body
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %count.addr.0440)
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  %call.i = tail call ptr @skb_put(ptr noundef %8, i32 noundef %6) #6
  %9 = call ptr @memcpy(ptr %call.i, ptr %ptr.0439, i32 %6)
  %10 = ptrtoint ptr %rx_count28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_count28, align 4
  %sub = sub i32 %11, %6
  store i32 %sub, ptr %rx_count28, align 4
  %sub37 = sub i32 %count.addr.0440, %6
  %add.ptr = getelementptr i8, ptr %ptr.0439, i32 %6
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %tobool39.not = icmp eq i32 %11, %6
  br i1 %tobool39.not, label %if.end41, label %if.then30.while.cond.backedge_crit_edge

if.then30.while.cond.backedge_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.end41:                                         ; preds = %if.then30
  %12 = ptrtoint ptr %rx_state42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_state42, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end41.if.end125_crit_edge [
    i32 2, label %do.body43
    i32 1, label %sw.bb61
  ]

if.end41.if.end125_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

do.body43:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then55)) #6
          to label %do.end58 [label %if.then55], !srcloc !273

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.10) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %do.body43
  %15 = ptrtoint ptr %rx_chnl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rx_chnl, align 4
  tail call fastcc void @st_send_frame(i8 noundef zeroext %16, ptr noundef nonnull %disc_data)
  %17 = ptrtoint ptr %rx_state42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_state42, align 4
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rx_skb, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog266, %do.end58, %if.then30.while.cond.backedge_crit_edge
  %ptr.0.be = phi ptr [ %add.ptr, %if.then30.while.cond.backedge_crit_edge ], [ %incdec.ptr267, %sw.epilog266 ], [ %add.ptr, %do.end58 ]
  %count.addr.0.be = phi i32 [ %sub37, %if.then30.while.cond.backedge_crit_edge ], [ %dec268, %sw.epilog266 ], [ %sub37, %do.end58 ]
  %tobool27.not = icmp eq i32 %count.addr.0.be, 0
  br i1 %tobool27.not, label %while.cond.backedge.done_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.backedge.done_crit_edge:               ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.bb61:                                          ; preds = %if.end41
  %19 = ptrtoint ptr %rx_chnl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_chnl, align 4
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr %struct.st_data_s, ptr %disc_data, i32 0, i32 3, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_skb, align 4
  %data64 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data64, align 4
  %offset_len_in_hdr = getelementptr inbounds %struct.st_proto_s, ptr %22, i32 0, i32 9
  %27 = ptrtoint ptr %offset_len_in_hdr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offset_len_in_hdr, align 1
  %idxprom65 = zext i8 %28 to i32
  %arrayidx66 = getelementptr i8, ptr %26, i32 %idxprom65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then79)) #6
          to label %do.end83 [label %if.then79], !srcloc !273

if.then79:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx66, align 1
  %conv80 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.12, i32 noundef %conv80) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %sw.bb61
  %len_size = getelementptr inbounds %struct.st_proto_s, ptr %22, i32 0, i32 10
  %31 = ptrtoint ptr %len_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len_size, align 2
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %32, label %do.end97 [
    i8 1, label %if.then87
    i8 2, label %if.then93
  ]

if.then87:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx66, align 1
  %conv88 = zext i8 %35 to i16
  br label %if.end102

if.then93:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx66, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  br label %if.end102

do.end97:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %chnl_id = getelementptr inbounds %struct.st_proto_s, ptr %22, i32 0, i32 6
  %39 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %chnl_id, align 4
  %conv99 = zext i8 %40 to i32
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef %conv99) #9
  br label %if.end102

if.end102:                                        ; preds = %do.end97, %if.then93, %if.then87
  %payload_len.1 = phi i16 [ %conv88, %if.then87 ], [ %38, %if.then93 ], [ %payload_len.0.ph414443, %do.end97 ]
  %chnl_id103 = getelementptr inbounds %struct.st_proto_s, ptr %22, i32 0, i32 6
  %41 = ptrtoint ptr %chnl_id103 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chnl_id103, align 4
  %conv104 = zext i16 %payload_len.1 to i32
  %43 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_skb, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end102.skb_tailroom.exit.i_crit_edge

if.end102.skb_tailroom.exit.i_crit_edge:          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end102.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end102.skb_tailroom.exit.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_check_data_len.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !273

if.then.i:                                        ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_check_data_len.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.99, i32 noundef %conv104, i32 noundef %cond.i.i) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %payload_len.1)
  %tobool4.not.i = icmp eq i16 %payload_len.1, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @st_send_frame(i8 noundef zeroext %42, ptr noundef %disc_data) #6
  br label %if.end15.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv104)
  %cmp.i = icmp slt i32 %cond.i.i, %conv104
  br i1 %cmp.i, label %do.end9.i, label %if.else13.i

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv104, i32 noundef %cond.i.i) #9
  %51 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %52, i32 noundef 0) #6
  br label %if.end15.i

if.else13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %rx_state42 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %rx_state42, align 4
  %54 = ptrtoint ptr %rx_count28 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv104, ptr %rx_count28, align 4
  br label %st_check_data_len.exit

if.end15.i:                                       ; preds = %do.end9.i, %if.then5.i
  %55 = call ptr @memset(ptr %rx_state42, i32 0, i32 13)
  br label %st_check_data_len.exit

st_check_data_len.exit:                           ; preds = %if.end15.i, %if.else13.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then118)) #6
          to label %do.end124 [label %if.then118], !srcloc !273

if.then118:                                       ; preds = %st_check_data_len.exit
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %offset_len_in_hdr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %offset_len_in_hdr, align 1
  %conv120 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.17, i32 noundef %conv120, i32 noundef %conv104) #6
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %st_check_data_len.exit
  %tobool27.not438 = icmp eq i32 %sub37, 0
  br i1 %tobool27.not438, label %do.end124.done_crit_edge, label %do.end124.while.body.lr.ph_crit_edge

do.end124.while.body.lr.ph_crit_edge:             ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

do.end124.done_crit_edge:                         ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end125:                                        ; preds = %if.end41.if.end125_crit_edge, %while.body.if.end125_crit_edge
  %ptr.1 = phi ptr [ %add.ptr, %if.end41.if.end125_crit_edge ], [ %ptr.0439, %while.body.if.end125_crit_edge ]
  %count.addr.1 = phi i32 [ %sub37, %if.end41.if.end125_crit_edge ], [ %count.addr.0440, %while.body.if.end125_crit_edge ]
  %58 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ptr.1, align 1
  %conv126 = zext i8 %59 to i32
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %59, label %sw.default [
    i8 48, label %if.end125.do.body128_crit_edge
    i8 49, label %if.end125.do.body128_crit_edge578
    i8 50, label %if.end125.do.body128_crit_edge579
    i8 51, label %do.body166
  ]

if.end125.do.body128_crit_edge579:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end125.do.body128_crit_edge578:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

if.end125.do.body128_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body128

do.body128:                                       ; preds = %if.end125.do.body128_crit_edge, %if.end125.do.body128_crit_edge578, %if.end125.do.body128_crit_edge579
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then140)) #6
          to label %do.end143 [label %if.then140], !srcloc !273

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.19) #6
  br label %do.end143

do.end143:                                        ; preds = %if.then140, %do.body128
  %61 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ptr.1, align 1
  %call144 = tail call i32 @st_ll_sleep_state(ptr noundef nonnull %disc_data, i8 noundef zeroext %62) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.ph449) #6
  %call146 = tail call i32 @st_ll_getstate(ptr noundef nonnull %disc_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call146)
  %cmp147 = icmp eq i32 %call146, 2
  br i1 %cmp147, label %if.then149, label %do.end143.while.cond.outer.backedge_crit_edge

do.end143.while.cond.outer.backedge_crit_edge:    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge

if.then149:                                       ; preds = %do.end143
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call515.i = tail call ptr @skb_dequeue(ptr noundef %tx_waitq.i393) #6
  %tobool.not16.i = icmp eq ptr %call515.i, null
  br i1 %tobool.not16.i, label %if.then149.while.cond.outer.backedge.sink.split_crit_edge, label %if.then149.while.body.i_crit_edge

if.then149.while.body.i_crit_edge:                ; preds = %if.then149
  br label %while.body.i

if.then149.while.cond.outer.backedge.sink.split_crit_edge: ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.sink.split

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then149.while.body.i_crit_edge
  %call517.i = phi ptr [ %call5.i, %while.body.i.while.body.i_crit_edge ], [ %call515.i, %if.then149.while.body.i_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %txq.i396, ptr noundef nonnull %call517.i) #6
  %call5.i = tail call ptr @skb_dequeue(ptr noundef %tx_waitq.i393) #6
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %while.body.i.while.cond.outer.backedge.sink.split_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.while.cond.outer.backedge.sink.split_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.sink.split

do.body166:                                       ; preds = %if.end125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then178)) #6
          to label %do.end181 [label %if.then178], !srcloc !273

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.19) #6
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.body166
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.ph449) #6
  %63 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ptr.1, align 1
  %call2.i392 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call515.i394 = tail call ptr @skb_dequeue(ptr noundef %tx_waitq.i393) #6
  %tobool.not16.i395 = icmp eq ptr %call515.i394, null
  br i1 %tobool.not16.i395, label %do.end181.while.cond.outer.backedge.sink.split_crit_edge, label %do.end181.while.body.i401_crit_edge

do.end181.while.body.i401_crit_edge:              ; preds = %do.end181
  br label %while.body.i401

do.end181.while.cond.outer.backedge.sink.split_crit_edge: ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.sink.split

while.body.i401:                                  ; preds = %while.body.i401.while.body.i401_crit_edge, %do.end181.while.body.i401_crit_edge
  %call517.i398 = phi ptr [ %call5.i399, %while.body.i401.while.body.i401_crit_edge ], [ %call515.i394, %do.end181.while.body.i401_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %txq.i396, ptr noundef nonnull %call517.i398) #6
  %call5.i399 = tail call ptr @skb_dequeue(ptr noundef %tx_waitq.i393) #6
  %tobool.not.i400 = icmp eq ptr %call5.i399, null
  br i1 %tobool.not.i400, label %while.body.i401.while.cond.outer.backedge.sink.split_crit_edge, label %while.body.i401.while.body.i401_crit_edge

while.body.i401.while.body.i401_crit_edge:        ; preds = %while.body.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i401

while.body.i401.while.cond.outer.backedge.sink.split_crit_edge: ; preds = %while.body.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.sink.split

while.cond.outer.backedge.sink.split:             ; preds = %while.body.i401.while.cond.outer.backedge.sink.split_crit_edge, %do.end181.while.cond.outer.backedge.sink.split_crit_edge, %while.body.i.while.cond.outer.backedge.sink.split_crit_edge, %if.then149.while.cond.outer.backedge.sink.split_crit_edge
  %.sink = phi i8 [ 51, %if.then149.while.cond.outer.backedge.sink.split_crit_edge ], [ %64, %do.end181.while.cond.outer.backedge.sink.split_crit_edge ], [ 51, %while.body.i.while.cond.outer.backedge.sink.split_crit_edge ], [ %64, %while.body.i401.while.cond.outer.backedge.sink.split_crit_edge ]
  %call2.i.sink = phi i32 [ %call2.i, %if.then149.while.cond.outer.backedge.sink.split_crit_edge ], [ %call2.i392, %do.end181.while.cond.outer.backedge.sink.split_crit_edge ], [ %call2.i, %while.body.i.while.cond.outer.backedge.sink.split_crit_edge ], [ %call2.i392, %while.body.i401.while.cond.outer.backedge.sink.split_crit_edge ]
  %call8.i = tail call i32 @st_ll_sleep_state(ptr noundef %disc_data, i8 noundef zeroext %.sink) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.sink) #6
  tail call void @st_tx_wakeup(ptr noundef %disc_data) #6
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.cond.outer.backedge.sink.split, %do.end143.while.cond.outer.backedge_crit_edge
  %call192 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %count.addr.0.ph.be = add i32 %count.addr.1, -1
  %ptr.0.ph.be = getelementptr i8, ptr %ptr.1, i32 1
  %tobool27.not438442 = icmp eq i32 %count.addr.0.ph.be, 0
  br i1 %tobool27.not438442, label %while.cond.outer.backedge.done_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.lr.ph

while.cond.outer.backedge.done_crit_edge:         ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.default:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %59)
  %cmp200 = icmp ugt i8 %59, 15
  br i1 %cmp200, label %sw.default.do.end211_crit_edge, label %lor.lhs.false202

sw.default.do.end211_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end211

lor.lhs.false202:                                 ; preds = %sw.default
  %arrayidx205 = getelementptr %struct.st_data_s, ptr %disc_data, i32 0, i32 3, i32 %conv126
  %65 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx205, align 4
  %cmp206 = icmp eq ptr %66, null
  br i1 %cmp206, label %lor.lhs.false202.do.end211_crit_edge, label %if.end215

lor.lhs.false202.do.end211_crit_edge:             ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end211

do.end211:                                        ; preds = %lor.lhs.false202.do.end211_crit_edge, %sw.default.do.end211_crit_edge
  %conv126.le = zext i8 %59 to i32
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv126.le) #9
  br label %done

if.end215:                                        ; preds = %lor.lhs.false202
  %max_frame_size = getelementptr inbounds %struct.st_proto_s, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %max_frame_size, align 2
  %conv219 = zext i16 %68 to i32
  %call.i404 = tail call ptr @__alloc_skb(i32 noundef %conv219, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %69 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i404, ptr %rx_skb, align 4
  %cmp223 = icmp eq ptr %call.i404, null
  br i1 %cmp223, label %do.end228, label %if.end231

do.end228:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %done

if.end231:                                        ; preds = %if.end215
  %70 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx205, align 4
  %reserve = getelementptr inbounds %struct.st_proto_s, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %reserve to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %reserve, align 1
  %conv236 = zext i8 %73 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i404, i32 0, i32 19
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 %conv236
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i404, i32 0, i32 16
  %76 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %77, i32 %conv236
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %78 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_skb, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %59, ptr %cb, align 8
  %81 = load ptr, ptr %rx_skb, align 4
  %arrayidx241 = getelementptr %struct.sk_buff, ptr %81, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %arrayidx241, align 1
  %83 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ptr.1, align 1
  %85 = ptrtoint ptr %rx_chnl to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %rx_chnl, align 4
  %86 = ptrtoint ptr %rx_state42 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %rx_state42, align 4
  %87 = load ptr, ptr %arrayidx205, align 4
  %hdr_len = getelementptr inbounds %struct.st_proto_s, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hdr_len, align 4
  %conv247 = zext i8 %89 to i32
  %90 = ptrtoint ptr %rx_count28 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv247, ptr %rx_count28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then261)) #6
          to label %sw.epilog266 [label %if.then261], !srcloc !273

if.then261:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %rx_count28 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_count28, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.27, i32 noundef %92) #6
  br label %sw.epilog266

sw.epilog266:                                     ; preds = %if.then261, %if.end231
  %incdec.ptr267 = getelementptr i8, ptr %ptr.1, i32 1
  %dec268 = add i32 %count.addr.1, -1
  br label %while.cond.backedge

done:                                             ; preds = %do.end228, %do.end211, %while.cond.outer.backedge.done_crit_edge, %do.end124.done_crit_edge, %while.cond.backedge.done_crit_edge, %do.body18.done_crit_edge
  %flags.0.ph437 = phi i32 [ %flags.0.ph449, %do.end228 ], [ %flags.0.ph449, %do.end211 ], [ %call22, %do.body18.done_crit_edge ], [ %flags.0.ph449, %while.cond.backedge.done_crit_edge ], [ %flags.0.ph449, %do.end124.done_crit_edge ], [ %call192, %while.cond.outer.backedge.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.ph437) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_recv.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_recv, %if.then282)) #6
          to label %cleanup [label %if.then282], !srcloc !273

if.then282:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_recv.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then282, %done, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_send_frame(i8 noundef zeroext %chnl_id, ptr noundef readonly %st_gdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_send_frame.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_send_frame, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %chnl_id to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_send_frame.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %st_gdata, null
  br i1 %cmp, label %do.end.do.end18_crit_edge, label %lor.lhs.false, !prof !271

do.end.do.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false:                                    ; preds = %do.end
  %rx_skb = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 7
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %lor.lhs.false.do.end18_crit_edge, label %lor.rhs, !prof !271

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.rhs:                                          ; preds = %lor.lhs.false
  %idxprom = zext i8 %chnl_id to i32
  %arrayidx = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 4, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %lor.rhs.do.end18_crit_edge, label %if.end23, !prof !271

lor.rhs.do.end18_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %lor.rhs.do.end18_crit_edge, %lor.lhs.false.do.end18_crit_edge, %do.end.do.end18_crit_edge
  %conv20 = zext i8 %chnl_id to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv20) #9
  %rx_skb22 = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 7
  br label %return.sink.split

if.end23:                                         ; preds = %lor.rhs
  %arrayidx25 = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx25, align 4
  %recv = getelementptr inbounds %struct.st_proto_s, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv, align 4
  %cmp26.not = icmp eq ptr %7, null
  br i1 %cmp26.not, label %do.end61, label %if.then34, !prof !271

if.then34:                                        ; preds = %if.end23
  %priv_data = getelementptr inbounds %struct.st_proto_s, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv_data, align 4
  %call43 = tail call i32 %7(ptr noundef %9, ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.then34.return_crit_edge, label %do.end54, !prof !275

if.then34.return_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end54:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %idxprom) #9
  br label %return.sink.split

do.end61:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %idxprom) #9
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end61, %do.end54, %do.end18
  %rx_skb.sink = phi ptr [ %rx_skb, %do.end61 ], [ %rx_skb, %do.end54 ], [ %rx_skb22, %do.end18 ]
  %10 = ptrtoint ptr %rx_skb.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_skb.sink, align 4
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #6
  br label %return

return:                                           ; preds = %return.sink.split, %if.then34.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_ll_sleep_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_ll_getstate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_tx_wakeup(ptr noundef %st_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tx_wakeup.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tx_wakeup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tx_wakeup.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_state = getelementptr inbounds %struct.st_data_s, ptr %st_data, i32 0, i32 2
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %tx_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body24.preheader, label %do.body6

do.body24.preheader:                              ; preds = %do.end
  %tx_skb.i = getelementptr inbounds %struct.st_data_s, ptr %st_data, i32 0, i32 1
  %txq.i = getelementptr inbounds %struct.st_data_s, ptr %st_data, i32 0, i32 9
  %lock = getelementptr inbounds %struct.st_data_s, ptr %st_data, i32 0, i32 11
  %tty = getelementptr inbounds %struct.st_data_s, ptr %st_data, i32 0, i32 15
  %cmp.i = icmp eq ptr %st_data, null
  br label %do.body24

do.body6:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tx_wakeup.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tx_wakeup, %if.then18)) #6
          to label %do.end21 [label %if.then18], !srcloc !273

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tx_wakeup.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.34) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tx_state) #6
  br label %cleanup53

do.body24:                                        ; preds = %do.cond47.do.body24_crit_edge, %do.body24.preheader
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %tx_state) #6
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_dequeue.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tx_wakeup, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !273

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_dequeue.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.101) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.cond
  %0 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %st_int_dequeue.exit, label %st_int_dequeue.exit.thread

st_int_dequeue.exit.thread:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_skb.i, align 4
  br label %while.body

st_int_dequeue.exit:                              ; preds = %do.end.i
  %call7.i = tail call ptr @skb_dequeue(ptr noundef %txq.i) #6
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %st_int_dequeue.exit.do.cond47_crit_edge, label %st_int_dequeue.exit.while.body_crit_edge

st_int_dequeue.exit.while.body_crit_edge:         ; preds = %st_int_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

st_int_dequeue.exit.do.cond47_crit_edge:          ; preds = %st_int_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond47

while.body:                                       ; preds = %st_int_dequeue.exit.while.body_crit_edge, %st_int_dequeue.exit.thread
  %retval.0.i7784 = phi ptr [ %1, %st_int_dequeue.exit.thread ], [ %call7.i, %st_int_dequeue.exit.while.body_crit_edge ]
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %3 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tty, align 4
  %flags37 = getelementptr inbounds %struct.tty_struct, ptr %4, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags37) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i7784, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len38 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i7784, i32 0, i32 6
  %7 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len38, align 4
  br i1 %cmp.i, label %while.body.do.end.i78_crit_edge, label %lor.rhs.i, !prof !271

while.body.do.end.i78_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i78

lor.rhs.i:                                        ; preds = %while.body
  %9 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tty, align 4
  %cmp2.i = icmp eq ptr %10, null
  br i1 %cmp2.i, label %lor.rhs.i.do.end.i78_crit_edge, label %if.end.i, !prof !271

lor.rhs.i.do.end.i78_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i78

do.end.i78:                                       ; preds = %lor.rhs.i.do.end.i78_crit_edge, %while.body.do.end.i78_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %st_int_write.exit

if.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  %call5.i = tail call i32 %14(ptr noundef nonnull %10, ptr noundef %6, i32 noundef %8) #6
  br label %st_int_write.exit

st_int_write.exit:                                ; preds = %if.end.i, %do.end.i78
  %retval.0.i79 = phi i32 [ -22, %do.end.i78 ], [ %call5.i, %if.end.i ]
  %call40 = tail call ptr @skb_pull(ptr noundef nonnull %retval.0.i7784, i32 noundef %retval.0.i79) #6
  %15 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len38, align 4
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %st_int_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i7784, ptr %tx_skb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #6
  br label %do.cond47

cleanup:                                          ; preds = %st_int_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %retval.0.i7784, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #6
  br label %while.cond

do.cond47:                                        ; preds = %cleanup.thread, %st_int_dequeue.exit.do.cond47_crit_edge
  %18 = ptrtoint ptr %tx_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %tx_state, align 4
  %20 = and i32 %19, 4
  %tobool50.not = icmp eq i32 %20, 0
  br i1 %tobool50.not, label %do.end51, label %do.cond47.do.body24_crit_edge

do.cond47.do.body24_crit_edge:                    ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.end51:                                         ; preds = %do.cond47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %tx_state) #6
  br label %cleanup53

cleanup53:                                        ; preds = %do.end51, %do.end21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kim_st_list_protocols(ptr nocapture noundef readonly %st_gdata, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %protos_registered = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 12
  %0 = ptrtoint ptr %protos_registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protos_registered, align 4
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 85, i32 82
  %arrayidx4 = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %cond9 = select i1 %tobool5.not, i32 85, i32 82
  %arrayidx11 = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 4, i32 9
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  %cond16 = select i1 %tobool12.not, i32 85, i32 82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %cond, i32 noundef %cond9, i32 noundef %cond16) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_register(ptr noundef %new_proto) #0 align 64 {
entry:
  %st_gdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st_gdata) #6
  %0 = ptrtoint ptr %st_gdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %st_gdata, align 4, !annotation !276
  call void @st_kim_ref(ptr noundef nonnull %st_gdata, i32 noundef 0) #6
  %1 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st_gdata, align 4
  %cmp = icmp eq ptr %2, null
  %cmp1 = icmp eq ptr %new_proto, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false2

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false2:                                   ; preds = %entry
  %recv = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 1
  %3 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recv, align 4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %lor.lhs.false2.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %reg_complete_cb = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 3
  %5 = ptrtoint ptr %reg_complete_cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_complete_cb, align 4
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %lor.lhs.false4.do.end_crit_edge, label %if.end

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %entry.do.end_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %chnl_id = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 6
  %7 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chnl_id, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %8)
  %cmp6 = icmp ugt i8 %8, 15
  br i1 %cmp6, label %do.end11, label %if.end16

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.st_data_s, ptr %2, i32 0, i32 4, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body31, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv) #9
  br label %cleanup

do.body31:                                        ; preds = %if.end16
  %lock = getelementptr inbounds %struct.st_data_s, ptr %2, i32 0, i32 11
  %call36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %11 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st_gdata, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool42.not = icmp eq i32 %15, 0
  br i1 %tobool42.not, label %if.else, label %do.end46

do.end46:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chnl_id, align 4
  %conv49 = zext i8 %17 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %conv49) #9
  %18 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %st_gdata, align 4
  %20 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chnl_id, align 4
  %conv.i = zext i8 %21 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef %conv.i) #9
  %22 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chnl_id, align 4
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr %struct.st_data_s, ptr %19, i32 0, i32 3, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %new_proto, ptr %arrayidx.i, align 4
  %25 = load i8, ptr %chnl_id, align 4
  %idxprom3.i = zext i8 %25 to i32
  %arrayidx4.i = getelementptr %struct.st_data_s, ptr %19, i32 0, i32 4, i32 %idxprom3.i
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx4.i, align 1
  %27 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %st_gdata, align 4
  %protos_registered = getelementptr inbounds %struct.st_data_s, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %protos_registered to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protos_registered, align 4
  %inc = add i8 %30, 1
  store i8 %inc, ptr %protos_registered, align 4
  %write = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 4
  %31 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @st_write, ptr %write, align 4
  call void @_set_bit(i32 noundef 3, ptr noundef %28) #6
  %32 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %st_gdata, align 4
  %lock52 = getelementptr inbounds %struct.st_data_s, ptr %33, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock52, i32 noundef %call36) #6
  br label %cleanup

if.else:                                          ; preds = %do.body31
  %protos_registered53 = getelementptr inbounds %struct.st_data_s, ptr %12, i32 0, i32 12
  %34 = ptrtoint ptr %protos_registered53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %protos_registered53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp55 = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chnl_id, align 4
  %conv63 = zext i8 %37 to i32
  br i1 %cmp55, label %do.end60, label %if.else161

do.end60:                                         ; preds = %if.else
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv63) #9
  %38 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %st_gdata, align 4
  call void @_set_bit(i32 noundef 2, ptr noundef %39) #6
  store ptr @st_kim_recv, ptr @st_recv, align 4
  %40 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %st_gdata, align 4
  call void @st_ll_enable(ptr noundef %41) #6
  %42 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st_gdata, align 4
  %lock66 = getelementptr inbounds %struct.st_data_s, ptr %43, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock66, i32 noundef %call36) #6
  %44 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %st_gdata, align 4
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %kim_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kim_data, align 4
  %call67 = call i32 @st_kim_start(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  %48 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %st_gdata, align 4
  br i1 %cmp68.not, label %do.body104, label %if.then70

if.then70:                                        ; preds = %do.end60
  call void @_clear_bit(i32 noundef 2, ptr noundef %49) #6
  %50 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %st_gdata, align 4
  %protos_registered72 = getelementptr inbounds %struct.st_data_s, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %protos_registered72 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %protos_registered72, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp74.not = icmp eq i8 %53, 0
  br i1 %cmp74.not, label %if.then70.cleanup_crit_edge, label %land.lhs.true

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then70
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %51, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool78.not = icmp eq i32 %56, 0
  br i1 %tobool78.not, label %land.lhs.true.cleanup_crit_edge, label %do.end82

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  %57 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %st_gdata, align 4
  %lock92 = getelementptr inbounds %struct.st_data_s, ptr %58, i32 0, i32 11
  %call94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock92) #6
  %59 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %st_gdata, align 4
  call fastcc void @st_reg_complete(ptr noundef %60, i32 noundef %call67)
  %61 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %st_gdata, align 4
  %lock99 = getelementptr inbounds %struct.st_data_s, ptr %62, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock99, i32 noundef %call94) #6
  %63 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %st_gdata, align 4
  call void @_clear_bit(i32 noundef 3, ptr noundef %64) #6
  br label %cleanup

do.body104:                                       ; preds = %do.end60
  %lock110 = getelementptr inbounds %struct.st_data_s, ptr %49, i32 0, i32 11
  %call112 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock110) #6
  %65 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %st_gdata, align 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %66) #6
  store ptr @st_int_recv, ptr @st_recv, align 4
  %67 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %st_gdata, align 4
  %protos_registered118 = getelementptr inbounds %struct.st_data_s, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %protos_registered118 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %protos_registered118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp120.not = icmp eq i8 %70, 0
  br i1 %cmp120.not, label %do.body104.if.end137_crit_edge, label %land.lhs.true122

do.body104.if.end137_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

land.lhs.true122:                                 ; preds = %do.body104
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %68, align 4
  %73 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool125.not = icmp eq i32 %73, 0
  br i1 %tobool125.not, label %land.lhs.true122.if.end137_crit_edge, label %do.body127

land.lhs.true122.if.end137_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

do.body127:                                       ; preds = %land.lhs.true122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_register.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_register, %if.then133)) #6
          to label %do.end136 [label %if.then133], !srcloc !273

if.then133:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_register.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.54) #6
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body127
  %74 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %st_gdata, align 4
  call fastcc void @st_reg_complete(ptr noundef %75, i32 noundef 0)
  br label %if.end137

if.end137:                                        ; preds = %do.end136, %land.lhs.true122.if.end137_crit_edge, %do.body104.if.end137_crit_edge
  %76 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %st_gdata, align 4
  call void @_clear_bit(i32 noundef 3, ptr noundef %77) #6
  %78 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %st_gdata, align 4
  %80 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %chnl_id, align 4
  %idxprom141 = zext i8 %81 to i32
  %arrayidx142 = getelementptr %struct.st_data_s, ptr %79, i32 0, i32 4, i32 %idxprom141
  %82 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx142, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool143.not = icmp eq i8 %83, 0
  br i1 %tobool143.not, label %if.end156, label %do.end150

do.end150:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %idxprom141) #9
  %84 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %st_gdata, align 4
  %lock155 = getelementptr inbounds %struct.st_data_s, ptr %85, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock155, i32 noundef %call112) #6
  br label %cleanup

if.end156:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %call.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef %idxprom141) #9
  %86 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %chnl_id, align 4
  %idxprom.i199 = zext i8 %87 to i32
  %arrayidx.i200 = getelementptr %struct.st_data_s, ptr %79, i32 0, i32 3, i32 %idxprom.i199
  %88 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %new_proto, ptr %arrayidx.i200, align 4
  %89 = load i8, ptr %chnl_id, align 4
  %idxprom3.i201 = zext i8 %89 to i32
  %arrayidx4.i202 = getelementptr %struct.st_data_s, ptr %79, i32 0, i32 4, i32 %idxprom3.i201
  %90 = ptrtoint ptr %arrayidx4.i202 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %arrayidx4.i202, align 1
  %91 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %st_gdata, align 4
  %protos_registered157 = getelementptr inbounds %struct.st_data_s, ptr %92, i32 0, i32 12
  %93 = ptrtoint ptr %protos_registered157 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %protos_registered157, align 4
  %inc158 = add i8 %94, 1
  store i8 %inc158, ptr %protos_registered157, align 4
  %write159 = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 4
  %95 = ptrtoint ptr %write159 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @st_write, ptr %write159, align 4
  %lock160 = getelementptr inbounds %struct.st_data_s, ptr %92, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock160, i32 noundef %call112) #6
  br label %cleanup

if.else161:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef %conv63) #9
  %96 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %chnl_id, align 4
  %idxprom.i206 = zext i8 %97 to i32
  %arrayidx.i207 = getelementptr %struct.st_data_s, ptr %12, i32 0, i32 3, i32 %idxprom.i206
  %98 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %new_proto, ptr %arrayidx.i207, align 4
  %99 = load i8, ptr %chnl_id, align 4
  %idxprom3.i208 = zext i8 %99 to i32
  %arrayidx4.i209 = getelementptr %struct.st_data_s, ptr %12, i32 0, i32 4, i32 %idxprom3.i208
  %100 = ptrtoint ptr %arrayidx4.i209 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %arrayidx4.i209, align 1
  %101 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %st_gdata, align 4
  %protos_registered162 = getelementptr inbounds %struct.st_data_s, ptr %102, i32 0, i32 12
  %103 = ptrtoint ptr %protos_registered162 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %protos_registered162, align 4
  %inc163 = add i8 %104, 1
  store i8 %inc163, ptr %protos_registered162, align 4
  %write164 = getelementptr inbounds %struct.st_proto_s, ptr %new_proto, i32 0, i32 4
  %105 = ptrtoint ptr %write164 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @st_write, ptr %write164, align 4
  %lock165 = getelementptr inbounds %struct.st_data_s, ptr %102, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock165, i32 noundef %call36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else161, %if.end156, %do.end150, %do.end82, %land.lhs.true.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %do.end46, %do.end24, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -93, %do.end11 ], [ -114, %do.end24 ], [ -115, %do.end46 ], [ -114, %do.end150 ], [ 0, %if.end156 ], [ 0, %if.else161 ], [ -22, %do.end82 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.then70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st_gdata) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_kim_ref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_write(ptr noundef %skb) #0 align 64 {
entry:
  %st_gdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st_gdata) #6
  %0 = ptrtoint ptr %st_gdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %st_gdata, align 4, !annotation !276
  call void @st_kim_ref(ptr noundef nonnull %st_gdata, i32 noundef 0) #6
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false, !prof !271

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st_gdata, align 4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %lor.lhs.false.do.end_crit_edge, label %lor.rhs, !prof !271

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %tty = getelementptr inbounds %struct.st_data_s, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tty, align 4
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %lor.rhs.do.end_crit_edge, label %do.body4, !prof !271

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #9
  br label %cleanup

do.body4:                                         ; preds = %lor.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_write.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_write, %if.then14)) #6
          to label %do.end18 [label %if.then14], !srcloc !273

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len15, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_write.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.71, i32 noundef %6) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body4
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len19, align 4
  %9 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st_gdata, align 4
  call fastcc void @st_int_enqueue(ptr noundef %10, ptr noundef nonnull %skb)
  %11 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %st_gdata, align 4
  call void @st_tx_wakeup(ptr noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st_gdata) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_kim_recv(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_ll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_kim_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_reg_complete(ptr noundef %st_gdata, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #9
  %cmp2.not = icmp eq ptr %st_gdata, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool26.not = icmp eq i32 %err, 0
  %protos_registered = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true, !prof !271

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 4, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.rhs, !prof !271

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx8 = getelementptr %struct.st_data_s, ptr %st_gdata, i32 0, i32 3, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx8, align 4
  %reg_complete_cb = getelementptr inbounds %struct.st_proto_s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg_complete_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_complete_cb, align 4
  %cmp9.not = icmp eq ptr %5, null
  br i1 %cmp9.not, label %land.rhs.for.inc_crit_edge, label %if.then, !prof !271

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  %priv_data = getelementptr inbounds %struct.st_proto_s, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_data, align 4
  tail call void %5(ptr noundef %7, i32 noundef %err) #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %indvars.iv, i32 noundef %err) #9
  br i1 %tobool26.not, label %if.then.for.inc_crit_edge, label %if.then27

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then27:                                        ; preds = %if.then
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %protos_registered to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protos_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool31.not = icmp eq i8 %10, 0
  br i1 %tobool31.not, label %if.then27.for.inc_crit_edge, label %if.then32

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %10, -1
  %11 = ptrtoint ptr %protos_registered to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %dec, ptr %protos_registered, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %if.then27.for.inc_crit_edge, %if.then.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_unregister(ptr nocapture noundef readonly %proto) #0 align 64 {
entry:
  %st_gdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st_gdata) #6
  %0 = ptrtoint ptr %st_gdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %st_gdata, align 4, !annotation !276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_unregister.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_unregister, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chnl_id = getelementptr inbounds %struct.st_proto_s, ptr %proto, i32 0, i32 6
  %1 = ptrtoint ptr %chnl_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chnl_id, align 4
  %conv = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_unregister.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @st_kim_ref(ptr noundef nonnull %st_gdata, i32 noundef 0) #6
  %3 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %st_gdata, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %do.end.do.end10_crit_edge, label %lor.lhs.false

do.end.do.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

lor.lhs.false:                                    ; preds = %do.end
  %chnl_id4 = getelementptr inbounds %struct.st_proto_s, ptr %proto, i32 0, i32 6
  %5 = ptrtoint ptr %chnl_id4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chnl_id4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %6)
  %cmp = icmp ugt i8 %6, 15
  br i1 %cmp, label %lor.lhs.false.do.end10_crit_edge, label %do.body17

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %do.end.do.end10_crit_edge
  %chnl_id12 = getelementptr inbounds %struct.st_proto_s, ptr %proto, i32 0, i32 6
  %7 = ptrtoint ptr %chnl_id12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chnl_id12, align 4
  %conv13 = zext i8 %8 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv13) #9
  br label %cleanup

do.body17:                                        ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.st_data_s, ptr %4, i32 0, i32 11
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %9 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st_gdata, align 4
  %11 = ptrtoint ptr %chnl_id4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chnl_id4, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.st_data_s, ptr %10, i32 0, i32 4, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp30 = icmp eq i8 %14, 0
  br i1 %cmp30, label %do.end35, label %if.end41

do.end35:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %idxprom) #9
  %15 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %st_gdata, align 4
  %lock40 = getelementptr inbounds %struct.st_data_s, ptr %16, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock40, i32 noundef %call22) #6
  br label %cleanup

if.end41:                                         ; preds = %do.body17
  %protos_registered = getelementptr inbounds %struct.st_data_s, ptr %10, i32 0, i32 12
  %17 = ptrtoint ptr %protos_registered to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protos_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool42.not = icmp eq i8 %18, 0
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %18, -1
  %19 = ptrtoint ptr %protos_registered to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %dec, ptr %protos_registered, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %20 = ptrtoint ptr %chnl_id4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chnl_id4, align 4
  %conv.i = zext i8 %21 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.109, i32 noundef %conv.i) #9
  %22 = ptrtoint ptr %chnl_id4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chnl_id4, align 4
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr %struct.st_data_s, ptr %10, i32 0, i32 4, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx.i, align 1
  %25 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st_gdata, align 4
  %lock46 = getelementptr inbounds %struct.st_data_s, ptr %26, i32 0, i32 11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock46, i32 noundef %call22) #6
  %27 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %st_gdata, align 4
  %protos_registered47 = getelementptr inbounds %struct.st_data_s, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %protos_registered47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protos_registered47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp49 = icmp eq i8 %30, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end45
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %28, align 4
  %33 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool52.not = icmp eq i32 %33, 0
  br i1 %tobool52.not, label %do.end56, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end56:                                         ; preds = %land.lhs.true
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #9
  %34 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %st_gdata, align 4
  %tty = getelementptr inbounds %struct.st_data_s, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty, align 4
  %tobool59.not = icmp eq ptr %37, null
  br i1 %tobool59.not, label %do.end56.if.end63_crit_edge, label %if.then60

do.end56.if.end63_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void @tty_ldisc_flush(ptr noundef nonnull %37) #6
  %38 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %st_gdata, align 4
  %tty62 = getelementptr inbounds %struct.st_data_s, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %tty62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty62, align 4
  call void @stop_tty(ptr noundef %41) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %do.end56.if.end63_crit_edge
  %42 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %st_gdata, align 4
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %kim_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %kim_data, align 4
  %call64 = call i32 @st_kim_stop(ptr noundef %45) #6
  %46 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %st_gdata, align 4
  call void @st_ll_disable(ptr noundef %47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %land.lhs.true.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %do.end35, %do.end10
  %retval.0 = phi i32 [ -93, %do.end10 ], [ -93, %do.end35 ], [ 0, %if.end63 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st_gdata) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_kim_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_ll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_int_enqueue(ptr noundef %st_gdata, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_enqueue.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_enqueue, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_enqueue.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.110) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 11
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %call12 = tail call i32 @st_ll_getstate(ptr noundef %st_gdata) #6
  %0 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call12, label %do.end41 [
    i32 2, label %do.body13
    i32 1, label %sw.bb29
    i32 3, label %do.end33
    i32 0, label %sw.bb37
  ]

do.body13:                                        ; preds = %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_enqueue.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_enqueue, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !273

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_enqueue.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.112) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %txq = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 9
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #6
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %tx_waitq = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %tx_waitq, ptr noundef %skb) #6
  br label %sw.epilog

do.end33:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @st_ll_getstate(ptr noundef %st_gdata) #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %call35) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %tx_waitq38 = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %tx_waitq38, ptr noundef %skb) #6
  tail call void @st_ll_wakeup(ptr noundef %st_gdata) #6
  br label %sw.epilog

do.end41:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call i32 @st_ll_getstate(ptr noundef %st_gdata) #6
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %call43) #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end41, %sw.bb37, %do.end33, %sw.bb29, %do.end28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_int_enqueue.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_int_enqueue, %if.then58)) #6
          to label %do.end61 [label %if.then58], !srcloc !273

if.then58:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_int_enqueue.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.110) #6
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %sw.epilog
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_core_init(ptr nocapture noundef writeonly %core_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @st_ldisc_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 22, i32 noundef %call) #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_core_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_core_init, %if.then8)) #6
          to label %do.end11 [label %if.then8], !srcloc !273

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_core_init.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.75) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 324) #10
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #9
  br label %err_unreg_ldisc

if.end20:                                         ; preds = %do.end11
  %txq = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_waitq = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 10
  %lock.i59 = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i59, ptr noundef nonnull @.str.130, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %4 = ptrtoint ptr %tx_waitq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_waitq, ptr %tx_waitq, align 4
  %prev.i.i60 = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i60 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_waitq, ptr %prev.i.i60, align 8
  %qlen.i.i61 = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %qlen.i.i61 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i61, align 4
  %lock = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.79, ptr noundef nonnull @st_core_init.__key, i16 noundef signext 3) #6
  %call25 = tail call i32 @st_ll_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body34, label %do.end30

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call25) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %err_unreg_ldisc

do.body34:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %work_write_wakeup = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %work_write_wakeup, i32 noundef 0) #6
  %7 = ptrtoint ptr %work_write_wakeup to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work_write_wakeup, align 8
  %lockdep_map = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.84, ptr noundef nonnull @st_core_init.__key.83, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry38 = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 16, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry38, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.st_data_s, ptr %call7.i.i, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @work_fn_write_wakeup, ptr %func, align 4
  %11 = ptrtoint ptr %core_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %core_data, align 4
  br label %cleanup

err_unreg_ldisc:                                  ; preds = %do.end30, %do.end17
  %err.0 = phi i32 [ %call25, %do.end30 ], [ -12, %do.end17 ]
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @st_ldisc_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_ldisc, %do.body34, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.0, %err_unreg_ldisc ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_ll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @work_fn_write_wakeup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -280
  tail call void @st_tx_wakeup(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_core_exit(ptr noundef %st_gdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_ll_deinit(ptr noundef %st_gdata) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp.not = icmp eq ptr %st_gdata, null
  br i1 %cmp.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %txq = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 9
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  %tx_waitq = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 10
  tail call void @skb_queue_purge(ptr noundef %tx_waitq) #6
  %rx_skb = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 7
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #6
  %tx_skb = getelementptr inbounds %struct.st_data_s, ptr %st_gdata, i32 0, i32 1
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #6
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @st_ldisc_ops) #6
  tail call void @kfree(ptr noundef nonnull %st_gdata) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_ll_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_ll_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_tty_open(ptr noundef %tty) #0 align 64 {
entry:
  %st_gdata = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %st_gdata) #6
  %0 = ptrtoint ptr %st_gdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %st_gdata, align 4, !annotation !276
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #9
  call void @st_kim_ref(ptr noundef nonnull %st_gdata, i32 noundef 0) #6
  %1 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st_gdata, align 4
  %tty1 = getelementptr inbounds %struct.st_data_s, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %tty1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tty, ptr %tty1, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %4 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %disc_data, align 4
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %5 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %receive_room, align 4
  call void @tty_ldisc_flush(ptr noundef %tty) #6
  call void @tty_driver_flush_buffer(ptr noundef %tty) #6
  %6 = ptrtoint ptr %st_gdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %st_gdata, align 4
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %kim_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kim_data, align 4
  call void @st_kim_complete(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tty_open.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tty_open, %if.then)) #6
          to label %do.end8 [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tty_open.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.118) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %st_gdata) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_tty_close(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.119) #9
  %lock = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.st_data_s, ptr %1, i32 0, i32 4, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end18

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %indvars.iv) #9
  br label %if.end

if.end:                                           ; preds = %do.end18, %for.body.if.end_crit_edge
  %arrayidx23 = getelementptr %struct.st_data_s, ptr %1, i32 0, i32 3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx23, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end
  %protos_registered = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %protos_registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %protos_registered, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  %kim_data = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %kim_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kim_data, align 4
  tail call void @st_kim_complete(ptr noundef %8) #6
  %tty28 = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %tty28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tty28, align 4
  tail call void @tty_ldisc_flush(ptr noundef %tty) #6
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #6
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %txq = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 9
  tail call void @skb_queue_purge(ptr noundef %txq) #6
  %tx_waitq = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 10
  tail call void @skb_queue_purge(ptr noundef %tx_waitq) #6
  %rx_count = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_count, align 4
  %rx_state = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %rx_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_state, align 4
  %rx_skb = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tty_close.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tty_close, %if.then51)) #6
          to label %do.end54 [label %if.then51], !srcloc !273

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tty_close.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.119) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_tty_flush_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tty_flush_buffer.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tty_flush_buffer, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tty_flush_buffer.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #6
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_skb, align 4
  tail call void @tty_driver_flush_buffer(ptr noundef %tty) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_tty_receive(ptr nocapture noundef readonly %tty, ptr noundef %data, ptr nocapture noundef readnone %tty_flags, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @st_recv, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %1 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disc_data, align 4
  tail call void %0(ptr noundef %2, ptr noundef %data, i32 noundef %count) #6, !callees !277
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tty_receive.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tty_receive, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tty_receive.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.128) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_tty_wakeup(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_tty_wakeup.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_tty_wakeup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_tty_wakeup.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.129) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags) #6
  %work_write_wakeup = getelementptr inbounds %struct.st_data_s, ptr %1, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work_write_wakeup) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_kim_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !227, !229, !231, !232, !233, !234, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !253, !255, !256, !258, !259, !261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/ti-st/st_core.c", i32 56, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @st_get_uart_wr_room._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @st_get_uart_wr_room._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/ti-st/st_core.c", i32 76, i32 3}
!8 = !{ptr @st_int_write._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_int_write._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/ti-st/st_core.c", i32 243, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @st_int_recv._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @st_int_recv._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/ti-st/st_core.c", i32 247, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug273, !16, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/ti-st/st_core.c", i32 268, i32 5}
!22 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug276, !21, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/ti-st/st_core.c", i32 284, i32 5}
!26 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug277, !25, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/ti-st/st_core.c", i32 291, i32 6}
!30 = !{ptr @st_int_recv._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @st_int_recv._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/ti-st/st_core.c", i32 296, i32 5}
!34 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug278, !33, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/ti-st/st_core.c", i32 312, i32 4}
!38 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug279, !37, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!39 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug280, !41, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!41 = !{!"../drivers/misc/ti-st/st_core.c", i32 331, i32 4}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/ti-st/st_core.c", i32 359, i32 5}
!44 = !{ptr @st_int_recv._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @st_int_recv._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/ti-st/st_core.c", i32 369, i32 5}
!48 = !{ptr @st_int_recv._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st_int_recv._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/ti-st/st_core.c", i32 381, i32 4}
!52 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug281, !51, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/ti-st/st_core.c", i32 388, i32 2}
!56 = !{ptr @st_int_recv.__UNIQUE_ID_ddebug282, !55, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!57 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/ti-st/st_core.c", i32 473, i32 2}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @st_tx_wakeup.__UNIQUE_ID_ddebug287, !59, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!62 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/ti-st/st_core.c", i32 476, i32 3}
!65 = !{ptr @st_tx_wakeup.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!66 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/ti-st/st_core.c", i32 516, i32 18}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/ti-st/st_core.c", i32 537, i32 3}
!71 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @st_register._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @st_register._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/ti-st/st_core.c", i32 542, i32 3}
!76 = !{ptr @st_register._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @st_register._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/ti-st/st_core.c", i32 547, i32 3}
!80 = !{ptr @st_register._entry.41, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @st_register._entry_ptr.43, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/ti-st/st_core.c", i32 555, i32 3}
!84 = !{ptr @st_register._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @st_register._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/ti-st/st_core.c", i32 566, i32 3}
!88 = !{ptr @st_register._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @st_register._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/ti-st/st_core.c", i32 585, i32 5}
!92 = !{ptr @st_register._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @st_register._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/ti-st/st_core.c", i32 605, i32 4}
!96 = !{ptr @st_register.__UNIQUE_ID_ddebug289, !95, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!97 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/ti-st/st_core.c", i32 615, i32 4}
!100 = !{ptr @st_register._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @st_register._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @__ksymtab_st_register, !103, !"__ksymtab_st_register", i1 false, i1 false}
!103 = !{!"../drivers/misc/ti-st/st_core.c", i32 638, i32 1}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/ti-st/st_core.c", i32 650, i32 2}
!106 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @st_unregister.__UNIQUE_ID_ddebug290, !105, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!108 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/ti-st/st_core.c", i32 654, i32 3}
!111 = !{ptr @st_unregister._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @st_unregister._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/ti-st/st_core.c", i32 661, i32 3}
!115 = !{ptr @st_unregister._entry.62, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @st_unregister._entry_ptr.64, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/ti-st/st_core.c", i32 674, i32 3}
!119 = !{ptr @st_unregister._entry.65, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @st_unregister._entry_ptr.67, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/misc/ti-st/st_core.c", i32 702, i32 3}
!123 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @st_write._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @st_write._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/misc/ti-st/st_core.c", i32 706, i32 2}
!128 = !{ptr @st_write.__UNIQUE_ID_ddebug291, !127, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!129 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @__ksymtab_st_unregister, !131, !"__ksymtab_st_unregister", i1 false, i1 false}
!131 = !{!"../drivers/misc/ti-st/st_core.c", i32 719, i32 1}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/ti-st/st_core.c", i32 865, i32 3}
!134 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @st_core_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @st_core_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/ti-st/st_core.c", i32 869, i32 2}
!139 = !{ptr @st_core_init.__UNIQUE_ID_ddebug297, !138, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!140 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/ti-st/st_core.c", i32 873, i32 3}
!143 = !{ptr @st_core_init._entry.76, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @st_core_init._entry_ptr.78, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @st_core_init.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/misc/ti-st/st_core.c", i32 885, i32 2}
!147 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/misc/ti-st/st_core.c", i32 889, i32 3}
!150 = !{ptr @st_core_init._entry.80, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @st_core_init._entry_ptr.82, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @st_core_init.__key.83, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/misc/ti-st/st_core.c", i32 893, i32 2}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/misc/ti-st/st_core.c", i32 910, i32 3}
!157 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @st_core_exit._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @st_core_exit._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @st_recv, !161, !"st_recv", i1 false, i1 false}
!161 = !{!"../drivers/misc/ti-st/st_core.c", i32 26, i32 15}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/misc/ti-st/st_core.c", i32 94, i32 2}
!164 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @st_send_frame.__UNIQUE_ID_ddebug271, !163, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!166 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/misc/ti-st/st_core.c", i32 99, i32 3}
!169 = !{ptr @st_send_frame._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @st_send_frame._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.92, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/misc/ti-st/st_core.c", i32 115, i32 4}
!173 = !{ptr @st_send_frame._entry.91, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @st_send_frame._entry_ptr.93, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/misc/ti-st/st_core.c", i32 120, i32 3}
!177 = !{ptr @st_send_frame._entry.94, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @st_send_frame._entry_ptr.96, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/misc/ti-st/st_core.c", i32 157, i32 2}
!181 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @st_check_data_len.__UNIQUE_ID_ddebug272, !180, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!183 = !{ptr @.str.99, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.100, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/misc/ti-st/st_core.c", i32 172, i32 3}
!186 = !{ptr @st_check_data_len._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @st_check_data_len._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/misc/ti-st/st_core.c", i32 402, i32 2}
!190 = !{ptr @st_int_dequeue.__UNIQUE_ID_ddebug283, !189, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/misc/ti-st/st_core.c", i32 32, i32 2}
!193 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @add_channel_to_table._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @add_channel_to_table._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/misc/ti-st/st_core.c", i32 135, i32 2}
!198 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @st_reg_complete._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @st_reg_complete._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/misc/ti-st/st_core.c", i32 142, i32 4}
!203 = !{ptr @st_reg_complete._entry.106, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @st_reg_complete._entry_ptr.108, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/misc/ti-st/st_core.c", i32 41, i32 2}
!207 = !{ptr @remove_channel_from_table._entry, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @remove_channel_from_table._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.110, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/misc/ti-st/st_core.c", i32 424, i32 2}
!211 = !{ptr @st_int_enqueue.__UNIQUE_ID_ddebug284, !210, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/misc/ti-st/st_core.c", i32 429, i32 3}
!214 = !{ptr @st_int_enqueue.__UNIQUE_ID_ddebug285, !213, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!215 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/misc/ti-st/st_core.c", i32 436, i32 3}
!218 = !{ptr @st_int_enqueue._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @st_int_enqueue._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @st_int_enqueue._entry.114, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/misc/ti-st/st_core.c", i32 445, i32 3}
!222 = !{ptr @st_int_enqueue._entry_ptr.115, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @st_int_enqueue.__UNIQUE_ID_ddebug286, !224, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!224 = !{!"../drivers/misc/ti-st/st_core.c", i32 452, i32 2}
!225 = !{ptr @.str.116, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/misc/ti-st/st_core.c", i32 848, i32 10}
!227 = !{ptr @st_ldisc_ops, !228, !"st_ldisc_ops", i1 false, i1 false}
!228 = !{!"../drivers/misc/ti-st/st_core.c", i32 846, i32 29}
!229 = !{ptr @.str.117, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/misc/ti-st/st_core.c", i32 728, i32 2}
!231 = !{ptr @.str.118, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @st_tty_open._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @st_tty_open._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @st_tty_open.__UNIQUE_ID_ddebug292, !235, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!235 = !{!"../drivers/misc/ti-st/st_core.c", i32 748, i32 2}
!236 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/misc/ti-st/st_core.c", i32 759, i32 2}
!238 = !{ptr @st_tty_close._entry, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @st_tty_close._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.121, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/misc/ti-st/st_core.c", i32 769, i32 4}
!242 = !{ptr @st_tty_close._entry.120, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @st_tty_close._entry_ptr.122, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.123, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/misc/ti-st/st_core.c", i32 796, i32 2}
!246 = !{ptr @st_tty_close.__UNIQUE_ID_ddebug293, !245, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!247 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/misc/ti-st/st_core.c", i32 837, i32 2}
!250 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @st_tty_flush_buffer.__UNIQUE_ID_ddebug296, !249, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!252 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/misc/ti-st/st_core.c", i32 812, i32 2}
!255 = !{ptr @st_tty_receive.__UNIQUE_ID_ddebug294, !254, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/misc/ti-st/st_core.c", i32 822, i32 2}
!258 = !{ptr @st_tty_wakeup.__UNIQUE_ID_ddebug295, !257, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!259 = !{ptr @skb_queue_head_init.__key, !260, !"__key", i1 false, i1 false}
!260 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!261 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{!"branch_weights", i32 1, i32 2000}
!272 = !{!"branch_weights", i32 2002, i32 2000}
!273 = !{i64 2148976082, i64 2148976087, i64 2148976100, i64 2148976144, i64 2148976178, i64 2148976199}
!274 = !{i8 0, i8 2}
!275 = !{!"branch_weights", i32 2000, i32 1}
!276 = !{!"auto-init"}
!277 = !{ptr @st_int_recv, ptr @st_kim_recv}
