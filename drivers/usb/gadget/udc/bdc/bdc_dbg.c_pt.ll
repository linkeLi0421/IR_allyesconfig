; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/udc/bdc/bdc_dbg.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bdc_sr = type { [4 x i32] }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.bd_table = type { ptr, i32 }
%struct.bdc_bd = type { [4 x i32] }

@bdc_dbg_regs.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bdc_dbg_regs\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/udc/bdc/bdc_dbg.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bdc->regs:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdccfg0:0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 5, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdccfg1:0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 5, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdccap0:0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 6, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdccap1:0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uspc:0x%08x\0A\00", [19 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 7, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvcsa:0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_dbg_regs.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 7, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvcsb:0x%x08\0A\00", [18 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 9, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdc_dump_epsts\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS0:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BDC_EPSTS1:0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS2:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS3:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS4:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS5:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.18, i8 0, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS6:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dump_epsts.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.19, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BDC_EPSTS7:0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@bdc_dbg_srr.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bdc_dbg_srr\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s sr:%p dqp_index:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@bdc_dbg_srr.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%llx %08x %08x %08x %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@bdc_dbg_bd_list.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdc_dbg_bd_list\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dump bd list for %s epnum:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@bdc_dbg_bd_list.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"tabs:%d max_bdi:%d eqp_bdi:%d hwd_bdi:%d num_bds_table:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bdc_dbg_bd_list.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"tbi:%2d bdi:%2d gbdi:%2d virt:%p phys:%llx %08x %08x %08x %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@bdc_dbg_bd_list.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\0A\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 17, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 19, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 21, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 23, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 25, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 27, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 29, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 31, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 39, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 42, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 45, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 48, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 51, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 54, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 57, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 60, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 71, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 75, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 94, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 98, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 108, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [40 x i8] c"../drivers/usb/gadget/udc/bdc/bdc_dbg.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 116, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_dbg_regs(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %3) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs4 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %4 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end24)) #3
          to label %if.then20 [label %do.end24], !srcloc !81

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %dev21 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %8 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug240, ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %7) #3
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.end
  %10 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs4, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end45)) #3
          to label %if.then41 [label %do.end45], !srcloc !81

if.then41:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %dev42 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug241, ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %13) #3
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.end24
  %16 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs4, align 4
  %add.ptr.i193 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end66)) #3
          to label %if.then62 [label %do.end66], !srcloc !81

if.then62:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %dev63 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %20 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug242, ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %19) #3
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.end45
  %22 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs4, align 4
  %add.ptr.i194 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end87)) #3
          to label %if.then83 [label %do.end87], !srcloc !81

if.then83:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %dev84 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %26 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug243, ptr noundef %27, ptr noundef nonnull @.str.7, i32 noundef %25) #3
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.end66
  %28 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs4, align 4
  %add.ptr.i195 = getelementptr i8, ptr %29, i32 32
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end108)) #3
          to label %if.then104 [label %do.end108], !srcloc !81

if.then104:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %dev105 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %32 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev105, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug244, ptr noundef %33, ptr noundef nonnull @.str.8, i32 noundef %31) #3
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %do.end87
  %34 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs4, align 4
  %add.ptr.i196 = getelementptr i8, ptr %35, i32 80
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end129)) #3
          to label %if.then125 [label %do.end129], !srcloc !81

if.then125:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #3
  %dev126 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %38 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev126, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug245, ptr noundef %39, ptr noundef nonnull @.str.9, i32 noundef %37) #3
  br label %do.end129

do.end129:                                        ; preds = %if.then125, %do.end108
  %40 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs4, align 4
  %add.ptr.i197 = getelementptr i8, ptr %41, i32 84
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_regs, %do.end150)) #3
          to label %if.then146 [label %do.end150], !srcloc !81

if.then146:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %dev147 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %44 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev147, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_regs.__UNIQUE_ID_ddebug246, ptr noundef %45, ptr noundef nonnull @.str.10, i32 noundef %43) #3
  br label %do.end150

do.end150:                                        ; preds = %if.then146, %do.end129
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_dump_epsts(ptr nocapture noundef readonly %bdc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #3
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %3) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr.i195 = getelementptr i8, ptr %7, i32 100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end25)) #3
          to label %if.then21 [label %do.end25], !srcloc !81

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  %dev22 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug248, ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef %9) #3
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.end
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr.i196 = getelementptr i8, ptr %13, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end46)) #3
          to label %if.then42 [label %do.end46], !srcloc !81

if.then42:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %dev43 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %16 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug249, ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %15) #3
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.end25
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i197 = getelementptr i8, ptr %19, i32 108
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end67)) #3
          to label %if.then63 [label %do.end67], !srcloc !81

