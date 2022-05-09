; ModuleID = '/llk/IR_all_yes/drivers/media/rc/fintek-cir.c_pt.bc'
source_filename = "../drivers/media/rc/fintek-cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_debug = internal constant [17 x i8] c"fintek_cir.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype232 = internal constant [30 x i8] c"fintek_cir.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug233 = internal constant [46 x i8] c"fintek_cir.parm=debug:Enable debugging output\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [73 x i8] c"fintek_cir.description=Fintek LPC SuperIO Consumer IR Transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [50 x i8] c"fintek_cir.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [44 x i8] c"fintek_cir.file=drivers/media/rc/fintek-cir\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [23 x i8] c"fintek_cir.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_fintek_cir__238_668_fintek_driver_init6 = internal global ptr @fintek_driver_init, section ".initcall6.init", align 4
@__exitcall_fintek_driver_exit = internal global ptr @fintek_driver_exit, section ".exitcall.exit", align 4
@fintek_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IR PNP Port not valid!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fintek_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/rc/fintek-cir.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fintek_probe._entry_ptr = internal global ptr @fintek_probe._entry, section ".printk_index", align 4
@fintek_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IR PNP IRQ not valid!\0A\00", [41 x i8] zeroinitializer }, align 32
@fintek_probe._entry_ptr.8 = internal global ptr @fintek_probe._entry.6, section ".printk_index", align 4
@fintek_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015fintek_cir: driver has been successfully loaded\0A\00", [45 x i8] zeroinitializer }, align 32
@fintek_probe._entry_ptr.15 = internal global ptr @fintek_probe._entry.13, section ".printk_index", align 4
@fintek_hw_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016fintek_cir: first portsel read was bunk, trying alt\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fintek_hw_detect\00", [47 x i8] zeroinitializer }, align 32
@fintek_hw_detect._entry_ptr = internal global ptr @fintek_hw_detect._entry, section ".printk_index", align 4
@fintek_hw_detect._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017fintek_cir: portsel reg: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@fintek_hw_detect._entry_ptr.20 = internal global ptr @fintek_hw_detect._entry.18, section ".printk_index", align 4
@fintek_hw_detect._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017fintek_cir: ir_class reg: 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@fintek_hw_detect._entry_ptr.23 = internal global ptr @fintek_hw_detect._entry.21, section ".printk_index", align 4
@fintek_hw_detect._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014fintek_cir: Unknown vendor ID: 0x%04x\00", [56 x i8] zeroinitializer }, align 32
@fintek_hw_detect._entry_ptr.26 = internal global ptr @fintek_hw_detect._entry.24, section ".printk_index", align 4
@fintek_hw_detect._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017fintek_cir: Read Fintek vendor ID from chip\0A\00", [49 x i8] zeroinitializer }, align 32
@fintek_hw_detect._entry_ptr.29 = internal global ptr @fintek_hw_detect._entry.27, section ".printk_index", align 4
@fintek_cr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017fintek_cir: %s: reg 0x%02x, val 0x%02x  (ip/dp: %02x/%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fintek_cr_read\00", [17 x i8] zeroinitializer }, align 32
@fintek_cr_read._entry_ptr = internal global ptr @fintek_cr_read._entry, section ".printk_index", align 4
@fintek_cir_ldev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017fintek_cir: CIR initialized, base io address: 0x%lx, irq: %d (len: %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fintek_cir_ldev_init\00", [43 x i8] zeroinitializer }, align 32
@fintek_cir_ldev_init._entry_ptr = internal global ptr @fintek_cir_ldev_init._entry, section ".printk_index", align 4
@fintek_cr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.34, ptr @.str.3, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fintek_cr_write\00", [16 x i8] zeroinitializer }, align 32
@fintek_cr_write._entry_ptr = internal global ptr @fintek_cr_write._entry, section ".printk_index", align 4
@fintek_cir_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017fintek_cir: %s firing\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fintek_cir_isr\00", [17 x i8] zeroinitializer }, align 32
@fintek_cir_isr._entry_ptr = internal global ptr @fintek_cir_isr._entry, section ".printk_index", align 4
@fintek_cir_isr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017fintek_cir: %s exiting, IRSTS 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@fintek_cir_isr._entry_ptr.39 = internal global ptr @fintek_cir_isr._entry.37, section ".printk_index", align 4
@fintek_cir_isr._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017fintek_cir: %s done\0A\00", [41 x i8] zeroinitializer }, align 32
@fintek_cir_isr._entry_ptr.42 = internal global ptr @fintek_cir_isr._entry.40, section ".printk_index", align 4
@fintek_cir_log_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016fintek_cir: IRQ 0x%02x:%s%s%s%s%s\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fintek_cir_log_irqs\00", [44 x i8] zeroinitializer }, align 32
@fintek_cir_log_irqs._entry_ptr = internal global ptr @fintek_cir_log_irqs._entry, section ".printk_index", align 4
@fintek_get_rx_ir_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017fintek_cir: %s: sample: 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fintek_get_rx_ir_data\00", [42 x i8] zeroinitializer }, align 32
@fintek_get_rx_ir_data._entry_ptr = internal global ptr @fintek_get_rx_ir_data._entry, section ".printk_index", align 4
@fintek_process_rx_ir_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017fintek_cir: %s: rem: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fintek_process_rx_ir_data\00", [38 x i8] zeroinitializer }, align 32
@fintek_process_rx_ir_data._entry_ptr = internal global ptr @fintek_process_rx_ir_data._entry, section ".printk_index", align 4
@fintek_process_rx_ir_data._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017fintek_cir: Storing %s with duration %d\0A\00", [53 x i8] zeroinitializer }, align 32
@fintek_process_rx_ir_data._entry_ptr.57 = internal global ptr @fintek_process_rx_ir_data._entry.55, section ".printk_index", align 4
@fintek_process_rx_ir_data._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017fintek_cir: Calling ir_raw_event_handle\0A\00", [53 x i8] zeroinitializer }, align 32
@fintek_process_rx_ir_data._entry_ptr.62 = internal global ptr @fintek_process_rx_ir_data._entry.60, section ".printk_index", align 4
@cir_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016fintek_cir: %s: Dump CIR logical device registers:\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cir_dump_regs\00", [18 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr = internal global ptr @cir_dump_regs._entry, section ".printk_index", align 4
@cir_dump_regs._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016fintek_cir:  * CR CIR BASE ADDR: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.67 = internal global ptr @cir_dump_regs._entry.65, section ".printk_index", align 4
@cir_dump_regs._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016fintek_cir:  * CR CIR IRQ NUM:   0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.70 = internal global ptr @cir_dump_regs._entry.68, section ".printk_index", align 4
@cir_dump_regs._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016fintek_cir: %s: Dump CIR registers:\0A\00", [57 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.73 = internal global ptr @cir_dump_regs._entry.71, section ".printk_index", align 4
@cir_dump_regs._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fintek_cir:  * STATUS:     0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.76 = internal global ptr @cir_dump_regs._entry.74, section ".printk_index", align 4
@cir_dump_regs._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.64, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fintek_cir:  * CONTROL:    0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.79 = internal global ptr @cir_dump_regs._entry.77, section ".printk_index", align 4
@cir_dump_regs._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.64, ptr @.str.3, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fintek_cir:  * RX_DATA:    0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.82 = internal global ptr @cir_dump_regs._entry.80, section ".printk_index", align 4
@cir_dump_regs._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.64, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fintek_cir:  * TX_CONTROL: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.85 = internal global ptr @cir_dump_regs._entry.83, section ".printk_index", align 4
@cir_dump_regs._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.64, ptr @.str.3, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016fintek_cir:  * TX_DATA:    0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cir_dump_regs._entry_ptr.88 = internal global ptr @cir_dump_regs._entry.86, section ".printk_index", align 4
@fintek_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017fintek_cir: %s called\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fintek_suspend\00", [17 x i8] zeroinitializer }, align 32
@fintek_suspend._entry_ptr = internal global ptr @fintek_suspend._entry, section ".printk_index", align 4
@fintek_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.91, ptr @.str.3, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fintek_resume\00", [18 x i8] zeroinitializer }, align 32
@fintek_resume._entry_ptr = internal global ptr @fintek_resume._entry, section ".printk_index", align 4
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [33 x i8] c"../drivers/media/rc/fintek-cir.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 22, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 480, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 485, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 549, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 131, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 138, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 141, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 163, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 165, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 42, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 199, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 28, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 372, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 389, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 404, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 358, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 341, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 286, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 305, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 321, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 95, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 96, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 99, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 104, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 105, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 107, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 109, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 111, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 113, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 593, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [33 x i8] c"../drivers/media/rc/fintek-cir.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 620, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_debug233, ptr @__UNIQUE_ID_debugtype232, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_fintek_driver_exit, ptr @__initcall__kmod_fintek_cir__238_668_fintek_driver_init6, ptr @__param_debug, ptr @cir_dump_regs._entry, ptr @cir_dump_regs._entry.65, ptr @cir_dump_regs._entry.68, ptr @cir_dump_regs._entry.71, ptr @cir_dump_regs._entry.74, ptr @cir_dump_regs._entry.77, ptr @cir_dump_regs._entry.80, ptr @cir_dump_regs._entry.83, ptr @cir_dump_regs._entry.86, ptr @cir_dump_regs._entry_ptr, ptr @cir_dump_regs._entry_ptr.67, ptr @cir_dump_regs._entry_ptr.70, ptr @cir_dump_regs._entry_ptr.73, ptr @cir_dump_regs._entry_ptr.76, ptr @cir_dump_regs._entry_ptr.79, ptr @cir_dump_regs._entry_ptr.82, ptr @cir_dump_regs._entry_ptr.85, ptr @cir_dump_regs._entry_ptr.88, ptr @fintek_cir_isr._entry, ptr @fintek_cir_isr._entry.37, ptr @fintek_cir_isr._entry.40, ptr @fintek_cir_isr._entry_ptr, ptr @fintek_cir_isr._entry_ptr.39, ptr @fintek_cir_isr._entry_ptr.42, ptr @fintek_cir_ldev_init._entry, ptr @fintek_cir_ldev_init._entry_ptr, ptr @fintek_cir_log_irqs._entry, ptr @fintek_cir_log_irqs._entry_ptr, ptr @fintek_cr_read._entry, ptr @fintek_cr_read._entry_ptr, ptr @fintek_cr_write._entry, ptr @fintek_cr_write._entry_ptr, ptr @fintek_driver_exit, ptr @fintek_get_rx_ir_data._entry, ptr @fintek_get_rx_ir_data._entry_ptr, ptr @fintek_hw_detect._entry, ptr @fintek_hw_detect._entry.18, ptr @fintek_hw_detect._entry.21, ptr @fintek_hw_detect._entry.24, ptr @fintek_hw_detect._entry.27, ptr @fintek_hw_detect._entry_ptr, ptr @fintek_hw_detect._entry_ptr.20, ptr @fintek_hw_detect._entry_ptr.23, ptr @fintek_hw_detect._entry_ptr.26, ptr @fintek_hw_detect._entry_ptr.29, ptr @fintek_probe._entry, ptr @fintek_probe._entry.13, ptr @fintek_probe._entry.6, ptr @fintek_probe._entry_ptr, ptr @fintek_probe._entry_ptr.15, ptr @fintek_probe._entry_ptr.8, ptr @fintek_process_rx_ir_data._entry, ptr @fintek_process_rx_ir_data._entry.55, ptr @fintek_process_rx_ir_data._entry.60, ptr @fintek_process_rx_ir_data._entry_ptr, ptr @fintek_process_rx_ir_data._entry_ptr.57, ptr @fintek_process_rx_ir_data._entry_ptr.62, ptr @fintek_resume._entry, ptr @fintek_resume._entry_ptr, ptr @fintek_suspend._entry, ptr @fintek_suspend._entry_ptr, ptr @debug, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_hw_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_hw_detect._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_hw_detect._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_hw_detect._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_hw_detect._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cir_ldev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cir_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cir_isr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cir_isr._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_cir_log_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_get_rx_ir_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_process_rx_ir_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_process_rx_ir_data._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_process_rx_ir_data._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cir_dump_regs._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fintek_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fintek_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fintek_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/fintek-cir.c", i32 659, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype232, !1, !"__UNIQUE_ID_debugtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug233, !4, !"__UNIQUE_ID_debug233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/fintek-cir.c", i32 660, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/fintek-cir.c", i32 663, i32 1}
!7 = !{ptr @__UNIQUE_ID_author235, !8, !"__UNIQUE_ID_author235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/fintek-cir.c", i32 665, i32 1}
!9 = !{ptr @__UNIQUE_ID_file236, !10, !"__UNIQUE_ID_file236", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/fintek-cir.c", i32 666, i32 1}
!11 = !{ptr @__UNIQUE_ID_license237, !10, !"__UNIQUE_ID_license237", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_fintek_cir__238_668_fintek_driver_init6, !13, !"__initcall__kmod_fintek_cir__238_668_fintek_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/fintek-cir.c", i32 668, i32 1}
!14 = !{ptr @__exitcall_fintek_driver_exit, !13, !"__exitcall_fintek_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/fintek-cir.h", i32 22, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/fintek-cir.c", i32 649, i32 11}
!20 = distinct !{null, !21, !"fintek_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/rc/fintek-cir.c", i32 648, i32 26}
!22 = distinct !{null, !23, !"fintek_ids", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/fintek-cir.c", i32 643, i32 35}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/fintek-cir.c", i32 480, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fintek_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @fintek_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/fintek-cir.c", i32 485, i32 3}
!34 = !{ptr @fintek_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fintek_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/fintek-cir.c", i32 496, i32 2}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/fintek-cir.c", i32 518, i32 22}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/fintek-cir.c", i32 519, i32 21}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/rc/fintek-cir.c", i32 526, i32 19}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/fintek-cir.c", i32 549, i32 2}
!47 = !{ptr @fintek_probe._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fintek_probe._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/fintek-cir.c", i32 131, i32 3}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fintek_hw_detect._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @fintek_hw_detect._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/fintek-cir.c", i32 138, i32 2}
!56 = !{ptr @fintek_hw_detect._entry.18, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fintek_hw_detect._entry_ptr.20, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/rc/fintek-cir.c", i32 141, i32 2}
!60 = !{ptr @fintek_hw_detect._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @fintek_hw_detect._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/fintek-cir.c", i32 163, i32 3}
!64 = !{ptr @fintek_hw_detect._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @fintek_hw_detect._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/rc/fintek-cir.c", i32 165, i32 3}
!68 = !{ptr @fintek_hw_detect._entry.27, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fintek_hw_detect._entry_ptr.29, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/rc/fintek-cir.c", i32 42, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @fintek_cr_read._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @fintek_cr_read._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/fintek-cir.c", i32 199, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @fintek_cir_ldev_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @fintek_cir_ldev_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/rc/fintek-cir.c", i32 28, i32 2}
!82 = !{ptr @fintek_cr_write._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fintek_cr_write._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/rc/fintek-cir.c", i32 372, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @fintek_cir_isr._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @fintek_cir_isr._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/rc/fintek-cir.c", i32 389, i32 3}
!91 = !{ptr @fintek_cir_isr._entry.37, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @fintek_cir_isr._entry_ptr.39, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/rc/fintek-cir.c", i32 404, i32 2}
!95 = !{ptr @fintek_cir_isr._entry.40, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @fintek_cir_isr._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/rc/fintek-cir.c", i32 358, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @fintek_cir_log_irqs._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @fintek_cir_log_irqs._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/rc/fintek-cir.c", i32 341, i32 3}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @fintek_get_rx_ir_data._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @fintek_get_rx_ir_data._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/rc/fintek-cir.c", i32 286, i32 4}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fintek_process_rx_ir_data._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @fintek_process_rx_ir_data._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/rc/fintek-cir.c", i32 305, i32 4}
!120 = !{ptr @fintek_process_rx_ir_data._entry.55, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fintek_process_rx_ir_data._entry_ptr.57, !119, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/rc/fintek-cir.c", i32 321, i32 3}
!126 = !{ptr @fintek_process_rx_ir_data._entry.60, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @fintek_process_rx_ir_data._entry_ptr.62, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/rc/fintek-cir.c", i32 95, i32 2}
!130 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cir_dump_regs._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @cir_dump_regs._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/rc/fintek-cir.c", i32 96, i32 2}
!135 = !{ptr @cir_dump_regs._entry.65, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cir_dump_regs._entry_ptr.67, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/rc/fintek-cir.c", i32 99, i32 2}
!139 = !{ptr @cir_dump_regs._entry.68, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cir_dump_regs._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/rc/fintek-cir.c", i32 104, i32 2}
!143 = !{ptr @cir_dump_regs._entry.71, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cir_dump_regs._entry_ptr.73, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/rc/fintek-cir.c", i32 105, i32 2}
!147 = !{ptr @cir_dump_regs._entry.74, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cir_dump_regs._entry_ptr.76, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/rc/fintek-cir.c", i32 107, i32 2}
!151 = !{ptr @cir_dump_regs._entry.77, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cir_dump_regs._entry_ptr.79, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.81, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/rc/fintek-cir.c", i32 109, i32 2}
!155 = !{ptr @cir_dump_regs._entry.80, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cir_dump_regs._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/rc/fintek-cir.c", i32 111, i32 2}
!159 = !{ptr @cir_dump_regs._entry.83, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cir_dump_regs._entry_ptr.85, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/rc/fintek-cir.c", i32 113, i32 2}
!163 = !{ptr @cir_dump_regs._entry.86, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cir_dump_regs._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/rc/fintek-cir.c", i32 593, i32 2}
!167 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @fintek_suspend._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @fintek_suspend._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/rc/fintek-cir.c", i32 620, i32 2}
!172 = !{ptr @fintek_resume._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @fintek_resume._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