if.then63:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #3
  %dev64 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %22 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug250, ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %21) #3
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.end46
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i198 = getelementptr i8, ptr %25, i32 112
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end88)) #3
          to label %if.then84 [label %do.end88], !srcloc !81

if.then84:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %dev85 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %28 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug251, ptr noundef %29, ptr noundef nonnull @.str.16, i32 noundef %27) #3
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.end67
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i199 = getelementptr i8, ptr %31, i32 116
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end109)) #3
          to label %if.then105 [label %do.end109], !srcloc !81

if.then105:                                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #3
  %dev106 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %34 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug252, ptr noundef %35, ptr noundef nonnull @.str.17, i32 noundef %33) #3
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.end88
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr.i200 = getelementptr i8, ptr %37, i32 120
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end130)) #3
          to label %if.then126 [label %do.end130], !srcloc !81

if.then126:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %dev127 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %40 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev127, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug253, ptr noundef %41, ptr noundef nonnull @.str.18, i32 noundef %39) #3
  br label %do.end130

do.end130:                                        ; preds = %if.then126, %do.end109
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr.i201 = getelementptr i8, ptr %43, i32 124
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #3, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dump_epsts, %do.end151)) #3
          to label %if.then147 [label %do.end151], !srcloc !81

if.then147:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #5
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %dev148 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %46 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev148, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dump_epsts.__UNIQUE_ID_ddebug254, ptr noundef %47, ptr noundef nonnull @.str.19, i32 noundef %45) #3
  br label %do.end151

do.end151:                                        ; preds = %if.then147, %do.end130
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_dbg_srr(ptr nocapture noundef readonly %bdc, i32 noundef %srr_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %srr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11
  %0 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srr, align 8
  %dma_addr = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_srr.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_srr, %do.end)) #3
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dqp_index = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %dqp_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dqp_index, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_srr.__UNIQUE_ID_ddebug255, ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %1, i32 noundef %conv) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev24 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end35.for.body_crit_edge, %do.end
  %addr.055 = phi i32 [ %3, %do.end ], [ %add, %do.end35.for.body_crit_edge ]
  %i.053 = phi i32 [ 0, %do.end ], [ %inc, %do.end35.for.body_crit_edge ]
  %8 = ptrtoint ptr %srr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_srr.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_srr, %do.end35)) #3
          to label %if.then23 [label %do.end35], !srcloc !81

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.bdc_sr, ptr %9, i32 %i.053
  %10 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev24, align 4
  %conv25 = zext i32 %addr.055 to i64
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %arrayidx28 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx28, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx30 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx30, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %arrayidx32 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx32, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_srr.__UNIQUE_ID_ddebug256, ptr noundef %11, ptr noundef nonnull @.str.22, i64 noundef %conv25, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #3
  br label %do.end35

do.end35:                                         ; preds = %if.then23, %for.body
  %add = add i32 %addr.055, 16
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %do.end35.for.body_crit_edge

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdc_dbg_bd_list(ptr nocapture noundef readonly %bdc, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_list1 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_bd_list, %do.body5)) #3
          to label %if.then [label %do.body5], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 9
  %ep_num = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 5
  %2 = ptrtoint ptr %ep_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ep_num, align 2
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_bd_list.__UNIQUE_ID_ddebug257, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv) #3
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_bd_list, %do.end23)) #3
          to label %if.then19 [label %do.end23], !srcloc !81

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %dev20 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  %4 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev20, align 4
  %num_tabs = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %num_tabs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tabs, align 4
  %max_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %max_bdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_bdi, align 4
  %eqp_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %eqp_bdi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eqp_bdi, align 4
  %hwd_bdi = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 4
  %12 = ptrtoint ptr %hwd_bdi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwd_bdi, align 4
  %num_bds_table = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %14 = ptrtoint ptr %num_bds_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_bds_table, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_bd_list.__UNIQUE_ID_ddebug258, ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #3
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body5
  %num_tabs24 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %num_tabs24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tabs24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp123 = icmp sgt i32 %17, 0
  br i1 %cmp123, label %for.body.lr.ph, label %do.end23.for.end81_crit_edge

do.end23.for.end81_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end81

for.body.lr.ph:                                   ; preds = %do.end23
  %num_bds_table27 = getelementptr inbounds %struct.bdc_ep, ptr %ep, i32 0, i32 10, i32 5
  %dev47 = getelementptr inbounds %struct.bdc, ptr %bdc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc79.for.body_crit_edge, %for.body.lr.ph
  %tbi.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc80, %for.inc79.for.body_crit_edge ]
  %gbdi.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %gbdi.1.lcssa, %for.inc79.for.body_crit_edge ]
  %18 = ptrtoint ptr %bd_list1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_list1, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %tbi.0125
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %num_bds_table27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_bds_table27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp28119 = icmp sgt i32 %23, 0
  br i1 %cmp28119, label %for.body30.lr.ph, label %for.body.do.body60_crit_edge

for.body.do.body60_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body60

for.body30.lr.ph:                                 ; preds = %for.body
  %dma31 = getelementptr inbounds %struct.bd_table, ptr %21, i32 0, i32 1
  br label %for.body30

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %for.body30.lr.ph
  %bdi.0121 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc59, %for.inc.for.body30_crit_edge ]
  %gbdi.1120 = phi i32 [ %gbdi.0124, %for.body30.lr.ph ], [ %gbdi.2, %for.inc.for.body30_crit_edge ]
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %26 = ptrtoint ptr %dma31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_bd_list, %for.inc)) #3
          to label %if.then46 [label %for.inc], !srcloc !81

if.then46:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl i32 %bdi.0121, 4
  %add = add i32 %27, %mul
  %add.ptr = getelementptr %struct.bdc_bd, ptr %25, i32 %bdi.0121
  %28 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev47, align 4
  %inc = add i32 %gbdi.1120, 1
  %conv48 = zext i32 %add to i64
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %arrayidx51 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx51, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %arrayidx53 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx53, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %arrayidx55 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx55, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_bd_list.__UNIQUE_ID_ddebug259, ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef %tbi.0125, i32 noundef %bdi.0121, i32 noundef %gbdi.1120, ptr noundef %add.ptr, i64 noundef %conv48, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then46, %for.body30
  %gbdi.2 = phi i32 [ %inc, %if.then46 ], [ %gbdi.1120, %for.body30 ]
  %inc59 = add nuw nsw i32 %bdi.0121, 1
  %42 = ptrtoint ptr %num_bds_table27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_bds_table27, align 4
  %cmp28 = icmp slt i32 %inc59, %43
  br i1 %cmp28, label %for.inc.for.body30_crit_edge, label %for.inc.do.body60_crit_edge

for.inc.do.body60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body60

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body30

do.body60:                                        ; preds = %for.inc.do.body60_crit_edge, %for.body.do.body60_crit_edge
  %gbdi.1.lcssa = phi i32 [ %gbdi.0124, %for.body.do.body60_crit_edge ], [ %gbdi.2, %for.inc.do.body60_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bdc_dbg_bd_list, %for.inc79)) #3
          to label %if.then74 [label %for.inc79], !srcloc !81

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdc_dbg_bd_list.__UNIQUE_ID_ddebug260, ptr noundef %45, ptr noundef nonnull @.str.27) #3
  br label %for.inc79

for.inc79:                                        ; preds = %if.then74, %do.body60
  %inc80 = add nuw nsw i32 %tbi.0125, 1
  %46 = ptrtoint ptr %num_tabs24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_tabs24, align 4
  %cmp = icmp slt i32 %inc80, %47
  br i1 %cmp, label %for.inc79.for.body_crit_edge, label %for.inc79.for.end81_crit_edge

for.inc79.for.end81_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end81

for.inc79.for.body_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end81:                                        ; preds = %for.inc79.for.end81_crit_edge, %do.end23.for.end81_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 17, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug239, !1, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 19, i32 2}
!8 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug240, !7, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 21, i32 2}
!11 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug241, !10, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 23, i32 2}
!14 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug242, !13, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 25, i32 2}
!17 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug243, !16, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 27, i32 2}
!20 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug244, !19, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 29, i32 2}
!23 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug245, !22, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 31, i32 2}
!26 = !{ptr @bdc_dbg_regs.__UNIQUE_ID_ddebug246, !25, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 39, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug247, !28, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 42, i32 2}
!33 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug248, !32, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 45, i32 2}
!36 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug249, !35, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 48, i32 2}
!39 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug250, !38, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 51, i32 2}
!42 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug251, !41, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 54, i32 2}
!45 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug252, !44, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 57, i32 2}
!48 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug253, !47, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 60, i32 2}
!51 = !{ptr @bdc_dump_epsts.__UNIQUE_ID_ddebug254, !50, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 71, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bdc_dbg_srr.__UNIQUE_ID_ddebug255, !53, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 75, i32 3}
!58 = !{ptr @bdc_dbg_srr.__UNIQUE_ID_ddebug256, !57, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 94, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug257, !60, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 98, i32 2}
!65 = !{ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug258, !64, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 108, i32 4}
!68 = !{ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug259, !67, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/udc/bdc/bdc_dbg.c", i32 116, i32 3}
!71 = !{ptr @bdc_dbg_bd_list.__UNIQUE_ID_ddebug260, !70, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148705276, i64 2148705281, i64 2148705294, i64 2148705338, i64 2148705372, i64 2148705393}
!82 = !{i64 4374177}
!83 = !{i64 2154372056}
